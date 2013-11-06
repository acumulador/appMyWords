
#import "clRepoPalabras.h"

@implementation clRepoPalabras

@synthesize arrayPalabras;
static clRepoPalabras * instancia;

-(id)init
{
    if(self = [super init])
    {
        self.arrayPalabras = [[NSMutableArray alloc] init];
    }
    return self;
}

+(clRepoPalabras * ) instanciaPublica;
{
    if(instancia==nil)
    {
        instancia = [[clRepoPalabras alloc] init];
    }
    return instancia;
}

@end
