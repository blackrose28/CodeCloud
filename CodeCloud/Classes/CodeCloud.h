//
//  CodeCloud.h
//  codecloud
//
//  Created by Le Chuong on 11/9/16.
//
//

#import <Foundation/Foundation.h>
#include "gc_lib.h"

@interface CodeCloud : NSObject


- (id)initWithHost:(NSString*)host andPort:(int)port andOpts:(NSString*)opts ;
- (int)requestWithRoute:(NSString*)route andMsg:(NSString*)msg withTimeout:(int)timeout ;


@end
