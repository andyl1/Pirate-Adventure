//
//  Factory.m
//  Pirate Adventure
//
//  Created by Andy Lee on 19/01/2015.
//  Copyright (c) 2015 Appfinity Creations. All rights reserved.
//

#import "Factory.h"
#import "Tile.h"

@implementation Factory

-(NSArray *)tiles {
    Tile *tile1 = [[Tile alloc] init];
    tile1.story = @"Captain, we need a fearless leader such as yourself to undertake a voyage.  You must stop the Evil Pirate Boss.  Would you like a Blunted Sword to start with?";
    tile1.backgroundImage = [UIImage imageNamed:@"PirateStart.jpg"];
    Weapon *bluntedSword = [[Weapon alloc] init];   //initiating space for new weapon.
    bluntedSword.name = @"Blunted Sword";   //allocating name of new weapon.
    bluntedSword.damage = 12;   //allocating amount of damage of new weapon.
    tile1.weapon = bluntedSword;    //equips the new weapon and it's stats to character.
    tile1.actionButtonName = @"Take the sword"; //changes the button name.
    
    Tile *tile2 = [[Tile alloc] init];
    tile2.story = @"You have come across an armory.  Would you like to upgrade your armor to Steel Armor?";
    tile2.backgroundImage = [UIImage imageNamed:@"PirateBlacksmith.jpeg"];
    Armor *steelArmor = [[Armor alloc] init];
    steelArmor.name = @"Steel Armor";
    steelArmor.health = 8;
    tile2.armor = steelArmor;
    tile2.actionButtonName = @"Take the armor";
    
    Tile *tile3 = [[Tile alloc] init];
    tile3.story = @"A mysterious dock appears on the horizon.  Should we stop and ask for directions?";
    tile3.backgroundImage = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    tile3.healthEffect = 12;    //add new health effect to character.
    tile3.actionButtonName = @"Stop at the dock";
    
    
    NSMutableArray *firstColumn = [[NSMutableArray alloc] init];
    [firstColumn addObject:tile1];
    [firstColumn addObject:tile2];
    [firstColumn addObject:tile3];
    
    Tile *tile4 = [[Tile alloc] init];
    tile4.story = @"You have found a Parrot.  This can be used in your Armor slot.  Parrots are a great defender and are fiercely loyal to their Captain!";
    tile4.backgroundImage = [UIImage imageNamed:@"PirateParrot.jpg"];
    Armor *parrotArmor = [[Armor alloc] init];
    parrotArmor.name = @"Parrot";
    parrotArmor.health = 20;
    tile4.armor = parrotArmor;
    tile4.actionButtonName = @"Adopt the parrot";
    
    Tile *tile5 = [[Tile alloc] init];
    tile5.story = @"You have stumbled upon a cache of pirate weapons.  Would you like to upgrade to a Pistol?";
    tile5.backgroundImage = [UIImage imageNamed:@"PirateWeapons.jpeg"];
    Weapon *pistolWeapon = [[Weapon alloc] init];
    pistolWeapon.name = @"Pistol";
    pistolWeapon.damage = 17;
    tile5.weapon = pistolWeapon;
    tile5.actionButtonName = @"Take the pistol";
    
    Tile *tile6 = [[Tile alloc] init];
    tile6.story = @"You have been captured by pirates and are ordered to walk the plank!";
    tile6.backgroundImage = [UIImage imageNamed:@"PiratePlank.jpg"];
    tile6.healthEffect = -22;
    tile6.actionButtonName = @"Show no fear";
    
    NSMutableArray *secondColumn = [[NSMutableArray alloc] init];
    [secondColumn addObject:tile4];
    [secondColumn addObject:tile5];
    [secondColumn addObject:tile6];
    
    Tile *tile7 = [[Tile alloc] init];
    tile7.story = @"You have sighted a pirate battle off the coast.  Should we intervene?";
    tile7.backgroundImage = [UIImage imageNamed:@"PirateShipBattle.jpeg"];
    tile7.healthEffect = 8;
    tile7.actionButtonName = @"Fight those scum";
    
    Tile *tile8 = [[Tile alloc] init];
    tile8.story = @"The legend of the deep, the Mighty Kraken appears!";
    tile8.backgroundImage = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    tile8.healthEffect = -46;
    tile8.actionButtonName = @"Abandon ship";
    
    Tile *tile9 = [[Tile alloc] init];
    tile9.story = @"You have stumbled upon a hidden cave of pirate treasure!";
    tile9.backgroundImage = [UIImage imageNamed:@"PirateTreasure.jpeg"];
    tile9.healthEffect = 20;
    tile9.actionButtonName = @"Take the treasure";
    
    NSMutableArray *thirdColumn = [[NSMutableArray alloc] init];
    [thirdColumn addObject:tile7];
    [thirdColumn addObject:tile8];
    [thirdColumn addObject:tile9];
    
    Tile *tile10 = [[Tile alloc] init];
    tile10.story = @"A group of pirates attempts to board your ship!";
    tile10.backgroundImage = [UIImage imageNamed:@"PirateAttack.jpg"];
    tile10.healthEffect = -15;
    tile10.actionButtonName = @"Repel the invaders";
    
    Tile *tile11 = [[Tile alloc] init];
    tile11.story = @"In the deep of the sea many things live and many things can be found.  Will the fortune bring help or ruin?";
    tile11.backgroundImage = [UIImage imageNamed:@"PirateTreasurer2.jpeg"];
    tile11.healthEffect = -7;
    tile11.actionButtonName = @"Swim deeper";
    
    Tile *tile12 = [[Tile alloc] init];
    tile12.story = @"Your final faceoff with the fearsome Evil Pirate Boss!";
    tile12.backgroundImage = [UIImage imageNamed:@"PirateBoss.jpeg"];
    tile12.healthEffect = -15;
    tile12.actionButtonName = @"Fight";
    
    NSMutableArray *forthColumn = [[NSMutableArray alloc] init];
    [forthColumn addObject:tile10];
    [forthColumn addObject:tile11];
    [forthColumn addObject:tile12];
    
    NSArray *tiles = [[NSArray alloc] initWithObjects:firstColumn, secondColumn, thirdColumn, forthColumn, nil];
    
    return tiles;
}

-(Character *)character{
    
    Character *character = [[Character alloc] init];
    character.health = 100;
    
    Armor *armor = [[Armor alloc] init];        //create armor
    armor.name = @"Cloak";                      //give it name
    armor.health = 5;                           //give it health
    character.armor = armor;                    //class.property = armor created
    
    Weapon *weapon = [[Weapon alloc] init];     //create weapon
    weapon.name = @"Fists";                     //give it name
    weapon.damage = 10;                         //give it damage
    character.weapon = weapon;                  //class.property = weapon created
    
    return character;
}

-(Boss *)boss {
    Boss *boss = [[Boss alloc] init];   //allocate space and initialise boss object
    boss.health = 65;                   //gives boss initial health
    return boss;                        //the method returns an instance of the boss, as required
}



@end
