//
//  TableViewCell.m
//  PracticeOfTable
//
//  Created by 李政恩 on 10/09/2018.
//  Copyright © 2018 李政恩. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    self.onlyPhoto.layer.cornerRadius = 30;
    self.onlyPhoto.layer.masksToBounds = true;
}

/*- (void) updateCellWithTitle: (NSString *)title description:(NSString *)desc image:(NSString *)img {
    self.onlyPhoto.image = [UIImage imageNamed:@"My graduated profile photo (2 inch) copy.png"];
    self.titleLabel.text = title;
    self.detailTextLabel.text = desc;
}*/

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
