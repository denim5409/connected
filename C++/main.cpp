//###이미지추가
//#include <opencv2/opencv.hpp>
//#include <iostream>
//
////주석처리는 ctrl + k,c  해제는 ctrl + k,u
//using namespace cv;
//using namespace std;
//
//
//int main()
//{
//    Mat img_color;
//    Mat img_gray;
//
//    //img_color = imread("iu.jpg", IMREAD_COLOR);
//    img_color = imread("iu.jpg", IMREAD_GRAYSCALE);
//    if (img_color.empty())
//    {
//        cout << "이미지 파일을 읽을 수 없습니다." << endl;
//        return -1;
//    }
//    
//    Mat img_copyed1(img_color);//객채를 이렇게 생성해도 된다
//    Mat img_copyed2 = img_color;//객채를 이렇게 생성해도 된다
//    Mat img_sub1(img_color, Rect(20,20,300,300)); //메모리 공유(원본도 변경됨)
//    Mat img_sub2 = img_color(Range(300,450),Range::all());
//    Mat img_copyed3 = img_color.clone();//개별 복사(원본 안바뀜)
//    Mat img_copyed4;
//    img_color.copyTo(img_copyed4);//개별 복사(원본 안바뀜)
//
//    threshold(img_copyed3, img_copyed3, 127, 255, THRESH_BINARY);
//
//    //cvtColor(img_color, img_gray, COLOR_BGR2GRAY);
//    namedWindow("Color1");
//    imshow("img_color", img_color);
//    //imshow("Color2", img_copyed1);
//    //imshow("Color3", img_copyed2);
//    imshow("img_sub1", img_copyed3);
//    imshow("img_sub2", img_sub2);
//    //imshow("Gray", img_gray);
//
//    waitKey(0);
//    destroyAllWindows();
//    return 0;
//}


////###특정색상 영역 추가(이미지는 살아있음)
//#include <opencv2/opencv.hpp>
//#include <iostream>
//
//using namespace cv;
//using namespace std;
//
//int main()
//{
//    Mat img_color = imread("iu.jpg", IMREAD_COLOR);
//    Mat img_gray = img_color.clone();
//
//    cvtColor(img_gray, img_gray, COLOR_BGR2GRAY);
//    cvtColor(img_gray, img_gray, COLOR_GRAY2BGR);
//
//    Mat bgr[3];
//
//    Mat img_roi = img_color(Rect(50, 180, 250, 270)).clone();
//    Mat zFillMatrix = Mat::zeros(img_roi.size(), CV_8UC1);
//
//    split(img_roi, bgr);
//
//    //Mat R[] = { zFillMatrix, zFillMatrix, bgr[2] };
//    Mat G[] = { zFillMatrix, bgr[1], zFillMatrix };
//    //Mat B[] = { bgr[0], zFillMatrix, zFillMatrix };
//    //merge(R, 3, bgr[2]);
//    merge(G, 3, bgr[1]);
//    //merge(B, 3, bgr[0]);
//
//
//    bgr[1].copyTo(img_gray(Rect(50, 180, 250, 270)));
//
//    namedWindow("Original Image");
////    namedWindow("Red Channel");
//    namedWindow("Green Channel");
////    namedWindow("Blue Channel");
//
//    imshow("Original Image", img_color);
////    imshow("Red Channel", bgr[2]);
//    imshow("Green Channel", img_gray);
////    imshow("Blue Channel", bgr[0]);
//
//    waitKey(0);
//    return 0;
//}



//###특정색상 영역 추가(아예 색상 다 채움)
//#include <opencv2/opencv.hpp>
//#include <iostream>
//
//using namespace cv;
//using namespace std;
//
//
//
//int main()
//{
//    Mat img_color = imread("iu.jpg", IMREAD_COLOR);
//    Mat img_gray_1ch, img_gray_3ch;
//
//    int height = img_color.rows;
//    int width = img_color.cols;
//
//    cvtColor(img_color, img_gray_1ch, COLOR_BGR2GRAY);
//    cvtColor(img_gray_1ch, img_gray_3ch, COLOR_GRAY2BGR);
//
//    Mat img_roi = img_color(Rect(50, 180, 250, 270)).clone();
//
//
//    Mat new_img_zero = Mat::zeros(img_roi.rows, img_roi.cols, CV_8UC1);
//    Mat new_img_ones = Mat::ones(img_roi.rows, img_roi.cols, CV_8UC1);
//    new_img_ones = new_img_ones * 255;
//
//    vector<Mat> channels;
//    channels.push_back(new_img_zero); //B
//    channels.push_back(new_img_ones); //G
//    channels.push_back(new_img_zero); //R
//    merge(channels, img_roi); //==> Green Image
//
//    img_roi.copyTo(img_gray_3ch(Rect(50, 180, 250, 270)));
//
//
//    imshow("color", img_color);
//    imshow("result", img_gray_3ch);
//
//    waitKey(0);
//
//    return 0;
//}


