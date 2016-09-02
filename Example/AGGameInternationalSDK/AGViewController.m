//
//  AGViewController.m
//  AGGameInternationalSDK
//
//  Created by supermao on 09/02/2016.
//  Copyright (c) 2016 supermao. All rights reserved.
//

#import "AGViewController.h"
#import <AGGameInternationalSDK/AGGameInternationalSDK.h>
@interface AGViewController ()

@end

@implementation AGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}


- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [AGShare shareToFacebookOnViewController:self initialText:nil image:nil URL:nil completionBlock:^(AGShareResult result) {
        
    }];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
