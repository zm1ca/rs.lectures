//
//  RSRectangle.m
//  L1-Shapes
//
//  Created by Źmicier Fiedčanka on 4.05.21.
//

#import "RSRectangle.h"

@interface RSRectangle ()

@property float a;
@property float b;

@end

@implementation RSRectangle

- (instancetype)initWithSides:(float)a :(float)b {
    self = [super init];
    if (a < 0 || b < 0) {
        return nil;
    }
    if (self) {
        _a = a;
        _b = b;
    }
    return self;
}

+ (instancetype)rectangleWithSides: (float)a :(float) b {
    return [[RSRectangle alloc] initWithSides:a :b];
}

- (BOOL)isEqualToRectangle:(RSRectangle *)other {
    // FIXME: float comparison
    if (self.area == other.area && self.perimeter == other.perimeter) {
        return true;
    } else {
        return false;
    }
}

- (BOOL)isEqual:(id)other {
    if ([other isMemberOfClass:[self class]]) {
        return [self isEqualToRectangle:other];
    }
    return false;
}

- (float)area {
    return self.a * self.b;
}

- (float)perimeter {
    return self.a + self.b;
}

@end