////###특정색상 영역 추가(아예 색상 다 채움)
//#include <opencv2/opencv.hpp>
//#include <iostream>
//
//using namespace cv;
//using namespace std;
//
//int main()
//{
//    Mat img_color = imread("iu.jpg", IMREAD_COLOR);
//    Mat img_gray_1ch, img_gray_3ch;
//
//    int height = img_color.rows;
//    int width = img_color.cols;
//
//    cvtColor(img_color, img_gray_1ch, COLOR_BGR2GRAY);
//    cvtColor(img_gray_1ch, img_gray_3ch, COLOR_GRAY2BGR);
//
//    Mat img_roi = img_color(Rect(50, 180, 250, 270)).clone();
//
//
//    Mat new_img_zero = Mat::zeros(img_roi.rows, img_roi.cols, CV_8UC1);
//    Mat new_img_ones = Mat::ones(img_roi.rows, img_roi.cols, CV_8UC1);
//    new_img_ones = new_img_ones * 255;
//
//    vector<Mat> channels;
//    channels.push_back(new_img_zero); //B
//    channels.push_back(new_img_ones); //G
//    channels.push_back(new_img_zero); //R
//    merge(channels, img_roi); //==> Green Image
//
//    img_roi.copyTo(img_gray_3ch(Rect(50, 180, 250, 270)));
//
//
//    imshow("color", img_color);
//    imshow("result", img_gray_3ch);
//
//    waitKey(0);
//
//    return 0;
//}


////###이미지에서 특정색상만 추출
//#include <opencv2/opencv.hpp>
//#include <iostream>
//
//using namespace cv;
//using namespace std;
//
//
//int main()
//{
//    Mat img_color, img_hsv;
//
//    Vec3b lower_red1, upper_red1;
//    Vec3b lower_red2, upper_red2;
//    lower_red1 = Vec3b(0, 100, 100);
//    upper_red1 = Vec3b(5, 255, 255);
//    lower_red2 = Vec3b(170, 100, 100);
//    upper_red2 = Vec3b(180, 255, 255);
//
//    img_color = imread("apples.jpg", IMREAD_COLOR);
//    cvtColor(img_color, img_hsv, COLOR_BGR2HSV);
//    Mat img_mask1, img_mask2, img_mask;
//    inRange(img_hsv, lower_red1, upper_red1, img_mask1);
//    inRange(img_hsv, lower_red2, upper_red2, img_mask2);
//    img_mask = img_mask1 | img_mask2;
//
//    Mat img_result;
//    bitwise_and(img_color, img_color, img_result, img_mask);
//
//    imshow("color", img_color);
//    imshow("result", img_result);
//    waitKey(0);
//    destroyAllWindows();
//    return 0;
//}



////###이미지에서 특정색상만 추출(흰색만 추출)
//#include <opencv2/opencv.hpp>
//#include <iostream>
//
//using namespace cv;
//using namespace std;
//
//
//int main()
//{
//    Mat img_color, img_hsv;
//
//    Vec3b lower_red1, upper_red1;
//    lower_red1 = Vec3b(0, 0, 230);
//    upper_red1 = Vec3b(180, 25, 255);
//
//    img_color = imread("image.jpg", IMREAD_COLOR);
//    cvtColor(img_color, img_hsv, COLOR_BGR2HSV);
//    Mat img_mask;
//    inRange(img_hsv, lower_red1, upper_red1, img_mask);
//
//    Mat img_result;
//    bitwise_and(img_color, img_color, img_result, img_mask);
//
//    imshow("color", img_color);
//    imshow("result", img_result);
//    waitKey(0);
//    destroyAllWindows();
//    return 0;
//}


////###이미지에서 특정색상만 추출(트랙바 사용)
//#include <opencv2/opencv.hpp>
//#include <opencv2/highgui.hpp>
//#include <iostream>
//
//using namespace cv;
//using namespace std;
//
//static void on_trackbar(int, void*) {
//}
//
//int main()
//{
//    Mat img_color, img_hsv;
//    Mat img_mask;// , img_result;
//    Vec3b lower_h, upper_h;
//    img_color = imread("apples.jpg", IMREAD_COLOR);
//    pyrDown(img_color, img_color, Size(img_color.cols / 2, img_color.rows / 2));
//    cvtColor(img_color, img_hsv, COLOR_BGR2HSV);
//
//    namedWindow("HSV");
//    createTrackbar("LOW", "HSV", 0, 180, on_trackbar);
//    createTrackbar("HIGH", "HSV", 0, 180, on_trackbar);
//    setTrackbarPos("LOW", "HSV", 50);
//    setTrackbarPos("HIGH", "HSV", 150);
//
//    int low, high;
//    while (1) {
//        lower_h = Vec3b(getTrackbarPos("LOW", "HSV"), 0, 0);
//        upper_h = Vec3b(getTrackbarPos("HIGH", "HSV"), 255, 255);
//        inRange(img_hsv, lower_h, upper_h, img_mask);
//        Mat img_result;
//        bitwise_and(img_color, img_color, img_result, img_mask);
//        imshow("HSV", img_result);
//
//        if (waitKey(1) == 27)
//            break;
//    }
//
//    destroyAllWindows();
//    return 0;
//}







