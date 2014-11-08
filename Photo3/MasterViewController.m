//
//  MasterViewController.m
//  Photo3
//
//  Created by Taylor Ledingham on 2014-10-23.
//  Copyright (c) 2014 Taylor Ledingham. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"

@interface MasterViewController ()

@property NSMutableArray *objects;
@end

@implementation MasterViewController

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.leftBarButtonItem = self.editButtonItem;

    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)];
    self.navigationItem.rightBarButtonItem = addButton;

    
    self.charliePhotos = [[NSMutableArray alloc]initWithObjects:[UIImage imageNamed:@"IMG_2150"], [UIImage imageNamed:@"IMG_2271"], [UIImage imageNamed:@"IMG_2395"], [UIImage imageNamed:@"IMG_2396"], nil];
    self.rajaPhotos = [[NSMutableArray alloc]initWithObjects:[UIImage imageNamed:@"Image"], [UIImage imageNamed:@"IMG_2379"], [UIImage imageNamed:@"IMG_2439"], [UIImage imageNamed:@"IMG_3176"], nil];
    self.otherDogPhotos = [[NSMutableArray alloc]initWithObjects:[UIImage imageNamed:@"IMG_2600"],[UIImage imageNamed:@"IMG_1945"], [UIImage imageNamed:@"IMG_1867"], nil];
    
    self.photosArray = [[NSMutableArray alloc]initWithObjects:self.charliePhotos, self.rajaPhotos, self.otherDogPhotos, nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)insertNewObject:(id)sender {
    if (!self.objects) {
        self.objects = [[NSMutableArray alloc] init];
    }
    [self.objects insertObject:[NSDate date] atIndex:0];
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
}

#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSDate *object = self.objects[indexPath.row];
        [[segue destinationViewController] setDetailItem:object];
    }
    
    if ([[segue identifier] isEqualToString:@"showDetailPhoto"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSLog(@"%@", sender);
        
        NSLog(@"%@", indexPath.description);
        PhotoCollectionViewCell *currentCell = (PhotoCollectionViewCell *)sender;
        
        //UIImage *cellImage = [self.photosArray[indexPath.section] objectAtIndex:indexPath.row];
        
        DetailPhotoTableViewController *detailController = (DetailPhotoTableViewController *) segue.destinationViewController;
        
        detailController.image = currentCell.photoView.image;
    }
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.photosArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    PhotoTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    NSArray *currentRow = self.photosArray[indexPath.section];
    
    [cell setBackgroundColor:[UIColor magentaColor]];
   // cell.separatorInset = UIEdgeInsetsZero;
    
    // cell.photoView.image = [self.photosArray[indexPath.section] objectAtIndex:indexPath.row];
    //NSLog(@"%@", [cell.contentView.subviews objectAtIndex:0]);
    
    cell.collectionView.delegate = cell.collectionView;
    cell.collectionView.dataSource = cell.collectionView;
    cell.collectionView.backgroundColor = [UIColor whiteColor];
    cell.collectionView.collectionData =  currentRow;

    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.objects removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}

@end
