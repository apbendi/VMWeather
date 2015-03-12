#import "VMCurrentWeather.h"

@implementation VMCurrentWeather

+ (VMCurrentWeather *)weatherWithJSON:(NSDictionary *)json
{
    VMCurrentWeather *weather = [[VMCurrentWeather alloc] init];
    weather.temperature = [json objectForKey:@"temperature"];
    weather.iconFlag = [json objectForKey:@"icon"];
    weather.summary = [json objectForKey:@"summary"];
    weather.reportTime = [[json objectForKey:@"time"] integerValue];

    return weather;
}

@end
