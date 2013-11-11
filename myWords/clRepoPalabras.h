
#import <Foundation/Foundation.h>

@interface clRepoPalabras : NSObject

@property (nonatomic, strong) NSMutableArray * arrayPalabras;
+(clRepoPalabras *) instanciaPublica;

-(void) leerPalabras;
-(void) guardarPalabras;
-(NSString *) rutaPlist;

@end
