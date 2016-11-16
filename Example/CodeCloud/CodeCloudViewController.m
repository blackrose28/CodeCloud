//
//  CodeCloudViewController.m
//  CodeCloud
//
//  Created by chuonglv on 11/15/2016.
//  Copyright (c) 2016 chuonglv. All rights reserved.
//

#import "CodeCloudViewController.h"

@interface CodeCloudViewController ()

@end

@implementation CodeCloudViewController

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
- (IBAction)Init:(id)sender {
    _codecloud = [[CodeCloud alloc]initWithHost:@"123.30.242.204" andPort:6922 andOpts:@"{\"token\":\"c29hcHRva2VuMC40OTg1MjEwMCAxNDc0NTQ2NTY5Kzc0NDI1MzQ5\",\"app_key\":432423,\"env\":\"production\"}"];
}
- (IBAction)Request:(id)sender {
    [_codecloud requestWithRoute:@"backend.room.msg" andMsg:@"{}" withTimeout:10];
}

@end
