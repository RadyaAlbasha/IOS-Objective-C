//
//  Book.h
//  NSUserDefaultLab1
//
//  Created by JETS Mobile Lab - 2 on 5/2/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Book : NSObject <NSCoding>
@property NSString * title;
@property NSString * subTitle;
@property int papers;
@end

NS_ASSUME_NONNULL_END
