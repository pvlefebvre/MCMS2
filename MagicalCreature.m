//
//  MagicalCreature.m
//  MCMS2
//
//  Created by Paul Lefebvre on 6/1/16.
//  Copyright © 2016 Paul Lefebvre. All rights reserved.
//

#import "MagicalCreature.h"

@implementation MagicalCreature
-(instancetype)initWithName:(NSString *)name creatureDescription:(NSString *)description image:(NSString *)image andAccessories:(NSMutableArray *)accessories{
    self = [super init];
    if (self) {
        self.name = name;
        self.creatureDescription = description;
        self.creatureImageName = image;
        self.accessories = accessories;
    }
    return self;
}
@end
