//
//  MyViewController.m
//  BCGenieEffectTest
//
//  Created by dor0thy on 2014/05/22.
//  Copyright (c) 2014年 h0shim0. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()

@end

@implementation MyViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Hello, World! ラベルを追加
    // 背景は白，文字は黒で
    UILabel *label = [[UILabel alloc] initWithFrame:self.view.bounds];
    label.text = @"Hello, World!";
    label.textAlignment = NSTextAlignmentCenter;
    label.backgroundColor = [UIColor whiteColor];
    label.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self.view addSubview:label];
    
    // ボタンを追加
    // これをタップしたら画面遷移する
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"画面遷移" forState:UIControlStateNormal];
    [button sizeToFit];
    CGPoint newPoint = self.view.center;
    newPoint.y += 50;
    button.center = newPoint;
    button.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;
    [button addTarget:self action:@selector(buttonDidPush)
     forControlEvents:UIControlEventTouchUpInside];
     [self.view addSubview:button];
}

- (void)buttonDidPush {
    // 自分自身を背面に移動
    // 結果として裏にあるViewController2が前面に出る
    [self.view.window sendSubviewToBack:self.view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
