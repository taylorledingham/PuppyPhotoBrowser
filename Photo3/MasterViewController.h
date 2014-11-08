//
//  MasterViewController.h
//  Photo3
//
//  Created by Taylor Ledingham on 2014-10-23.
//  Copyright (c) 2014 Taylor Ledingham. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PhotoCollectionView.h"
#import "PhotoCollectionViewCell.h"
#import "PhotoTableViewCell.h"
#import "DetailPhotoTableViewController.h"

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) NSMutableArray *photosArray;
@property (strong, nonatomic) NSMutableArray *rajaPhotos;
@property (strong, nonatomic) NSMutableArray *charliePhotos;
@property (strong, nonatomic) NSMutableArray *otherDogPhotos;


@end

