//
//  NSAttributedString+UIKit.m
//  FoundationExtension
//
//  Created by Jeong YunWon on 12. 11. 1..
//  Copyright (c) 2012 youknowone.org. All rights reserved.
//

#import "NSAttributedString+UIKit.h"

#if __IPHONE_OS_VERSION_MIN_REQUIRED >= 60000

@implementation NSMutableAttributedString (AttributeProperties)

//! Generated by NSAttributedStringCategoryImplementation.py
- (void)addAttributeFont:(UIFont *)font range:(NSRange)range { [self addAttribute:NSFontAttributeName value:font range:range]; }
//! Generated by NSAttributedStringCategoryImplementation.py
- (void)removeAttributeFontFromRange:(NSRange)range { [self removeAttribute:NSFontAttributeName range:range]; }

//! Generated by NSAttributedStringCategoryImplementation.py
- (void)addAttributeParagraphStyle:(NSParagraphStyle *)paragraphStyle range:(NSRange)range { [self addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:range]; }
//! Generated by NSAttributedStringCategoryImplementation.py
- (void)removeAttributeParagraphStyleFromRange:(NSRange)range { [self removeAttribute:NSParagraphStyleAttributeName range:range]; }

//! Generated by NSAttributedStringCategoryImplementation.py
- (void)addAttributeForegroundColor:(UIColor *)foregroundColor range:(NSRange)range { [self addAttribute:NSForegroundColorAttributeName value:foregroundColor range:range]; }
//! Generated by NSAttributedStringCategoryImplementation.py
- (void)removeAttributeForegroundColorFromRange:(NSRange)range { [self removeAttribute:NSForegroundColorAttributeName range:range]; }

//! Generated by NSAttributedStringCategoryImplementation.py
- (void)addAttributeBackgroundColor:(UIColor *)backgroundColor range:(NSRange)range { [self addAttribute:NSBackgroundColorAttributeName value:backgroundColor range:range]; }
//! Generated by NSAttributedStringCategoryImplementation.py
- (void)removeAttributeBackgroundColorFromRange:(NSRange)range { [self removeAttribute:NSBackgroundColorAttributeName range:range]; }

//! Generated by NSAttributedStringCategoryImplementation.py
- (void)addAttributeLigature:(NSLigatureType)ligature range:(NSRange)range { [self addAttribute:NSLigatureAttributeName value:[NSNumber numberWithUnsignedInteger:ligature] range:range]; }
//! Generated by NSAttributedStringCategoryImplementation.py
- (void)removeAttributeLigatureFromRange:(NSRange)range { [self removeAttribute:NSLigatureAttributeName range:range]; }

//! Generated by NSAttributedStringCategoryImplementation.py
- (void)addAttributeKern:(float)kern range:(NSRange)range { [self addAttribute:NSKernAttributeName value:[NSNumber numberWithFloat:kern] range:range]; }
//! Generated by NSAttributedStringCategoryImplementation.py
- (void)removeAttributeKernFromRange:(NSRange)range { [self removeAttribute:NSKernAttributeName range:range]; }

//! Generated by NSAttributedStringCategoryImplementation.py
- (void)addAttributeStrikethroughStyle:(NSUnderlineStyle)strikethroughStyle range:(NSRange)range { [self addAttribute:NSStrikethroughStyleAttributeName value:[NSNumber numberWithUnsignedInteger:strikethroughStyle] range:range]; }
//! Generated by NSAttributedStringCategoryImplementation.py
- (void)removeAttributeStrikethroughStyleFromRange:(NSRange)range { [self removeAttribute:NSStrikethroughStyleAttributeName range:range]; }

//! Generated by NSAttributedStringCategoryImplementation.py
- (void)addAttributeUnderlineStyle:(NSUnderlineStyle)underlineStyle range:(NSRange)range { [self addAttribute:NSUnderlineStyleAttributeName value:[NSNumber numberWithUnsignedInteger:underlineStyle] range:range]; }
//! Generated by NSAttributedStringCategoryImplementation.py
- (void)removeAttributeUnderlineStyleFromRange:(NSRange)range { [self removeAttribute:NSUnderlineStyleAttributeName range:range]; }

//! Generated by NSAttributedStringCategoryImplementation.py
- (void)addAttributeStrokeColor:(UIColor *)strokeColor range:(NSRange)range { [self addAttribute:NSStrokeColorAttributeName value:strokeColor range:range]; }
//! Generated by NSAttributedStringCategoryImplementation.py
- (void)removeAttributeStrokeColorFromRange:(NSRange)range { [self removeAttribute:NSStrokeColorAttributeName range:range]; }

//! Generated by NSAttributedStringCategoryImplementation.py
- (void)addAttributeStrokeWidth:(float)strokeWidth range:(NSRange)range { [self addAttribute:NSStrokeWidthAttributeName value:[NSNumber numberWithFloat:strokeWidth] range:range]; }
//! Generated by NSAttributedStringCategoryImplementation.py
- (void)removeAttributeStrokeWidthFromRange:(NSRange)range { [self removeAttribute:NSStrokeWidthAttributeName range:range]; }

//! Generated by NSAttributedStringCategoryImplementation.py
- (void)addAttributeShadow:(NSShadow *)shadow range:(NSRange)range { [self addAttribute:NSShadowAttributeName value:shadow range:range]; }
//! Generated by NSAttributedStringCategoryImplementation.py
- (void)removeAttributeShadowFromRange:(NSRange)range { [self removeAttribute:NSShadowAttributeName range:range]; }

