#import "VMCurrentlyViewModel.h"
#import <Forecastr/Forecastr.h>

@interface VMCurrentlyViewModel ()
@property (nonatomic, readwrite) NSString *tempString;
@property (nonatomic, readwrite) NSString *summary;
@property (nonatomic, readwrite) NSString *emoji;
@property (nonatomic, readwrite) NSString *dateString;
@property (nonatomic, readwrite) UIImage *icon;
@end

@implementation VMCurrentlyViewModel

- (instancetype)initWithCurrentWeather:(VMCurrentWeather *)weather
{
    self = [super init];
    if (self == nil) return nil;

    self.summary = weather.summary;
    self.tempString = [NSString stringWithFormat:@"%i°F", (int)round([weather.temperature doubleValue])];

    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    df.dateFormat = @"h:mm a";

    self.dateString = [df stringFromDate:[NSDate dateWithTimeIntervalSince1970:weather.reportTime]];

    if ([weather.iconFlag isEqualToString:kFCIconClearDay]) {
        self.emoji = @"☀️";
    } else if ([weather.iconFlag isEqualToString:kFCIconClearNight]) {
        self.emoji = @"🌕";
    } else if ([weather.iconFlag isEqualToString:kFCIconCloudy]) {
        self.emoji = @"☁️";
    } else if ([weather.iconFlag isEqualToString:kFCIconPartlyCloudyDay]) {
        self.emoji = @"⛅️";
    } else if ([weather.iconFlag isEqualToString:kFCIconPartlyCloudyNight]) {
        self.emoji = @"☁️🌑";
    } else if ([weather.iconFlag isEqualToString:kFCIconRain]) {
        self.emoji = @"☔️";
    } else if ([weather.iconFlag isEqualToString:kFCIconSleet]) {
        self.emoji = @"❄️💧";
    } else if ([weather.iconFlag isEqualToString:kFCIconSnow]) {
        self.emoji = @"❄️";
    } else if([weather.iconFlag isEqualToString:kFCIconWind]) {
        self.emoji = @"💨";
    } else if([weather.iconFlag isEqualToString:kFCIconFog]) {
        self.emoji = @"🌁";
    } else {
        self.emoji = @"❓";
    }

    return self;
}

@end
