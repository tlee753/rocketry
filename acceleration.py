import smbus
import time

# Get I2C bus
bus = smbus.SMBus(1)

# I2C Addresses
gyroAddress = 0x6b
magAddress = 0x1d

# LSM9DS0 Gyro address, gyroAddress(106)
# Select control register1, 0x20(32)
#		0x0F(15)	Data rate = 95Hz, Power ON
#					X, Y, Z-Axis enabled
bus.write_byte_data(gyroAddress, 0x20, 0x0F)
# LSM9DS0 address, gyroAddress(106)
# Select control register4, 0x23(35)
#		0x30(48)	DPS = 2000, Continuous update
bus.write_byte_data(gyroAddress, 0x23, 0x30)

time.sleep(0.5)

# LSM9DS0 Gyro address, gyroAddress(106)
# Read data back from 0x28(40), 2 bytes
# X-Axis Gyro LSB, X-Axis Gyro MSB
data0 = bus.read_byte_data(gyroAddress, 0x28)
data1 = bus.read_byte_data(gyroAddress, 0x29)

# Convert the data
xGyro = data1 * 256 + data0
if xGyro > 32767 :
	xGyro -= 65536

# LSM9DS0 Gyro address, gyroAddress(106)
# Read data back from 0x2A(42), 2 bytes
# Y-Axis Gyro LSB, Y-Axis Gyro MSB
data0 = bus.read_byte_data(gyroAddress, 0x2A)
data1 = bus.read_byte_data(gyroAddress, 0x2B)

# Convert the data
yGyro = data1 * 256 + data0
if yGyro > 32767 :
	yGyro -= 65536

# LSM9DS0 Gyro address, gyroAddress(106)
# Read data back from 0x2C(44), 2 bytes
# Z-Axis Gyro LSB, Z-Axis Gyro MSB
data0 = bus.read_byte_data(gyroAddress, 0x2C)
data1 = bus.read_byte_data(gyroAddress, 0x2D)

# Convert the data
zGyro = data1 * 256 + data0
if zGyro > 32767 :
	zGyro -= 65536

# LSM9DS0 Accl and Mag address, magAddress(30)
# Select control register1, 0x20(32)
#		0x67(103)	Acceleration data rate = 100Hz, Power ON
#					X, Y, Z-Axis enabled
bus.write_byte_data(magAddress, 0x20, 0x67)
# LSM9DS0 Accl and Mag address, magAddress(30)
# Select control register2, 0x21(33)
#		0x20(32)	Full scale = +/-16g
bus.write_byte_data(magAddress, 0x21, 0x20)
# LSM9DS0 Accl and Mag address, magAddress(30)
# Select control register5, 0x24(36)
#		0x70(112)	Magnetic high resolution, Output data rate = 50Hz
bus.write_byte_data(magAddress, 0x24, 0x70)
# LSM9DS0 Accl and Mag address, magAddress(30)
# Select control register6, 0x25(37)
#		0x60(96)	Magnetic full scale selection = +/-12 gauss
bus.write_byte_data(magAddress, 0x25, 0x60)
# LSM9DS0 Accl and Mag address, magAddress(30)
# Select control register7, 0x26(38)
#		0x00(00)	Normal mode, Magnetic continuous conversion mode
bus.write_byte_data(magAddress, 0x26, 0x00)

time.sleep(0.5)

# LSM9DS0 Accl and Mag address, magAddress(30)
# Read data back from 0x28(40), 2 bytes
# X-Axis Accl LSB, X-Axis Accl MSB
data0 = bus.read_byte_data(magAddress, 0x28)
data1 = bus.read_byte_data(magAddress, 0x29)

# Convert the data
xAccl = data1 * 256 + data0
if xAccl > 32767 :
	xAccl -= 65536

# LSM9DS0 Accl and Mag address, magAddress(30)
# Read data back from 0x2A(42), 2 bytes
# Y-Axis Accl LSB, Y-Axis Accl MSB
data0 = bus.read_byte_data(magAddress, 0x2A)
data1 = bus.read_byte_data(magAddress, 0x2B)

# Convert the data
yAccl = data1 * 256 + data0
if yAccl > 32767 :
	yAccl -= 65536

# LSM9DS0 Accl and Mag address, magAddress(30)
# Read data back from 0x2C(44), 2 bytes
# Z-Axis Accl LSB, Z-Axis Accl MSB
data0 = bus.read_byte_data(magAddress, 0x2C)
data1 = bus.read_byte_data(magAddress, 0x2D)

# Convert the data
zAccl = data1 * 256 + data0
if zAccl > 32767 :
	zAccl -= 65536

# LSM9DS0 Accl and Mag address, magAddress(30)
# Read data back from 0x08(08), 2 bytes
# X-Axis Mag LSB, X-Axis Mag MSB
data0 = bus.read_byte_data(magAddress, 0x08)
data1 = bus.read_byte_data(magAddress, 0x09)

# Convert the data
xMag = data1 * 256 + data0
if xMag > 32767 :
	xMag -= 65536

# LSM9DS0 Accl and Mag address, magAddress(30)
# Read data back from 0x0A(10), 2 bytes
# Y-Axis Mag LSB, Y-Axis Mag MSB
data0 = bus.read_byte_data(magAddress, 0x0A)
data1 = bus.read_byte_data(magAddress, 0x0B)

# Convert the data
yMag = data1 * 256 + data0
if yMag > 32767 :
	yMag -= 65536

# LSM9DS0 Accl and Mag address, magAddress(30)
# Read data back from 0x0C(12), 2 bytes
# Z-Axis Mag LSB, Z-Axis Mag MSB
data0 = bus.read_byte_data(magAddress, 0x0C)
data1 = bus.read_byte_data(magAddress, 0x0D)

# Convert the data
zMag = data1 * 256 + data0
if zMag > 32767 :
	zMag -= 65536

# Output data to screen
print "X-Axis of Rotation : %d" %xGyro
print "Y-Axis of Rotation : %d" %yGyro
print "Z-Axis of Rotation : %d" %zGyro
print "Acceleration in X-Axis : %d" %xAccl
print "Acceleration in Y-Axis : %d" %yAccl
print "Acceleration in Z-Axis : %d" %zAccl
print "Magnetic field in X-Axis : %d" %xMag
print "Magnetic field in Y-Axis : %d" %yMag
print "Magnetic field in Z-Axis : %d" %zMag
