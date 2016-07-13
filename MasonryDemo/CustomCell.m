//
//  CustomCell.m
//  MasonryDemo
//
//  Created by sycf_ios on 16/7/12.
//  Copyright © 2016年 sycf_ios. All rights reserved.
//

#import "CustomCell.h"
#import <Masonry.h>
@implementation CustomCell
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self=[super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initCellUI];
    }
    return self;
}
- (void)awakeFromNib {
    [super awakeFromNib];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)initCellUI {
    self.titleLabel=[[UILabel alloc]init];
    self.titleLabel.numberOfLines=0;
    [self.contentView addSubview:self.titleLabel];
    
    self.contentImageView=[[UIImageView alloc]init];
    [self.contentView addSubview:self.contentImageView];
    UIEdgeInsets padding=UIEdgeInsetsMake(10, 10, 10, 10);
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).with.offset(padding.top);
        make.left.equalTo(self.contentView).with.offset(padding.left);
        make.right.equalTo(self.contentView).with.offset(-padding.right);
        make.bottom.equalTo(self.contentImageView.mas_top).priorityMedium();
    }];
    [self.contentImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.titleLabel.mas_bottom).with.offset(padding.top);
        make.left.equalTo(self.contentView).with.offset(padding.left);
        make.right.equalTo(self.contentView).with.offset(-padding.right);
        make.bottom.equalTo(self.contentView).with.offset(-padding.bottom);
        make.height.equalTo(@200);
    }];
    
}

@end
