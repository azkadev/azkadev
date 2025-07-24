# Telegram-kliënt

**Telegram Client** is 'n biblioteek waarmee jy intyds met die Telegram-kliënt kan kommunikeer, sodat jy nie-amptelike Telegram-toepassings / bots / gebruikersbots kan skep.

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

## Skep 'n Telegram-vuur

Om hierdie biblioteek te kan gebruik, benodig jy **api_id** en **api_hash**

skep asseblief jou eie https://my.telegram.org/auth

## Feit

- Hierdie biblioteek is herbou, want miskien was die meeste ander mense verward deur die vorige biblioteek wat deur my eie afhanklikhede gebonde was, daar was geen dokumentasie nie.

- Altyd opgedateer met die nuutste tdlib sodat jy nie hoef te wag vir my om op te dateer nie.

## Kenmerk

- [x] **Baie vinnige** Asinkrone biblioteek (**Nie-blokkerende drade**)
- [x] **Maklik om te gebruik**

## Voorbeeld

- [Tdlib Gram](https://github.com/azkadev/tdlib_gram)
- [Eenvoudige voorbeeld](https://github.com/azkadev/telegram_client/tree/main/quickstart)

## Installeer

Voordat jy installeer, maak seker dat jy die basiese beginsels van dart / flutter ken, ten minste het jy flutter / dart op jou rekenaar / toestel geïnstalleer. [Flutter Webwerf](https://flutter.dev)


- **Slegs pyltjie / klitoris Geen gids**
As jy dit sonder 'n GUI wil gebruik, moet jy [Tdlib](https://github.com/tdlib/td) kompileer en installeer. As jy nie kan kompileer nie, kan jy die saamgestelde biblioteek hier aflaai [Tdlib](https://github.com/azkadev/telegram_client/releases/tag/tdlib), soek volgens jou bedryfstelsel en installeer dit handmatig / plaas dit in jou projek.

bash
pyltjiekroeg voeg telegram_universum by
```

- **Flutter-gids**
basies dieselfde as dart, die verskil is dat jy nie tdlib handmatig hoef te installeer nie.
voeg net die opdrag by

bash
flutter pub voeg tdlib_library by
```



## Dokumentasie

### VersekerInitialiseer

Die verpligte metode kan vrylik aangeroep word na **aan** / voor die **aan** metode, maar ek beveel aan voor **aan**

**voorbeeld:**

pyltjie
telegramKliënt.versekerInisialiseer();
```


### Geïnisialiseer

Hierdie metode moet na die **aan**-metode aangeroep word, want dit word gebruik om opdaterings te verwerk.

**voorbeeld:**

pyltjie
wag vir telegramKliënt.geïnisialiseer();
```

### Aan

Hierdie aan-metode is nuttig om data-opdaterings vanaf invoke / update tdlib te kry.

**voorbeeld:**

pyltjie
telegramClient.on("opdatering", (Kaartopdatering) async {
druk(opdatering);
});
```


### skepKliënt

Om 'n nuwe kliënt te skep, maak seker dat jy die metode aanroep.

**voorbeeld:**

pyltjie
finale new_tdlib_client_id = telegramClient.createClient();
druk("Nuwe Tdlib Kliënt-ID: ${new_tdlib_client_id}");
```


### Roep aan

Om die telegram tdlib api te bel, moet jy die dokumentasie direk lees.

- [Tdlib Docs](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_function.html) is maklik om te lees vir die publiek
- [Tdlib Tl](https://github.com/tdlib/td/blob/master/td/generate/scheme/td_api.tl) is die nuutste en nuttigste as jy die nuutste tdlib gebruik wat homself direk kompileer.

Hier verskaf ek slegs datakaartparameters, hierdie kaart / json bevat verskeie belangrike sleutels


| Sleutel | Beskrywing | Waarde | Verpligtend |
|-------------------|- ...|
| **@tipe** | Dit is gevul met metodes van tdlib | **String** | **ja** |
| **@kliënt_id** | Dit bevat die kliënt-ID van die **createClient** metode | **int** | **indien vir sinkronisasiemetodelegram

- **StelLogVerbositeitsvlak**
Omdat dit 'n logmetode is, gebruik jy die sinchronisasiemetode
en dit is nie verpligtend om die sleutel **@client_id** in te vul nie

voorbeeld:


pyltjie
telegramKliënt.roepSinkronisering(
tdlib_skema.StelLogVerbositeitsvlak.skep(
nuwe_verbositeit_vlak: 0,
).naJson(),
);
```

- **Stuur Boodskap**
Om boodskappe met behulp van hierdie biblioteek te stuur, maak seker dat die kliënt aangemeld is.
[SendMessage Dokumentasie Verwysing](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1send_message.html)

pyltjie

/// kry van createClient of update
int kliënt_id = 1; 
finale kryMe = wag vir telegramKliënt.invoke({
"@tipe": "kryMy",
"@kliënt_id": kliënt_id,
}); 
druk(kryMy); 
wag vir telegramKliënt.invoke({
"@tipe": "stuurBoodskap",
"@kliënt_id": kliënt_id,
"klets_id": kryMy["id"],
"opsies": {
"@tipe": "boodskapStuurOpsies",
"deaktiveer_kennisgewing": waar,
},
"invoer_boodskap_inhoud": {
"@tipe": "invoerBoodskapTeks",
"teks": {
"@tipe": "geformateerde teks",
"teks": "Hallo Wêreld",
}
}
});
```

Bogenoemde is slegs 'n voorbeeld, om 'n ander metode te gebruik, vul net die parameterdata in, maak seker dat die parametersleutel volgens die tabel ingevul moet word, ek bedoel daar is verskeie sleutels wat ingevul moet word, indien nie, sal dit foutdata stuur.

## Hulp

**Moeilik**? Ek het hierdie **biblioteek** so goed** moontlik gebou en probeer om dit maklik te lees en so goed moontlik te gebruik.

Indien **jy** steeds **moeilikheid** en **verwarring** voel, probeer om gratis en sonder enige koste by ons **groep** aan te sluit.

- [Telegram](https://t.me/DEVELOPER_GLOBAL_PUBLIC)
- [Discord](https://discord.gg/h4qanyN7)

**voordat jy aansluit** maak seker dat jy 'n duidelike profiel gebruik**, ons gee nie om wie jy is en watter rang jy het nie, maar **maak seker** dat jy 'n gebruikersnaam en profielfoto het**, en probeer om in die groep te gesels**, nie privaat gesels nie** want dit is 'n publieke groep en ander mense kan verward raak**. As jy dit **nie volg**, is dit moontlik dat jy nie toegang tot die klets in die groep sal hê nie en verban sal word. Die oplossing is om 'n tweede rekening te gebruik, want nadat ons verban is, sal ons nie vinnig kan reageer nie.


## Enige ander probleme?

Het jy enige probleme hieronder?

- **Verward / Nie maklik om te gebruik nie**
Verward oor die gebruik van hierdie program, selfs duiselig of naar? as gevolg van die ingewikkelde tdlib-data?

- **Vertraging / Kan nie besigheid skaal nie**
Voel jy dat dit agterbly en nie na 'n besigheid geskaal kan word nie?

Ja, ons het ons bes probeer, ons volg slegs die standaardstandaarde, dit lag nie en kan eintlik vir besigheidsskaal gemaak word, maar **tdlib** is baie swaar en mors **I/O** / **Geheue**

Ja, ek het dit vir my persoonlike besigheid gebruik. Ja, dit is waar dat dit hulpbronne mors, al is my kode doeltreffend en blokkeer dit nie drade nie. Dit word ook deur baie faktore veroorsaak, soos jou kodestyl en kodetaal.

As jy meer funksies wil hê en maklik vir besigheidsskaal gemaak kan word, sal jy dalk in hierdie projek van my belangstel.

[Algemene Publieke Taal](https://github.com/generalpubliclanguage)

**Wat is taalkode**? Hierdie is 'n **kodetaal** wat **spesiaal** ontwerp is sodat jy enige projek maklik kan skep met 'n maklik verstaanbare kodestyl en **datastrukture** wat makliker is as tdlib.

Die kodetaal het ingeboude funksies, so jy hoef nie die moeite te doen om dit en dat by jou projek te voeg nie.

Ons ondersoek dit al lank, eintlik is hierdie probleem in beide die **tdlib** en **dart** projekte.

tdlib is hulpbron-intensief, dart is swaar om oneindige lusdrade te isoleer, en dit neem ook 'n paar minute om geheue vry te stel, so dit is baie verkwistend as daar baie opdaterings is, veral as die besigheidsskaal baie kliënte vereis.

sodat die **Algemene Publieke Taal** kodetaal geskep is en 'n oplossing vir u behoeftes kan wees.

As jy voel dat ek dadelik moet opdateer, help my asseblief deur die stappe hieronder te volg.

## Ondersteun My

As jy hierdie program nuttig vind, kan jy my ondersteun [GITHUB AZKADEV](https://github.com/azkadev) via daardie skakel. My sosiale media en borge is beskikbaar. Ek gee nie om as jy net 'n bietjie geld volg / skenk nie.

- https://www.patreon.com/c/azkadev
- https://opencollective.com/azkadev
- https://paypal.me/azkaaxeliongibran
- https://paypal.me/azkadev

Dankie


Azkadev - 18-07-2025


## Etikette

- tdlib pyltjie
- tdlib fladder
- Telegram Dart
- Telegram Flutter
- telegram kliënt pyltjie
- Telegram-kliënt fladder