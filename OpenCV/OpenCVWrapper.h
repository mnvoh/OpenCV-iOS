//
//  OpenCVWrapper.h
//  OpenCV
//
//  Created by Milad Nozari on 3/4/17.
//  Copyright © 2017 Nozary. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "OpenCVCamDelegate.h"

@interface OpenCVWrapper : NSObject

- (void)setDelegate: (id<OpenCVCamDelegate>) delegate;
- (void)start;
- (void)stop;

@end
