//
//  AGLKVertextAttribArrayBuffer.h
//  OpenGLES_2_3
//
//  Created by 俊祥 on 2018/11/17.
//  Copyright © 2018年 俊祥. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <GLKit/GLKit.h>

@class AGLKElementIndexArrayBuffer;

/////////////////////////////////////////////////////////////////
//
typedef enum {
    AGLKVertexAttribPosition = GLKVertexAttribPosition,
    AGLKVertexAttribNormal = GLKVertexAttribNormal,
    AGLKVertexAttribColor = GLKVertexAttribColor,
    AGLKVertexAttribTexCoord0 = GLKVertexAttribTexCoord0,
    AGLKVertexAttribTexCoord1 = GLKVertexAttribTexCoord1,
} AGLKVertexAttrib;


@interface AGLKVertexAttribArrayBuffer : NSObject
{
    GLsizei      stride;
    GLsizeiptr   bufferSizeBytes;
    GLuint       name;
}

@property (nonatomic, readonly) GLuint
name;
@property (nonatomic, readonly) GLsizeiptr
bufferSizeBytes;
@property (nonatomic, readonly) GLsizei
stride;

+ (void)drawPreparedArraysWithMode:(GLenum)mode
                  startVertexIndex:(GLint)first
                  numberOfVertices:(GLsizei)count;

- (id)initWithAttribStride:(GLsizei)stride
          numberOfVertices:(GLsizei)count
                     bytes:(const GLvoid *)dataPtr
                     usage:(GLenum)usage;

- (void)prepareToDrawWithAttrib:(GLuint)index
            numberOfCoordinates:(GLint)count
                   attribOffset:(GLsizeiptr)offset
                   shouldEnable:(BOOL)shouldEnable;

- (void)drawArrayWithMode:(GLenum)mode
         startVertexIndex:(GLint)first
         numberOfVertices:(GLsizei)count;

- (void)reinitWithAttribStride:(GLsizei)stride
              numberOfVertices:(GLsizei)count
                         bytes:(const GLvoid *)dataPtr;

@end

