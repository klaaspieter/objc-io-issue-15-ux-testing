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

    describe(@"table views", ^{
        // Unfortunately there is no way to programatically select the table view cell in such
        // a way that the segue will be triggered. There are two options:
        // 1. Manually trigger the name segued, assuming that the table view cell is configured correctly
        // 2. Implement the table view selection delegate to perform the segue. In other words don't use storyboards for this.

        it(@"pushes a view controller when the table view cell is tapped 1", ^{
            [_viewController performSegueWithIdentifier:@"TableViewPushSegue" sender:nil];
            expect(_viewController.navigationController.topViewController).to.beKindOf([PresentedViewController class]);
        });

        it(@"pushes a view controller when the tableview cell is tapped 2", ^{
            [_viewController.tableView.delegate tableView:_viewController.tableView didSelectRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:0]];
            expect(_viewController.navigationController.topViewController).to.beKindOf([PresentedViewController class]);
        });
    });

});

SpecEnd
