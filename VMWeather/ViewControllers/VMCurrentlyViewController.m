#import "VMCurrentlyViewController.h"
#import "VMCurrentlyController.h"
#import "VMCurrentlyViewModel.h"

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

    [self.controller addObserver:self forKeyPath:@"viewModel" options:(NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew) context:nil];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [self.controller removeObserver:self forKeyPath:@"viewModel"];
    [super viewWillDisappear:animated];
}

- (void)refreshDisplayWithViewModel:(VMCurrentlyViewModel *)viewModel
{
    NSLog(@"Refresh Display");

    self.summaryLabel.text = viewModel.summary;
    self.tempLabel.text = viewModel.tempString;
    self.dateLabel.text = viewModel.dateString;
    self.emojiLabel.text = viewModel.emoji;
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if (object == self.controller && [keyPath isEqualToString:@"viewModel"]) {
        [self refreshDisplayWithViewModel:[object viewModel]];
    }
}

@end
