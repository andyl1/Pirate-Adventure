//
//  Character.h
//  Pirate Adventure
//
//  Created by Andy Lee on 22/01/2015.
//  Copyright (c) 2015 Appfinity Creations. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Armor.h"
#import "Weapon.h"

@interface Character : NSObject

@property (strong, nonatomic) Armor *armor;
@property (strong, nonatomic) Weapon *weapon;
@property (nonatomic) int health;
@property (nonatomic) int damage;

@end
