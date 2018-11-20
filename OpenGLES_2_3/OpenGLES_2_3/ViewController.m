//
//  ViewController.m
//  OpenGLES_2_3
//
//  Created by 俊祥 on 2018/11/17.
//  Copyright © 2018年 俊祥. All rights reserved.
//

#import "ViewController.h"
#import "AGLKContext.h"
#import "AGLKVertexAttribArrayBuffer.h"

typedef struct {
    GLKVector3 positionGoords;
} SceneVertex;

static const SceneVertex vertices[] = {
    {{-0.5f, -0.5f, 0.0}},
    {{ 0.5f, -0.5f, 0.0}},
    {{-0.5f,  0.5f, 0.0}}
};

@interface ViewController ()

@end

@implementation ViewController
@synthesize baseEffect;
@synthesize vertexBuffer;

- (void)viewDidLoad {
    [super viewDidLoad];
    GLKView *view = (GLKView *)self.view;
    NSAssert([view isKindOfClass:[GLKView class]], @"View controller's view is not a GLKView");
    
    view.context = [[AGLKContext alloc] initWithAPI:kEAGLRenderingAPIOpenGLES2];
    [AGLKContext setCurrentContext:view.context];
    
    self.baseEffect = [[GLKBaseEffect alloc] init];
    self.baseEffect.useConstantColor = GL_TRUE;
    self.baseEffect.constantColor = GLKVector4Make(1.0f, 1.0f, 1.0f, 1.0f);
    
    ((AGLKContext *)view.context).clearColor = GLKVector4Make(0, 0, 0, 1);
    
//    self.vertexBuffer = [[AGLKVertexAttribArrayBuffer alloc] initWithAttribStride:sizeof(SceneVertex) numberOfVertices:sizeof(vertices)/sizeof(SceneVertex) data:vertices usage:GL_STATIC_DRAW];
    self.vertexBuffer = [[AGLKVertexAttribArrayBuffer alloc] initWithAttribStride:sizeof(SceneVertex) numberOfVertices:sizeof(vertices)/sizeof(SceneVertex) bytes:vertices usage:GL_STATIC_DRAW];
}

- (void)glkView:(GLKView *)view drawInRect:(CGRect)rect {
    [self.baseEffect prepareToDraw];
    [(AGLKContext *)view.context clear:GL_COLOR_BUFFER_BIT];
    [self.vertexBuffer prepareToDrawWithAttrib:GLKVertexAttribPosition numberOfCoordinates:3 attribOffset:offsetof(SceneVertex, positionGoords) shouldEnable:YES];
    
    [self.vertexBuffer drawArrayWithMode:GL_TRIANGLES startVertexIndex:0 numberOfVertices:3];
}


@end
