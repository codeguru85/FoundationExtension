//
//  NSAClass.m
//  FoundationExtension
//
//  Created by youknowone on 12. 10. 16..
//  Copyright (c) 2012 youknowone.org. All rights reserved.
//

#import <objc/runtime.h>

#import "NSAClass.h"


@interface NSAMethod ()

- (id)initWithMethod:(Method)method;
+ (id)methodWithMethod:(Method)method;

@end


@implementation NSAClass
@synthesize class=_class;

- (id)initWithClass:(Class)class {
    if (class == nil) {
        [self release];
        return nil;
    }
    self = [super init];
    if (self != nil) {
        self->_class = class;
    }
    return self;
}

+ (id)classWithClass:(Class)class {
    return [[[self alloc] initWithClass:class] autorelease];
}

- (const char *)UTF8Name {
    return class_getName(self->_class);
}

- (NSString *)name {
    return [NSString stringWithUTF8String:class_getName(self->_class)];
}

- (Class)superclass {
    return class_getSuperclass(self->_class);
}

- (NSAClass *)superclassObject {
    return [[self class] classWithClass:class_getSuperclass(self->_class)];
}

+ (id)classWithUTF8Name:(const char *)name {
    return [self classWithClass:objc_getClass(name)];
}

+ (id)classWithName:(NSString *)name {
    return [self classWithUTF8Name:name.UTF8String];
}

- (Method)methodForSelector:(SEL)selector {
    return class_getInstanceMethod(self->_class, selector);
}

- (NSAMethod *)methodObjectForSelector:(SEL)selector {
    return [NSAMethod methodWithMethod:class_getInstanceMethod(self->_class, selector)];
}

- (IMP)methodImplementationForSelector:(SEL)selector {
    return class_getMethodImplementation(self->_class, selector);
}

@end


@implementation NSAClass (ClassShortcuts)

- (id)alloc {
    return [self->_class alloc];
}

- (id)allocWithZone:(NSZone *)zone {
    return [self->_class allocWithZone:zone];
}

@end


@implementation NSObject (NSAClass)

- (NSAClass *)classObject {
    return [NSAClass classWithClass:self.class];
}

@end


@implementation NSAMethod
@synthesize method=_method;

- (id)initWithMethod:(Method)method  {
    self = [super init];
    if (self != nil) {
        self->_method = method;
    }
    return self;
}

+ (id)methodWithMethod:(Method)method {
    return [[[self alloc] initWithMethod:method] autorelease];
}

- (IMP)implementation {
    return method_getImplementation(self->_method);
}

- (void)setImplementation:(IMP)implementation {
    method_setImplementation(self->_method, implementation);
}

@end
