//
//  YINNavAlphaViewController.m
//  BL_BaseApp
//
//  Created by apple on 2018/10/30.
//  Copyright © 2018 王印. All rights reserved.
//


#import "YINNavAlphaViewController.h"
#import "UIViewController+YINNav.h"
@interface YINNavAlphaViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (strong,nonatomic) NSArray        *dataList;

@end

@implementation YINNavAlphaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.y_navBarAlpha = 0.999;
    self.y_navBarBgColor = [UIColor orangeColor];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = [NSString stringWithFormat:@"%ld",indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    self.y_navBarAlpha = 0.999-(scrollView.contentOffset.y/400.f);
}

- (NSArray *)dataList{
    if (!_dataList) {
        
    }
    return _dataList;
}

@end
