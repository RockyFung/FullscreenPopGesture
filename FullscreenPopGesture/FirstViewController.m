//
//  FirstViewController.m
//  FullscreenPopGesture
//
//  Created by rocky on 2017/2/14.
//  Copyright © 2017年 RockyFung. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "UINavigationController+FDFullscreenPopGesture.h"
@interface FirstViewController ()

@end

@implementation FirstViewController


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.barTintColor = [UIColor redColor];
    self.navigationItem.title = @"第一页";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(50, 200, 200, 40)];
    [btn setTitle:@"下一页" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
 
    
}

- (void)btnAction:(UIButton *)btn{
    SecondViewController *Vc = [[SecondViewController alloc]init];
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
