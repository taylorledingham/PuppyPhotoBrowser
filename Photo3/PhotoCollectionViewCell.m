//
//  PhotoCollectionViewCell.m
//  Photo3
//
//  Created by Taylor Ledingham on 2014-10-23.
//  Copyright (c) 2014 Taylor Ledingham. All rights reserved.
//

#import "PhotoCollectionViewCell.h"

@implementation PhotoCollectionViewCell


- (id) initWithFrame:(CGRect)frame
{
    
    self = [super initWithFrame:frame];
    if(self) {
        self.photoView = [[UIImageView alloc]init];
        [self.contentView addSubview:self.photoView];
        self.puppyImage = [[PuppyImage alloc]init];
        self.puppyImage.photoView = [[UIImageView alloc]init];
    }
    return  self;
    
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    //self.puppyImage.photoView.frame = self.contentView.bounds;
    self.photoView.frame = self.contentView.bounds;
}



@end
