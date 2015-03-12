#import <Foundation/Foundation.h>

@class VMCurrentWeather;

typedef void(^CurrentWeatherCompletionBlock)(VMCurrentWeather *weather);
typedef void(^VMAPIFailureBlock)(NSError *error, NSString *message);

@interface VMAPIController : NSObject

- (instancetype)initWithAPIKey:(NSString *)key;
- (void)fetchCurrentWeatherForLatitude:(double)latitude
                             longitude:(double)longitude
                                succes:(CurrentWeatherCompletionBlock)successBlock
                               failure:(VMAPIFailureBlock)failureBlock;

@end
