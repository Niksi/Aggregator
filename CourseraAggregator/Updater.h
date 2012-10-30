#import <Foundation/Foundation.h>
#import "UpdateInfo.h"
#import "CourseList.h"

@interface Updater : NSObject

// тут будут св-ва для работы с сервером

// обновляет курсы, передавая информацию об обновлении в courseList
- (void)updateCourses:(CourseList *)courseList;

@end
