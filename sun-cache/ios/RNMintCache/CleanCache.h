//
//  CleanCache.h
//  cleanCache
//
//  Created by ss on 2019/3/7.
//  Copyright © 2019年 ss. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CleanCache : NSObject
/**
 *  清理缓存
 */
-(NSString *)folderSizeAtPath;
+ (CleanCache *) getInstance;
-(void)cleanCache;

@end

NS_ASSUME_NONNULL_END
