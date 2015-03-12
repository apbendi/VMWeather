#import "VMCurrentlyController.h"
#import "VMAPIController.h"
#import "VMCurrentlyViewModel.h"
#import "Secrets.h"

@interface VMCurrentlyController ()
@property (nonatomic, readwrite) VMCurrentlyViewModel *viewModel;
@property (nonatomic) VMAPIController *apiController;
@end

@implementation VMCurrentlyController

- (instancetype)init
{
    self = [super init];
    if (self == nil) return nil;

    self.apiController = [[VMAPIController alloc] initWithAPIKey:FORECAST_IO_API_KEY];
    return self;
}

- (void)updateWeatherWithLatitude:(double)latitude longitude:(double)longitude;
{
    [self.apiController fetchCurrentWeatherForLatitude:latitude longitude:longitude succes:^(VMCurrentWeather *weather) {
        self.viewModel = [[VMCurrentlyViewModel alloc] initWithCurrentWeather:weather];
    } failure:^(NSError *error, NSString *message) {
        NSLog(@"%@", message);
    }];
}

@end
