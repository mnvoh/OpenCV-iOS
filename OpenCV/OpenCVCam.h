//
//  OpenCVCam.h
//  OpenCV
//
//  Created by Milad Nozari on 3/4/17.
//  Copyright © 2017 Nozary. All rights reserved.
//

#ifndef OpenCVCam_h
#define OpenCVCam_h

#import <opencv2/opencv.hpp>
#import <opencv2/videoio/cap_ios.h>
#import "OpenCVCamDelegate.h"

@interface OpenCVCam : NSObject<CvVideoCameraDelegate>

@property CvVideoCamera* cam;
@property id<OpenCVCamDelegate> delegate;

+ (id) sharedInstance;

- (void) start;
- (void) stop;
- (void) initCam;

@end

#endif /* OpenCVCam_h */
