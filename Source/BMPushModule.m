//
//  BMPushModule.m
//  BMBaseLibrary
//
//  Created by XHY on 2018/4/12.
//

#import "BMPushModule.h"
#import <WeexPluginLoader/WeexPluginLoader/WeexPluginLoader.h>
#import "NSDictionary+Util.h"
#import <GTSDK/GeTuiSdk.h>

WX_PlUGIN_EXPORT_MODULE(bmPush, BMPushModule)

@implementation BMPushModule

@synthesize weexInstance;

WX_EXPORT_METHOD(@selector(getCid:));
WX_EXPORT_METHOD(@selector(initPush:));

- (void)initPush:(NSDictionary *)info
{
}

/** 获取 cid */
-(void)getCid:(WXModuleCallback)callback
{
    NSString * cid = [GeTuiSdk clientId];
    NSInteger resCode = cid.length > 0 ? BMResCodeSuccess : BMResCodeError;
    
    if (callback) {
        NSMutableDictionary * dict = nil;
        if (cid.length > 0) {
            dict  = [NSMutableDictionary dictionaryWithObjectsAndKeys:cid,@"cid",nil];
        }
        NSDictionary *resDic = [NSDictionary configCallbackDataWithResCode:resCode msg:nil data:dict];
        callback(resDic);
    }
}

@end