//###비디오추가
//#include <opencv2/opencv.hpp>
//#include <iostream>
//
//using namespace cv;
//using namespace std;
//
//int main()
//{
//    Mat img_frame, img_result;
//    VideoCapture cap("C:/Gumi_Gyoungju highway.mp4");
//    if (!cap.isOpened())
//    {
//        cout << "카메라를 열 수 없습니다." << endl;
//        return -1;
//    }
//
//    while (1)
//    {
//        bool ret = cap.read(img_frame);
//        if (!ret)
//        {
//            cout << "캡쳐 실패" << endl;
//            break;
//        }
//
//
//
//        cvtColor(img_frame, img_result, COLOR_BGR2GRAY); //Gray로 바꾸는거
//        //Sobel(img_frame, img_frame, img_frame.depth(), 1, 0); //Sobel로 바꾸는거
//        imshow("Color", img_frame);
//        //imshow("Gray", img_result);
//
//        int key = waitKey(25);
//        if (key == 27)
//            break;
//    }
//
//    cap.release();
//    return 0;
//}




////##직선 따 오기1(HoughLines)
//#include <opencv2/opencv.hpp>
//
//
//using namespace cv;
//using namespace std;
//
//
//int main()
//{
//
//    Mat img_edge, img_result;
//
//
//    Mat img_src = imread("test.jpg", IMREAD_GRAYSCALE);
//
//    Canny(img_src, img_edge, 50, 150);
//    cvtColor(img_edge, img_result, COLOR_GRAY2BGR);
//
//
//    vector<Vec2f> lines;
//    HoughLines(img_edge, lines, 1, CV_PI / 180, 150);
//
//    for (size_t i = 0; i < lines.size(); i++)
//    {
//        float rho = lines[i][0], theta = lines[i][1];
//        Point pt1, pt2;
//        double a = cos(theta), b = sin(theta);
//        double x0 = a * rho, y0 = b * rho;
//
//        pt1.x = cvRound(x0 + 1000 * (-b));
//        pt1.y = cvRound(y0 + 1000 * (a));
//        pt2.x = cvRound(x0 - 1000 * (-b));
//        pt2.y = cvRound(y0 - 1000 * (a));
//
//        line(img_result, pt1, pt2, Scalar(0, 0, 255), 3);
//    }
//
//
//    imshow("Source", img_src);
//    imshow("Standard Hough Line Transform", img_result);
//
//
//    waitKey();
//    return 0;
//}



////##직선 따 오기2(HoughLinesP)
//#include <opencv2/opencv.hpp>
//
//
//using namespace cv;
//using namespace std;
//
//
//int main()
//{
//
//    Mat img_edge, img_result;
//
//
//    Mat src = imread("test.jpg", IMREAD_GRAYSCALE);
//
//    Canny(src, img_edge, 50, 150);
//    cvtColor(img_edge, img_result, COLOR_GRAY2BGR);
//
//
//    vector<Vec4i> linesP;
//    HoughLinesP(img_edge, linesP, 1, CV_PI / 180, 50, 50, 5);
//
//    for (size_t i = 0; i < linesP.size(); i++)
//    {
//        Vec4i l = linesP[i];
//        line(img_result, Point(l[0], l[1]), Point(l[2], l[3]), Scalar(0, 0, 255), 3, LINE_AA);
//    }
//
//    imshow("Source", src);
//    imshow("Probabilistic Line Transform", img_result);
//
//    waitKey();
//    return 0;
//}



////##원그리기
//#include <opencv2/opencv.hpp>
//#include <iostream>
//
//
//using namespace cv;
//using namespace std;
//
//int main()
//{
//
//    int width = 640;
//    int height = 480;
//
//    Mat img(height, width, CV_8UC3);
//
//
//    int img_h = img.rows;
//    int img_w = img.cols;
//    int img_bpp = img.channels();
//
//    cout << img_h << " " << img_w << " " << img_bpp << endl;
//
//
//    circle(img, Point(100, 300), 10, Scalar(0, 255, 255), -1);
//
//
//    imshow("drawing", img);
//    waitKey(0);
//}

////##노이즈그리기
//#include <opencv2/opencv.hpp>
//#include <iostream>
//
//
//using namespace cv;
//using namespace std;
//
//int main()
//{
//
//    int width = 640;
//    int height = 480;
//
//    Mat img(height, width, CV_8UC3);
//
//
//    RNG rng(-1);
//
//    int img_h = img.rows;
//    int img_w = img.cols;
//
//
//    for (int y = 0; y < img_h; y++) {
//
//        uchar* pointer_input = img.ptr<uchar>(y);
//        for (int x = 0; x < img_w; x++) {
//
//            pointer_input[x * 3 + 0] = rng.uniform(0, 256);
//            pointer_input[x * 3 + 1] = rng.uniform(0, 256);
//            pointer_input[x * 3 + 2] = rng.uniform(0, 256);
//        }
//    }
//
//
//
//    imshow("drawing", img);
//    waitKey(0);
//}

