//
//  SecondViewController.m
//  FullscreenPopGesture
//
//  Created by rocky on 2017/2/14.
//  Copyright © 2017年 RockyFung. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "UINavigationController+FDFullscreenPopGesture.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    // 需要和第三个页面颜色一样，否则第三个页面回来的时候颜色会突然改变
//    self.navigationController.navigationBar.barTintColor = [UIColor blueColor];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
     self.fd_prefersNavigationBarHidden = YES;
    
    UILabel *la = [[UILabel alloc]initWithFrame:CGRectMake(0,50 , 400, 40)];
    la.text = @"隐藏了navgation bar";
    la.textColor = [UIColor greenColor];
    la.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:la];
    
    
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(50, 200, 200, 40)];
    [btn setTitle:@"下一页" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)btnAction:(UIButton *)btn{
    ThirdViewController *Vc = [[ThirdViewController alloc]init];
    [self.navigationController pushViewController:Vc animated:YES];
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
