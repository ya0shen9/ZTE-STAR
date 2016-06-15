
#!/system/bin/sh
iwpriv wlan0 ftm 0
iwpriv wlan0 ftm 1
iwpriv wlan0 tx 0
iwpriv wlan0 set_cb 0
iwpriv wlan0 set_channel $1
iwpriv wlan0 ena_chain 2
iwpriv wlan0 pwr_cntl_mode 2
iwpriv wlan0 set_txpower $3
iwpriv wlan0 set_txrate $2 
iwpriv wlan0 tx 1
