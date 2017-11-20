//
//  ZIKServiceRouterInternal.h
//  ZIKRouter
//
//  Created by zuik on 2017/8/9.
//  Copyright © 2017 zuik. All rights reserved.
//
//  This source code is licensed under the MIT-style license found in the
//  LICENSE file in the root directory of this source tree.
//

#import "ZIKServiceRouter.h"

NS_ASSUME_NONNULL_BEGIN

///Internal methods for subclass.
@interface ZIKServiceRouter ()
@property (nonatomic, readonly, copy) __kindof ZIKServiceRouteConfiguration *original_configuration;

///Invoked after auto registration is finished when ZIKROUTER_CHECK is enabled. You can override and validate whether those routable swift protocols used in your module as external dependencies have registered with routers, because we can't enumerate swift protocols at runtime.
+ (void)_autoRegistrationDidFinished;

///Maintain the route state when you implement custom route or remove route
///Call it when route will perform.
- (void)beginPerformRoute;
///Call it when route is successfully performed.
- (void)endPerformRouteWithSuccess;
///Call it when route perform failed.
- (void)endPerformRouteWithError:(NSError *)error;

///Call it when route will remove.
- (void)beginRemoveRoute;
///Call it when route is successfully removed.
- (void)endRemoveRouteWithSuccessOnDestination:(id)destination;
///Call it when route remove failed.
- (void)endRemoveRouteWithError:(NSError *)error;

@end

NS_ASSUME_NONNULL_END