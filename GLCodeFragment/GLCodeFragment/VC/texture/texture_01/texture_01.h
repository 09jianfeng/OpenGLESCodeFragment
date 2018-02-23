//
//  texture_01.h
//  OpenGLES_Ch3_1
//

#import <GLKit/GLKit.h>

@class AGLKVertexAttribArrayBuffer;


@interface texture_01 : UIViewController<GLKViewDelegate>
{
}

@property (strong, nonatomic) GLKBaseEffect *baseEffect;
@property (strong, nonatomic) AGLKVertexAttribArrayBuffer *vertexBuffer;

@end
