//
//  baseViewController.m
//  imgword
//
//  Created by Harley on 2017/8/25.
//  Copyright © 2017年 Steven. All rights reserved.
//

#import "baseViewController.h"

@interface baseViewController ()<UIGestureRecognizerDelegate> //声明侧滑手势的delegate

@end

@implementation baseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if ([self.navigationController respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
        
        self.navigationController.interactivePopGestureRecognizer.delegate = self;
        
    }
}

-(BOOL) gestureRecognizerShouldBegin:(UIGestureRecognizer*)gestureRecognizer{
    if (self.childViewControllers.count==1) {
        return NO;
    }
    return YES;
}

- (BOOL)gestureRecognizerShouldBegin {
    
    NSLog(@"~~~~~~~~~~~%@控制器 滑动返回~~~~~~~~~~~~~~~~~~~",[self class]);
    
    return YES;
    
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
