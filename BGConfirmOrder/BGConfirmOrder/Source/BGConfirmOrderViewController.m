//
//  BGConfirmOrderViewController.m
//  BGConfirmOrder
//
//  Created by rsbk on 2018/12/27.
//  Copyright © 2018 rsbk. All rights reserved.
//

#import "BGConfirmOrderViewController.h"

#import "BGOrderInfo.h"

@interface BGConfirmOrderViewController ()

@property (nonatomic, copy) NSString *goodsId;
@property (nonatomic, strong) BGOrderInfo *orderInfo;
@property (nonatomic, copy) dispatch_block_t complete;

@property (nonatomic, strong) UIButton *sureButton;

@end

@implementation BGConfirmOrderViewController


#pragma mark - 生命周期

- (instancetype)initWithGoodsId:(NSString *)goodsId complete:(dispatch_block_t)complete {
    self = [super init];
    if (self) {
        _goodsId = goodsId;
        _complete = complete;
    }
    return self;
}

- (instancetype)initWithOrderInfo:(BGOrderInfo *)orderInfo complete:(dispatch_block_t)complete{
    self = [super init];
    if (self) {
        _orderInfo = orderInfo;
        _complete = complete;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blueColor];
    
    [self.view addSubview:self.sureButton];
}

- (void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];
    
    self.sureButton.frame = CGRectMake(0, 0, 100, 100);
    self.sureButton.center = self.view.center;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - 动作事件

- (void)didClickSureButton:(UIButton *)button{
    if (self.navigationController.viewControllers.count > 1) {
        [self.navigationController popViewControllerAnimated:YES];
    }else{
        [self dismissViewControllerAnimated:YES completion:^{
            self.complete ? self.complete() : nil;
        }];
    }
}


#pragma mark - 懒加载

#pragma mark - getters
- (UIButton *)sureButton{
    if (_sureButton == nil) {
        _sureButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_sureButton setTitle:@"立即下单" forState:UIControlStateNormal];
        [_sureButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _sureButton.backgroundColor = [UIColor yellowColor];
        [_sureButton addTarget:self action:@selector(didClickSureButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _sureButton;
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
