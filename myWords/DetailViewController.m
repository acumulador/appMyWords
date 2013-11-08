//
//  DetailViewController.m
//  myWords
//
//  Created by Juan C Salazar on 4/11/13.
//  Copyright (c) 2013 Juan C Salazar. All rights reserved.
//

#import "DetailViewController.h"
#import "clPalabras.h"

@interface DetailViewController ()
@property (strong, nonatomic) UIPopoverController *masterPopoverController;
- (void)configureView;
@end

@implementation DetailViewController
@synthesize detallePalabra;
@synthesize lblPalabra, lblDsPalabra;

#pragma mark - Managing the detail item

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    lblPalabra.text = detallePalabra.palabra;
    lblDsPalabra.text = detallePalabra.dsPalabra;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Split view

- (void)splitViewController:(UISplitViewController *)splitController willHideViewController:(UIViewController *)viewController withBarButtonItem:(UIBarButtonItem *)barButtonItem forPopoverController:(UIPopoverController *)popoverController
{
    barButtonItem.title = NSLocalizedString(@"Master", @"Master");
    [self.navigationItem setLeftBarButtonItem:barButtonItem animated:YES];
    self.masterPopoverController = popoverController;
}

- (void)splitViewController:(UISplitViewController *)splitController willShowViewController:(UIViewController *)viewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem
{
    // Called when the view is shown again in the split view, invalidating the button and popover controller.
    [self.navigationItem setLeftBarButtonItem:nil animated:YES];
    self.masterPopoverController = nil;
}

@end
