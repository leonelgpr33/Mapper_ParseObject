//
//  ObjectResponse.h
//  Parse Object
//
//  Created by LI Leonel G. Pérez Ramos on 05/01/16.
//  Copyright © 2016 LI Leonel G. Pérez Ramos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZonesObject.h"

@interface ObjectResponse : NSObject
@property (nonatomic,strong) NSString *responseStatus;
@property (nonatomic,strong) NSString *publicKey;
@property (nonatomic,strong) NSMutableArray *zones;
@end
