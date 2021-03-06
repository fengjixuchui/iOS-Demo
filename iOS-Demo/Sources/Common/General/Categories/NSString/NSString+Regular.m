//
//  NSString+Regular.m
//  hxj
//
//  Created by yaochaowen on 15/10/22.
//  Copyright © 2015年 yaochaowen. All rights reserved.
//

#import "NSString+Regular.h"

@implementation NSString (Regular)



//匹配正整数
- (BOOL)isPositiveInteger
{
    NSString *      regex = @"^[1-9]\\d*$";
    NSPredicate *   pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    
    return [pred evaluateWithObject:self];
}

//匹配负整数
- (BOOL)isNegativeInteger
{
    NSString *      regex = @"^-[1-9]\\d*$";
    NSPredicate *   pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    
    return [pred evaluateWithObject:self];
}

//匹配整数
- (BOOL)isInteger
{
    NSString *      regex = @"^-?[1-9]\\d*$";
    NSPredicate *   pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    
    return [pred evaluateWithObject:self];
}

//匹配非负整数（正整数 + 0）
- (BOOL)isPositiveIntegerContainZero
{
    NSString *      regex = @"^[1-9]\\d*|0$";
    NSPredicate *   pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    
    return [pred evaluateWithObject:self];
}

//匹配非正整数（负整数 + 0）
- (BOOL)isNegativeIntegerContainZero
{
    NSString *      regex = @"^-[1-9]\\d*|0$";
    NSPredicate *   pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    
    return [pred evaluateWithObject:self];
}

//匹配正浮点数
- (BOOL)isPositiveFloatingNumber
{
    NSString *      regex = @"^[0-9]\\d*\\.\\d*|0\\.\\d*[0-9]\\d*$";
    NSPredicate *   pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    
    return [pred evaluateWithObject:self];
}

//匹配负浮点数
- (BOOL)isNegativeFloatingNumber
{
    NSString *      regex = @"^-([1-9]\\d*\\.\\d*|0\\.\\d*[1-9]\\d*)$";
    NSPredicate *   pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    
    return [pred evaluateWithObject:self];
}

//匹配浮点数
- (BOOL)isFloatingNumber
{
    NSString *      regex = @"^-?([1-9]\\d*\\.\\d*|0\\.\\d*[1-9]\\d*|0?\\.0+|0)$";
    NSPredicate *   pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    
    return [pred evaluateWithObject:self];
}

//匹配非负浮点数（正浮点数 + 0）
- (BOOL)isPositiveFloatingNumberContainZero
{
    NSString *      regex = @"^[1-9]\\d*\\.\\d*|0\\.\\d*[1-9]\\d*|0?\\.0+|0$";
    NSPredicate *   pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    
    return [pred evaluateWithObject:self];
}

//匹配非正浮点数（负浮点数 + 0）
- (BOOL)isNegativeFloatingNumberContainZero
{
    NSString *      regex = @"^(-([1-9]\\d*\\.\\d*|0\\.\\d*[1-9]\\d*))|0?\\.0+|0$";
    NSPredicate *   pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    
    return [pred evaluateWithObject:self];
}


//匹配由26个英文字母组成的字符串
- (BOOL)isAllEnglishAlphabet
{
    NSString *      regex = @"^[A-Za-z]+$";
    NSPredicate *   pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    
    return [pred evaluateWithObject:self];
}

//匹配由26个英文字母的大写组成的字符串
- (BOOL)isAllCapitalEnglishAlphabet
{
    NSString *      regex = @"^[A-Z]+$";
    NSPredicate *   pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    
    return [pred evaluateWithObject:self];
}

//匹配由26个英文字母的小写组成的字符串
- (BOOL)isAllLowerEnglishAlphabet
{
    NSString *      regex = @"^[a-z]+$";
    NSPredicate *   pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    
    return [pred evaluateWithObject:self];
}

//匹配由数字和26个英文字母组成的字符串
- (BOOL)isEnglishAlphabetAndNumber
{
    NSString *      regex = @"^[A-Za-z0-9]+$";
    NSPredicate *   pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    
    return [pred evaluateWithObject:self];
}

//匹配由数字、26个英文字母或者下划线组成的字符串
- (BOOL)isEnglishAlphabetAndNumberAndUnderline
{
    NSString *      regex = @"^\\w+$";
    NSPredicate *   pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    
    return [pred evaluateWithObject:self];
}

//匹配中文
- (BOOL)isChineseWords
{
    NSString *      regex = @":[\\u4e00-\\u9fa5]";
    NSPredicate *   pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    
    return [pred evaluateWithObject:self];
}

//匹配邮件地址
- (BOOL)isEmail
{
    NSString *      regex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *   pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    
    return [pred evaluateWithObject:self];
}

//匹配URL地址
- (BOOL)isUrl
{
    NSString *      regex = @"http(s)?:\\/\\/([\\w-]+\\.)+[\\w-]+(\\/[\\w- .\\/?%&=]*)?";
    NSPredicate *   pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    
    return [pred evaluateWithObject:self];
}

//匹配手机号码
- (BOOL)isTelephoneNumber
{
    NSString * MOBILE = @"^1(3[0-9]|5[0-35-9]|8[025-9])\\d{8}$";
    NSString * CM = @"^1(34[0-8]|(3[5-9]|5[017-9]|8[278])\\d)\\d{7}$";
    NSString * CU = @"^1(3[0-2]|5[256]|8[56])\\d{8}$";
    NSString * CT = @"^1((33|53|8[09])[0-9]|349)\\d{7}$";
    NSString * PHS = @"^0(10|2[0-5789]|\\d{3})\\d{7,8}$";
    NSPredicate *regextestmobile = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", MOBILE];
    NSPredicate *regextestcm = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CM];
    NSPredicate *regextestcu = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CU];
    NSPredicate *regextestct = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CT];
    NSPredicate *regextestphs = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", PHS];
    
    return  [regextestmobile evaluateWithObject:self]   ||
    [regextestphs evaluateWithObject:self]      ||
    [regextestct evaluateWithObject:self]       ||
    [regextestcu evaluateWithObject:self]       ||
    [regextestcm evaluateWithObject:self];
}


- (BOOL)isBlankString {
    if (self == nil || self == NULL) {
        return YES;
    }
    
    if ([self isKindOfClass:[NSNull class]]) {
        return YES;
    }
    
    if ([[self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length]==0) {
        return YES;
    }
    
    return NO;
}


@end
