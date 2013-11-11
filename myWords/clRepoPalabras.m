
#import "clRepoPalabras.h"
#import "clPalabras.h"

@implementation clRepoPalabras

@synthesize arrayPalabras;
static clRepoPalabras * instancia;

-(id)init
{
    if(self = [super init])
    {
        [self leerPalabras];
        if(self.arrayPalabras == Nil)
        {
            self.arrayPalabras = [[NSMutableArray alloc] init];
        }
    }
    return self;
}

-(void) leerPalabras
{
    NSArray * arrayPalabrasLeidas = [[NSArray alloc] initWithContentsOfFile:[self rutaPlist]];
    if(arrayPalabrasLeidas != nil)
    {
        self.arrayPalabras = [[NSMutableArray alloc] init];
        for (NSDictionary * diccionario in arrayPalabrasLeidas) {
            clPalabras * palabraLeer = [[clPalabras alloc] init];
            palabraLeer.palabra = [diccionario objectForKey:@"palabra"];
            palabraLeer.dsPalabra = [diccionario objectForKey:@"desPalabra"];
            
            [self.arrayPalabras addObject:palabraLeer];
        }
    }
    else
    {
        //El plist no fue leido, muestro mensaje de error con Alert
        UIAlertView * alerta = [[UIAlertView alloc] initWithTitle:@"Mensa" message:@"No se encontraron palabras en la lista" delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles:nil, nil];
        [alerta show];
    }
}

-(void) guardarPalabras
{
    NSMutableArray * arrayPalabraGuardar = [[NSMutableArray alloc] init];
    for (clPalabras * palabraGuarda in arrayPalabras) {
        NSDictionary * diccionarioGuarda = [[NSDictionary alloc] initWithObjectsAndKeys:palabraGuarda.palabra, @"palabra", palabraGuarda.dsPalabra, @"desPalabra", nil];
        
        [arrayPalabraGuardar addObject:diccionarioGuarda];
    }
    
    [arrayPalabraGuardar writeToFile:[self rutaPlist] atomically:YES];
    
    UIAlertView * alertaGuarda = [[UIAlertView alloc] initWithTitle:@"Palabras" message:@"Palabra Guardada con Exito!!" delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles:nil, nil];
    [alertaGuarda show];
}

-(NSString *) rutaPlist
{
    NSString *  rutaCarpeta = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    return [rutaCarpeta stringByAppendingPathComponent:@"myDiccionario.plist"];
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
