//
//  Texture_02.h
//  OpenGLES_Ch3_2
//

#import <GLKit/GLKit.h>

@class AGLKVertexAttribArrayBuffer;


@interface Texture_02 : GLKViewController
{
}

@property (strong, nonatomic) GLKBaseEffect 
   *baseEffect;
@property (strong, nonatomic) AGLKVertexAttribArrayBuffer 
   *vertexBuffer;

@end
