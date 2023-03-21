avrdude -c arduino -p atmega328p -P /dev/ttyACM0 -b 115200 -B1 -V -U flash:w:pfs154_prog2_1.hex
