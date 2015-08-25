//
//  ViewController.m
//  SBButtonExample
//

//  Created by Surebro on 8/25/2558 BE.
//  Copyright (c) 2558 Surebro. All rights reserved.
//

#import "ViewController.h"
#import "SBButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)switchStatesButtonTapped:(SBButton *)sender {
    [sender setSelected: ![sender isSelected]];
}

@end
