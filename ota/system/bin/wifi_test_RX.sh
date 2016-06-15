
#!/system/bin/sh
iwpriv wlan0 ftm 0
iwpriv wlan0 ftm 1
iwpriv wlan0 rx 0
iwpriv wlan0 set_channel $1 
iwpriv wlan0 ena_chain 1
iwpriv wlan0 clr_rxpktcnt 1
iwpriv wlan0 rx 1
