//
//  webViewController1.m
//  Detectnum
//
//  Created by li li on 2017/7/21.
//  Copyright © 2017年 Steven. All rights reserved.
//

#import "webViewController1.h"


@interface webViewController1 ()

@end

@implementation webViewController1

- (void)viewDidLoad {
    [super viewDidLoad];

    [self addscrollview];
    [self addlabel];
    [self addbutton];
}








- (void)addbutton{
    
    
    UIButton* button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, LineX(70), LineY(60))];
    NSString *but11s = NSLocalizedString(@"back",@"");
    [button setTitle:but11s forState:UIControlStateNormal];
    //button.backgroundColor=[UIColor blackColor];
    
    [button addTarget:self action:@selector(butclik1) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}


-(void) butclik1{
    
    //startViewController *s=[[startViewController alloc]init];
    [self.navigationController popViewControllerAnimated:YES];
}



-(void)addlabel{
    UILabel *lab=[[UILabel alloc]init];
    lab.frame=CGRectMake(LineX(0), LineY(0), Main_Screen_Width, LineY(50) );
    lab.backgroundColor=[UIColor colorWithRed:77/255.0 green:150/255.0 blue:238/255.0 alpha:1];
    [self.view addSubview:lab];
}
-(void) addscrollview{
    // Do any additional setup after loading the view.
    // 1.创建UIScrollView
    UIScrollView *scrollView = [[UIScrollView alloc] init];
    scrollView.frame = CGRectMake(LineX(0), LineY(50), Main_Screen_Width, Main_Screen_Height); // frame中的size指UIScrollView的可视范围
    scrollView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:scrollView];
    
    // 2.创建UIImageView（图片）
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.image = [UIImage imageNamed:@"lab.jpg"];
    CGFloat imgW = imageView.image.size.width; // 图片的宽度
    CGFloat imgH = imageView.image.size.height; // 图片的高度
    
    
    
    imageView.frame = CGRectMake(LineX(0), LineY(-20), Main_Screen_Width, imgH*Main_Screen_Width/imgW);
    [scrollView addSubview:imageView];
    
    // 3.设置scrollView的属性
    
    // 设置UIScrollView的滚动范围（内容大小）
    scrollView.contentSize = CGSizeMake( Main_Screen_Width, LineY(imgH*Main_Screen_Width/imgW+25));
    
    // 隐藏水平滚动条
    //scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.showsVerticalScrollIndicator = NO;
    
    // 用来记录scrollview滚动的位置
    //    scrollView.contentOffset = ;
    
    // 去掉弹簧效果
    //    scrollView.bounces = NO;
    
    // 增加额外的滚动区域（逆时针，上、左、下、右）
    // top  left  bottom  right
    //scrollView.contentInset = UIEdgeInsetsMake(20, 20, 20, 20);
    

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
