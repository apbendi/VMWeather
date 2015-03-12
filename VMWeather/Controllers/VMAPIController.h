#import <Foundation/Foundation.h>

@class CurrentWeather;

typedef void(^CurrentWeatherCompletionBlock)(CurrentWeather *weather);

@interface VMAPIController : NSObject

- (instancetype)initWithAPIKey:(NSString *)key;
- (void)fetchCurrentWeatherWithCompletion:(CurrentWeatherCompletionBlock)block;

@end
