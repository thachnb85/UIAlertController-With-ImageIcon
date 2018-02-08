//
//
//  Created by Thach NB on 2018-02-08.
//

#import "UIImage+ImageFromString.h"
#import <QuartzCore/QuartzCore.h>

@implementation UIImage(ImageFromString)

+ (UIImage *) imageFromView:(UIView *)view
{
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, view.opaque, 0.0);
    [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return img;
}

+ (UIImage *) imageFromString:(NSString *)str
{
    UILabel *label = [[UILabel alloc] init];
    label.text = str;
    label.opaque = NO;
    label.backgroundColor = UIColor.clearColor;
    CGSize measuredSize = [str sizeWithFont:label.font];
    label.frame = CGRectMake(0, 0, measuredSize.width, measuredSize.height);
    return [UIImage imageFromView:label];
}

+ (UIImage *) cachedImageFromString:(NSString *)str
{
    static NSMutableDictionary *cache = nil;
    if (cache == nil)
        cache = [NSMutableDictionary dictionary];
    UIImage *image = [cache objectForKey:str];
    if (image != nil)
        return image;
    image = [UIImage imageFromString:str];
    [cache setObject:image forKey:str];
    return image;
}

@end

