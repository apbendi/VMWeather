#import "VMCurrentlyViewModel.h"

@implementation VMCurrentlyViewModel

- (instancetype)initWithCurrentWeather:(VMCurrentWeather *)weather
{
    self = [super init];
    if (self == nil) return nil;

    self.summary = weather.summary;

    return self;
}

@end
