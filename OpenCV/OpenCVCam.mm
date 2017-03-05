//
//  OpenCVCam.m
//  OpenCV
//
//  Created by Milad Nozari on 3/4/17.
//  Copyright © 2017 Nozary. All rights reserved.
//

#import "OpenCVCam.h"
#import "UIImage+OpenCV.h"

using namespace cv;

@implementation OpenCVCam

+ (id)sharedInstance {
    static OpenCVCam *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
        [instance initCam];
    });
    return instance;
}

- (id) init
{
    return self;
}

- (void) start
{
    [self.cam start];
}

- (void) stop
{
    [self.cam stop];
}

- (void) initCam
{
    self.cam = [[CvVideoCamera alloc] init];
    
    self.cam.defaultAVCaptureDevicePosition = AVCaptureDevicePositionFront;
    self.cam.defaultAVCaptureSessionPreset = AVCaptureSessionPreset1280x720;
    self.cam.defaultAVCaptureVideoOrientation = AVCaptureVideoOrientationPortrait;
    self.cam.defaultFPS = 30;
    self.cam.grayscaleMode = NO;
    self.cam.delegate = self;
}

- (void)processImage:(cv::Mat &)image
{
   
    // Do some OpenCV stuff with the image
    Mat image_copy;
    cvtColor(image, image_copy, COLOR_BGR2GRAY);
    // invert image
    bitwise_not(image_copy, image_copy);
    //Convert BGR to BGRA (three channel to four channel)
    Mat bgr;
    cvtColor(image_copy, bgr, COLOR_GRAY2BGR);
    cvtColor(bgr, image, COLOR_BGR2BGRA);
    
    if (self.delegate != nil) {
        [self.delegate imageProcessed:[UIImage imageWithCVMat: image]];
    }
}

@end
