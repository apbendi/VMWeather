#import <Foundation/Foundation.h>

@class VMCurrentWeather;

typedef void(^CurrentWeatherCompletionBlock)(VMCurrentWeather *weather);

@interface VMAPIController : NSObject

- (instancetype)initWithAPIKey:(NSString *)key;
- (void)fetchCurrentWeatherWithCompletion:(CurrentWeatherCompletionBlock)block;

@end
