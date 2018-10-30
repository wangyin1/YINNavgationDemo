# UIViewController+YINNav
runtime实现导航栏封装，无需继承，动态提供属性控制导航栏样式
在我们使用系统api开发时。常规的，如果只有其中几个页面导航栏样式不同，局部设置必须遵循一个原则："进入页面时修改，离开页面时还原”。
比如我们进入一个页面，需要设置当前导航栏的背景色为灰色，使用如下方法：
```
//进入页面时设置颜色：灰色
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController.navigationBar setBarTintColor:[UIColor grayColor]];
}
//离开页面时还原为全局设置：橙色
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self.navigationController.navigationBar setBarTintColor:[UIColor orangeColor]];
}
```
非常的不方便，一些简单的效果要写很多代码

## 使用UIViewController+YINNav可以极大简化代码
例子：设置背景颜色
```
- (void)viewDidLoad {
    [super viewDidLoad];
    self.y_navBarBgColor = [UIColor orangeColor];
}
```
当页面返回时自动设置导航栏为即将显示的controller配置。
##### 透明度渐变效果
```
- (void)viewDidLoad {
    [super viewDidLoad];
    self.y_navBarAlpha = 0.999;//如果有渐变 不能设为1 否则会页面会从导航栏下面开始布局。
    self.y_navBarBgColor = [UIColor orangeColor];
}
```
```
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    self.y_navBarAlpha = 0.999-(scrollView.contentOffset.y/400.f);
}
```
##### 设置导航栏背景颜色
```
- (void)viewDidLoad {
    [super viewDidLoad];
    self.y_navBarBgColor = [UIColor orangeColor];
}
```
##### 设置导航栏背景图 
```
- (void)viewDidLoad {
    [super viewDidLoad];
  //权重高于背景色
    self.y_navBarBgImg = [UIImage imageNamed:@"app2"];
}
```
##### 设置导航栏大标题
```
- (void)viewDidLoad {
    [super viewDidLoad];
    self.y_largeTitleMode = YES;
}
```
##### 设置导航栏隐藏
```
- (void)viewDidLoad {
    [super viewDidLoad];
    self.y_navBarHidden = YES;
}
```
##### 设置导航栏细线
```
- (void)viewDidLoad {
    [super viewDidLoad];
    self. y_navLineHidden = YES;
}
```
##### 代码控制返回页面
```
- (void)viewDidLoad {
    [super viewDidLoad];
  //传一个controller对象 可以是navgationcontroller 栈内的对象
    self.y_popController = [[YINNavAlphaViewController alloc] init];
}
```
#####设置页面方向
```
- (void)viewDidLoad {
    [super viewDidLoad];
    self. y_screenOrientation = UIInterfaceOrientationMaskLandscapeRight;
}
```
需要在appdelegate实现
```
- (UIInterfaceOrientationMask)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(UIWindow *)window{
    return [[[NSUserDefaults standardUserDefaults] objectForKey:@"orientation"] integerValue];
}
```
