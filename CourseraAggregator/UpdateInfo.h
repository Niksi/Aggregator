#import <Foundation/Foundation.h>

@interface UpdateInfo : NSObject

// массив объектов Course
// если nil, значит новых курсов нет
@property (nonatomic) NSArray* courses;

// ключи - id курсов, значения - массив объектов Video
// если nil, новых видео нет
@property (nonatomic) NSDictionary* videos;

@end
