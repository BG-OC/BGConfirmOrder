//
//  BGConfirmOrderServiceProtocol.h
//  BGConfirmOrderServiceProtocol
//
//  Created by rsbk on 2018/12/27.
//  Copyright © 2018 rsbk. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol BGConfirmOrderServiceProtocol <NSObject>

- (UIViewController *)confirmOrderViewControllerWithGoodsId:(NSString *)goodsId complete:(dispatch_block_t)complete;

@end
