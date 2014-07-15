#import "SpecHelper.h"

#import "ViewController.h"
#import "PresentedViewController.h"

#import "UIStoryboard+KPAConvenience.h"
#import "KPAViewControllerTestHelper.h"

SpecBegin(ViewController)

describe(@"ViewController", ^{
    __block ViewController *_viewController;

    before(^{
        _viewController = [[UIStoryboard mainStoryboard] instantiateViewControllerForClass:[ViewController class]];
        [KPAViewControllerTestHelper pushViewController:_viewController];
    });

    it(@"presents a view controller when the button is tapped", ^{
        [_viewController.button sendActionsForControlEvents:UIControlEventTouchUpInside];
        expect(_viewController.navigationController.topViewController).to.beKindOf([PresentedViewController class]);
    });
});


SpecEnd
