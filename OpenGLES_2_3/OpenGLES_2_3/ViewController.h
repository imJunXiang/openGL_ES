//
//  ViewController.h
//  OpenGLES_2_3
//
//  Created by 俊祥 on 2018/11/17.
//  Copyright © 2018年 俊祥. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GLKit/GLKit.h>
@class AGLKVertexAttribArrayBuffer;
@interface ViewController : GLKViewController
{
    AGLKVertexAttribArrayBuffer *vertexBuffer;
}
@property (strong, nonatomic) GLKBaseEffect *baseEffect;
@property (strong, nonatomic) AGLKVertexAttribArrayBuffer *vertexBuffer;
@end

