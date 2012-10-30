#import "AggregatorAppDelegate.h"
#import "Course.h"
#import "CoursesViewController.h"
#import "CategoriesViewController.h"

@interface AggregatorAppDelegate()
{
    NSMutableArray *courses;
    NSMutableSet *categoriesSet;
}

@end

@implementation AggregatorAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    courses = [NSMutableArray arrayWithCapacity:5];
    categoriesSet = [NSMutableSet setWithCapacity:5];
    
    Course *course1 = [Course new];
    course1.name = @"Test1";
    course1.category = @"Category1";
    Course *course2 = [Course new];
    course2.name = @"Test2";
    course2.category = @"Category2";
    Course *course3 = [Course new];
    course3.name = @"Test3";
    course3.category = @"Category3";
    Course *course4 = [Course new];
    course4.name = @"Test4";
    course4.category = @"Category4";
    Course *course5 = [Course new];
    course5.name = @"Test5";
    course5.category = @"Category5";
    
    [courses addObject:course1];
    [courses addObject:course2];
    [courses addObject:course3];
    [courses addObject:course4];
    [courses addObject:course5];
    
    [categoriesSet addObject:course1.category];
    [categoriesSet addObject:course2.category];
    [categoriesSet addObject:course3.category];
    [categoriesSet addObject:course4.category];
    [categoriesSet addObject:course5.category];
    
    
    UITabBarController *tabBarController = (UITabBarController *)self.window.rootViewController;
    
    UINavigationController *navigationCourseController = [[tabBarController viewControllers] objectAtIndex:1];
    CoursesViewController *coursesViewController = [[navigationCourseController viewControllers] objectAtIndex:0];
    
//    [[[tabBarController viewControllers] objectAtIndex:0] ]
    
    UINavigationController *navigationCategoryController = [[tabBarController viewControllers] objectAtIndex:2];
    CategoriesViewController *categoryViewController = [[navigationCategoryController viewControllers] objectAtIndex:0];
    
    coursesViewController.courses = courses;
    categoryViewController.categories = (NSMutableArray *)[categoriesSet allObjects];
    // Override point for customization after application launch.
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

-(void)applicationDidFinishLaunching:(UIApplication *)application
{
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    
    NSArray *myViewControllers = [NSArray arrayWithObjects:[UIViewController new], [UIViewController new], nil];
    
    tabBarController.viewControllers = myViewControllers;
    
    [_window addSubview:tabBarController.view];
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
