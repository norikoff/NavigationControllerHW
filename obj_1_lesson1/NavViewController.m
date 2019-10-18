//
//  NavViewController.m
//  obj_1_lesson1
//
//  Created by Юрий Нориков on 18.10.2019.
//  Copyright © 2019 16817252. All rights reserved.
//

#import "NavViewController.h"

@interface NavViewController ()

@end

@implementation NavViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    NSLog(@"%@",viewController.class);
}

@end
