//
//  PuppyImage.m
//  TLInstaKilo
//
//  Created by Taylor Ledingham on 2014-10-23.
//  Copyright (c) 2014 Taylor Ledingham. All rights reserved.
//

#import "PuppyImage.h"

@implementation PuppyImage

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.photoView = [[UIImageView alloc]init];
    }
    return self;
}

@end
