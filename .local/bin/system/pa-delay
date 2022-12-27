#! /bin/bash

delay_msec="$1"
if [[ ! $delay_msec =~ ^[0-9]+$ ]]; then
    echo "Usage: $( basename "$0" ) delay_milliseconds" >&2
    exit 2
fi
max_loopback_delay=2000

list_delay_loopback_modules() {
    pactl list modules short | grep -P '\tmodule-loopback\t(.*\s)?source=Delay[1-9][0-9]*[.]monitor(\s|$)' | cut -f1
}

list_delay_null_modules() {
    pactl list modules short | grep -P '\tmodule-null-sink\t(.*\s)?sink_name=Delay[1-9][0-9]*(\s|$)' | cut -f1
}

build_module_array() {
    local object_type="$1"
    local array="$( echo "$1" | sed 's/-/_/g' )"
    typeset -n array
    local object_list="$( 
        pactl list "$object_type" |
        perl -00 -p -e ' chomp; s{\s*\n\s*}{|}mg; s{$}{\n}; ' |
        sed -En -e 's/^[a-zA-Z ]* #([0-9]+)[|].*[|]Owner Module: ([0-9]+)[|].*/\1:\2/p'
    )"
    while IFS=: read object module; do
        array[$module]=$object
    done <<<"$object_list"
}

for module in $( list_delay_loopback_modules ); do
    pactl unload-module "$module"
done
for module in $( list_delay_null_modules ); do
    pactl unload-module "$module"
done

last_loopback_delay=$(( (delay_msec + max_loopback_delay - 1) % max_loopback_delay + 1 ))
loops=$(( (delay_msec - last_loopback_delay) / max_loopback_delay + 1 ))
(( loops > 0 )) || exit 0

nbsp="$( echo -e '\u00a0' )"
narrownbsp="$( echo -e '\u202f' )"
i=1
module="$( pactl load-module module-null-sink sink_name="Delay$i" sink_properties="device.description=\"Delay:${nbsp}${delay_msec}${narrownbsp}ms\"" )"
while (( ++i <= loops )); do
    module="$( pactl load-module module-null-sink sink_name="Delay$i" sink_properties="device.description=\"Delay:${nbsp}$(( delay_msec - (i - 1) * max_loopback_delay ))${narrownbsp}ms\"" )"
done
i=$loops
module="$( pactl load-module module-loopback source="Delay$i.monitor" latency_msec=$last_loopback_delay )"
last_loopback_module=$module
while (( --i > 0 )); do
    module="$( pactl load-module module-loopback source="Delay$i.monitor" sink=Delay$(( i + 1 )) latency_msec=$max_loopback_delay )"
done

build_module_array sinks
build_module_array sources
build_module_array sink-inputs
build_module_array source-outputs

for module in $( list_delay_null_modules ); do
    pactl set-source-volume ${sources[$module]} '100%'
    pactl set-sink-volume   ${sinks[$module]}   '100%'
done
for module in $( list_delay_loopback_modules ); do
    pactl set-source-output-volume ${source_outputs[$module]} '100%'
    test "$module" == "$last_loopback_module" && continue
    pactl set-sink-input-volume    ${sink_inputs[$module]}    '100%'
done

