#include <Foundation/Foundation.h>
#include "Task.m"

@interface List:NSObject
{
	NSMutableArray* _tasks;
}

-(id) init;
-(Task*) getTask:(int) at;
-(void) addTask:(Task*) task;
-(void) removeTask:(int) at;
-(void) printTasks;

@end
