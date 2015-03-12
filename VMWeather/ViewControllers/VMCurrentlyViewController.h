#import <UIKit/UIKit.h>

@interface VMCurrentlyViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *summaryLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *tempLabel;
@property (weak, nonatomic) IBOutlet UILabel *emojiLabel;
@property (weak, nonatomic) IBOutlet UIButton *refreshButton;
- (IBAction)refreshButtonDidPress:(UIButton *)sender;

@end