////#사각형그리기
//#include <opencv2/opencv.hpp>
//
//
//using namespace cv;
//
//
//int main()
//{
//    int width = 640;
//    int height = 480;
//
//    Mat img(height, width, CV_8UC3, Scalar(0, 0, 0));
//
//
//    rectangle(img, Point(50, 50), Point(450, 450), Scalar(0, 0, 255), 3);
//
//    rectangle(img, Point(150, 200), Point(250, 300), Scalar(0, 255, 0), -1);
//
//    rectangle(img, Rect(300, 150, 50, 1000), Scalar(255, 0, 255), -1);
//
//    imshow("result", img);
//    waitKey(0);
//
//
//    return 0;
//}

////##원그리기
//#include <opencv2/opencv.hpp>
//
//
//using namespace cv;
//
//
//int main()
//{
//
//	int width = 640;
//	int height = 480;
//
//	Mat img(height, width, CV_8UC3, Scalar(0, 0, 0));
//
//
//
//	circle(img, Point(320, 240), 10, Scalar(0, 255, 0), -1);
//
//	circle(img, Point(320, 240), 100, Scalar(0, 0, 255), 1);
//
//
//	imshow("result", img);
//	waitKey(0);
//}

////##선그리기
//#include <opencv2/opencv.hpp>
//
//
//using namespace cv;
//
//
//int main()
//{
//
//	int width = 640;
//	int height = 480;
//
//	Mat img(height, width, CV_8UC3, Scalar(0, 0, 0));
//
//
//	line(img, Point(width - 1, 0), Point(0, height - 1), Scalar(0, 255, 0), 3);
//	line(img, Point(0, 0), Point(width - 1, height - 1), Scalar(0, 0, 255), 3);
//
//
//	imshow("result", img);
//	waitKey(0);
//
//	return 0;
//}



////##타원그리기1
//#include <opencv2/opencv.hpp>
//
//
//using namespace cv;
//
//
//int main()
//{
//
//	int width = 640;
//	int height = 480;
//
//	Mat img(height, width, CV_8UC3, Scalar(0, 0, 0));
//
//
//	Point center(int(width / 2), int(height / 2));
//
//
//	ellipse(img, center, Size(200, 10), 0, 0, 360, Scalar(0, 255, 255), 3);
//
//	ellipse(img, center, Size(10, 200), 0, 0, 360, Scalar(0, 255, 0), 3);
//
//	ellipse(img, center, Size(200, 200), 0, 0, 360, Scalar(0, 0, 255), 3);
//
//
//	imshow("result", img);
//	waitKey(0);
//
//	return 0;
//}
//
////##타원그리기2
//#include <opencv2/opencv.hpp>
//
//
//using namespace cv;
//
//
//int main()
//{
//
//	int width = 640;
//	int height = 480;
//
//	Mat img(height, width, CV_8UC3, Scalar(0, 0, 0));
//
//
//	Point center(int(width / 2), int(height / 2));
//
//
//	ellipse(img, center, Size(10, 200), 0, 0, 360, Scalar(0, 255, 0), 3);
//
//	ellipse(img, center, Size(10, 200), 45, 0, 360, Scalar(0, 0, 255), 3);
//
//	ellipse(img, center, Size(10, 200), -45, 0, 360, Scalar(255, 0, 0), 3);
//
//
//	imshow("result", img);
//	waitKey(0);
//
//	return 0;
//}
//
//
////##타원그리기3
//#include <opencv2/opencv.hpp>
//
//
//using namespace cv;
//
//
//int main()
//{
//
//	int width = 640;
//	int height = 480;
//
//	Mat img(height, width, CV_8UC3, Scalar(0, 0, 0));
//
//
//	Point center(int(width / 2), int(height / 2));
//
//
//	ellipse(img, center, Size(100, 100), 0, 0, 90, Scalar(0, 0, 255), 3);
//
//
//	imshow("result", img);
//	waitKey(0);
//
//	return 0;
//}



////##다각형그리기
//#include <opencv2/opencv.hpp>
//
//
//using namespace cv;
//using namespace std;
//
//
//int main()
//{
//
//    int width = 640;
//    int height = 640;
//
//
//    Mat img(height, width, CV_8UC3, Scalar(0, 0, 0));
//
//
//    Scalar red(0, 0, 255);
//    Scalar green(0, 255, 0);
//    Scalar yellow(0, 255, 255);
//
//    int thickness = 2;
//
//
//
//    vector<Point> contour;
//    contour.push_back(Point(315, 50));
//    contour.push_back(Point(570, 240));
//    contour.push_back(Point(475, 550));
//    contour.push_back(Point(150, 550));
//    contour.push_back(Point(50, 240));
//
//    const Point* pts1 = (const cv::Point*) Mat(contour).data;
//    int npts1 = Mat(contour).rows;
//
//    polylines(img, &pts1, &npts1, 1, false, red, thickness);
//
//
//
//    contour.clear();
//    contour.push_back(Point(315, 160));
//    contour.push_back(Point(150, 280));
//    contour.push_back(Point(210, 480));
//    contour.push_back(Point(420, 480));
//    contour.push_back(Point(480, 280));
//
//    const Point* pts2 = (const cv::Point*) Mat(contour).data;
//    int npts2 = Mat(contour).rows;
//
//    polylines(img, &pts2, &npts2, 1, true, green, thickness);
//
//
//    contour.clear();
//    contour.push_back(Point(320, 240));
//    contour.push_back(Point(410, 315));
//    contour.push_back(Point(380, 415));
//    contour.push_back(Point(265, 415));
//    contour.push_back(Point(240, 315));
//
//    const Point* pts3 = (const cv::Point*) Mat(contour).data;
//    int npts3 = Mat(contour).rows;
//
//    fillPoly(img, &pts3, &npts3, 1, yellow);
//
//
//    imshow("result", img);
//    waitKey(0);
//
//
//    return 0;
//}



