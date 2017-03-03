#include <Foundation/Foundation.h>

@interface Task:NSObject
{
	NSString* _name;
	NSDate* _date;
}

-(id) initWithName:(NSString*) name;
-(NSString*) getName;
-(NSDate*) getDate;

@end
