//
//  CreatureViewController.m
//  MCMS2
//
//  Created by Paul Lefebvre on 6/1/16.
//  Copyright © 2016 Paul Lefebvre. All rights reserved.
//

#import "CreatureViewController.h"

@interface CreatureViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *descriptionTextField;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UIImageView *creatureImageView;
@property (weak, nonatomic) IBOutlet UITableView *accessoriesTableView;

@end

@implementation CreatureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.nameLabel.text = self.creature.name;
    self.descriptionLabel.text = self.creature.creatureDescription;
    self.creatureImageView.image = [UIImage imageNamed:self.creature.creatureImageName];
    
}

- (IBAction)onEditButtonPressed:(UIBarButtonItem *)sender {
    if (self.editing) {
        self.editing = false;
        //[self.tableView setEditing:false animated:true];
        self.nameLabel.text = self.nameTextField.text;
        self.descriptionLabel.text = self.descriptionTextField.text;
        
        self.creature.name = self.nameLabel.text;
        self.creature.creatureDescription = self.descriptionLabel.text;
        
        self.nameTextField.hidden = YES;
        self.descriptionTextField.hidden = YES;
        
        [sender setStyle:UIBarButtonItemStylePlain];
        [sender setTitle:@"Edit"];
    } else {
        self.editing = true;
        //[self.tableView setEditing:true animated:true];
        self.nameTextField.text = self.nameLabel.text;
        self.descriptionTextField.text = self.descriptionLabel.text;
        self.nameTextField.hidden = NO;
        self.descriptionTextField.hidden = NO;
        [sender setStyle:UIBarButtonItemStyleDone];
        [sender setTitle:@"Done"];
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellID2"];
    NSString *accessory = [self.creature.accessories objectAtIndex:indexPath.row];
    cell.textLabel.text = accessory;
    return cell;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.creature.accessories.count;
}


@end
