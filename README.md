
### 1) Compile and install lrpt_demod_pi.grc

```
 sudo grcc -o /usr/bin/ lrpt_demod_pi.grc
 sudo chmod 755 /usr/bin/lrpt_demod_pi.py
 
 ```

Test that the flowgraph can run with:

```
lrpt_demod_pi.py --soapy-rx-device=“driver=rtlsdr” --samp-rate-rx=2.048e6 --rx-freq=137.1e6 --antenna='RX' --gain=32.8
```


### 2) Edit settings.py to add LRPT decoder

`/var/lib/satnogs/lib/python3.7/site-packages/satnogsclient/settings.py`

See file in repository as an example.

### 3) Install medet and imagemagick
```
wget https://orbides.org/etc/medet/medet_190825_arm.tar.gz
sudo apt-get install imagemagick
```
### 4) Edit process_meteor.py

This script will do the processing using medet to decode the demodulated symbols and then convert the bmp image to jpg to be uploaded to SatNogs database.

### 5) Create post observation script

Use sudo satnogs-setup to configure /home/pi/postob.sh as the post observation script.

Test the script permissions running it as user satnogs:
```
sudo /bin/su -s /bin/bash -c '/home/pi/postob.sh' satnogs
```

