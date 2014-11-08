//
//  PhotoCollectionViewCell.h
//  Photo3
//
//  Created by Taylor Ledingham on 2014-10-23.
//  Copyright (c) 2014 Taylor Ledingham. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PhotoCollectionViewCell.h"
#import "DetailPhotoTableViewController.h"

@interface PhotoCollectionView : UICollectionView <UICollectionViewDataSource, UICollectionViewDelegate>


@property (strong, nonatomic) NSArray *collectionData;

- (void)setCollectionData:(NSArray *)collectionData ;

@end
