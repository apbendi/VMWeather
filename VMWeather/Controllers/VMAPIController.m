#import "VMAPIController.h"
#import <Forecastr/Forecastr.h>

#import "VMCurrentWeather.h"

@interface VMAPIController ()
@property (nonatomic) Forecastr *apiManager;
@end

@implementation VMAPIController

- (instancetype)initWithAPIKey:(NSString *)key
{
    self = [super init];
    if (self == nil) return nil;

    self.apiManager = [Forecastr sharedManager];
    self.apiManager.apiKey = key;
    self.apiManager.cacheEnabled = NO;

    return self;
}

- (void)fetchCurrentWeatherWithCompletion:(CurrentWeatherCompletionBlock)block
{
    NSArray *excludes = [NSArray arrayWithObjects:kFCMinutelyForecast, kFCDailyForecast, kFCHourlyForecast, kFCAlerts, kFCFlags, nil];

    [self.apiManager getForecastForLatitude:39.9522222 longitude:-75.1641667 time:nil exclusions:excludes success:^(id JSON) {
        NSLog(@"JSON: %@", JSON);
    } failure:^(NSError *error, id response) {
        NSString *message = [self.apiManager messageForError:error withResponse:response];
        NSLog(@"Current Weather failed to fetch: %@", message);
    }];
}

@end
