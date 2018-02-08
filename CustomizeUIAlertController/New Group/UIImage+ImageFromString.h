//
//
//  Created by Thach NB on 2018-02-08.
//

#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIKit.h>

@interface UIImage (ImageFromString)

+ (UIImage *) imageFromView:(UIView *)view;
+ (UIImage *) imageFromString:(NSString *)str;
+ (UIImage *) cachedImageFromString:(NSString *)str;

@end

