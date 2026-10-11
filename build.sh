#!/bin/sh
# Wrap salomat360.html into a standalone index.html for Vercel
cd "$(dirname "$0")"
{
printf '<!doctype html>\n<html lang="uz">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n'
printf '<meta name="description" content="SALOMAT 360 — profilaktik tibbiyot platformasi: ko‘rikka chaqiruv, natijalar va shaxsiy menyu. Pitch Day 3.0, HealthTech.">\n'
printf '<meta property="og:title" content="SALOMAT 360">\n<meta property="og:description" content="Kasallikni kutmang. Sog‘lig‘ingizni bugun tekshiring. Profilaktik tibbiyot platformasi — Pitch Day 3.0.">\n'
printf '<meta property="og:type" content="website">\n<meta property="og:url" content="https://salomat360.vercel.app/">\n<meta property="og:image" content="https://salomat360.vercel.app/og.png">\n<meta property="og:image:width" content="1200">\n<meta property="og:image:height" content="630">\n<meta name="twitter:card" content="summary_large_image">\n'
printf '<link rel="icon" href="data:image/svg+xml,%%3Csvg xmlns=%%22http://www.w3.org/2000/svg%%22 viewBox=%%220 0 32 32%%22%%3E%%3Crect width=%%2232%%22 height=%%2232%%22 rx=%%228%%22 fill=%%22%%23B4233C%%22/%%3E%%3Cpath d=%%22M4 17h6l2-4 4 9 3-12 2 7h7%%22 fill=%%22none%%22 stroke=%%22white%%22 stroke-width=%%222.4%%22 stroke-linejoin=%%22round%%22 stroke-linecap=%%22round%%22/%%3E%%3C/svg%%3E">\n'
printf '<style>:root{color-scheme:light;padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0}img{max-width:100%%}[hidden]{display:none!important}</style>\n'
awk '/^<\/style>$/{print; print "</head>\n<body>"; next} {print}' salomat360.html
printf '</body>\n</html>\n'
} > salomat360-site/index.html
