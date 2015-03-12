#import <Foundation/Foundation.h>

@class VMCurrentlyViewModel;

@interface VMCurrentlyController : NSObject
@property (nonatomic, readonly) VMCurrentlyViewModel *viewModel;

- (void)updateWeatherWithLatitude:(double)latitude longitude:(double)longitude;
@end
