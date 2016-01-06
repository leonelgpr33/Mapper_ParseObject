//
//  ViewController.m
//  Parse Object
//
//  Created by LI Leonel G. Pérez Ramos on 05/01/16.
//  Copyright © 2016 LI Leonel G. Pérez Ramos. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self getRemoteData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)getRemoteData {
    NSString *stPushToken           = @"232342343";
    mjsonRegister                   = [WebServices userRegister:stPushToken];
    ObjectResponse *objectResponse  = [Parser parseRegisterObject];
    
    NSString *stPublicKey           = objectResponse.publicKey;
    NSString *stResponseStatus      = objectResponse.responseStatus;
    
    print(NSLog(@"mjsonRegister = %@", mjsonRegister))
    print(NSLog(@"stPublicKey = %@", stPublicKey))
    print(NSLog(@"stResponseStatus = %@", stResponseStatus))
    
    mjsonZones                      = [WebServices getRiskZones:stPublicKey];
    objectResponse                  = [Parser parseZoneObject];
    print(NSLog(@"objectResponse = %@", objectResponse))
    
    NSString *name1                  = ((ZonesObject *)objectResponse.zones[0]).name;
    print(NSLog(@"name1 = %@", name1))
    
    int size = (int)[objectResponse.zones count];
    
    for (int i = 0; i < size; i++) {
        
        NSString *name                  = ((ZonesObject *)objectResponse.zones[i]).name;
        print(NSLog(@"name = %@", name))
    }
    
    
    
    
    
    
    
    
    
    
    
}

@end