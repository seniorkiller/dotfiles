#!/bin/sh

read test
echo $test
if [[ "$test" != "on" ]];then
spicetify config current_theme Default
spicetify config extensions dribbblish-dynamic.js-
else
spicetify config current_theme DribbblishDynamic
spicetify config extensions dribbblish-dynamic.js
fi
spicetify apply
