//
//  BGProtocolManager.m
//  BGProtocolManager
//
//  Created by rsbk on 2018/12/26.
//  Copyright © 2018 rsbk. All rights reserved.
//

#import "BGProtocolManager.h"


@interface BGProtocolManager ()

@property (nonatomic, strong)NSMutableDictionary *searviceProvideSource;

@end


@implementation BGProtocolManager

+ (BGProtocolManager *)shareInstance {
    static BGProtocolManager *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (instancetype)init {
    if (self = [super init]) {
        _searviceProvideSource = [[NSMutableDictionary alloc] init];
    }
    return self;
}

+ (void)registServiceProvide:(id)provide forProtocol:(Protocol *)protocol {
    if (provide == nil || protocol == nil) {
        return;
    }
    
    [[self shareInstance].searviceProvideSource setObject:provide forKey:NSStringFromProtocol(protocol)];
}


+ (id)serviceProvideForProtocol:(Protocol *)protocol {
    return [[self shareInstance].searviceProvideSource objectForKey:NSStringFromProtocol(protocol)];
}

@end
