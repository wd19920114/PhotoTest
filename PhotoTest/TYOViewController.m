//
//  TYOViewController.m
//  PhotoTest
//
//  Created by 王迪 on 14-1-17.
//  Copyright (c) 2014年 Marcoe. All rights reserved.
//

#import "TYOViewController.h"

#import "ALAssetsLibrary+CustomPhotoAlbum.h"

@interface TYOViewController ()

@end

@implementation TYOViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)save:(id)sender
{
    ALAssetsLibrary *temp = [[ALAssetsLibrary alloc] init];
    [temp saveImage:[UIImage imageNamed:@"icon170x170"] toAlbum:@"myphoto" withCompletionBlock:^(NSError *error) {
        if (error != nil)
        {
            NSLog(@"%@",error);
        }
    }];
}

@end
