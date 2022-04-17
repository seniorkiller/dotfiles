#!/bin/sh

BG=#282a36ff
BGS=#282a36aa
FG=#44475aff
FG2=#6272a4ff
FGs=#6272a499
Purple=#bd93f9ff
Pink=#ff79c6ff
Cyan=#8be9fdff
Cyans=#8be9fd99
Green=#50fa7bff
Red=#ff5555ff
Reds=#ff555599
Orange=#ffb86cff
Text=$Green
Blank=#00000000

i3lock \
\
--inside-color=$BG \
--ring-color=$Purple \
\
--insidever-color=$FGs \
--ringver-color=$Green   \
\
--insidewrong-color=$Reds   \
--ringwrong-color=$Red     \
\
--ring-width 13.0 \
--radius 120 \
\
--line-uses-inside \
--separator-color=$Purple \
--noinput-text="Blank" \
--wrong-text="" \
--lock-text="Locking…" \
--time-size=40 \
--date-size=20 \
--verif-size=40 \
--wrong-size=40 \
\
--verif-color=$Text \
--wrong-color=$BG          \
--time-color=$Text           \
--date-color=$Text           \
--keyhl-color=$Green         \
--bshl-color=$Red          \
--screen 1                   \
--blur 5                     \
--clock                      \
--indicator                  \
--time-str="%R"        \
--date-str="%A, %e of %B"       \
-e\
