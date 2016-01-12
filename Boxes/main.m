//
//  main.m
//  Boxes
//
//  Created by Thiago Heitling on 2016-01-12.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Box *box1 = [[Box alloc] initWithHeight:10 width:20 andDepth:20];
        
        float box1Volume = [box1 calculateVolume];
        
        NSLog(@"The box1 volume is: %0.2f", box1Volume);
    
        Box *box2 = [[Box alloc] initWithHeight:10 width:30 andDepth:20];
    
        int fitInside = [box1 fitInsideHowManyTimes:box2];
        
        if(fitInside == 0) {
            NSLog(@"box1 doesn't fit inside box2.");
        }
        if (fitInside == 1) {
            NSLog(@"box1 fits %i time inside box2.", fitInside);
        }
        else {
            NSLog(@"box1 fits %i times inside box2", fitInside);
        }
        
    }
    return 0;
}
