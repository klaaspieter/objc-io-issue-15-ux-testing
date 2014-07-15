#import "SpecHelper.h"

#import <objc/message.h>

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

    it(@"pushes a view controller when the navigation bar button item is tapped", ^{
        // Causes warning (PerformSelector may cause a leak because its selector is unknown).
        // [_viewController.barButton.target  performSelector:_viewController.barButton.action
        //                                         withObject:_viewController.barButton];

        // These are tests who cares? Right?
        objc_msgSend(_viewController.barButton.target, _viewController.barButton.action, _viewController.barButton);

        expect(_viewController.presentedViewController).to.beKindOf([PresentedViewController class]);
    });
});


SpecEnd
