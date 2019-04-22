//
//  ViewController.h
//  AnimationBall
//
//  Created by JETS Mobile Lab - 2 on 4/22/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UICollisionBehaviorDelegate>
@property UIDynamicAnimator * myAnimator;
@property bool checkball;
-(void) animation;
@end

