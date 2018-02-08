//
//  ViewController.m
//  CustomizeUIAlertController
//
//  Created by Thach NB on 2018-02-08.
//  Copyright © 2018 Thach NB. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+ImageFromString.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showUIAlertActionWithIcon:(UIButton *)sender
{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Hi!" message:@"Are you?" preferredStyle:UIAlertControllerStyleAlert];
    
    // Item with Man icon
    UIAlertAction *male = [UIAlertAction actionWithTitle:@"Male" style:UIAlertActionStyleDefault handler:nil];
    UIImage *maleImage = [UIImage imageFromString:@"\U0001F468"];
    maleImage = [maleImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
    [male setValue:maleImage forKey:@"image"];
    
    // Item with Woman icon
    UIAlertAction *female = [UIAlertAction actionWithTitle:@"Female" style:UIAlertActionStyleDefault handler:nil];
    UIImage *femaleImage = [UIImage imageFromString:@"\U0001F469"];
    femaleImage = [femaleImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
    [female setValue:femaleImage forKey:@"image"];
    
    // Item with Robot icon
    UIAlertAction *robot = [UIAlertAction actionWithTitle:@"Robot" style:UIAlertActionStyleCancel handler:nil];
    UIImage *robotImage = [UIImage imageFromString:@"\U0001F916"];
    robotImage = [robotImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
    [robot setValue:robotImage forKey:@"image"];
    
    [alert addAction:male];
    [alert addAction:female];
    [alert addAction:robot];

    [self presentViewController:alert animated:YES completion:nil];

}

@end
