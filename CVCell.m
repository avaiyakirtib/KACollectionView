//
//  CVCellCollectionViewCell.m
//  CollectionView
//
//  Created by c86 on 18/12/14.
//  Copyright (c) 2014 c86. All rights reserved.
//

#import "CVCell.h"

@implementation CVCell
- (void)awakeFromNib {
    // Initialization code
}
- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    
    if (self) {
        // Initialization code
        NSArray *arrayOfViews = [[NSBundle mainBundle] loadNibNamed:@"CVCell" owner:self options:nil];
        
        if ([arrayOfViews count] < 1) {
            return nil;
        }
        
        if (![[arrayOfViews objectAtIndex:0] isKindOfClass:[UICollectionViewCell class]]) {
            return nil;
        }
        
        self = [arrayOfViews objectAtIndex:0];
        
    }
    
    return self;
    
}
@end
