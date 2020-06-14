//
//  XSSCVItem.h
//  iOSImagesExtractor
//
//  Created by 李兴东 on 2020/6/14.
//  Copyright © 2020 chi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

NS_ASSUME_NONNULL_BEGIN

@interface XSSCVItem : NSObject

- (instancetype)initWithPath:(NSString*)filePath;

@property (nonatomic, copy, readonly) NSString *filePath;
@property (nonatomic, copy, readonly) NSString *fileName;
@property (nonatomic, assign, readonly) unsigned long long fileSize;
@property (nonatomic, copy, readonly) NSString *formatSize;
@property (nonatomic, assign, readonly) BOOL isDirectory;
@property (nonatomic, assign, readonly) BOOL isFileExists;

@end

NS_ASSUME_NONNULL_END
