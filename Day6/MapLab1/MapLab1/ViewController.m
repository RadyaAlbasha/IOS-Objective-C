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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
   // [_mapView setZoomEnabled:NO];
    //[_mapView setDelegate:self];
    _mapView.delegate=self;
}

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
