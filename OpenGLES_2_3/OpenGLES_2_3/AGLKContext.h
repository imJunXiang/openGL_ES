//
//  AGLKContext.h
//  OpenGLES_2_3
//
//  Created by 俊祥 on 2018/11/17.
//  Copyright © 2018年 俊祥. All rights reserved.
//

#import <GLKit/GLKit.h>
@interface AGLKContext : EAGLContext
{
    GLKVector4 clearColor;
}
@property (nonatomic, assign,readwrite) GLKVector4 clearColor;
- (void)clear:(GLbitfield)mask;
- (void)enable:(GLenum)capability;
- (void)disable:(GLenum)capability;
- (void)setBlendSourceFunction:(GLenum)sfactor
           destinationFunction:(GLenum)dfactor;
@end
