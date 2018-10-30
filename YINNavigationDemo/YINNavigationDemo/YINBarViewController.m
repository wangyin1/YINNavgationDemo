//
//  YINBarViewController.m
//  BL_BaseApp
//
//  Created by apple on 2018/10/25.
//  Copyright © 2018 王印. All rights reserved.
//

#import "YINBarViewController.h"
#import "YINNavAlphaViewController.h"
#import "YINpopViewController.h"
#import "UIViewController+YINNav.h"
@interface YINBarViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (strong,nonatomic) NSArray        *dataList;

@end

@implementation YINBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.y_navBarBgColor = [UIColor blueColor];
    self.y_navBarTextColor = [UIColor redColor];
    self.title =@"demo";
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = _dataList[indexPath.row][@"text"];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    switch (indexPath.row) {
        case 0:
        {
            YINNavAlphaViewController *vc  =[[YINNavAlphaViewController alloc] init];
            vc.title = self.dataList[indexPath.row][@"text"];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
            case 1:
        {
            UIViewController *vc  =[[UIViewController alloc] init];
            vc.y_navBarBgColor = [UIColor redColor];
            vc.title = self.dataList[indexPath.row][@"text"];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
            case 2:
        {
            UIViewController *vc  =[[UIViewController alloc] init];
            vc.y_navBarBgImg = [UIImage imageNamed:@"app2"];
            vc.title = self.dataList[indexPath.row][@"text"];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
        case 3:
        {
            UIViewController *vc  =[[UIViewController alloc] init];
            vc.y_navBarBgColor = [UIColor yellowColor];
            vc.title = self.dataList[indexPath.row][@"text"];
            vc.y_largeTitleMode = YES;
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
        case 4:
        {
            UIViewController *vc  =[[UIViewController alloc] init];
            vc.y_navBarHidden = YES;
            vc.title = self.dataList[indexPath.row][@"text"];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
        case 5:
        {
            UIViewController *vc  =[[UIViewController alloc] init];
            vc.y_navBarBgColor = [UIColor yellowColor];
            vc.y_navLineHidden = YES;
            vc.title = self.dataList[indexPath.row][@"text"];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
        case 6:
        {
            YINpopViewController *vc  =[[YINpopViewController alloc] init];
            
            vc.title = self.dataList[indexPath.row][@"text"];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
            
        case 7:
        {
            UIViewController *vc  =[[UIViewController alloc] init];
            vc.y_screenOrientation = UIInterfaceOrientationMaskLandscapeRight;
            vc.title = self.dataList[indexPath.row][@"text"];
            
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
            
        default:
            break;
    }
}



- (NSArray *)dataList{
    if (!_dataList) {
        _dataList = @[
                      @{@"text":@"透明度"},
                      @{@"text":@"颜色"},
                      @{@"text":@"背景图"},
                      @{@"text":@"大标题"},
                      @{@"text":@"隐藏"},
                      @{@"text":@"隐藏横线"},
                      @{@"text":@"返回控制"},
                      @{@"text":@"屏幕方向"},
                      ];
    
    }
    return _dataList;
}


@end
