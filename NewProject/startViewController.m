//
//  startViewController.m
//  Detectnum
//
//  Created by li li on 2017/7/21.
//  Copyright © 2017年 Steven. All rights reserved.
//

#import "startViewController.h"
#import "RootViewController.h"
#import "webViewController1.h"

@interface startViewController ()

@end

@implementation startViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self addimageview:@"0.jpg"];
    CGRect rect = CGRectMake(LineX(85), LineY(80), LineX(50), LineY(50));
    
    UILabel *label = [[UILabel alloc] initWithFrame:rect];
     NSString *nslab = NSLocalizedString(@"hdu",@"");
    label.text =nslab; //设置内容
    
    label.font = [UIFont systemFontOfSize:20]; //⼀一般方法
    
    label.font = [UIFont boldSystemFontOfSize:20];
    [label sizeToFit];
    label.center = CGPointMake(Main_Screen_Width/2,80);
  
    [self.view addSubview:label];
    
    CGRect rect2 = CGRectMake(LineX(90), LineY(110), LineX(50), LineY(50));
    UILabel *label2 = [[UILabel alloc] initWithFrame:rect2];
    NSString *nslab2 = NSLocalizedString(@"imagelab",@"");
    label2.text =nslab2; //设置内容
    
    label2.font = [UIFont systemFontOfSize:20]; //⼀一般方法
    
    label2.font = [UIFont boldSystemFontOfSize:20];
    
    [label2 sizeToFit];
    label2.center = CGPointMake(LineX(320/2),LineY(110));
    [self.view addSubview:label2];
    
    UIButton *but1 =[UIButton buttonWithType:UIButtonTypeCustom];
    but1.frame=CGRectMake(LineX((320-100)/2), LineY(450), LineX(100), LineY(30));
    but1.backgroundColor=[UIColor grayColor];
   NSString *but1s = NSLocalizedString(@"contact",@"");
    but1.layer.cornerRadius = 10.0;//2.0是圆角的弧度，根据需求自己更改
    but1.layer.borderColor = [UIColor blackColor].CGColor;//设置边框颜色
    but1.layer.borderWidth = 1.0f;
  
    [but1 setTitle: but1s forState: UIControlStateNormal];
    [but1 addTarget:self action:@selector(but1clik) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:but1];
    
    UIButton *but2 =[UIButton buttonWithType:UIButtonTypeCustom];
    but2.backgroundColor=[UIColor grayColor];
    but2.frame=CGRectMake(LineX((320-180)/2), LineY(510), LineX(180), LineY(30));
    but2.layer.cornerRadius = 10.0;//2.0是圆角的弧度，根据需求自己更改
    but2.layer.borderColor = [UIColor blackColor].CGColor;//设置边框颜色
    but2.layer.borderWidth = 1.0f;
   // but2.backgroundColor=[UIColor greenColor];
    NSString *but2s = NSLocalizedString(@"detect",@"");
    [but2 setTitle:but2s forState:UIButtonTypeCustom];
    [but2 addTarget:self action:@selector(but2clik) forControlEvents:UIControlEventTouchUpInside];
   // but2.backgroundColor=[UIColor blackColor];
    [self.view addSubview:but2];
    
   
    
}
-(void)but1clik{
    webViewController1 * web1=[[webViewController1 alloc]init];
    [self.navigationController pushViewController:web1 animated:YES];
}
-(void) but2clik{
    RootViewController *r=[[RootViewController alloc]init];
    [self.navigationController pushViewController: r animated:YES];
}

-(void)addimageview:(NSString *)imagename{
    
    
    UIImageView* imageview1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, Main_Screen_Width, Main_Screen_Height)];
   
    UIImage * image=[UIImage imageNamed:imagename];
    
    [imageview1 setImage:image];
    
    [self.view addSubview:imageview1];
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
