//
//  ViewController.m
//  MCMS2
//
//  Created by Paul Lefebvre on 6/1/16.
//  Copyright © 2016 Paul Lefebvre. All rights reserved.
//

#import "ViewController.h"
#import "MagicalCreature.h"
#import "CreatureViewController.h"

@interface ViewController () <UITableViewDelegate,UITableViewDataSource>
@property NSMutableArray *creatures;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *descriptionTextField;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MagicalCreature *creature1 = [[MagicalCreature alloc] initWithName:@"GROG" creatureDescription:@"Big and mean" andImage:@"monster1"];
    MagicalCreature *creature2 = [[MagicalCreature alloc] initWithName:@"Ick" creatureDescription:@"Big and mean" andImage:@"monster2"];
    MagicalCreature *creature3 = [[MagicalCreature alloc] initWithName:@"BOB" creatureDescription:@"Big and mean" andImage:@"monster3"];
    
    self.creatures = [[NSMutableArray alloc] initWithObjects:creature1,creature2,creature3, nil];

}
-(void)viewWillAppear:(BOOL)animated{
    [self.tableView reloadData];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellID"];
    MagicalCreature *creature = [self.creatures objectAtIndex:indexPath.row];
    cell.textLabel.text = creature.name;
    cell.detailTextLabel.text = creature.creatureDescription;
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.creatures.count;
}
- (IBAction)onAddButtonPressed:(id)sender {
    MagicalCreature *creature = [[MagicalCreature alloc] initWithName:self.nameTextField.text creatureDescription:self.descriptionTextField.text andImage:@"monster4"];
    [self.creatures addObject:creature];
    [self.tableView reloadData];
    self.nameTextField.text = @"";
    self.descriptionTextField.text = @"";
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    CreatureViewController *dvc = segue.destinationViewController;
    NSIndexPath *path = [self.tableView indexPathForSelectedRow];
    dvc.creature = [self.creatures objectAtIndex:path.row];
}

@end
