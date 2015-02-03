//
//  Factory.h
//  Pirate Adventure
//
//  Created by Andy Lee on 19/01/2015.
//  Copyright (c) 2015 Appfinity Creations. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Character.h"
#import "Boss.h"

@interface Factory : NSObject

-(NSArray *)tiles;
-(Character *)character;
-(Boss *)boss;

@end
