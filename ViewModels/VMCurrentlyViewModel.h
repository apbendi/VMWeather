#import <UIKit/UIKit.h>
#import "VMCurrentWeather.h"

@interface VMCurrentlyViewModel : NSObject

- (instancetype)initWithCurrentWeather:(VMCurrentWeather *)weather;

@property (nonatomic, readonly) NSString *tempString;
@property (nonatomic, readonly) NSString *summary;
@property (nonatomic, readonly) NSString *dateString;
@property (nonatomic, readonly) UIImage *icon;

@end
