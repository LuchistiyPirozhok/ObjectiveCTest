#import <stdio.h>
#import <Foundation/Foundation.h>
#import "Task.m"
#import "List.m"


int main (int argc, const char * argv[])
{
		NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
		int menu;
		int at;
		char buffer[200]={0};
		List* list=[List new];
		bool isExit=false;
		while(true)
		{			      
			if(isExit){
				break;
			}			
			NSLog(@"\n----------------------------------------------------------------------\nMenu\n----------------------------------------------------------------------\n1.Show task list\n2.Add task\n3.Remove task\n4.Exit");
			
			scanf("%d",&menu);  
			system("clear");               
			switch(menu)
			{
				case 1:					
					[list printTasks];
					break;
				case 2:
					NSLog(@"Input task name:");
					scanf("%s",buffer);
					Task* task=[[Task alloc] initWithName:[NSString stringWithUTF8String:buffer]];
					[list addTask:task];
					NSLog(@"Task added");
					break;
				case 3:
					NSLog(@"Input task number:");					
					scanf("%d",&at);
					[list removeTask:at];
					NSLog(@"Task removed");
					break;
				case 4:
					isExit=true;
					break;
			}
		
		}      
        [pool drain];
        return 0;
}
