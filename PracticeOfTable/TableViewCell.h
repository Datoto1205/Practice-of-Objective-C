//
//  TableViewCell.h
//  PracticeOfTable
//
//  Created by 李政恩 on 10/09/2018.
//  Copyright © 2018 李政恩. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell

@property(strong, nonnull) IBOutlet UIImageView *onlyPhoto;
@property(strong, nonnull) IBOutlet UILabel *titleLabel;
@property(strong, nonnull) IBOutlet UILabel *discriptionLabel;

@end
