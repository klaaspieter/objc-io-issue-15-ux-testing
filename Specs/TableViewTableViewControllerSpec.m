#import "SpecHelper.h"

#import <KPAStoryboardConvenience/UIStoryboard+KPAConvenience.h>
#import <KPAViewControllerTestHelper/KPAViewControllerTestHelper.h>

#import "TableViewTableViewController.h"
#import "TableViewDetailViewController.h"

SpecBegin(TableViewTableViewController)

describe(@"TableViewTableViewController", ^{
    __block TableViewTableViewController *_viewController;

    before(^{
        _viewController = [[UIStoryboard mainStoryboard]
                           instantiateViewControllerForClass:[TableViewTableViewController class]];
    });

    it(@"can present the detail view controller using delegate", ^{
        [KPAViewControllerTestHelper pushViewController:_viewController];
        [_viewController.tableView.delegate tableView:_viewController.tableView
                            didSelectRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:0]];
        expect(_viewController.navigationController.topViewController).to.beKindOf([TableViewDetailViewController class]);
    });

    it(@"can present the detail view controller using the segue", ^{
        [KPAViewControllerTestHelper pushViewController:_viewController];
        [_viewController performSegueWithIdentifier:@"SpecialSegue" sender:nil];
        expect(_viewController.navigationController.topViewController).to.beKindOf([TableViewDetailViewController class]);
    });
});

SpecEnd