//! Generated by NSAttributedStringCategoryImplementation.py
- (void)addAttributeVerticalGlyphForm:(NSVerticalGlyphForm)verticalGlyphForm range:(NSRange)range { [self addAttribute:NSVerticalGlyphFormAttributeName value:[NSNumber numberWithUnsignedInteger:verticalGlyphForm] range:range]; }
//! Generated by NSAttributedStringCategoryImplementation.py
- (void)removeAttributeVerticalGlyphFormFromRange:(NSRange)range { [self removeAttribute:NSVerticalGlyphFormAttributeName range:range]; }

@end


@implementation NSAttributedStringAttributeDictionary

- (void)setObject:(id)anObject forKey:(id<NSCopying>)aKey {
    if (anObject == nil) {
        [super removeObjectForKey:aKey];
    } else {
        [super setObject:anObject forKey:aKey];
    }
}

- (NSLigatureType)ligature {
    return self.ligatureNumber ? [self.ligatureNumber unsignedIntegerValue] : NSLigatureStandard;
}

- (void)setLigature:(NSLigatureType)ligature {
    self.ligatureNumber = [NSNumber numberWithUnsignedInteger:ligature];
}


//! Generated by NSAttributedStringDictionaryImplementation.py
- (UIFont *)font { return [self objectForKey:NSFontAttributeName]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setFont:(UIFont *)font { [self setObject:font forKey:NSFontAttributeName]; }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (NSParagraphStyle *)paragraphStyle { return [self objectForKey:NSParagraphStyleAttributeName]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setParagraphStyle:(NSParagraphStyle *)paragraphStyle { [self setObject:paragraphStyle forKey:NSParagraphStyleAttributeName]; }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (UIColor *)foregroundColor { return [self objectForKey:NSForegroundColorAttributeName]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setForegroundColor:(UIColor *)foregroundColor { [self setObject:foregroundColor forKey:NSForegroundColorAttributeName]; }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (UIColor *)backgroundColor { return [self objectForKey:NSBackgroundColorAttributeName]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setBackgroundColor:(UIColor *)backgroundColor { [self setObject:backgroundColor forKey:NSBackgroundColorAttributeName]; }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (NSNumber *)ligatureNumber { return [self objectForKey:NSLigatureAttributeName]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setLigatureNumber:(NSNumber *)ligatureNumber { [self setObject:ligatureNumber forKey:NSLigatureAttributeName]; }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (NSNumber *)kernNumber { return [self objectForKey:NSKernAttributeName]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setKernNumber:(NSNumber *)kernNumber { [self setObject:kernNumber forKey:NSKernAttributeName]; }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (float)kern { return [self.kernNumber floatValue]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setKern:(float)kern { self.kernNumber = [NSNumber numberWithFloat:kern]; }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (NSNumber *)strikethroughStyleNumber { return [self objectForKey:NSStrikethroughStyleAttributeName]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setStrikethroughStyleNumber:(NSNumber *)strikethroughStyleNumber { [self setObject:strikethroughStyleNumber forKey:NSStrikethroughStyleAttributeName]; }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (NSUnderlineStyle)strikethroughStyle { return [self.strikethroughStyleNumber unsignedIntegerValue]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setStrikethroughStyle:(NSUnderlineStyle)strikethroughStyle { self.strikethroughStyleNumber = [NSNumber numberWithUnsignedInteger:strikethroughStyle]; }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (NSNumber *)underlineStyleNumber { return [self objectForKey:NSUnderlineStyleAttributeName]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setUnderlineStyleNumber:(NSNumber *)underlineStyleNumber { [self setObject:underlineStyleNumber forKey:NSUnderlineStyleAttributeName]; }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (NSUnderlineStyle)underlineStyle { return [self.underlineStyleNumber unsignedIntegerValue]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setUnderlineStyle:(NSUnderlineStyle)underlineStyle { self.underlineStyleNumber = [NSNumber numberWithUnsignedInteger:underlineStyle]; }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (UIColor *)strokeColor { return [self objectForKey:NSStrokeColorAttributeName]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setStrokeColor:(UIColor *)strokeColor { [self setObject:strokeColor forKey:NSStrokeColorAttributeName]; }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (NSNumber *)strokeWidthNumber { return [self objectForKey:NSStrokeWidthAttributeName]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setStrokeWidthNumber:(NSNumber *)strokeWidthNumber { [self setObject:strokeWidthNumber forKey:NSStrokeWidthAttributeName]; }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (float)strokeWidth { return [self.strokeWidthNumber floatValue]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setStrokeWidth:(float)strokeWidth { self.strokeWidthNumber = [NSNumber numberWithFloat:strokeWidth]; }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (NSShadow *)shadow { return [self objectForKey:NSShadowAttributeName]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setShadow:(NSShadow *)shadow { [self setObject:shadow forKey:NSShadowAttributeName]; }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (NSNumber *)verticalGlyphFormNumber { return [self objectForKey:NSVerticalGlyphFormAttributeName]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setVerticalGlyphFormNumber:(NSNumber *)verticalGlyphFormNumber { [self setObject:verticalGlyphFormNumber forKey:NSVerticalGlyphFormAttributeName]; }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (NSVerticalGlyphForm)verticalGlyphForm { return [self.verticalGlyphFormNumber unsignedIntegerValue]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setVerticalGlyphForm:(NSVerticalGlyphForm)verticalGlyphForm { self.verticalGlyphFormNumber = [NSNumber numberWithUnsignedInteger:verticalGlyphForm]; }

@end

#endif
