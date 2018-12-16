import board
import busio
import digitalio
import adafruit_rfm9x

RADIO_FREQ_MHZ   = 915.0
groundStation = True;

CS    = digitalio.DigitalInOut(board.D5)
RESET = digitalio.DigitalInOut(board.D6)
spi = busio.SPI(board.SCK, MOSI=board.MOSI, MISO=board.MISO)
rfm9x = adafruit_rfm9x.RFM9x(spi, CS, RESET, RADIO_FREQ_MHZ)

if (groundStation):
    print("Starting Ping Test as Ground Station")
    while (True):
        inputKey = input("Press a key to send a packet ")
        if (inputKey == 'q'):
            break
        else:
            rfm9x.send(bytes("Ping Test: Ground Station", 'utf-8'))
            print("Sent Ground Station Ping!")
            print()

            packet = rfm9x.receive(timeout=5.0)

            if packet is None:
                pass
            else:
                print('Received (raw bytes): {0}'.format(packet))

                packet_text = str(packet, 'ascii')
                print('Received (ASCII): {0}'.format(packet_text))

                rssi = rfm9x.rssi
                print('Received signal strength: {0} dB'.format(rssi))
                print()
else:
    print("Starting Ping Test as Satellite")
    while (True):
        packet = rfm9x.receive()

        if packet is None:
            pass
        else:
            print('Received (raw bytes): {0}'.format(packet))

            packet_text = str(packet, 'ascii')
            print('Received (ASCII): {0}'.format(packet_text))

            rssi = rfm9x.rssi
            print('Received signal strength: {0} dB'.format(rssi))
            print()
            
            rfm9x.send(bytes("Ping Test: Ground Station", 'utf-8'))
            print("Sent Ground Station Ping!")
            print()
