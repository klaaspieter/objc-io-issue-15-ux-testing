#import "SpecHelper.h"

#import <KPAStoryboardConvenience/UIStoryboard+KPAConvenience.h>
#import <KPAViewControllerTestHelper.h>

#import "ControlsViewController.h"

SpecBegin(ControlsViewController)

describe(@"ControlsViewController", ^{
    __block ControlsViewController *_viewController;

    before(^{
        _viewController = [[UIStoryboard mainStoryboard]
                           instantiateViewControllerForClass:[ControlsViewController class]];
    });

    it(@"updates the state label when the button is pressed", ^{
        [KPAViewControllerTestHelper presentViewController:_viewController];
        [_viewController.button sendActionsForControlEvents:UIControlEventTouchUpInside];
        expect(_viewController.buttonStateLabel.text).to.equal(@"Pressed");
    });
});

SpecEnd
