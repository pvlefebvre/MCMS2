//
//  ViewController.m
//  MCMS2
//
//  Created by Paul Lefebvre on 6/1/16.
//  Copyright © 2016 Paul Lefebvre. All rights reserved.
//

#import "ViewController.h"
#import "MagicalCreature.h"

@interface ViewController ()
@property NSMutableArray *creatures;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MagicalCreature *creature1 = [[MagicalCreature alloc] initWithName:@"GROG" creatureDescription:@"Big and mean" andImage:@"monster1"];
    MagicalCreature *creature2 = [[MagicalCreature alloc] initWithName:@"Ick" creatureDescription:@"Big and mean" andImage:@"monster2"];
    MagicalCreature *creature3 = [[MagicalCreature alloc] initWithName:@"BOB" creatureDescription:@"Big and mean" andImage:@"monster3"];
    
    self.creatures = [[NSMutableArray alloc] initWithObjects:creature1,creature2,creature3, nil];

}


@end
