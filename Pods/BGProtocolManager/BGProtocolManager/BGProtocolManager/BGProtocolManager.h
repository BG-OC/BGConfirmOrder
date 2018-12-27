//
//  BGProtocolManager.h
//  BGProtocolManager
//
//  Created by rsbk on 2018/12/26.
//  Copyright © 2018 rsbk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BGProtocolManager : NSObject

+ (void)registServiceProvide:(id)provide forProtocol:(Protocol *)protocol;

+ (id)serviceProvideForProtocol:(Protocol *)protocol;

@end
