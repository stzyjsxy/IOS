#import "Player.h"

@implementation Player
//初始化name
- (instancetype)initWithName:(NSString *)name
{
    if(self = [super init])
    {
        self.name=name;
        self.score=0;
    }
    return self;
}
- (void)showFist
{
    
    NSLog(@"亲爱的玩家[%@]请选择你要出的拳头：1、剪刀  2、石头  3、布",self.name);
    int userSelect = 0;
    scanf("%d",&userSelect);
    NSString *type =[self fistTypeiWithNumber:userSelect];
    NSLog(@"玩家[%@]出的拳头是: %@",self.name,type);
    _selectType=userSelect;
    
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
