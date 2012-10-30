#import <Foundation/Foundation.h>
#import "UpdateInfo.h"

@interface Course : NSObject

@property (nonatomic) NSMutableArray* videoList;
@property (nonatomic) NSString* name;
@property (nonatomic) NSString* description;
@property (nonatomic) NSString* category; // пока свойством, потом будет enum

// updateInfo - объект с информацией об обновляемых видео
- (void)updateVideos:(UpdateInfo *)updateInfo;

@end
