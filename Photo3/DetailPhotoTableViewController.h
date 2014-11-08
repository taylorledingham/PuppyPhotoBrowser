//
//  DetailPhotoTableViewController.h
//  Photo3
//
//  Created by Taylor Ledingham on 2014-10-23.
//  Copyright (c) 2014 Taylor Ledingham. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailPhotoTableViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic ) UIImage *image;


- (IBAction)backToAllPhotos:(id)sender;
-(void)setPhotos;

@end
