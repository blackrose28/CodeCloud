//
//  CodeCloud.m
//  codecloud
//
//  Created by Le Chuong on 11/9/16.
//
//

#import "CodeCloud.h"

@implementation CodeCloud

static void connected(int error){
    fprintf(stdout, "Connected with code:%d\n",error);
}

static void response(void* tmp,int rc,const char* resp){
    fprintf(stdout,"RC:%d,Response:%s\n",rc,resp);
}

- (id)initWithHost:(NSString*)host andPort:(int)port andOpts:(NSString*)opts {
    if (self = [super init]){
        gc_base_init([host cStringUsingEncoding:NSUTF8StringEncoding],port,[opts cStringUsingEncoding:NSUTF8StringEncoding],(void*)CFBridgingRetain(self),connected);
        return self;
    }
    return nil;
}

- (int)requestWithRoute:(NSString*)route andMsg:(NSString*)msg withTimeout:(int)timeout {
    return gc_request([route cStringUsingEncoding:NSUTF8StringEncoding], [msg cStringUsingEncoding:NSUTF8StringEncoding], timeout, response);
}

@end
