#import <Foundation/Foundation.h>

@interface VMCurrentWeather : NSObject
+ (VMCurrentWeather *)weatherWithJSON:(NSDictionary *)json;
@end
