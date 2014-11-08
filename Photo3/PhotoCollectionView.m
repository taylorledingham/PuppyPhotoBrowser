//
//  PhotoCollectionViewCell.m
//  Photo3
//
//  Created by Taylor Ledingham on 2014-10-23.
//  Copyright (c) 2014 Taylor Ledingham. All rights reserved.
//

#import "PhotoCollectionView.h"

@implementation PhotoCollectionView {
    
    UITapGestureRecognizer *doubleTapper;
}

- (void)setCollectionData:(NSArray *)collectionData {
    _collectionData = collectionData;

}



-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:      (NSInteger)section
{
    return [self.collectionData count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    PhotoCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PhotoCollectionViewCell" forIndexPath:indexPath];
    
    UIImage *cellImage = [self.collectionData objectAtIndex:indexPath.row];
    if(cell.photoView == nil){
        cell.photoView = [[UIImageView alloc]init];
    cell.photoView.frame = cell.contentView.bounds;
    [cell.contentView addSubview:cell.photoView];
        

    }
    
    cell.photoView.image = cellImage;


    
    if (cell.tapGesture == nil){
        cell.tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(deleteCell:)];
        cell.tapGesture.numberOfTapsRequired = 2;
        [cell addGestureRecognizer:cell.tapGesture];
        
    }
    
    return cell;
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
}


//- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
//    
//    UIImage *cellImage = [self.collectionData objectAtIndex:indexPath.row];
//    
//    DetailPhotoTableViewController *detailVC = [[DetailPhotoTableViewController alloc]init];
//    
//    detailVC.photo = cellImage;
//    [detailVC setPhotos];
//    [self.inputViewController presentViewController:detailVC animated:YES completion:nil];
//}


-(void)deleteCell:(UITapGestureRecognizer *)tapper {
    if (tapper.state == UIGestureRecognizerStateEnded) {
        // double tapped...
        NSLog(@"double tapped");
    }
    PhotoCollectionViewCell * cell = (PhotoCollectionViewCell *)tapper.view;
    
    NSIndexPath *tappedIndexPath = [self indexPathForCell:cell];
    
    NSMutableArray *mutData = [self.collectionData mutableCopy];
    [mutData removeObject:[self.collectionData objectAtIndex:tappedIndexPath.row]];
    
    self.collectionData = mutData;
    
}




@end
