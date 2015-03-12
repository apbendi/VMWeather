#import "VMCurrentlyController.h"
#import "VMAPIController.h"
#import "Secrets.h"

@interface VMCurrentlyController ()
@property (nonatomic) VMAPIController *apiController;
@end

@implementation VMCurrentlyController

- (instancetype)init
{
    self = [super init];
    if (self == nil) return nil;

    self.apiController = [[VMAPIController alloc] initWithAPIKey:FORECAST_IO_API_KEY];

    [self.apiController fetchCurrentWeatherWithCompletion:^(VMCurrentWeather *weather) {

    }];

    return self;
}

@end
