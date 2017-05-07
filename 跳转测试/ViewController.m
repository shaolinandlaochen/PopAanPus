//
//  ViewController.m
//  跳转测试
//
//  Created by 韩少林 on 2017/5/7.
//  Copyright © 2017年 MrHan. All rights reserved.
//

#import "ViewController.h"
#import "oneViewController.h"
@interface ViewController ()

@end

@implementation ViewController
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
//    NSMutableArray *navigationarray = [NSMutableArray arrayWithArray:self.navigationController.viewControllers];
//    if (navigationarray.count>1) {
//        for (int i=0; i<navigationarray.count; i++) {
//            if (i>0) {
//                [navigationarray removeObjectAtIndex:i];
//            }
//        }
//    }
//    self.navigationController.viewControllers = navigationarray;
}
- (void)viewDidLoad {
    [super viewDidLoad];

    self.title=@"1111";
    self.view.backgroundColor=[[UIColor redColor]colorWithAlphaComponent:0.3];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    oneViewController *one=[[oneViewController alloc]init];
    [self.navigationController pushViewController:one animated:YES];
  
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
