//
//  RootViewController.m
//  obj_1_lesson1
//
//  Created by 16817252 on 14/10/2019.
//  Copyright © 2019 16817252. All rights reserved.
//

#import "RootViewController.h"
#import "ViewController.h"
#import "NavViewController.h"

@interface RootViewController ()

@property (nonatomic, strong) UIButton *button;
@property (nonatomic, strong) ViewController *viewController;
@property (nonatomic, strong) NavViewController *navDelegate;

@end

@implementation RootViewController

- (instancetype)init
{
	self = [super init];
	if (self)
	{
		_viewController = [ViewController new];
        self.navDelegate = [NavViewController new];
		[self setUpButton];
	}
	return self;
}

- (void)setUpButton
{
	_button = [UIButton new];
	[_button setTitle:@"Привет!" forState:UIControlStateNormal];
	[_button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
	_button.backgroundColor = [UIColor whiteColor];
	[self.view addSubview:_button];
}

- (void)viewWillAppear:(BOOL)animated
{
	[super viewWillAppear:animated];
    self.navigationController.delegate = self.navDelegate;
	self.view.backgroundColor = [UIColor redColor];
	
	CGRect myRect = self.view.frame;
	
	//self.button.center = CGPointMake(CGRectGetMidX(myRect), CGRectGetMidY(myRect));
//	self.button.frame = CGRectMake(CGRectGetMinX(myRect) - 50.0,
//								   CGRectGetMinY(myRect) + 20.0,
//								   100.0,
//								   40.0);
	self.button.frame = CGRectMake(CGRectGetMidX(myRect),
								   CGRectGetMidY(myRect),
								   100.0,
								   40.0);
	[self.button addTarget:self
					action:@selector(tapButton)
		  forControlEvents:UIControlEventTouchDown];
	[self.view addSubview:self.button];
	//self.view addSubview:
}


- (void)tapButton
{
    [self.navigationController pushViewController:self.viewController
                                         animated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
