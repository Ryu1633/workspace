while true
do
  cat /sys/bus/iio/devices/iio:device0/in_voltage*_raw
  echo " "
  sleep 1
done