////##텍스트 넣기
//#include <opencv2/opencv.hpp>
//
//
//using namespace cv;
//
//
//int main()
//{
//
//    int img_w = 640;
//    int img_h = 480;
//
//    Mat img(img_h, img_w, CV_8UC3, Scalar(0, 0, 0));
//
//
//    Scalar red(0, 0, 255);
//    Scalar green(0, 255, 0);
//    Scalar white(255, 255, 255);
//    Scalar yellow(0, 255, 255);
//
//
//    int center_x = int(img_w / 2.0);
//    int center_y = int(img_h / 2.0);
//
//
//    int thickness = 2;
//    Point location(center_x - 200, center_y - 100);
//    int font = FONT_HERSHEY_SCRIPT_SIMPLEX;
//    double fontScale = 3.5;
//    putText(img, "OpenCV", location, font, fontScale, yellow, thickness);
//
//
//
//    location = Point(center_x - 150, center_y + 20);
//    font = FONT_ITALIC;
//    fontScale = 2;
//    putText(img, "Tutorial", location, font, fontScale, red, thickness);
//
//
//
//    location = Point(center_x - 250, center_y + 100);
//    font = FONT_HERSHEY_SIMPLEX;
//    fontScale = 1.5;
//    putText(img, "webnautes.tistory.com", location, font, fontScale, white, thickness);
//
//
//
//    location = Point(center_x - 130, center_y + 150);
//    font = FONT_HERSHEY_COMPLEX;
//    fontScale = 1.2;
//    putText(img, "webnautes", location, font, fontScale, green, thickness);
//
//
//    imshow("drawing", img);
//    waitKey(0);
//
//
//
//    return 0;
//}





////##동영상 프레임단위 불러오기(차선 읽어들이기)
//#include <opencv2/opencv.hpp>
//#include <iostream>
//
//using namespace cv;
//using namespace std;
//
//int main()
//{
//    Mat frame, frame2, frame_gray, sb_frame, img_last, img_result, img_result4;
//    int i = 0;
//    VideoCapture cap("C:/Gumi_Gyoungju highway.mp4");
//    if (!cap.isOpened())
//    {
//        cout << "카메라를 열 수 없습니다." << endl;
//        return -1;
//    }
//
//    while (1)
//    {
//        bool ret = cap.read(frame);
//        if (!ret)
//        {
//            cout << "캡쳐 실패" << endl;
//            break;
//        }
//
//        i++;
//        if (i == 3)
//        {
//            i = 0;
//
//            pyrDown(frame, frame);
//            //cvtColor(frame, frame_gray, COLOR_BGR2GRAY);
//            //Canny(frame_gray, sb_frame, 20, 255);
//            //cvtColor(sb_frame, sb_frame, COLOR_GRAY2BGR);
//            //frame2 = frame + sb_frame;
//            //Sobel(img_frame, img_frame, img_frame.depth(), 1, 0); //Sobel로 바꾸는거
//
//            Mat img_roi = frame(Rect(130, 230, 430, 130)).clone();
//            Mat img_gray = frame(Rect(130, 230, 430, 130)).clone();
//            Mat img_canny = frame(Rect(130, 230, 430, 130)).clone();
//            Mat img_last = frame.clone();
//            Mat img_last2 = frame.clone();
//            Mat img_last3 = frame.clone();
//
//            cvtColor(img_gray, img_gray, COLOR_BGR2GRAY);
//            cvtColor(img_gray, img_gray, COLOR_GRAY2BGR);
//
//            Mat img_hsv;
//            Vec3b lower_red1, upper_red1;
//            lower_red1 = Vec3b(0, 0, 140);
//            upper_red1 = Vec3b(40, 40, 200);
//
//            cvtColor(img_gray, img_hsv, COLOR_BGR2HSV);
//            Mat img_mask1;
//            inRange(img_hsv, lower_red1, upper_red1, img_mask1);
//
//            Mat img_result1;
//            bitwise_and(img_gray, img_gray, img_result1, img_mask1);
//
//            cvtColor(img_roi, img_hsv, COLOR_BGR2HSV);
//            Mat img_mask2;
//            inRange(img_hsv, lower_red1, upper_red1, img_mask2);
//
//            Mat img_result2;
//            bitwise_and(img_roi, img_roi, img_result2, img_mask2);
//
//            img_result = img_result1 + img_result2;
//
//            Mat img_canny1;
//
//            cvtColor(img_result, img_canny, COLOR_BGR2GRAY);
//            Canny(img_canny, img_canny, 50, 150);
//            cvtColor(img_canny, img_canny1, COLOR_GRAY2BGR);
//
//            vector<Vec4i> linesP;
//            HoughLinesP(img_canny, linesP, 1, CV_PI / 180, 50, 50, 5);
//
//            for (size_t i = 0; i < linesP.size(); i++)
//            {
//                Vec4i l = linesP[i];
//                line(img_canny1, Point(l[0], l[1]), Point(l[2], l[3]), Scalar(0, 0, 255), 3, LINE_AA);
//            }
//
//            img_result.copyTo(img_last(Rect(130, 230, 430, 130)));
//            img_canny1.copyTo(img_last2(Rect(130, 230, 430, 130)));
//
//            imshow("color", frame);
//            imshow("white", img_last);
//            imshow("canny", img_last2);
//
//            int key = waitKey(1);
//            if (key == 27)
//                break;
//        }
//    }
//
//    cap.release();
//    return 0;
//}



