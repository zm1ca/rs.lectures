//
//  RSTriangle.h
//  L1-Shapes
//
//  Created by Źmicier Fiedčanka on 4.05.21.
//

#import <Foundation/Foundation.h>
#import "RSShape.h"

NS_ASSUME_NONNULL_BEGIN

@interface RSTriangle: RSShape
- (instancetype)initWithSides:(float)a :(float)b :(float)c;
+ (instancetype)triangleWithSides:(float)a :(float)b :(float)c;
- (BOOL)isEqualToTriangle:(RSTriangle *)other;
- (BOOL)isEqual:(id)other;
@end

NS_ASSUME_NONNULL_END
