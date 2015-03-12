#import "VMCurrentlyViewController.h"
#import "VMCurrentlyController.h"

@interface VMCurrentlyViewController ()
@property (nonatomic) VMCurrentlyController *controller;
@end

@implementation VMCurrentlyViewController

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self == nil) return nil;

    self.controller = [[VMCurrentlyController alloc] init];

    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

@end