////##홀짝 구분
//#include <iostream>
//
//using namespace std;
//
//int main() {
//
//	int number;
//	cout << "정수를 입력하세요 : ";
//
//	cin >> number;
//
//	if (number % 2 == 0) {
//		cout << "짝수입니다." << endl;
//	}
//	else {
//		cout << "홀수입니다." << '\n';
//	}
//	return 0;
//}





////##최대값
//#include <iostream>
//
//using namespace std;
//
//int main() {
//	int score[10] = {70,60,55,75,95,90,80,80,50,100};//배열에 값 넣는방법1
//
//	//for (int i = 0; i < 3; i++) {
//
//	//	score[i] = i;//배열에 값 넣는방법2
//	//}
//
//	int max = score[0];
//
//	for (int i = 0; i < sizeof(score)/sizeof(int); i++) {
//		if (max < score[i]) {
//			max = score[i];
//		}
//	}
//
//	cout << "최대값은 " << max << endl;
//
//	return 0;
//}



////##최소값
//#include <iostream>
//
//using namespace std;
//
//int main() {
//	int score[10] = { 70,60,55,75,95,90,80,80,50,100 };
//
//	int min = score[0];
//
//	for (int i = 0; i < sizeof(score)/sizeof(int); i++) {
//		if (min > score[i]) {
//			min = score[i];
//		}
//	}
//
//	cout << "최소값은 " << min << endl;
//
//	return 0;
//}






////##합계
//#include <iostream>
//
//using namespace std;
//
//int main() {
//	int score[10] = { 70,60,55,75,95,90,80,80,50,100 };
//
//	int sum = 0;
//
//	for (int i = 0; i < sizeof(score) / sizeof(int); i++) {
//		sum = sum + score[i];
//	}
//
//	cout << "합계는 " << sum << endl;
//
//	return 0;
//}



////##평균
//#include <iostream>
//
//using namespace std;
//
//int main() {
//	int score[10] = { 70,60,55,75,95,90,80,80,50,100 };
//
//	double avg = 0;
//	int sum = 0;
//
//	for (int i = 0; i < sizeof(score) / sizeof(int); i++) {
//		sum = sum + score[i];
//	}
//
//	avg = (double)sum / (sizeof(score) / sizeof(int));
//
//	cout << "평균은 " << avg << endl;
//
//	return 0;
//}





////##반복문
//#include <iostream>
//
//using namespace std;
//
//int main() {
//
//	int number;
//
//	while (true) {
//		cout << "정수를 입력하세요(0을 누르면 종료) : ";
//		cin >> number;
//
//		if (number < 0) {
//			cout << "양수를 입력하세요." << endl;
//		}
//
//		else if (number == 0) {
//			cout << "종료합니다" << endl;
//			break;
//		}
//
//		else if (number % 2 == 0) {
//			cout << "짝수입니다." << '\n';
//		}
//		else {
//			cout << "홀수입니다." << '\n';
//		}
//	}
//
//	return 0;
//}





////##1~100 출력(while)
//#include <iostream>
//
//using namespace std;
//
//int main() {
//
//	int i = 1;
//
//	while (i <= 100) {
//		cout << i << " ";
//		i++;
//	}
//
//	return 0;
//}



////##1~100 출력(for)
//#include <iostream>
//
//using namespace std;
//
//int main() {
//
//	for (int i = 1; i <= 100; i++) {
//		cout << i << " ";
//	}
//
//	return 0;
//}



////##1~100 사이의 3의배수출력(for)
//#include <iostream>
//
//using namespace std;
//
//int main() {
//
//	for (int i = 1; i <= 100; i++) {
//	
//		if (i % 3 == 0) {
//			cout << i << " ";
//		}
//	}
//	return 0;
//}





////filter와 lambda를 이용하여 배열[1, -2, 3, -5, 8, -3]에서 음수를 모두 제거하는 코드
//#include <iostream>
//#include <array>
//#include <algorithm>
//#include <vector>
//#include <numeric> 
//using namespace std;
//
//int main() {
//    vector <int> nums{ 1,-2,3,-5,8,-3 };
//    vector <int> filter_example;
//    copy_if(nums.begin(), nums.end(), back_inserter(filter_example), [](const auto& x) {return x > 0; });
//
//    for (auto& i : filter_example)
//    {
//        cout << i << "\t";
//    }
//    cout << endl;
//    return 0;
//}



