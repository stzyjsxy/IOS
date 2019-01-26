//
//  Referee.m
//  增强版猜拳游戏
//
//  Created by cloud on 2019/1/25.
//  Copyright © 2019年 cloud. All rights reserved.
//

#import "Person.h"
#import "Referee.h"
#import "FistType.h"

@implementation Referee
- (void)caijueWithPlayer:(Player *)player andRobot: (Robot *)robot
{
    FistType playerType = player.selectType;
    FistType robotType = robot.selectType;
    NSLog(@"大家好！我是裁判[%@]我来宣布比赛结果",self.name);
    
    if(playerType - robotType==-2 || playerType - robotType==1)
    {
        NSLog(@"玩家[%@]获得胜利！",player.name);
        player.score++;
    }
    else if(playerType == robotType)
    {
        NSLog(@"平局，你们真是心有灵犀一点通！");
    }
    else
    {
        NSLog(@"机器人[%@]获得胜利！",robot.name);
        robot.score++;
    }
    NSLog(@"---玩家[%@]:[%d]----机器人[%@]:[%d]",
          player.name,player.score,
          robot.name,robot.score);
}
- (instancetype)initWithName:(NSString *)name
{
    if(self = [super init])
    {
        self.name=name;
    }
    return self;
}
@end
