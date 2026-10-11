# SALOMAT 360

Profilaktik tibbiyot platformasi: fuqaroni ko‘rikka chaqiradi, kelganini QR-kod bilan tasdiqlaydi, shifokor tasdiqlagan tahlil natijalari asosida shaxsiy menyu va do‘kondagi mahsulot tavsiyalarini beradi.

**Pitch Day 3.0 · HealthTech**

- Sayt: https://salomat360.vercel.app
- Demo: https://salomat360.vercel.app/demo

## Jamoa

- **Saidova Oysha** — hammuassis, loyiha menejeri
- **Saidov Dilshod** — hammuassis, dasturchi

## Holat

Prototype bosqichi. Veb-prototip (fuqaro ilovasi, shifokor paneli, poliklinikalar reytingi) brauzerda ishlaydi; barcha bemorlar va natijalar namunaviy. Backend va haqiqiy AI menyu MVP bosqichida qo‘shiladi.

## Tuzilishi

| Fayl | Vazifasi |
|---|---|
| `salomat360.html` | Asosiy sahifa manbasi (HTML, CSS, JS) |
| `build.sh` | Manbani `salomat360-site/index.html` ga yig‘adi (meta teglar, favicon) |
| `salomat360-site/` | Vercel'ga joylanadigan tayyor sayt (`index.html`, `demo/`, `og.png`) |

## Ishga tushirish

```bash
./build.sh
cd salomat360-site && npx vercel deploy --prod
```

Mahalliy ko‘rish uchun `salomat360-site/index.html` ni brauzerda oching.

## AI vositalari

Prototip interfeysi va kodi Claude (AI yordamchi) bilan birga yaratilgan. G‘oya, muammo tahlili, funksiyalar tanlovi va mahsulot qarorlari jamoaga tegishli.
