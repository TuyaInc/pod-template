//
//  PROJECTImpl.m
//  PROJECT
//
//  Created by PROJECT_OWNER on TODAYS_DATE.
//  Copyright (c) TODAYS_YEAR PROJECT_OWNER. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PROJECTImpl.h"
#import "TYModulPublic.h"

@interface PROJECTImpl()<TYModuleProtocol>
@end

@implementation PROJECTImpl
#pragma mark -
#pragma mark - TYModuleTabProtocol
//注册当前模块被作为TAB 存在着提供的输出能力
//如果希望你的模块成为一个tab 请注册以下方法

- (TYModuleTabMapping)registerModuleTab {
    bool showBadge = false;  //暂时可以忽略 直接false即可
    bool selected = false;   //暂时可以忽略 直接false即可

    NSString *viewController = @"you view controller";
    NSString *pageTitle = @"title";
    NSString *normalImage = @"img_tab_normal";
    NSString *selectedImage = @"img_tab_selected";

    TYModuleTabMapping mapping = {
        showBadge,
        selected,
        viewController,
        pageTitle,
        normalImage,
        selectedImage
    };

    return mapping;
}
@end