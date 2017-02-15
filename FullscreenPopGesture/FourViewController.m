//
//  FourViewController.m
//  FullscreenPopGesture
//
//  Created by rocky on 2017/2/14.
//  Copyright © 2017年 RockyFung. All rights reserved.
//

#import "FourViewController.h"
#import "UINavigationController+FDFullscreenPopGesture.h"

@interface FourViewController ()

@end

@implementation FourViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.barTintColor = [UIColor yellowColor];
    self.navigationItem.title = @"第四页";
}

- (void)viewDidLoad {
    [super viewDidLoad];
     self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
    
    UILabel *la = [[UILabel alloc]initWithFrame:CGRectMake(0,100 , 400, 40)];
    la.text = @"取消了滑动";
    la.textColor = [UIColor greenColor];
    la.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:la];
    
    // 取消滑动
    self.fd_interactivePopDisabled = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
