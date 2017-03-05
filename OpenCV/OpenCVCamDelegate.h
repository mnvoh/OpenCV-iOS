//
//  OpenCVCamDelegate.h
//  OpenCV
//
//  Created by Milad Nozari on 3/4/17.
//  Copyright © 2017 Nozary. All rights reserved.
//

#ifndef OpenCVCamDelegate_h
#define OpenCVCamDelegate_h

@protocol OpenCVCamDelegate <NSObject>
- (void) imageProcessed: (UIImage*) image;
@end

#endif /* OpenCVCamDelegate_h */