////filter와 lambda를 이용하여 배열[1, 2, 3, 4]에서 3이 곱해짅 리스트[3,6,9 ,12]를 만들어보자
//#include <iostream>
//#include <array>
//#include <algorithm>
//#include <vector>
//#include <numeric> 
//using namespace std;
//
//int main() {
//    vector <int> nums{ 1, 2, 3, 4 };
//    vector <int> map_example;
//    transform(nums.begin(), nums.end(), back_inserter(map_example), [](const auto& x) {return x * 3; });
//
//    for (auto& i : map_example) {
//        cout << i << "\t";
//    }
//    cout << endl;
//
//    return 0;
//}




////##키보드 변경
//#include <opencv2/opencv.hpp>
//#include <iostream>
//
//
//using namespace cv;
//using namespace std;
//
//
//int main()
//{
//
//    Mat img_color;
//    img_color = imread("iu.jpg", IMREAD_COLOR);
//
//    if (img_color.empty())
//    {
//        cout << "이미지 파일을 읽을 수 없습니다." << endl;
//        return -1;
//    }
//
//    Mat img_gray;
//    cvtColor(img_color, img_gray, COLOR_BGR2GRAY);
//    int step = 2;
//
//    while (1)
//    {
//        Mat img_binary;
//        threshold(img_gray, img_binary, step, 255, THRESH_BINARY);
//
//        if (step == 1) {
//            threshold(img_gray, img_binary, 2, 255, THRESH_BINARY);
//        }
//        else if (step == 2) {
//            threshold(img_gray, img_binary, 128, 255, THRESH_BINARY);
//        }
//        else if (step == 3) {
//            threshold(img_gray, img_binary, 200, 255, THRESH_BINARY);
//        }
//        int key = waitKey(1);
//        if (key == 27)
//            break;
//
//        else if (key == 49)
//            step = 1;
//        else if (key == 50)
//            step = 2;
//        else if (key == 51)
//            step = 3;
//        imshow("step", img_binary);
//    }
//    return 0;
//}




////##트랙바 사용(Threshold)
//#include <opencv2/opencv.hpp>
//#include <opencv2/highgui.hpp>
//#include <iostream>
//
//using namespace cv;
//using namespace std;
//
//static void on_trackbar(int, void*) {
//}
//
//int main()
//{
//    Mat img_color, img_gray, img_binary;
//    img_color = imread("apples.jpg", IMREAD_COLOR);
//    pyrDown(img_color, img_color, Size(img_color.cols / 2, img_color.rows / 2));
//    cvtColor(img_color, img_gray, COLOR_BGR2GRAY);
//
//    namedWindow("threshold");
//    createTrackbar("thres", "threshold", 0, 255, on_trackbar);
//    setTrackbarPos("thres", "threshold", 50);
//    int value;
//    Mat thresholded;
//
//    while (1) {
//
//        value = getTrackbarPos("thres", "threshold");
//        threshold(img_gray, thresholded, value, 255, THRESH_BINARY);
//
//        imshow("threshold", thresholded);
//
//        if (waitKey(1) == 27)
//            break;
//    }
//
//    destroyAllWindows();
//    return 0;
//}



////##다각형에서 외곽선 그리기
//#include <opencv2/opencv.hpp>
//#include <iostream>
//
//using namespace cv;
//using namespace std;
//
//
//int main()
//{
//    Mat src, gray;//
//    src = imread("C:/Users/w/ipynb_200617/images/poly2.jpg", IMREAD_COLOR);
//    if (src.empty())
//    {
//        cout << "이미지 파일을 읽을 수 없습니다." << endl;
//        return -1;
//    }
//
//    Mat src_copy = src.clone();//개별 복사(원본 안바뀜)
//
//    cvtColor(src_copy, src_copy, COLOR_BGR2GRAY);
//    threshold(src_copy, src_copy, 87, 255, THRESH_BINARY);
//
//    vector<vector<Point>> contours;
//    findContours(src_copy, contours, RETR_CCOMP, CHAIN_APPROX_NONE);
//
//    for (int i = 0; i < contours.size(); i++) {
//        Scalar c(0, 0, 255);
//        drawContours(src, contours, i, c, 2);
//    }
//
//    imshow("src", src);
//
//    waitKey(0);
//    destroyAllWindows();
//    return 0;
//}




