#!/bin/sh

systemctl status sddm | grep inactive && (sudo systemctl disable ly;sudo systemctl enable sddm; sudo systemctl enable optimus-manager) && exit 0





