//
//  oneViewController.m
//  跳转测试
//
//  Created by 韩少林 on 2017/5/7.
//  Copyright © 2017年 MrHan. All rights reserved.
//

#import "oneViewController.h"
#import "ViewController.h"
@interface oneViewController ()

@end

@implementation oneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
      self.title=@"22222";
    self.view.backgroundColor=[[UIColor blueColor]colorWithAlphaComponent:0.3];
    // Do any additional setup after loading the view.
}
-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
   
    

    //pus
    
    NSMutableArray *navigationarray = [NSMutableArray arrayWithArray:self.navigationController.viewControllers];
    if (navigationarray.count>1) {
        for (int i=0; i<navigationarray.count; i++) {
            if (i>0) {
                [navigationarray removeObjectAtIndex:i];
            }
        }
    }
    CATransition* transition = [CATransition animation];
    transition.duration = 0.5;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionFromTop; //kCATransitionMoveIn; //, kCATransitionPush, kCATransitionReveal, kCATransitionFade
    //transition.subtype = kCATransitionFromTop; //kCATransitionFromLeft, kCATransitionFromRight, kCATransitionFromTop, kCATransitionFromBottom
    [self.navigationController.view.layer addAnimation:transition forKey:nil];
    self.navigationController.viewControllers = navigationarray;
    ViewController *two=[[ViewController alloc]init];
    [self.navigationController pushViewController:two animated:NO];
    
    
    
    
    
    
    
    //pop
    /*
    CATransition* transition = [CATransition animation];
    transition.duration = 0.5;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionFromTop; //kCATransitionMoveIn; //, kCATransitionPush, kCATransitionReveal, kCATransitionFade
    //transition.subtype = kCATransitionFromTop; //kCATransitionFromLeft, kCATransitionFromRight, kCATransitionFromTop, kCATransitionFromBottom
    [self.navigationController.view.layer addAnimation:transition forKey:nil];
    [[self navigationController] popViewControllerAnimated:NO];
     */

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
