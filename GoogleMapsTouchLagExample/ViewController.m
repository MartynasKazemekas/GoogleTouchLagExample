//
//  ViewController.m
//  GoogleMapsTouchLagExample
//
//  Created by Martynas on 2021-03-26.
//

#import "ViewController.h"

@interface ViewController (){
    UITapGestureRecognizer *_tap;

    NSDate *nativeTime;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _map.delegate = self;
    _map.settings.consumesGesturesInView = NO;
    
    _tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(nativeSuperiorTouch:)];
    
    [self.map addGestureRecognizer:_tap];
}

-(void)nativeSuperiorTouch:(UIGestureRecognizer*)recognizer{
    NSLog(@"nativeSuperiorTouch");
    nativeTime = [NSDate date];
}

- (void)mapView:(GMSMapView *)mapView didTapAtCoordinate:(CLLocationCoordinate2D)coordinate{
    NSLog(@"didTapAtCoordinate");

    NSTimeInterval interval = [NSDate date].timeIntervalSince1970 - nativeTime.timeIntervalSince1970;
    double ms = interval * 1000.0;
    
    NSString *str = [NSString stringWithFormat:@"time elapsed :%f ms",ms];
    
    if (ms > 50){
        NSLog(@"hmm... feels like a year");
    }
    
    NSLog(@"%@", str);
    [_label setText:str];
}



@end
