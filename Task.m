#import "Task.h"

@implementation Task
-(id)initWithName:(NSString*) name
{
	self=[super init];
	if(self){
		_name=name;
		_date=[NSDate date];
	}
	return self;
}

-(NSString*) getName
{
	return _name;
}

-(NSDate*) getDate
{
	return _date;
}
@end
