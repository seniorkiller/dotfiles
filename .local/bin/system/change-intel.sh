#!/bin/sh

systemctl status ly | grep inactive && (\
	sudo systemctl disable sddm; \
	sudo systemctl enable ly; \
	sudo systemctl disable optimus-manager; \
	optimus-manager --switch integrated; \
	i3-msg exit;) \
	&& exit 0
