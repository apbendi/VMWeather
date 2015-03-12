#import "VMCurrentlyViewModel.h"

@interface VMCurrentlyViewModel ()
@property (nonatomic, readwrite) NSString *tempString;
@property (nonatomic, readwrite) NSString *summary;
@property (nonatomic, readwrite) NSString *dateString;
@property (nonatomic, readwrite) UIImage *icon;
@end

@implementation VMCurrentlyViewModel

- (instancetype)initWithCurrentWeather:(VMCurrentWeather *)weather
{
    self = [super init];
    if (self == nil) return nil;

    self.summary = weather.summary;

    return self;
}

@end
