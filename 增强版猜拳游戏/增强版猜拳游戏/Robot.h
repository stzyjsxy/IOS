#import "Person.h"
#import "FistType.h"
@interface Robot : Person
//自定义姓名
- (instancetype)initWithName:(NSString *)name;

//得分
@property int score;

@property FistType selectType;

//出拳方法
- (void)showFist;

//玩家选择出的拳头
- (NSString *)fistTypeiWithNumber:(int)number;
@end


