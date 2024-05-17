//
//  ViewController.m
//  Conversion-App-objective-C
//
//  Created by Mamoudou Barry on 5/15/24.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextField *inputFielf;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentController;

@property (strong, nonatomic) IBOutlet UILabel *outputField;
@end

double convertMileToKilometer(double value) {
    return value * 1.61;
}
double convertMileTocentimeter(double value) {
    return value * 160934.4;
}
double convertMileToMeter(double value) {
    return value * 1610;
}

@implementation ViewController
- (IBAction)updateButton:(id)sender {
    NSMutableString *buff = [NSMutableString new];
    double userInput = [self.inputFielf.text doubleValue];
    if (self.segmentController.selectedSegmentIndex == 0) {
        double unitTwoValue = convertMileToKilometer(userInput);
        [buff appendString:[@(unitTwoValue) stringValue]];
        [buff appendString:@" Km"];
    } else if (self.segmentController.selectedSegmentIndex == 1) {
        double unitTwoValue = convertMileTocentimeter(userInput);
        [buff appendString:[@(unitTwoValue) stringValue]];
        [buff appendString:@" Cm"];
    } else{
        double unitTwoValue = convertMileToMeter(userInput);
        [buff appendString:[@(unitTwoValue) stringValue]];
        [buff appendString:@" M"];
    }
    self.outputField.text = buff;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
