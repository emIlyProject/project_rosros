#include "ros/ros.h"
#include "iris/turtle.h"
#include "std_srvs/Empty.h" // Service utk reset turtlesim
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>

cv::Mat image; 
cv::Mat map_image; 
cv::Point last_position(-1, -1); // Inisialisasi posisi terakhir
ros::ServiceClient reset_turtle; // Service client utk reset turtlesim

// Fungsi untuk memeriksa tabrakan dengan area biru
bool area_aman_turtle(const cv::Mat& map_image, const cv::Point& position) {
    // Pastikan posisi turtle berada dalam batas gambar
    if (position.x < 0 || position.y < 0 || position.x >= map_image.cols || position.y >= map_image.rows) {
        return true; // klo diluar batas, anggap sbg area yang diizinkan
    }

    // Dptin warna pixel 
    cv::Vec3b color = map_image.at<cv::Vec3b>(position);

    // Anggap warna putih (255, 255, 255), sesuaikan dgn kebutuhan
    if (color[0] >= 200 && color[1] >= 200 && color[2] >= 200) {
        return true; // Area yg diizinkan
    }
    return false; // Area terlarang
}

void posisi_turtle(const iris::turtle::ConstPtr& msg) {
    float scale_x = static_cast<float>(image.cols) / 11.0;
    float scale_y = static_cast<float>(image.rows) / 11.0;

    int x = static_cast<int>(msg->x * scale_x);
    int y = static_cast<int>((11 - msg->y) * scale_y);

    cv::Point current_position(x, y);

    //gambar jejak turtle
    if (last_position != cv::Point(-1, -1)) {
        cv::line(image, last_position, current_position, CV_RGB(255, 0, 0), 2);
    }
    last_position = current_position;

    // Cek tabrakan stlh menggambar garis
      // Cek apakah turtle berada di area yg diizinkan
    if (!area_aman_turtle(map_image, current_position)) {
        // klo turtle di area terlarang, lgsg d reset
        std_srvs::Empty reset_service;
        if (reset_turtle.call(reset_service)) {
            ROS_INFO("Turtle ke reset.");
        }
        // ngereset jejak krn turtle telah di-reset
        last_position = cv::Point(-1, -1);
        map_image.copyTo(image); // Bersihin gambar dri jejak sebelumnya
        return;
    }

    // klo turtle berada di area yg diizinkan, gambar jejaknya
    if (last_position != cv::Point(-1, -1)) {
        cv::line(image, last_position, current_position, CV_RGB(255, 0, 0), 2);
    }

    // Simpen posisi saat ini sbg posisi terakhir
    last_position = current_position;

    // Menampilkan window dengan jejak turtle
    cv::imshow("Turtle Path", image);
    cv::waitKey(1);
}

int main(int argc, char **argv) {
    ros::init(argc, argv, "secondary_node");
    ros::NodeHandle n;

    map_image = cv::imread("/home/catipsum/Downloads/maprobot.png", cv::IMREAD_COLOR); 

    map_image.copyTo(image); // Inisialisasi image dgn map_image

    reset_turtle = n.serviceClient<std_srvs::Empty>("/reset");

    ros::Subscriber position_subscriber = n.subscribe("/turtle_position", 10, posisi_turtle);

    cv::namedWindow("Turtle Path", cv::WINDOW_AUTOSIZE);

    ros::spin();

    return 0;
}