/*
 ----猜拳游戏----
 1、提示用户出拳头
 
 2、机器人随机出拳头
 
 3、裁判宣布比赛结果并显示比分
 
 
 */

#import <Foundation/Foundation.h>
#import "Player.h"
#import "Robot.h"
#import "Referee.h"
int main() {
    Player *p1 = [[Player alloc] initWithName:@"程帅帅"];
    Robot *rb = [[Robot alloc] initWithName:@"机器猫"];
    Referee *caipan = [[Referee alloc] initWithName:@"黑哨"];
 
    
    while (1) {
        [p1 showFist];
        [rb showFist];
        [caipan caijueWithPlayer:p1 andRobot:rb];
        NSLog(@"是否再来一局 y/n");
        char ans = 'a';
        rewind(stdin);
        scanf("%c",&ans);
        if(ans != 'y')
        {
            NSLog(@"欢迎下次再玩！");
            break;
        }
    }
    return 0;
}
