//
//  ViewController.m
//  RigisterAndLoginWithMap
//
//  Created by Esraa Hassan on 4/26/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"
#import "MyAnnotation.h"
#import "MyTableViewController.h"
#import "UserViewController.h"
#import "LoginViewController.h"
@interface ViewController ()
- (IBAction)cleck:(id)sender;

@end

@implementation ViewController{
     NSUserDefaults * userDefaults;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _myMapView.delegate=self;
    //3shan el user y7es eny 3amla update fel location
    _locationManager = [CLLocationManager new];
    [_locationManager setDistanceFilter:kCLHeadingFilterNone];
    [_locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
    [_locationManager setDelegate:self];
    [_locationManager startUpdatingLocation];
    [_locationManager requestWhenInUseAuthorization];
    
    [self findCurrentLocation];
    userDefaults = [NSUserDefaults standardUserDefaults];
    
}
-(void)findCurrentLocation
{
    
    CLLocationManager *locationManager = [[CLLocationManager alloc] init];
    if ([locationManager locationServicesEnabled])
    {
        locationManager.delegate = self;
        locationManager.desiredAccuracy = kCLLocationAccuracyBest;
        locationManager.distanceFilter = kCLDistanceFilterNone;
        [locationManager startUpdatingLocation];
    }
    
    
    CLLocation *location = [locationManager location];
    CLLocationCoordinate2D coordinate = [location coordinate];
    
    _labelLatitude.text = [NSString stringWithFormat:@"%f", coordinate.latitude];
    _labelLangtude.text = [NSString stringWithFormat:@"%f", coordinate.longitude];
    
}
- (IBAction)goToLogin:(UIButton *)sender {
    
    LoginViewController * lVC = [self.storyboard instantiateViewControllerWithIdentifier:@"loginView"];
    [self.navigationController pushViewController:lVC animated:YES];
    
}

-(void)saveUserName : (NSString*) name andPhone: (NSString*) phone andEmail : (NSString *) email andAge: (NSString*) age andLatiude: (NSString*) latitude andLongitude: (NSString*) longitude {
    [userDefaults setObject:name
                     forKey:@"UserName"];
    
    [userDefaults setObject:phone
                     forKey:@"Phone"];
    
    [userDefaults setObject:email
                     forKey:@"Email"];
    
    [userDefaults setObject:age
                     forKey:@"Age"];
    
    [userDefaults setObject:latitude
                     forKey:@"Latitude"];
    
    [userDefaults setObject:longitude
                     forKey:@"Longitude"];
    
    //to save even if the app closed
    [userDefaults synchronize]; // like commit
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
/*- (IBAction)click:(id)sender {
 
}
*/

- (IBAction)cleck:(id)sender {
    CGPoint touchPoint = [sender locationInView:_myMapView];
    //struct mesh class 3shan keda ma 7tetsh *
    CLLocationCoordinate2D touchCoordinate = [_myMapView convertPoint:touchPoint toCoordinateFromView:_myMapView];
    MyAnnotation * myAnnotation = [MyAnnotation new];
    myAnnotation.coordinate = touchCoordinate;
    _labelLatitude.text = [NSString stringWithFormat:@"%f", touchCoordinate.latitude];
    _labelLangtude.text = [NSString stringWithFormat:@"%f", touchCoordinate.longitude];
    myAnnotation.title = @"MAD";
    myAnnotation.subtitle = @"JETS";
    [_myMapView addAnnotation:myAnnotation];
}
- (IBAction)register:(UIButton *)sender {
    //save in userDefaults
    [self saveUserName:_textFieldName.text andPhone:_textFieldPhone.text andEmail:_textFieldEmail.text
        andAge:_textFieldAge.text
        andLatiude:_labelLatitude.text
        andLongitude:_labelLangtude.text];
    printf("Register done\n");
    UserViewController * uVC = [self.storyboard instantiateViewControllerWithIdentifier:@"userView"];
    [self.navigationController pushViewController:uVC animated:YES];
}
- (IBAction)chooseImage:(UIButton *)sender {
    MyTableViewController * table = [self.storyboard instantiateViewControllerWithIdentifier:@"tableView"];
    [self.navigationController pushViewController:table animated:YES];
}
@end
