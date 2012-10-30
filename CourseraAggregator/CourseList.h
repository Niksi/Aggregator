#import <Foundation/Foundation.h>
#import "Course.h"
#import "UpdateInfo.h"

// по - хорошему, этот класс должен быть синглтоном
@interface CourseList : NSObject

@property (nonatomic) NSMutableArray* courseList;

// обновляет курсы, передавая каждому курсу информацию об обновлении
- (void)updateCourses:(UpdateInfo *)updateInfo;

@end
