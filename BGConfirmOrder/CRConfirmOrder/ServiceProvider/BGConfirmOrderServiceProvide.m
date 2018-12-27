//
//  BGConfirmOrderServiceProvide.m
//  BGConfirmOrder
//
//  Created by rsbk on 2018/12/27.
//  Copyright © 2018 rsbk. All rights reserved.
//

#import "BGConfirmOrderServiceProvide.h"

#import <BGProtocolManager/BGProtocolManager.h>
#import <BGConfirmOrderServiceProtocol/BGConfirmOrderServiceProtocol.h>

#import "BGConfirmOrderViewController.h"

@interface BGConfirmOrderServiceProvide()<BGConfirmOrderServiceProtocol>
@end

@implementation BGConfirmOrderServiceProvide

+ (void)load {
    [BGProtocolManager registServiceProvide:[self new] forProtocol:@protocol(BGConfirmOrderServiceProtocol)];
}


#pragma mark - BGConfirmOrderServiceProtocol

- (UIViewController *)confirmOrderViewControllerWithGoodsId:(NSString *)goodsId complete:(dispatch_block_t)complete {
    BGConfirmOrderViewController *confirmOrderVC = [[BGConfirmOrderViewController alloc] initWithGoodsId:goodsId complete:complete];
    return confirmOrderVC;
}

//- (UIViewController *)confirmOrderViewControllerWithOrderInfo:(CROrderInfo *)orderInfo sureComplete:(dispatch_block_t)sureComplete
//{
//    CRConfirmOrderViewController *confirmOrderVC = [[CRConfirmOrderViewController alloc] initWithOrderInfo:orderInfo sureComplete:sureComplete];
//    return confirmOrderVC;
//}
@end
