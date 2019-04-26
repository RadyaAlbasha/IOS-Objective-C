//
//  MyAnnotation.h
//  RigisterAndLoginWithMap
//
//  Created by Esraa Hassan on 4/26/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
@interface MyAnnotation : NSObject <MKAnnotation>

@property (nonatomic) CLLocationCoordinate2D coordinate;

// Title and subtitle for use by selection UI.
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *subtitle;

@end
