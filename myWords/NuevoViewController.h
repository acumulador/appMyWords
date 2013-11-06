//
//  NuevoViewController.h
//  myWords
//
//  Created by Juan C Salazar on 4/11/13.
//  Copyright (c) 2013 Juan C Salazar. All rights reserved.
//

#import <UIKit/UIKit.h>
//@interface DetailViewController : UIViewController <UISplitViewControllerDelegate>
@interface NuevoViewController : UIViewController //<UISplitViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UITextField *txtPalabra;
@property (weak, nonatomic) IBOutlet UITextField *txtDsPalabra;
- (IBAction)guardarPalabra:(id)sender;
- (IBAction)cancelarPalabra:(id)sender;

@end
