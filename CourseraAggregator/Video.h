//
//  Video.h
//  CourseraAggregator
//
//  Created by Ernest Sadykov on 10/17/12.
//  Copyright (c) 2012 Ernest Sadykov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Course.h"

@interface Video : NSObject

@property (nonatomic) Course* course; // ссылка на курс, к которому это видео относится
@property (nonatomic) NSString* url; // url на видео
@property (nonatomic) NSString* name;
@property (nonatomic, readonly) NSString* fullName; // имя, содержащее в себе и имя курса
@property (nonatomic) NSString* description;

@end
