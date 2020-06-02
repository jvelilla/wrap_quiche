# wrap_quiche
`wrap_quiche` is an Eiffel binding of [Quiche C API](https://github.com/cloudflare/quiche) 
using [WrapC](https://github.com/eiffel-wrap-c/WrapC) tool.

quiche is an implementation of the QUIC transport protocol and HTTP/3 as specified by the IETF. It provides a low level API for processing QUIC packets and handling connection state. The application is responsible for providing I/O (e.g. sockets handling) as well as an event loop with support for timers.


## Requirements 

*  [WrapC](https://github.com/eiffel-wrap-c/WrapC) tool.
*  [Quiche C API](https://github.com/cloudflare/quiche)


## Download and  Install

Check the travis file 
https://github.com/cloudflare/quiche/blob/master/.travis.yml

### Linux

	
### Windows

## Status

Work in progress


## Examples


### How to compile the C library glue code.

Before to use the examples you will need to compile the C glue code, go to 

	library/generated_wrapper/c/src

and run

	finish_freezing --library

It will copy the C lib `eif_quiche.a` to `$ECF_CONFIG_PATH/C/spec/$(ISE_PLATFORM)/lib/`  or `eif_quiche.lib`  to `$ECF_CONFIG_PATH/C/spec/$ISE_C_COMPILER/$ISE_PLATFORM/lib` 






