//
//  ViewController.h
//  GoogleMapsTouchLagExample
//
//  Created by Martynas on 2021-03-26.
//

#import <UIKit/UIKit.h>
#import <GoogleMaps/GoogleMaps.h>

@interface ViewController : UIViewController <GMSMapViewDelegate>

@property (nonatomic, strong) IBOutlet UILabel *label;
@property (nonatomic, strong) IBOutlet GMSMapView *map;

-(void)nativeSuperiorTouch:(UIGestureRecognizer*)recognizer;

@end

