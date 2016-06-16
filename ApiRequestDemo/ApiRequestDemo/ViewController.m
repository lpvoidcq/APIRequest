//
//  ViewController.m
//  ApiRequestDemo
//
//  Created by CaoQuan on 16/6/12.
//  Copyright © 2016年 CaoQuan. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"

@interface ViewController ()<UIWebViewDelegate>
@property (nonatomic, weak) UIViewController *delegate;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	self.view.backgroundColor = [UIColor whiteColor];
	
	UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
	button.frame = CGRectMake(30, 200, 100, 30);
	[button setTitle:@"click" forState:UIControlStateNormal];
	[button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
	[button addTarget:self action:@selector(clickAction) forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:button];
	
	[self addObserver:self forKeyPath:@"delegate" options:NSKeyValueObservingOptionInitial context:nil];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (void)clickAction {
	FirstViewController *vc = [[FirstViewController alloc] init];
	self.delegate = vc;
	[self.navigationController pushViewController:vc animated:YES];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context {
	if ([keyPath isEqualToString:@"delegate"]) {
		NSLog(@"observeValueForKeyPath");
		NSObject *newObj = change[NSKeyValueChangeNewKey];
		NSObject *oldObj = change[NSKeyValueChangeOldKey];
		
		if (newObj == nil && oldObj) {
			
			NSLog(@"%@ has dealloc", oldObj.description);
		}
	}
}
@end
