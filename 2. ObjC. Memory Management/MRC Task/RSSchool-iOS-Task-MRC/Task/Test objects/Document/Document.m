//
//  Document.m
//  RSSchool-iOS-Task-MRC
//
//  Created by Aliaksei Piatyha on 4/30/21.
//  Copyright © 2021 Alexei. All rights reserved.
//

#import "Document.h"
#import "Page.h"
#import "Text.h"

@implementation Document

- (instancetype)initWithTitle:(Text *)title
{
    self = [super init];
    if (self) {
        _title = [title retain];
        _pages = @[];
    }
    return self;
}

- (void)addPage:(Page *)page {
    self.pages = [self.pages arrayByAddingObject:page];
}

- (NSString *)content {
    NSString *content = [[NSString alloc] initWithFormat: @"%@\n", self.title.content];

    for (Page *page in self.pages) {
        @autoreleasepool {
            content = [[content autorelease] stringByAppendingFormat:@"%@\n", page.content];
            [content retain];
        }
    }
    
    return [content autorelease];
}

- (void)dealloc
{
    [_title release];
    [_pages release];
    [super dealloc];
}

@end
