//
//  TSViewController.m
//  TSGradientCycleAnimationView
//
//  Created by winfast on 07/19/2019.
//  Copyright (c) 2019 winfast. All rights reserved.
//

#import "TSViewController.h"
#import <TSGradientCycleAnimationView/TSGradinetAnimationView.h>

@interface TSViewController ()


@property (nonatomic, strong) TSGradinetAnimationView *bgImageView;

@end

@implementation TSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.bgImageView = [[TSGradinetAnimationView alloc] initWithFrame:CGRectMake((self.view.frame.size.width - 255) * 0.5, 200, 255, 255)];
    self.bgImageView.backgroundColor = UIColor.clearColor;
    self.bgImageView.layer.masksToBounds = YES;
    [self.view addSubview:self.bgImageView];
    
    //[self.bgImageView createGrdinetWithAnimation:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.bgImageView createGrdinetWithAnimation:YES];
}

@end
