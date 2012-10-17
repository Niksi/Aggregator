//
//  CourseList.h
//  CourseraAggregator
//
//  Created by Ernest Sadykov on 10/17/12.
//  Copyright (c) 2012 Ernest Sadykov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Course.h"
#import "UpdateInfo.h"

// по - хорошему, этот класс должен быть синглтоном
@interface CourseList : NSObject

@property (nonatomic) NSMutableArray* courseList;

// обновляет курсы, передавая каждому курсу информацию об обновлении
- (void)updateCourses:(UpdateInfo *)updateInfo;

@end
