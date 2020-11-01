# [ESX]4rn_AdminDuty 1.0 - HUNGARY

(c) scg_4rnOLD | MIT licensz

"Ez a project egyátfogó admin és hozzáférési rendszer (**4rn_AdminPanel**) része, mely önállóan is futtatható kis és közepes ESX keretrendszerű Fivem RP szervereken. Elsődleges feladata, hogy az adminok (superadmin, admin, moderátor) teljeskörűen védve legyen a játékosok behatásaitól."

# Funkciók
- **GOD MODE** (halhatatlanság)
- **RAGDOLL** (nem esel össze)
- **SUPER JUMP** (óriási ugrás)
- **SPEED RUN** (nagyon gyors futás)
- **SKIN váltás** (Rangnak megfelelő skin)
- **Paranccsal** (*/adminduty*) és **billengyúvel** (*F10*) indítható


# Telepítés menete
A project feltételezi, hogy FIVEM szerver alatt ESX keretrendszert használsz.A telepítés nem igényel adatbázis beavatkozást, csupán a resource-ot kell elindítanod. Az admin szolgálatot kizárólag az arra jogosúlt ACE jogokkal és csoportban megahtározott (superadmin, admin, mod) személyek indíthatják.

### Szükséges resource-ök:
  - ES_EXTENDED (https://github.com/esx-framework/es_extended)
  - SKINCHANGER (https://github.com/esx-framework/skinchanger)
  - ESX_SKIN (https://github.com/esx-framework/esx_skin)
 
### ACE csoportok meghatározása
Az adminokat, moderátorokat, steam ID alapján a server.cfg-be előre meg kell adni. A következő sorokat  **server.cfg** file-ba írd bele:
- add_principal identifier.steam:111111111111111 group.superadmin
- add_principal identifier.steam:111111111111111 group.radmin
- add_principal identifier.steam:111111111111111 group.mod

*Természetesen az 111111111111 helyére az adminok ID-ját írd*

### Futtatás
1. Másold a "**4rn_adminduty**" könyvtárat a resource könyvtáradba
2. A **server.cfg** file-ba add hozzá: **start 4rn_adminduty**
3. Az **ad_config.lua** file-ban beállíthatod az admin szolgált tulajdonságait
3. Indítsd újra a szervered
4. "**/adminduty**" parancsot beírva a chatbe (pl:"t") indíthatod/ leállíthatod az admin szolgálatot

### ad_config.lua
- **Config.Locale = 'hu'** nyelv beállítása, jelneleg 'hu' és 'en'
- **Config.canrd = false** Összeeshet az admin? (true, ha összeshet)
- **Config.superjmp = true** Nagy ugrás és gyors futás adminként? (false: ha nem) 
- **Admin ruha** Külön állíthatod be a rangokhoz tartozó ruházatot

### Fordítás
1. Hozz létre egy nyelvednek megfelelő LUA file-t a locales könyvtárban (pl:en.lua)
2. Fordítsd le a nyelvi cimkéket
3. Az ad_config.lua file "Config.Locale" paraméterében add meg a nyelved ID-jét

##### Licensz
MIT License

Copyright (c) 2020 4rnOLD

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.



MIT Licensz /magyar tájékoztató/
->Tájékoztató, tehát innentől lefele, csak magyarázat, illetve fordítás a fenti
eredeti MIT licensz szövegéhez.

Copyright (c) 2020 4rnOLD

Ezen program kódok összességét (továbbikaban SZOFTVER) semmi  nem  korlátozza  
sem  a  szármezékos  mű  kereskedelmi értékesítését,  sem  pedig  zárt  forráskódú programként  való  licencelését.
Az  egyetlen  feltétel az, hogy a szoftver valamennyi továbbfejlesztett, illetve terjesztett, 
továbbértékesített példányán  szerepelnie kell az alábbi figyelmeztetésnek (a felső angol szöveg):  
„A jelen  szoftvert „ahogy  van” formában szolgáltatjuk, bármely fajta kifejezett vagy 
bennefoglalt szavatosság vagy jótállás nélkül, így többek közt nem terjed ki a szavatosság
értékesíthetőségre való alkalmasságra, valamely egyedi cél elérésére való alkalmasságra,
továbbá arra sem, hogy jogsértő jellegtől mentes  lenne. A szerzők és a szerzői jogi jogosultak
semmilyen körülmények között nem felelősek semmilyen olyan igényért, kárért vagy egyéb követelésért, eredjen az akár szerződéses, akár kártérítési, vagy egyéb jogviszonyból, amely a szoftver használatából, a szoftverrel való kereskedésből származik,vagy egyéb módon a szoftverrel áll összefüggésben.

TEHÁT AZT CSINÁLSZ A SZOFTVERRREL AMIT AKARSZ, DE SEMMIFÉLE GARANCIA NINCS ÉS EZT FEL IS KELL TÜNTETNED A TE PÉLDÁNYODBAN IS. A LEGEGYSZERŰBB HA EZT A FILE-T BEMÁSOLOD A PUBLIKÁCIÓDHOZ!

#####  KÖZREMŰKÖDŐK (fork-release credits)
- alap: [ESX] AdminDuty https://forum.cfx.re/t/release-esx-adminduty/1452378
- ötlet: https://forum.cfx.re/u/schwarzer_teddy/summary
- test server: OceanValley (HUN) PRIVATE http://oceanvalley.hu/