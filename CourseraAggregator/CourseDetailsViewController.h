#import <UIKit/UIKit.h>
#import "Course.h"

@class CourseDetailsViewController;

@protocol CourseDetailsViewControllerDelegate <NSObject>
- (void)courseDetailsViewControllerDidCancel:(CourseDetailsViewController *)controller;
- (void)courseDetailsViewController:(CourseDetailsViewController *)controller
                       didAddCourse:(Course *) course;
@end

@interface CourseDetailsViewController : UIViewController

@property (nonatomic, weak) id <CourseDetailsViewControllerDelegate> delegate;
@property (nonatomic, strong) IBOutlet UITextField *nameTextField;

- (IBAction)cancelClicked:(id)sender;
- (IBAction)doneClicked:(id)sender;

@end
