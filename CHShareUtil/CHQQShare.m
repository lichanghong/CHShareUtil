//
//  CHQQShare.m
//  CHShareUtil
//
//  Created by lichanghong on 6/15/17.
//  Copyright © 2017 lichanghong. All rights reserved.
//

#import "CHQQShare.h"
#import <TencentOpenAPI/QQApiInterface.h>
#import <TencentOpenAPI/QQApiInterfaceObject.h>
#import <TencentOpenAPI/TencentOAuth.h>

@interface CHQQShare ()<TencentSessionDelegate>

@end

@implementation CHQQShare

- (void)share
{
    TencentOAuth*oauth = [[TencentOAuth alloc] initWithAppId:@"1106225034" andDelegate:self];
    QQApiTextObject *txtObj = [QQApiTextObject objectWithText:@"text"];
    SendMessageToQQReq *req = [SendMessageToQQReq reqWithContent:txtObj];
    QQApiSendResultCode sent = [QQApiInterface sendReq:req];

}

@end
