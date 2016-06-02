//
//  MagicalCreature.h
//  MCMS2
//
//  Created by Paul Lefebvre on 6/1/16.
//  Copyright © 2016 Paul Lefebvre. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MagicalCreature : NSObject

@property NSString *name;
@property NSString *creatureDescription;
@property NSString *creatureImageName;
@property NSMutableArray *accessories;

-(instancetype)initWithName:(NSString *)name creatureDescription:(NSString *)description image:(NSString *)image andAccessories:(NSMutableArray *)accessories;

@end
