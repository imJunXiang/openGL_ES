//
//  AGLKContext.m
//  OpenGLES_2_3
//
//  Created by 俊祥 on 2018/11/17.
//  Copyright © 2018年 俊祥. All rights reserved.
//

#import "AGLKContext.h"

@implementation AGLKContext
- (void)setClearColor:(GLKVector4)clearColorRGBA {
    clearColor = clearColorRGBA;
    NSAssert(self == [[self class] currentContext], @"receiving context required to be current context");
    
    glClearColor(clearColorRGBA.r,
                 clearColorRGBA.g,
                 clearColorRGBA.b,
                 clearColorRGBA.a);
}

- (GLKVector4)clearColor {
    return clearColor;
}

- (void)clear:(GLbitfield)mask {
    NSAssert(self == [[self class] currentContext], @"receiving context required to be current context");
    glClear(mask);
}

- (void)enable:(GLenum)capability {
    NSAssert(self == [[self class] currentContext], @"receiving context required to be current context");
    glEnable(capability);
}

- (void)disable:(GLenum)capability {
    NSAssert(self == [[self class] currentContext], @"receiving context required to be current context");
    glDisable(capability);
}

- (void)setBlendSourceFunction:(GLenum)sfactor destinationFunction:(GLenum)dfactor {
    glBlendFunc(sfactor, dfactor);
}


@end
