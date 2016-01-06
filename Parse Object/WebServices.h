//
//  WebServices.h
//  Parse Object
//
//  Created by LI Leonel G. Pérez Ramos on 05/01/16.
//  Copyright © 2016 LI Leonel G. Pérez Ramos. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WebServices : NSObject
+ (NSDictionary *)userRegister:(NSString *)pushToken;
+ (NSDictionary *)getRiskZones:(NSString *)publicKey;
@end