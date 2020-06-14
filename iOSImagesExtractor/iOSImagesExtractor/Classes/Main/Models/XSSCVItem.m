//
//  XSSCVItem.m
//  iOSImagesExtractor
//
//  Created by 李兴东 on 2020/6/14.
//  Copyright © 2020 xingshao. All rights reserved.
//

#import "XSSCVItem.h"

@interface XSSCVItem ()

@property (nonatomic, copy) NSString *fileName;
@property (nonatomic, assign) unsigned long long fileSize;
@property (nonatomic, assign) BOOL isDirectory;
@property (nonatomic, assign) BOOL isFileExists;
@property (nonatomic, copy) NSString *formatSize;

@end

@implementation XSSCVItem

- (instancetype)initWithPath:(NSString*)filePath
{
    self = [super init];
    if (self) {
        self.filePath = filePath;
    }
    return self;
}

- (void)setFilePath:(NSString *)filePath
{
    _filePath = filePath;
    NSFileManager *manager = [NSFileManager defaultManager];
    _fileName = [[_filePath componentsSeparatedByString:@"/"] lastObject];
    _isFileExists = [manager fileExistsAtPath:filePath isDirectory:&_isDirectory];
    if (_isFileExists) {
        _fileSize = [[manager attributesOfItemAtPath:filePath error:nil] fileSize];
        if (_fileSize >= 1000) {
            _formatSize = [NSString stringWithFormat:@"%lld",_fileSize/1000];
        }else{
            _formatSize = [NSString stringWithFormat:@"%.1f",_fileSize/1000.0];
        }
    }
}

@end
