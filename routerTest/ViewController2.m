//
//  ViewController2.m
//  routerTest
//
//  Created by addcn591 on 2019/5/24.
//  Copyright © 2019 Addcn. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"ViewController2";
    
    UILabel *userNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.view.center.x, 100, 100, 30)];
    userNameLabel.text = self.userName;
    [self.view addSubview:userNameLabel];
    
    UILabel *passwordLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.view.center.x, 130, 100, 30)];
    passwordLabel.text = [NSString stringWithFormat:@"%ld",(long)self.password];
    [self.view addSubview:passwordLabel];
    
    UILabel *isLoginLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.view.center.x, 160, 100, 30)];
    isLoginLabel.text = [NSString stringWithFormat:@"%ld",(long)self.isLogin];
    [self.view addSubview:isLoginLabel];
}

@end
