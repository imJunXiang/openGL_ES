//
//  ViewController.h
//  OpenGLES_2_1
//
//  Created by 俊祥 on 2018/11/15.
//  Copyright © 2018年 俊祥. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GLKit/GLKit.h>

@interface ViewController : GLKViewController
@property (nonatomic, assign) GLuint        vertexBufferID;
@property (nonatomic, strong) GLKBaseEffect *baseEffect;
@end

