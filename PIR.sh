CHK_GYRO=`lsusb | grep HL-340`
CHK_GPS=`lsusb | grep CP210x`
CHK_CAM=`lsusb | 6801:3360`

if [ -z "$CHK_GYRO" ]
then
	echo "gyro is not connected"
else
	sudo stty -F /dev/ttyUSB0 9600
fi

if [ -z "$CHK_GPS" ]
then
	echo "GPS is not connected"
else
	sudo stty -F /dev/ttyUSB1 9600
fi

if [ -z "$CHK_CAM" ]
then
	echo "CAM is not connected"
fi

while true
do
  cat /sys/bus/iio/devices/iio:device0/in_voltage*_raw
  echo " "
  sleep 1
done
