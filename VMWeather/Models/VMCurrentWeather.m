#import "VMCurrentWeather.h"

@implementation VMCurrentWeather

+ (VMCurrentWeather *)weatherWithJSON:(NSDictionary *)json
{

    return [[VMCurrentWeather alloc] init];
}

@end
