#ifndef GC_LIB_H
#define GC_LIB_H

#include <pomelo.h>
#include <pomelo_trans.h>

#ifdef __cplusplus
extern "C" {
#endif
    
    typedef void(*gc_connected_cb_t)(int error);
    typedef void(*gc_cb_t)(const char* route, const char* msg);
    typedef void(*gc_request_cb_t)(void* tmp,int rc, const char* resp);
    
    typedef struct
    {
        gc_connected_cb_t connected;
        gc_connected_cb_t gate_connected;
        gc_cb_t callback;
    } gc_cb_array_t;
    
    static pc_client_t* client;
    static int handler_id = 0;
    static int lib_inited = 0;
    static int gate_handler_id = 0;
    static gc_cb_array_t callbacks;
    static const char* login_info;
    
    static int con_port;
    static const char* con_host;
    
    PC_EXPORT void gc_base_init(const char *host, int port, const char *login,void* ex_data, gc_connected_cb_t cb);
    PC_EXPORT void gc_register_callback(gc_cb_t cb);
    PC_EXPORT int gc_request(const char* route, const char* msg, int timeout, gc_request_cb_t cb);
    PC_EXPORT void gc_cleanup();
    
    
#ifdef __cplusplus
}
#endif

#endif /* GC_LIB_H */
