//
//  NSJSONSerialization.m
//  FoundationExtension
//
//  Created by Jeong YunWon on 12. 11. 4..
//  Copyright (c) 2012 youknowone.org. All rights reserved.
//

#if __MAC_OS_X_VERSION_MIN_REQUIRED >= 1070 || __IPHONE_OS_VERSION_MIN_REQUIRED >= 50000

#import "NSString.h"

#import "NSJSONSerialization.h"

@implementation NSJSONSerialization (Shortcuts)

+ (id)JSONObjectWithString:(NSString *)string options:(NSJSONReadingOptions)opt error:(NSError **)error {
    return [self JSONObjectWithData:[string dataUsingUTF8Encoding] options:opt error:error];
}

+ (NSString *)stringWithJSONObject:(id)obj options:(NSJSONWritingOptions)opt error:(NSError **)error {
    return [NSString stringWithUTF8Data:[self dataWithJSONObject:obj options:opt error:error]];
}

@end

#endif
