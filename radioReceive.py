import board
import busio
import digitalio

import adafruit_rfm9x


# Define radio parameters.
RADIO_FREQ_MHZ   = 915.0

# Define pins connected to the chip, use these if wiring up the breakout according to the guide:
CS    = digitalio.DigitalInOut(board.D5)
RESET = digitalio.DigitalInOut(board.D6)

# Initialize SPI bus.
spi = busio.SPI(board.SCK, MOSI=board.MOSI, MISO=board.MISO)

# Initialze RFM radio
rfm9x = adafruit_rfm9x.RFM9x(spi, CS, RESET, RADIO_FREQ_MHZ)

print('Waiting for packets...')
while True:
    packet = rfm9x.receive()
    #packet = rfm9x.receive(timeout_s=5.0)

    if packet is None:
        pass
    else:
        print('Received (raw bytes): {0}'.format(packet))
        
        packet_text = str(packet, 'ascii')
        print('Received (ASCII): {0}'.format(packet_text))

        rssi = rfm9x.rssi
        print('Received signal strength: {0} dB'.format(rssi))
        print()
