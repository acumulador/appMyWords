//
//  NuevoViewController.m
//  myWords
//
//  Created by Juan C Salazar on 4/11/13.
//  Copyright (c) 2013 Juan C Salazar. All rights reserved.
//

#import "NuevoViewController.h"
#import "clPalabras.h"
#import "clRepoPalabras.h"

@interface NuevoViewController ()

@end

@implementation NuevoViewController

@synthesize txtDsPalabra, txtPalabra;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)guardarPalabra:(id)sender {
    if([txtPalabra.text length] < 2)
    {
        UIAlertView * mensa = [[UIAlertView alloc] initWithTitle:@"Mensaje de Error" message:@"La palabra debe tener mas de una letra" delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles:nil, nil];
        [mensa show];
    }
    else
    {
        clPalabras * palabra = [[clPalabras alloc] init];
        palabra.palabra = txtPalabra.text;
        palabra.dsPalabra = txtDsPalabra.text;
        
        NSMutableArray * arrPalabras = [clRepoPalabras instanciaPublica].arrayPalabras;
        [arrPalabras addObject:palabra];
        
        [self dismissViewControllerAnimated:YES completion:NULL];
    }
}

- (IBAction)cancelarPalabra:(id)sender {
    [self dismissViewControllerAnimated:YES completion:NULL];
}
@end
