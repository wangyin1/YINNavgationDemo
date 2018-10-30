//
//  YINpopViewController.m
//  BL_BaseApp
//
//  Created by apple on 2018/10/30.
//  Copyright © 2018 王印. All rights reserved.
//

#import "YINpopViewController.h"
#import "YINNavAlphaViewController.h"
#import "UIViewController+YINNav.h"
@interface YINpopViewController ()

@end

@implementation YINpopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.y_popController = [[YINNavAlphaViewController alloc] init];
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
