//
//  Box.h
//  Boxes
//
//  Created by Thiago Heitling on 2016-01-12.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property (nonatomic, assign) float height;
@property (nonatomic, assign) float width;
@property (nonatomic, assign) float depth;

-(id) initWithHeight:(float)height width:(float)width andDepth:(float)depth;

-(float) calculateVolume;

-(int) fitInsideHowManyTimes:(Box *)aBox;

@end
