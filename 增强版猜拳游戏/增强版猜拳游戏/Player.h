//
//  Player.h
//  增强版猜拳游戏
//
//  Created by cloud on 2019/1/25.
//  Copyright © 2019年 cloud. All rights reserved.
//

#import "Person.h"
#import "FistType.h"

@interface Player : Person
//自定义姓名
- (instancetype)initWithName:(NSString *)name;

//得分
@property int score;
@property FistType selectType;

//出拳头方法
- (void)showFist;

//玩家选择出的拳头
- (NSString *)fistTypeiWithNumber:(int)number;
@end

