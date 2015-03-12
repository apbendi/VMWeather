#import <Foundation/Foundation.h>

@interface VMCurrentWeather : NSObject
+ (VMCurrentWeather *)weatherWithJSON:(NSDictionary *)json;

@property (nonatomic) NSNumber *temperature;
@property (nonatomic) NSString *iconFlag;
@property (nonatomic) NSString *summary;
@property (nonatomic) NSInteger reportTime;

@end
