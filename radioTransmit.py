import board
import busio
import digitalio

import adafruit_rfm9x


# Define radio parameters.
RADIO_FREQ_MHZ = 915.0 

# Define pins connected to the chip, use these if wiring up the breakout according to the guide:
CS    = digitalio.DigitalInOut(board.D6)
RESET = digitalio.DigitalInOut(board.D5)

# Initialize SPI bus.
spi = busio.SPI(board.SCK, MOSI=board.MOSI, MISO=board.MISO)

# Initialze RFM radio
rfm9x = adafruit_rfm9x.RFM9x(spi, CS, RESET, RADIO_FREQ_MHZ)
rfm9x.tx_power = 23

# Send a packet.  Note you can only send a packet up to 252 bytes in length.
rfm9x.send(bytes("Hello World! There is a song that I'm singing, c'mon get happy!!! Let's gooooooooooooooooooooooo baby", 'utf-8'))
print('Sent hello world message!')