////##다각형에서 외곽선 그리기(노란색만 따오기)
//#include <opencv2/opencv.hpp>
//#include <iostream>
//
//using namespace cv;
//using namespace std;
//
//
//int main()
//{
//    Mat src, gray;
//
//    src = imread("C:/Users/w/ipynb_200617/images/poly2.jpg", IMREAD_COLOR);
//    if (src.empty())
//    {
//        cout << "이미지 파일을 읽을 수 없습니다." << endl;
//        return -1;
//    }
//
//    Mat src_copy = src.clone();//개별 복사(원본 안바뀜)
//    cvtColor(src_copy, src_copy, COLOR_BGR2HSV);
//
//    Vec3b yellow_l, yellow_h;
//    yellow_l = Vec3b(25, 60, 60);
//    yellow_h = Vec3b(35, 255, 255);
//
//
//    Mat img_mask;
//    inRange(src_copy, yellow_l, yellow_h, img_mask);
//
//    Mat img_result;
//    bitwise_and(src, src, img_result, img_mask);
//
//    Mat result_copy = img_result.clone();//개별 복사(원본 안바뀜)
//    cvtColor(img_result, img_result, COLOR_HSV2BGR);
//    cvtColor(img_result, img_result, COLOR_BGR2GRAY);
//    threshold(img_result, img_result, 87, 255, THRESH_BINARY);
//
//
//    vector<vector<Point>> contours;
//    findContours(img_result, contours, RETR_CCOMP, CHAIN_APPROX_NONE);
//
//    for (int i = 0; i < contours.size(); i++) {
//        Scalar c(0, 0, 255);
//        drawContours(result_copy, contours, i, c, 2);
//    }
//
//    imshow("src", result_copy);
//
//    waitKey(0);
//    destroyAllWindows();
//    return 0;
//}




////##다각형에서 외곽선 그리기(노란색만 따오기, 글자넣기)
//#include <opencv2/opencv.hpp>
//#include <iostream>
//
//using namespace cv;
//using namespace std;
//
//
//int main()
//{
//    Mat src, gray;
//
//    src = imread("C:/Users/w/ipynb_200617/images/poly2.jpg", IMREAD_COLOR);
//    if (src.empty())
//    {
//        cout << "이미지 파일을 읽을 수 없습니다." << endl;
//        return -1;
//    }
//
//    Mat src_copy = src.clone();//개별 복사(원본 안바뀜)
//    cvtColor(src_copy, src_copy, COLOR_BGR2HSV);
//
//    Vec3b yellow_l, yellow_h;
//    yellow_l = Vec3b(25, 60, 60);
//    yellow_h = Vec3b(35, 255, 255);
//
//
//    Mat img_mask;
//    inRange(src_copy, yellow_l, yellow_h, img_mask);
//
//    Mat img_result;
//    bitwise_and(src, src, img_result, img_mask);
//
//    Mat result_copy = img_result.clone();//개별 복사(원본 안바뀜)
//    cvtColor(img_result, img_result, COLOR_HSV2BGR);
//    cvtColor(img_result, img_result, COLOR_BGR2GRAY);
//    threshold(img_result, img_result, 87, 255, THRESH_BINARY);
//
//    Mat kernel = getStructuringElement(MORPH_RECT, Size(5, 5));
//    morphologyEx(img_result, img_result, MORPH_CLOSE, kernel);
//
//    vector<vector<Point>> contours;
//    findContours(img_result, contours, RETR_CCOMP, CHAIN_APPROX_NONE);
//
//    int font = FONT_HERSHEY_COMPLEX;
//    double fontScale = 0.8;
//    int thickness = 1;
//    for (int i = 0; i < contours.size(); i++) {
//        drawContours(result_copy, contours, i, Scalar(0, 0, 255), 2);
//        putText(result_copy, to_string(i), contours[i][0], font, fontScale, Scalar(0, 255, 0), thickness);
//        imshow("src1", result_copy);
//        waitKey(0);
//    }
//    destroyAllWindows();
//    return 0;
//}



////##다각형에서 외곽선 그리기, 면적 구하기
//#include <opencv2/opencv.hpp>
//#include <iostream>
//
//using namespace cv;
//using namespace std;
//
//
//int main()
//{
//
//    Scalar green(0, 255, 0);
//    Scalar red(0, 0, 255);
//    Scalar yellow(0, 255, 255);
//
//    Mat src, gray;//
//    src = imread("C:/Users/w/ipynb_200617/images/poly2.jpg", IMREAD_COLOR);
//    if (src.empty())
//    {
//        cout << "이미지 파일을 읽을 수 없습니다." << endl;
//        return -1;
//    }
//
//    Mat src_copy = src.clone();//개별 복사(원본 안바뀜)
//
//    cvtColor(src_copy, src_copy, COLOR_BGR2GRAY);
//    threshold(src_copy, src_copy, 87, 255, THRESH_BINARY);
//
//    Mat kernel = getStructuringElement(MORPH_RECT, Size(5, 5));
//    morphologyEx(src_copy, src_copy, MORPH_CLOSE, kernel);
//
//    vector<vector<Point>> contours;
//    findContours(src_copy, contours, RETR_CCOMP, CHAIN_APPROX_NONE);
//
//
//    int font = FONT_HERSHEY_COMPLEX;
//    double fontScale = 0.8;
//    int thickness = 1;
//
//    for (int i = 0; i < contours.size(); i++) {
//        double c_area = contourArea(contours[i]);
//        if (c_area > 5000.0) {
//            drawContours(src, contours, i, red, 2);
//            cout << contourArea(contours[i], false) << endl;
//            ostringstream o_string;
//            o_string << to_string(i) << " : " << contourArea(contours[i]);
//            putText(src, o_string.str(), contours[i][0], font, fontScale, Scalar(0, 255, 0), thickness);
//            imshow("src", src);
//            waitKey(0);
//        }
//    }
//    destroyAllWindows();
//    return 0;
//
//}

