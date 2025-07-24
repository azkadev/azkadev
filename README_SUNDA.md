# Klién Telegram

** Klién Telegram ** mangrupikeun perpustakaan pikeun anjeun berinteraksi sareng klien Telegram sacara real waktos, ku kituna anjeun tiasa nyiptakeun aplikasi Telegram / bot / bot pangguna henteu resmi

- 🇮🇩 [Indonesia](https://github.com/azkadev/telegram_client/blob/main/README.md)
- 🇨🇿 [Afrika](https://github.com/azkadev/telegram_client/blob/main/README_AFRIKA.md)
- 🇨🇳 [China](https://github.com/azkadev/telegram_client/blob/main/README_CHINA.md)
- 🏴󠁧󠁢󠁥󠁮󠁧󠁿 [English](https://github.com/azkadev/telegram_client/blob/main/README_ENGLISH.md)
- 🇮🇳 [India](https://github.com/azkadev/telegram_client/blob/main/README_INDIA.md)
- 🇮🇩 [Jawa](https://github.com/azkadev/telegram_client/blob/main/README_JAWA.md)
- 🇯🇵 [Jepang](https://github.com/azkadev/telegram_client/blob/main/README_JEPANG.md)
- 🇰🇷 [Korea](https://github.com/azkadev/telegram_client/blob/main/README_KOREA.md)
- 🇷🇺 [Russia](https://github.com/azkadev/telegram_client/blob/main/README_RUSSIA.md)
- 🇮🇩 [Sunda](https://github.com/azkadev/telegram_client/blob/main/README_SUNDA.md)
- 🇹🇭 [Thailand](https://github.com/azkadev/telegram_client/blob/main/README_THAILAND.md)

## Nyiptakeun Seuneu Telegram

Pikeun tiasa nganggo perpustakaan ieu anjeun peryogi **api_id** & **api_hash**

mangga jieun https://my.telegram.org/auth anjeun sorangan

## kanyataan

- perpustakaan ieu diwangun deui, sabab meureun paling jalma séjén anu bingung ku perpustakaan saméméhna nu kabeungkeut ku dependensi kuring sorangan, euweuh dokuméntasi.

- Salawasna diropéa kalawan tdlib panganyarna jadi anjeun teu kudu ngadagoan kuring pikeun ngapdet.

## Fitur

- [x] **Gancang pisan** Perpustakaan Async (**Utas Non-Meungpeuk**)
- [x] **Gampang Dipaké**

## Conto

- [Tdlib Gram](https://github.com/azkadev/tdlib_gram)
- [Conto Saderhana](https://github.com/azkadev/telegram_client/tree/main/quickstart)

## Pasang

Sateuacan masang, pastikeun anjeun terang dasar-dasar dart / flutter, sahenteuna anjeun parantos masang flutter / dart dina komputer / alat anjeun. [Situs Web Flutter](https://flutter.dev)


- **Dart / Cli Ngan Taya gui**
upami anjeun hoyong nganggo tanpa GUI anjeun kedah nyusun sareng masang [Tdlib](https://github.com/tdlib/td) upami anjeun henteu tiasa nyusun anjeun tiasa ngaunduh perpustakaan anu disusun di dieu [Tdlib](https://github.com/azkadev/telegram_client/releases/tag/tdlib) milarian dumasar kana / OS anjeun sareng pasang sacara manual dina proyék anjeun.

```bash
Dart pub nambahkeun telegram_universe
```

- **Gui flutter**
dasarna sami sareng DART bédana anjeun henteu kedah masang tdlib sacara manual
ngan nambahan paréntah

```bash
flutter pub nambahkeun tdlib_library
```


## Dokuméntasi

### MastikeunInitialized

Metodeu wajib tiasa disebat sacara bébas saatos **on** / sateuacan metode **on**, tapi kuring nyarankeun sateuacan **on**

**conto:**

```Dét
telegramClient.ensureInitialized ();
```


### Dimulaikeun

Metoda ieu kudu disebut sanggeus **on** métode sabab dipaké pikeun ngolah apdet.

**conto:**

```Dét
ngantosan telegramClient.initialized ();
```

### On

Metodeu ieu mangpaat pikeun kéngingkeun apdet data tina invoke / update tdlib

**conto:**

```Dét
telegramClient.on("update", (Update Peta) async {
print (update);
});
```


## createClient

pikeun nyieun klien anyar pastikeun Anjeun nelepon metoda.

**conto:**

```Dét
final new_tdlib_client_id = telegramClient.createClient();
print("ID Klién Tdlib Anyar: ${new_tdlib_client_id}");
```


### Nyuhunkeun

pikeun nelepon telegram tdlib api anjeun kedah maca dokuméntasi langsung

- [Tdlib Docs](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_function.html) gampang dibaca pikeun umum
- [Tdlib Tl](https://github.com/tdlib/td/blob/master/td/generate/scheme/td_api.tl) mangrupikeun anu pang anyarna sareng paling kapaké upami anjeun nganggo tdlib pangénggalna anu langsung nyusun sorangan

Di dieu kuring ngan nyadiakeun parameter peta data, peta ieu / json ngandung sababaraha konci penting


| Konci | Katerangan | Nilai | Dibutuhkeun |
|----------------|----------------------------------------------------------------------------------------------------------------|-----------------------|----------------------------------------------------------------|
| **@tipe** | Ieu dieusian ku métode ti tdlib | **Senar** | **enya** |
| **@id_klien** | Ieu ngandung id klien tina métode **createClient** | **int** | ** upami pikeun metode singkronisasilegram

- **SetLogVerbosityLevel**
sabab ieu métode log, Anjeun nganggo metodeu singkronisasi
sareng henteu wajib ngeusian konci **@client_id**

conto:


```Dét
telegramClient.invokeSync(
tdlib_scheme.SetLogVerbosityLevel.create(
new_verbosity_level: 0,
).toJson(),
);
```

- **SendMessage**
Pikeun ngirim talatah ngagunakeun perpustakaan ieu, pastikeun klien geus asup.
[Rujukan Dokuméntasi Kirim Pesan](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1send_message.html)

```Dét

/// meunang ti createClient atanapi update
int klien_id = 1; 
final getMe = ngantosan telegramClient.invoke({
"@type": "getMe",
"@client_id": client_id,
}); 
print (getMe); 
antosan telegramClient.invoke({
"@type": "sendMessage",
"@client_id": id_klien,
"chat_id": getMe["id"],
"pilihan": {
"@type": "messageSendOptions",
"disable_notification": leres,
},
"input_message_content": {
"@type": "inputMessageText",
"téks": {
"@type": "formattedTeks",
"text": "Halo Dunya",
}
}
});
```

Di luhur ngan ukur conto, pikeun nganggo metode anu sanés, eusian data parameter, pastikeun konci parameter kedah dieusi nurutkeun tabel, hartosna aya sababaraha konci anu kedah dieusi, upami henteu, éta bakal ngirim data kasalahan.

## Tulung

**Hésé**? Kuring geus ngawangun ieu ** perpustakaan ** ** sakumaha pangalusna ** sabisa na ** diusahakeun sangkan gampang ** maca na ** pamakéan sabisa mungkin **.

Lamun **maneh** masih **ngarasa** **kasusah** jeung **kabingungan** **coba gabung** **grup** kami **gratis tanpa biaya**

- [Telegram](https://t.me/DEVELOPER_GLOBAL_PUBLIC)
- [Discord](https://discord.gg/h4qanyN7)

**saméméh gabung ** pastikeun Anjeun ngagunakeun profil jelas **, urang teu kapikiran saha anjeun, sarta naon pangkat anjeun gaduh, tapi ** pastikeun ** anjeun boga ngaran pamaké sarta poto profil **, jeung cobaan ngobrol di grup **, moal obrolan pribadi ** sabab éta grup umum jeung jalma séjén bisa meunang bingung **. Upami anjeun **henteu nuturkeun** ieu, mungkin anjeun moal tiasa ngaksés obrolan dina grup sareng bakal dilarang**. Solusina nyaéta nganggo akun kadua, sabab saatos dilarang urang moal tiasa ngabales gancang.


## Aya masalah sejenna?

anjeun gaduh masalah naon di handap?

- **Lieur / Teu gampang dianggo**
Bingung ngeunaan ngagunakeun program ieu, malah lieur atanapi seueul? kusabab data tdlib pajeulit?

- **Lag / Teu tiasa skala bisnis**
Naha anjeun ngarasa ieu katinggaleun sareng teu tiasa diskalakeun kana usaha?

Sumuhun, kami geus diusahakeun pangalusna kami, urang ngan nuturkeun standar standar, teu lag tur sabenerna bisa dijieun pikeun skala bisnis, tapi ** tdlib ** beurat pisan jeung wastes ** I / O ** / ** Mémori **

Leres, kuring parantos dianggo pikeun bisnis pribadi kuring. Leres, leres-leres ngabuang sumber daya sanaos kode kuring cekap sareng henteu ngahalangan benang. Ieu ogé disababkeun ku sababaraha faktor, sapertos gaya kode sareng basa kode anjeun.

Upami anjeun hoyong langkung seueur fitur sareng tiasa dilakukeun pikeun skala bisnis kalayan gampang, anjeun tiasa resep kana proyék kuring ieu.

[Basa Umum Umum](https://github.com/generalpubliclanguage)

** naon kode basa **? Ieu mangrupikeun **basa kode** anu ** khusus ** dirancang pikeun anjeun nyiptakeun **proyék naon waé** kalayan gampang sareng nganggo gaya kode anu gampang kaharti** sareng **struktur data** anu ** langkung gampil** ti tdlib

Basa kode ngagaduhan fitur anu diwangun ku kituna anjeun henteu kedah repot nambihan ieu sareng éta kana proyék anjeun.

Kami parantos lami nalungtik, saleresna masalah ieu aya dina proyék **tdlib** sareng **dart**

tdlib nyaéta sumberdaya-intensif, DART beurat pikeun ngasingkeun threads loop taya wates, sarta ogé butuh sababaraha menit pikeun ngaleupaskeun memori jadi boros pisan lamun aya loba apdet, utamana lamun skala bisnis merlukeun loba klien.

supados basa kode **Basa Umum Umum** diciptakeun sareng tiasa janten solusi pikeun kabutuhan anjeun.

Upami anjeun ngarasa kuring kedah énggal-énggal ngamutahirkeun, punten bantosan abdi ku nuturkeun léngkah-léngkah ieu di handap.

## Dukung Kuring

Upami anjeun mendakan program ieu mangpaat, anjeun tiasa ngadukung kuring [GITHUB AZKADEV](https://github.com/azkadev) dina tautan éta média sosial sareng sponsor kuring sayogi. Abdi henteu kersa upami anjeun nuturkeun / nyumbang sakedik artos

- https://www.patreon.com/c/azkadev
- https://opencollective.com/azkadev
- https://paypal.me/azkaaxeliongibran
- https://paypal.me/azkadev

Hatur nuhun


Azkadev - 07-18-2025


## Tag

- tdlib anak panah
- tdlib flutter
- Telegram Dart
- Telegram Flutter
- dart klien telegram
- Klién Telegram ngageter