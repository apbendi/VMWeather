#import <UIKit/UIKit.h>
#import "VMCurrentWeather.h"

@interface VMCurrentlyViewModel : NSObject

- (instancetype)initWithCurrentWeather:(VMCurrentWeather *)weather;

@property (nonatomic) NSString *tempString;
@property (nonatomic) NSString *summary;
@property (nonatomic) NSString *dateString;
@property (nonatomic) UIImage *icon;

@end
