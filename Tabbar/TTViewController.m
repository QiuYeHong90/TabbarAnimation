//
//  TTViewController.m
//  Tabbar
//
//  Created by 赵 on 2018/3/2.
//  Copyright © 2018年 袁书辉. All rights reserved.
//
#import <Lottie/LOTAnimationView.h>
#import "TTViewController.h"

@interface TTViewController ()<UITabBarDelegate>

@property (nonatomic,strong) LOTAnimationView *animation;

@property (nonatomic,strong) NSArray * imgParr;

@end

@implementation TTViewController
-(NSArray *)imgParr
{
    if (!_imgParr) {
        _imgParr =@[@"tab_poster_rec_p",@"tab_poster_find_p",@"tab_poster_hotpoint_p",@"tab_poster_vip_p"];
    }
    return _imgParr;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.tabBar.delegate = self;
}
- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item
{
    
    NSArray * sss = self.tabBar.subviews;
    
    
    UIView *tabbarbutton = sss[item.tag+1];
    
    
    for (UIView *view in tabbarbutton.subviews) {
        
        
        
        if ([view isKindOfClass:NSClassFromString(@"UITabBarSwappableImageView")]) {
            
            
                    [self.animation removeFromSuperview];
                    NSString * name = self.imgParr[item.tag];
                    CGFloat scale = [[UIScreen mainScreen] scale];
                    name = 3.0 == scale ? [NSString stringWithFormat:@"%@@3x", name] : [NSString stringWithFormat:@"%@@2x", name];
                    LOTAnimationView *animation = [LOTAnimationView animationNamed:name];
                    [view addSubview:animation];
                    animation.bounds = CGRectMake(0, 0,view.bounds.size.width,view.bounds.size.width*68/140.f);
                    animation.center = CGPointMake(view.bounds.size.width/2, view.bounds.size.height/2);
                    [animation playWithCompletion:^(BOOL animationFinished) {
                        // Do Something
                    }];
                    self.animation = animation;
        }
        
    }
    
    
    
    

}


+ (UIImage *)ssimageNamed:(NSString *)name
{
    CGFloat scale = [[UIScreen mainScreen] scale];
    name = 3.0 == scale ? [NSString stringWithFormat:@"%@@3x.png", name] : [NSString stringWithFormat:@"%@@2x.png", name];
    UIImage *image = [UIImage imageWithContentsOfFile:[[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:name]];
    return image;
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
