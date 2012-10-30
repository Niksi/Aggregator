#import "CourseDetailsViewController.h"

@interface CourseDetailsViewController ()

@end

@implementation CourseDetailsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Actions

- (IBAction)cancelClicked:(id)sender
{
	[self.delegate courseDetailsViewControllerDidCancel:self];
    
}
- (IBAction)doneClicked:(id)sender{
    
    Course *course = [[Course alloc] init];
	course.name = self.nameTextField.text;
    
	[self.delegate courseDetailsViewController:self didAddCourse:course];
}

@end

