# Klien Telegram

**Klien Telegram** minangka perpustakaan kanggo sampeyan sesambungan karo klien Telegram kanthi wektu nyata, supaya sampeyan bisa nggawe aplikasi Telegram / bot / userbot sing ora resmi

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

## Nggawe Telegram Fire

Kanggo bisa nggunakake perpustakaan iki, sampeyan butuh **api_id** & **api_hash**

gawe dhewe https://my.telegram.org/auth

## Fakta

- Pustaka iki dibangun maneh, amarga mbok menawa paling wong liyane padha bingung dening perpustakaan sadurungé kang kaiket dening dependensi dhewe, ora ana dokumentasi.

- Tansah nganyari karo tdlib paling anyar supaya sampeyan ora kudu ngenteni aku nganyari.

## Fitur

- [x] **Cepet Banget** Pustaka Async (**Utas Non-Blocking**)
- [x] **Gampang Gunakake**

## Tuladha

- [Tdlib Gram](https://github.com/azkadev/tdlib_gram)
- [Conto prasaja](https://github.com/azkadev/telegram_client/tree/main/quickstart)

## Instal

Sadurunge nginstal, priksa manawa sampeyan ngerti dasar-dasar dart / flutter, paling ora sampeyan wis nginstal flutter / dart ing komputer / piranti. [Situs web Flutter](https://flutter.dev)


- **Dart / Cli Mung Ora gui**
yen sampeyan pengin nggunakake tanpa GUI sampeyan kudu ngumpulake lan nginstal [Tdlib](https://github.com/tdlib/td) yen sampeyan ora bisa ngumpulake sampeyan bisa ndownload perpustakaan sing dikompilasi ing kene [Tdlib](https://github.com/azkadev/telegram_client/releases/tag/tdlib) telusuran miturut / OS sampeyan lan nginstal kanthi manual.

```bash
Dart pub nambah telegram_universe
```

- **Gui Flutter**
Sejatine padha Dart bedane sampeyan ora perlu nginstal tdlib kanthi manual
mung nambah printah

```bash
flutter pub nambah tdlib_library
```



## Dokumentasi

### Njamin Diwiwiti

Cara wajib bisa diarani kanthi bebas sawise **on** / sadurunge metode **on**, nanging aku nyaranake sadurunge **on**

**conto:**

``` dhek
telegramClient.ensureInitialized();
```


### Diwiwiti

Cara iki kudu diarani sawise metode **on** amarga digunakake kanggo ngolah nganyari.

**conto:**

``` dhek
ngenteni telegramClient.initialized();
```

### Ing

Cara iki migunani kanggo entuk nganyari data saka invoke / update tdlib

**conto:**

``` dhek
telegramClient.on("update", (Map update) async {
print (nganyari);
});
```


### nggaweKlien

kanggo nggawe klien anyar priksa manawa sampeyan nelpon cara.

**conto:**

``` dhek
final new_tdlib_client_id = telegramClient.createClient();
print("ID Klien Tdlib Anyar: ${id_klien_tdlib_anyar}");
```


### Njaluk

kanggo nelpon telegram tdlib api sampeyan kudu maca dokumentasi langsung

- [Tdlib Docs](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_function.html) gampang diwaca kanggo umum
- [Tdlib Tl](https://github.com/tdlib/td/blob/master/td/generate/scheme/td_api.tl) minangka sing paling anyar lan paling migunani yen sampeyan nggunakake tdlib paling anyar sing nglumpukake dhewe langsung

Ing kene aku mung nyedhiyakake parameter peta data, peta / json iki ngemot sawetara tombol penting


| Kunci | katrangan | Nilai | dibutuhake |
|----------------|------------------------------------------------------------------------------------------------|----------|----------------------------------------------------------------|
| **@jinis** | Iki diisi karo metode saka tdlib | **String** | **iya** |
| **@id_klien** | Iki ngemot id klien saka metode **createClient** | **int** | **yen kanggo metode sinkronisasilegram

- **SetLogVerbosityLevel**
amarga iki cara log, sampeyan nggunakake cara sinkronisasi
lan ora wajib ngisi kunci **@client_id**

contone:


``` dhek
telegramClient.invokeSync(
tdlib_scheme.SetLogVerbosityLevel.create(
new_verbosity_level: 0,
).toJson(),
);
```

- **SendMessage**
Kanggo ngirim pesen nggunakake perpustakaan iki, priksa manawa klien wis mlebu.
[Referensi Dokumentasi KirimPesan](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1send_message.html)

``` dhek

/// njaluk saka createClient utawa nganyari
int klien_id = 1; 
final getMe = ngenteni telegramClient.invoke({
"@type": "getMe",
"@client_id": id_klien,
}); 
print(getMe); 
ngenteni telegramClient.invoke({
"@type": "kirimPesen",
"@client_id": id_klien,
"chat_id": getMe["id"],
"pilihan": {
"@type": "messageSendOptions",
"disable_notification": bener,
},
"input_message_content": {
"@type": "inputMessageText",
"teks": {
"@type": "formattedTeks",
"text": "Hello World",
}
}
});
```

Ing ndhuwur mung conto, nggunakake cara liya, mung ngisi data paramèter, priksa manawa kunci paramèter kudu diisi miturut tabel, tegese ana sawetara tombol sing kudu diisi, yen ora, bakal ngirim data kesalahan.

## Bantuan

**Susah**? Aku wis mbangun ** perpustakaan ** ** minangka paling apik ** sabisa lan ** nyoba kanggo nggawe iku gampang ** kanggo maca lan ** nggunakake sabisa **.

Yen **sampeyan** isih **ngrasa** **angel** lan **kebingungan** **coba gabung** **grup** kita ** gratis tanpa biaya**

- [Telegram](https://t.me/DEVELOPER_GLOBAL_PUBLIC)
- [Discord](https://discord.gg/h4qanyN7)

** sadurunge gabung ** priksa manawa sampeyan nggunakake profil cetha **, kita ora pikiran sing sampeyan, lan apa pangkat sampeyan duwe, nanging ** priksa manawa ** sampeyan duwe jeneng panganggo lan foto profil **, lan nyoba kanggo chatting ing grup **, ora chatting pribadi ** amarga iku grup umum lan wong liya bisa bingung **. Yen sampeyan **ora ngetutake** iki, bisa uga sampeyan ora bisa ngakses obrolan ing grup lan bakal diblokir**, solusine yaiku nggunakake akun kapindho, amarga sawise diblokir ora bakal bisa nanggapi kanthi cepet.


## Ana masalah liyane?

sampeyan duwe masalah ing ngisor iki?

- ** Bingung / Ora gampang digunakake **
Bingung nggunakake program iki, malah mumet utawa mual? amarga data tdlib rumit?

- **Lag / Ora bisa skala bisnis**
Apa sampeyan rumangsa iki ketinggalan lan ora bisa ditambahake menyang bisnis?

Ya, kita wis nyoba sing paling apik, kita mung ngetutake standar standar, ora ketinggalan lan bisa digawe kanggo skala bisnis, nanging **tdlib** abot banget lan mbuwang **I/O** / **Memori**

Ya, aku wis digunakake kanggo bisnis pribadi. Ya, bener yen mbuwang sumber daya sanajan kodeku efisien lan ora ngalangi benang. Iki uga disebabake dening akeh faktor, kayata gaya kode lan basa kode.

Yen sampeyan pengin luwih akeh fitur lan bisa digawe kanggo skala bisnis kanthi gampang, sampeyan bisa uga kasengsem ing proyekku iki.

[Basa Umum Umum](https://github.com/generalpubliclanguage)

**kode basa iku opo? Iki minangka **basa kode** sing **khusus** dirancang kanggo sampeyan nggawe **proyek apa wae** kanthi gampang lan kanthi gaya kode sing gampang dimangerteni** lan **struktur data** sing ** luwih gampang** tinimbang tdlib

Basa kode nduweni fitur sing dibangun supaya sampeyan ora perlu repot nambahake iki lan kasebut menyang proyek sampeyan.

Kita wis nyelidiki suwene suwe, sejatine masalah iki ana ing proyek **tdlib** lan **dart**

tdlib intensif sumber daya, dart abot kanggo ngisolasi benang loop tanpa wates, lan uga butuh sawetara menit kanggo ngeculake memori supaya boros banget yen ana akeh nganyari, utamane yen skala bisnis mbutuhake akeh klien.

supaya basa kode **Basa Umum Umum** digawe lan bisa dadi solusi kanggo kabutuhan sampeyan.

Yen sampeyan rumangsa aku kudu langsung nganyari, tulungi aku kanthi nindakake ing ngisor iki.

## Dukung Aku

Yen sampeyan nemokake program iki migunani, sampeyan bisa ndhukung kula [GITHUB AZKADEV](https://github.com/azkadev) ing link sing kasedhiya ing media sosial lan sponsor. Ora ketompo yen sampeyan mung nuruti / nyumbang dhuwit sithik

- https://www.patreon.com/c/azkadev
- https://opencollective.com/azkadev
- https://paypal.me/azkaaxeliongibran
- https://paypal.me/azkadev

Matur nuwun


Azkadev - 07-18-2025


## Tag

- tdlib dart
- tdlib flutter
- Telegram Dart
- Telegram Flutter
- panah klien telegram
- Klien Telegram gemeter