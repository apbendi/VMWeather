#import "VMAPIController.h"
#import <Forecastr/Forecastr.h>

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

}

@end
