//
//  Box.m
//  Boxes
//
//  Created by Thiago Heitling on 2016-01-12.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import "Box.h"

@implementation Box

-(id) initWithHeight:(float)height width:(float)width andDepth:(float)depth {
 
    self = [super init];
    if (self) {
        _height = height;
        _width = width;
        _depth = depth;
        
    }
    return self;
}

-(float) calculateVolume {
    float volume = self.height * self.width * self.depth;
    
    return volume;
}

-(int) fitInsideHowManyTimes:(Box *)aBox {
    
    int fitInside = [aBox calculateVolume] / [self calculateVolume];
    
    return fitInside;
}

@end
