//
//  ViewController.h
//  RigisterAndLoginWithMap
//
//  Created by Esraa Hassan on 4/26/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
@interface ViewController : UIViewController <MKMapViewDelegate  , CLLocationManagerDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *myMapView;
@property CLLocationManager *locationManager;
@property (weak, nonatomic) IBOutlet UITextField *textFieldName;
@property (weak, nonatomic) IBOutlet UITextField *textFieldPhone;
@property (weak, nonatomic) IBOutlet UITextField *textFieldEmail;
@property (weak, nonatomic) IBOutlet UITextField *textFieldAge;
@property (weak, nonatomic) IBOutlet UILabel *labelLatitude;
@property (weak, nonatomic) IBOutlet UILabel *labelLangtude;

- (IBAction)register:(UIButton *)sender;
- (IBAction)chooseImage:(UIButton *)sender;

- (IBAction)goToLogin:(UIButton *)sender;

-(void)findCurrentLocation;

-(void)saveUserName : (NSString*) name andPhone: (NSString*) phone andEmail : (NSString *) email andAge: (NSString*) age andLatiude: (NSString*) latitude andLongitude: (NSString*) longitude;
@end
