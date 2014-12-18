//
//  ViewController.m
//  CollectionView
//
//  Created by c86 on 18/12/14.
//  Copyright (c) 2014 c86. All rights reserved.
//

#import "ViewController.h"
#import "CVCell.h"

@interface ViewController ()
@property (nonatomic, strong) IBOutlet UICollectionView *collectionView;
@property (nonatomic, strong) NSArray *dataArray;
 @end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     NSMutableArray *firstSection = [[NSMutableArray alloc] init];
    for (int i=0; i<18; i++) {
        [firstSection addObject:[NSString stringWithFormat:@"%d", i]];
     }
    self.dataArray = [[NSArray alloc] initWithObjects:firstSection, nil];
    [self.collectionView registerClass:[CVCell class] forCellWithReuseIdentifier:@"cvCell"];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return [self.dataArray count];
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    NSMutableArray *sectionArray = [self.dataArray objectAtIndex:section];
    return [sectionArray count];
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"cvCell";
    
    CVCell *cell = (CVCell *)[collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    
    NSMutableArray *data = [self.dataArray objectAtIndex:indexPath.section];
    
    NSString *cellData = [data objectAtIndex:indexPath.row];
    
    [cell.titleLabel setText:cellData];
    
    return cell;
    
}
@end
