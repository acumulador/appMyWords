//
//  DetailViewController.h
//  myWords
//
//  Created by Juan C Salazar on 4/11/13.
//  Copyright (c) 2013 Juan C Salazar. All rights reserved.
//

#import <UIKit/UIKit.h>
@class clPalabras;

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UILabel *lblPalabra;
@property (weak, nonatomic) IBOutlet UITextView *lblDsPalabra;

@property (strong, nonatomic) clPalabras * detallePalabra;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
