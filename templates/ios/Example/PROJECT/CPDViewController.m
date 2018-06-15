//
//  CPDViewController.m
//  PROJECT
//
//  Created by PROJECT_OWNER on TODAYS_DATE.
//  Copyright (c) TODAYS_YEAR PROJECT_OWNER. All rights reserved.
//

#import "CPDViewController.h"

#import <TYModuleManager/TYModulPublic.h>

@interface CPDViewController ()

@end

@implementation CPDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)routerTest:(id)sender {
    
    //标准的调用方式
    [TYRoute openURL:@"yourSchema://yourHost/path1/path2"];
    [TYRoute openURL:@"yourSchema://yourHost/path1/path2?param1=1&param2=2"];

    // 不写schema 会默认使用涂鸦打包平台设置的schema, 请谨慎使用, 建议写上自己的schema
    [TYRoute openURL:@"yourHost/path1/path2"];
    [TYRoute openURL:@"yourHost/path1/path2?param1=1&param2=2"];

    //调用容器暂时 不支持, 有需要请联系我们
    //[TYRoute openURL:@"https://www.baidu.com/"];
    //[TYRoute openURL:@"http://www.baidu.com/"];
    //[TYRoute openURL:@"https://mbd.baidu.com/newspage/data/landingsuper?context=%7B%22nid%22%3A%22news_17596302243086065715%22%7D&n_type=0&p_from=1"];
}


- (IBAction)serviceTest:(id)sender {
    
//    id impl = [TYModuleService moduleServiceForProtocol:@protocol(TYTestProtocol)];
//
//    if (impl && [impl respondsToSelector:@selector(returnaString)]) {
//        NSLog(@"%@",[impl returnaString]);
//    }
//
//    if (impl && [impl respondsToSelector:@selector(logaString)]) {
//        [impl logaString];
//    }
}


@end
