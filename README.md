# template-sv-nexysA7
## Template for hardware design, verification and prototipation on the Nexys A7 FPGA
- To start the simulation, from the root folder of the project, type "make"

### Repo link
- https://github.com/LucasDamo22/template-sv-nexysA7.git

##

# uart-255
## configurations for the minicom terminal
- enable linefeed
- enable linewrap

## notes for the simulation
- it may seem that the serial transmitter from the UART is not-synced with the "tx.data" signal, however it is. Just when it reads the 8 bit data to be serialized, it already changes the mem_address to next data to be serialized. If you pay attention to the "sig_tx" on the "tx_if" you can see that the data serialized is just on top of the next data to be serialized, that is what could cause some confusion