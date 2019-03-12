//
//  CleanCache.m
//  cleanCache
//
//  Created by ss on 2019/3/7.
//  Copyright © 2019年 ss. All rights reserved.
//

#import "CleanCache.h"

static CleanCache *Cache;
@interface CleanCache()

@end
@implementation CleanCache

+ (CleanCache *) getInstance{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Cache = [[self alloc]init];
    });
    return Cache;
}
/**
 *  计算单个文件大小
 */
-(long long)fileSizeAtPath:(NSString *)filePath{

    NSFileManager *manager = [NSFileManager defaultManager];
    if ([manager fileExistsAtPath :filePath]){
        return [[manager attributesOfItemAtPath :filePath error : nil ] fileSize];
    }
    return 0 ;
}
/**
 *  计算整个目录大小
 */
-(NSString *)folderSizeAtPath
{
    NSString *folderPath=[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) firstObject];
    NSFileManager * manager=[NSFileManager defaultManager ];
    if (![manager fileExistsAtPath :folderPath]) {
        return 0 ;
    }
    NSEnumerator *childFilesEnumerator = [[manager subpathsAtPath :folderPath] objectEnumerator ];
    NSString * fileName;
    long long folderSize = 0 ;
    while ((fileName = [childFilesEnumerator nextObject ]) != nil ){
        NSString * fileAbsolutePath = [folderPath stringByAppendingPathComponent :fileName];
        folderSize += [self fileSizeAtPath :fileAbsolutePath];
    }
    return [NSString stringWithFormat:@"%.2f",folderSize/( 1024.0 * 1024.0 )];
}
/**
 *  清理缓存
 */
-(void)cleanCache
{
  dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        //文件路径
        NSString *directoryPath=[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) firstObject];
        NSArray *subpaths = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:directoryPath error:nil];
        for (NSString *subPath in subpaths) {
            NSString *filePath = [directoryPath stringByAppendingPathComponent:subPath];
            [[NSFileManager defaultManager] removeItemAtPath:filePath error:nil];
        }
    });

}

@end
