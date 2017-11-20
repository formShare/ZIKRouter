//
//  Alias.swift
//  ZRouter
//
//  Created by zuik on 2017/11/5.
//  Copyright © 2017 zuik. All rights reserved.
//
//  This source code is licensed under the MIT-style license found in the
//  LICENSE file in the root directory of this source tree.
//

import ZIKRouter

public typealias RouteConfig = ZIKRouteConfiguration

public typealias ViewRouteType = ZIKViewRouteType
public typealias ViewRouteError = ZIKViewRouteError
public typealias ViewRouteConfig = ZIKViewRouteConfiguration
public typealias ViewRemoveConfig = ZIKViewRemoveConfiguration
public typealias DefaultViewRouter = ZIKViewRouter<ZIKRoutableView, ViewRouteConfig, ViewRemoveConfig>

public typealias ServiceRouteConfig = ZIKServiceRouteConfiguration
public typealias DefaultServiceRouter = ZIKServiceRouter<ServiceRouteConfig, RouteConfig>

public typealias ConfigurableViewRouter<PerformConfig: ViewRouteConfig> = ZIKViewRouter<ZIKRoutableView, PerformConfig, ViewRemoveConfig>
public typealias RemovableViewRouter<RemoveConfig: ViewRemoveConfig> = ZIKViewRouter<ZIKRoutableView, ViewRouteConfig, RemoveConfig>
public typealias DesignatedViewRouter<PerformConfig: ViewRouteConfig, RemoveConfig: ViewRemoveConfig> = ZIKViewRouter<ZIKRoutableView, PerformConfig, RemoveConfig>

public typealias ConfigurableServiceRouter<PerformConfig: ServiceRouteConfig> = ZIKServiceRouter<PerformConfig, RouteConfig>
public typealias RemovableServiceRouter<RemoveConfig: RouteConfig> = ZIKServiceRouter<ServiceRouteConfig, RemoveConfig>
public typealias DesignatedServiceRouter<PerformConfig: ServiceRouteConfig, RemoveConfig: RouteConfig> = ZIKServiceRouter<PerformConfig, RemoveConfig>