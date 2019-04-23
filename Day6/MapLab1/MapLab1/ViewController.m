//
//  ViewController.m
//  MapLab1
//
//  Created by JETS Mobile Lab - 2 on 4/23/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"
#import "MADAnotation.h"
@interface ViewController ()
- (IBAction)click:(id)sender;

@end

@implementation ViewController
#pragma mark : Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
   // [_mapView setZoomEnabled:NO];
    //[_mapView setDelegate:self];
    _mapView.delegate=self;
    //3shan el user y7es eny 3amla update fel location
    _locationManager = [CLLocationManager new];
    [_locationManager setDistanceFilter:kCLHeadingFilterNone];
    [_locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
    [_locationManager setDelegate:self];
    [_locationManager startUpdatingLocation];
    [_locationManager requestWhenInUseAuthorization];
    /*
     //add permission to info.plist
     <key>NSLocationAlwaysUsageDescription</key>
     <string>Program requires GPS to track cars and job orders</string>
     <key>NSLocationAlwaysAndWhenInUseUsageDescription</key>
     <string>Program requires GPS to track cars and job orders</string>
     <key>NSLocationWhenInUseUsageDescription</key>
     <string>Program requires GPS to track cars and job orders</string>
     <key>NSMicrophoneUsageDescription</key>
     <string>This app uses your Microphone to allow Voice over IP communication with the Program Admin system</string>
     */
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
}
#pragma mark : MapView Methods of Delegate
- (void)mapView:(MKMapView *)mapView regionWillChangeAnimated:(BOOL)animated{
    printf("regionWillChangeAnimated\n");
}

- (void)mapView:(MKMapView *)mapView regionDidChangeAnimated:(BOOL)animated{
     printf("regionDidChangeAnimated\n");
}

- (void)mapView:(MKMapView *)mapView didSelectAnnotationView:(MKAnnotationView *)view{
    printf("didSelectAnnotationView\n");
    
    printf("%s\n",[view.annotation.title UTF8String]);
}
#pragma mark : LocationManager Methods of Delegate
- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations{
    printf("didUpdateLocations\n");
    CLLocation * location = [locations lastObject];
    printf("%f\n",location.coordinate.latitude);
    printf("%f\n",location.coordinate.longitude);
}
#pragma mark : IBActions Methods
- (IBAction)click:(id)sender {
    CGPoint touchPoint = [sender locationInView:_mapView];
    //struct mesh class 3shan keda ma 7tetsh *
    CLLocationCoordinate2D touchCoordinate = [_mapView convertPoint:touchPoint toCoordinateFromView:_mapView];
    MADAnotation * myAnnotation = [MADAnotation new];
    myAnnotation.coordinate = touchCoordinate;
    myAnnotation.title = @"MAD";
    myAnnotation.subtitle = @"JETS";
    [_mapView addAnnotation:myAnnotation];
}
@end
