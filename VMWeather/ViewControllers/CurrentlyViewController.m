#import "CurrentlyViewController.h"
#import "VMCurrentlyController.h"

@interface CurrentlyViewController ()
@property (nonatomic) VMCurrentlyController *controller;
@end

@implementation CurrentlyViewController

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
