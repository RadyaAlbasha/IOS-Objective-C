//
//  ViewController.h
//  MapLab1
//
//  Created by JETS Mobile Lab - 2 on 4/23/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>//3shan da framwork mesh file 3ndy
@interface ViewController : UIViewController <MKMapViewDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *mapView;


@end

