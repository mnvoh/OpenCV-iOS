//
//  OpenCVWrapper.m
//  OpenCV
//
//  Created by Milad Nozari on 3/4/17.
//  Copyright © 2017 Nozary. All rights reserved.
//

#import "OpenCVWrapper.h"
#import "UIImage+OpenCV.h"
#import "OpenCVCam.h"

@implementation OpenCVWrapper

- (void)setDelegate: (id<OpenCVCamDelegate>) delegate
{
    OpenCVCam* cvCam = [OpenCVCam sharedInstance];
    cvCam.delegate = delegate;
}

- (void) start
{
    OpenCVCam* cvCam = [OpenCVCam sharedInstance];
    [cvCam start];
}

- (void) stop
{
    OpenCVCam* cvCam = [OpenCVCam sharedInstance];
    [cvCam stop];
}

@end

