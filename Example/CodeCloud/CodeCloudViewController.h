//
//  CodeCloudViewController.h
//  CodeCloud
//
//  Created by chuonglv on 11/15/2016.
//  Copyright (c) 2016 chuonglv. All rights reserved.
//

@import UIKit;

#import <CodeCloud/CodeCloud.h>


@interface CodeCloudViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIButton *btnInit;
@property (strong, nonatomic) IBOutlet UIButton *btnRequest;
@property (strong, nonatomic) IBOutlet UILabel *lblMain;

@property (retain, nonatomic) CodeCloud* codecloud;

@end
