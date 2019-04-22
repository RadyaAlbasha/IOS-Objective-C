//
//  ViewController.m
//  AnimationBall
//
//  Created by JETS Mobile Lab - 2 on 4/22/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *ball;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _checkball=false;
    _ball.layer.cornerRadius= 25;
    _ball.layer.borderColor = [UIColor blackColor].CGColor;
    _ball.layer.borderWidth = 1;
    
    _myAnimator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    [self animation];
}

-(void) animation{
    //3shan tw23
    //UIGravityBehavior *gravity = [[UIGravityBehavior alloc] initWithItems:@[_ball,_label]];
     UIGravityBehavior *gravity = [[UIGravityBehavior alloc] initWithItems:@[_ball]];
    [_myAnimator addBehavior:gravity];
    
    //3shan ma tw23sh b3mel colligion
   // UICollisionBehavior *colligion = [[UICollisionBehavior alloc] initWithItems:@[_ball,_label]];
    UICollisionBehavior *colligion = [[UICollisionBehavior alloc] initWithItems:@[_ball]];
    [colligion setTranslatesReferenceBoundsIntoBoundary:YES];
    [_myAnimator addBehavior:colligion];
    colligion.collisionDelegate = self;
    //3shan tetnatat (jump)
    //UIDynamicItemBehavior *item = [[UIDynamicItemBehavior alloc] initWithItems:@[_ball,_label]];
    UIDynamicItemBehavior *item = [[UIDynamicItemBehavior alloc] initWithItems:@[_ball]];
    item.elasticity = 0.75; //3shan tetnatat
    item.resistance = 1; //tet2l shwaya
    [_myAnimator addBehavior:item];
   /* if(colligion.collisionDelegate == self){
         self.view.backgroundColor = [UIColor redColor];
    }*/
   
}


- (void)collisionBehavior:(UICollisionBehavior *)behavior endedContactForItem:(nonnull id<UIDynamicItem>)item withBoundaryIdentifier:(nullable id<NSCopying>)identifier{
    if(!_checkball)
    {
        self.ball.backgroundColor = [UIColor redColor];
        _checkball = true;
    }
    
    else{
        self.ball.backgroundColor = [UIColor cyanColor];
        _checkball = false;
    }
}
@end
