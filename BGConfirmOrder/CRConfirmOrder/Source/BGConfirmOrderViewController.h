//
//  BGConfirmOrderViewController.h
//  BGConfirmOrder
//
//  Created by rsbk on 2018/12/27.
//  Copyright © 2018 rsbk. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BGOrderInfo;

@interface BGConfirmOrderViewController : UIViewController

- (instancetype)initWithGoodsId:(NSString *)goodsId complete:(dispatch_block_t)complete;

- (instancetype)initWithOrderInfo:(BGOrderInfo *)orderInfo complete:(dispatch_block_t)complete;

@end
