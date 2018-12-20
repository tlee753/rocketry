# rocketry
Rocket Launch Code for Raspberry Pi Zero W

### Setup
1) install pip3
- `sudo apt install python3-pip`

2) install radio libraries
```bash
pip3 install board
pip3 install RPI.GPIO
pip3 install adafruit-blinka
pip3 install adafruit-circuitpython-rfm9x
```

3) enable SPI/I2C
- `sudo raspi-config`
  - `interface options`
- test with `python3 interfaceTest.py`

4) Connect Hardware
- `python3 pingTest.py`

5) Run python files at launch
