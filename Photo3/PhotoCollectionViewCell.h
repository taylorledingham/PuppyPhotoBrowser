//
//  PhotoCollectionViewCell.h
//  Photo3
//
//  Created by Taylor Ledingham on 2014-10-23.
//  Copyright (c) 2014 Taylor Ledingham. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PuppyImage.h"

@interface PhotoCollectionViewCell : UICollectionViewCell



@property (strong, nonatomic) UIImageView *photoView;
@property (strong, nonatomic) NSString *subject;
@property (strong, nonatomic) PuppyImage *puppyImage;
@property (weak, nonatomic) UILabel *textLabel;

@property (strong, nonatomic) UITapGestureRecognizer *tapGesture;


@end



