//
//机器人类
//

#import "Robot.h"
#import <stdlib.h>
#import "FistType.h"

@implementation Robot
- (instancetype)initWithName:(NSString *)name
{
    if(self = [super init])
    {
        self.name=name;
    }
    return self;
}
- (void)showFist
{
    int robotSelect=arc4random_uniform(3)+1;
    NSString *type = [self fistTypeiWithNumber:robotSelect];
    NSLog(@"机器人[%@]出的拳头是:%@",self.name,type);
    _selectType=robotSelect;
}
- (NSString *)fistTypeiWithNumber:(int)number
{
    switch (number) {
        case 1:
            return @"剪刀";
        case 2:
            return @"石头";
        default:
            return @"布";
    }
}
@end
