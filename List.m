#import "List.h"

@implementation List
-(id) init
{	
	self=[super init];
	if(self)
	{
		_tasks=[NSMutableArray new];
	}
	return self;
}
-(Task*) getTask:(int) at
{
	return [_tasks objectAtIndex:at];
}
-(void) addTask:(Task*) task
{
	[_tasks addObject:task];
}
-(void) removeTask:(int) at
{
	if(at < [_tasks count]){
		[_tasks removeObjectAtIndex:at];
	}
}
-(void) printTasks
{
	for(int i = 0 ; i < [_tasks count] ; i++)
	{
		Task* t=[_tasks objectAtIndex:i];
		NSMutableString* str=[NSMutableString new];
		[str appendString:[NSString stringWithFormat:@"%d",i]];
		[str appendString:@")"];
		[str appendString:[t getName]];
		NSDateFormatter* df = [[NSDateFormatter alloc]init];
		[df setDateFormat:@"  MM/dd/yyyy hh:mm"];
		[str appendString:[df stringFromDate:[t getDate]]];
		[df release];
		NSLog(str);
	}
}
@end
