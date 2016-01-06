//
//  OCMapperConfig.m
//  Parse Object
//
//  Created by LI Leonel G. Pérez Ramos on 05/01/16.
//  Copyright © 2016 LI Leonel G. Pérez Ramos. All rights reserved.
//


#import "OCMapperConfig.h"
#import "OCMapper.h"
#import "Declarations.h"

@implementation OCMapperConfig
+ (void)configure {
    InCodeMappingProvider *inCodeMappingProvider = [[InCodeMappingProvider alloc] init];
    CommonLoggingProvider *commonLoggingProvider = [[CommonLoggingProvider alloc] initWithLogLevel:LogLevelError];
    
    [[ObjectMapper sharedInstance] setMappingProvider:inCodeMappingProvider];
    [[ObjectMapper sharedInstance] setLoggingProvider:commonLoggingProvider];
    
    /******************* Alerts **********************/
    [inCodeMappingProvider mapFromDictionaryKey:@"zones" toPropertyKey:@"zones"
                                 withObjectType:[ZonesObject class] forClass:[ObjectResponse class]];
}
@end