//
//  ViewController.m
//  Tabbar
//
//  Created by 赵 on 2018/3/2.
//  Copyright © 2018年 袁书辉. All rights reserved.
//

#import <Lottie/LOTAnimationView.h>
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (IBAction)clicke:(id)sender {
    LOTAnimationView *animation = [LOTAnimationView animationNamed:@"data@3x"];
    [self.view addSubview:animation];
    animation.frame = CGRectMake(20,88 ,100, 100);
    [animation playWithCompletion:^(BOOL animationFinished) {
        // Do Something
    }];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
