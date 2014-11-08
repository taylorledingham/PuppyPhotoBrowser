//
//  DetailPhotoTableViewController.m
//  Photo3
//
//  Created by Taylor Ledingham on 2014-10-23.
//  Copyright (c) 2014 Taylor Ledingham. All rights reserved.
//

#import "DetailPhotoTableViewController.h"

@interface DetailPhotoTableViewController ()

@end

@implementation DetailPhotoTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%@", self.imageView.description);


}

-(void)viewWillAppear:(BOOL)animated {
    self.imageView.image = self.image;
    
}
-(void)setPhotos {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backToAllPhotos:(id)sender {
    
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}
@end