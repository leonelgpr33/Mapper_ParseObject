//
//  Declarations.h
//  Parse Object
//
//  Created by LI Leonel G. Pérez Ramos on 05/01/16.
//  Copyright © 2016 LI Leonel G. Pérez Ramos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SBJson.h"
#import "ObjectMapper.h"
#import "ObjectResponse.h"

//Debug
#define nDebugEnable        1
#define print(x)            if(nDebugEnable){(x);}

//Operations
#define nTimeStamp          [NSString stringWithFormat:@"%lu",(long)[[NSDate date] timeIntervalSince1970] * 1]

extern NSDictionary *mjsonRegister;
extern NSDictionary *mjsonZones;
@interface Declarations : NSObject

@end