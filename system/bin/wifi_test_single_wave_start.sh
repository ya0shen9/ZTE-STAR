
#!/system/bin/sh
iwpriv wlan0 ftm 0
iwpriv wlan0 ftm 1
iwpriv wlan0 ena_chain 2
iwpriv wlan0 set_channel $1 
iwpriv wlan0 set_tx_wf_gain 0 0
iwpriv wlan0 tx_cw_rf_gen 1
