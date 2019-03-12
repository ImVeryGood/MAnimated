
#import "RNMintCache.h"
#import "CleanCache.h"

@interface RNMintCache () <RCTBridgeModule>

@end

@implementation RNMintCache
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(getCacheSize:(RCTResponseSenderBlock)onSuccess){
     dispatch_async(dispatch_get_main_queue(), ^{
         onSuccess(@[[[CleanCache getInstance] folderSizeAtPath]]);
     });
}

RCT_EXPORT_METHOD(cleanAllCache:(RCTResponseSenderBlock)onSuccess){
    dispatch_async(dispatch_get_main_queue(), ^{
    [[CleanCache getInstance] cleanCache];
        onSuccess(@[@"清除成功"]);
    });
}

@end
