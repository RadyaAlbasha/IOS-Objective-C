//
//  MyTableViewCell.h
//  CustomTableViewCell
//
//  Created by JETS Mobile Lab - 2 on 4/24/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *firstLabel;
@property (weak, nonatomic) IBOutlet UILabel *secondLabel;
@property (weak, nonatomic) IBOutlet UIImageView *myImageView;

@end

NS_ASSUME_NONNULL_END
