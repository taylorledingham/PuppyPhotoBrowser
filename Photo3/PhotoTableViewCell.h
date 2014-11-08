//
//  PhotoTableViewCell.h
//  Photo3
//
//  Created by Taylor Ledingham on 2014-10-23.
//  Copyright (c) 2014 Taylor Ledingham. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PhotoCollectionView.h"

@interface PhotoTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet PhotoCollectionView *collectionView;

@end
