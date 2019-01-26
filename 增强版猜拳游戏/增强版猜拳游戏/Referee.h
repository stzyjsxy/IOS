
#import "Person.h"
#import "Player.h"
#import "Robot.h"

@interface Referee : Person
- (void)caijueWithPlayer:(Player *)player andRobot: (Robot *)robot;
- (instancetype)initWithName:(NSString *)name;
@end
