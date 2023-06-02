films=# SELECT FROM employee;
--
(1000 rows)


films=# SELECT * FROM employee where id between 50 and 56;
 id | first_name | last_name | gender |            email             | date_of_birth | country_of_birth
----+------------+-----------+--------+------------------------------+---------------+------------------
 50 | Filide     | Errichi   | Female | ferrichi1d@yahoo.co.jp       | 1999-06-07    | Indonesia
 51 | Phylys     | Slessar   | Female | pslessar1e@va.gov            | 1995-04-29    | China
 52 | Curry      | Salthouse | Male   | csalthouse1f@ed.gov          | 1996-02-22    | China
 53 | Melli      | Keighly   | Female | mkeighly1g@elpais.com        | 1991-09-14    | Pakistan
 54 | Rona       | Frudd     | Female | rfrudd1h@constantcontact.com | 1995-05-02    | Morocco
 55 | Pauletta   | Cheatle   | Female | pcheatle1i@youku.com         | 2004-08-10    | Kenya
 56 | Boothe     | Pethrick  | Male   | bpethrick1j@cam.ac.uk        | 2000-06-23    | China


films=# SELECT * FROM employee where id between 70 and 80 ORDER BY country_of_birth;
 id | first_name | last_name | gender |             email             | date_of_birth | country_of_birth
----+------------+-----------+--------+-------------------------------+---------------+------------------
 79 | Evaleen    | Lightwing | Female | elightwing26@wunderground.com | 2000-07-08    | Argentina
 75 | Miriam     | Althorp   | Female | malthorp22@canalblog.com      | 1997-11-07    | China
 78 | Page       | Yukhtin   | Male   | pyukhtin25@webeden.co.uk      | 1995-10-17    | China
 70 | Pegeen     | Itzcovich | Female | pitzcovich1x@ehow.com         | 1994-05-13    | Czech Republic
 73 | Irv        | Shervil   | Male   | ishervil20@google.cn          | 2001-01-16    | France
 72 | Tam        | Bassam    | Male   | tbassam1z@smh.com.au          | 2000-05-16    | Iran
 77 | Rodney     | Collet    | Male   | rcollet24@myspace.com         | 1991-11-08    | Latvia
 71 | Aeriell    | Hencke    | Female |                               | 2001-08-12    | Nigeria
 74 | Lucienne   | Culp      | Female | lculp21@google.ca             | 2003-06-13    | Philippines
 80 | Domingo    | Gilfether | Male   | dgilfether27@scribd.com       | 1995-03-23    | Philippines
 76 | Hamlin     | Liversley | Male   | hliversley23@sogou.com        | 2001-11-20    | Russia
(11 rows)


films=# SELECT * FROM employee where id between 70 and 80 ORDER BY country_of_birth DESC;
 id | first_name | last_name | gender |             email             | date_of_birth | country_of_birth
----+------------+-----------+--------+-------------------------------+---------------+------------------
 76 | Hamlin     | Liversley | Male   | hliversley23@sogou.com        | 2001-11-20    | Russia
 74 | Lucienne   | Culp      | Female | lculp21@google.ca             | 2003-06-13    | Philippines
 80 | Domingo    | Gilfether | Male   | dgilfether27@scribd.com       | 1995-03-23    | Philippines
 71 | Aeriell    | Hencke    | Female |                               | 2001-08-12    | Nigeria
 77 | Rodney     | Collet    | Male   | rcollet24@myspace.com         | 1991-11-08    | Latvia
 72 | Tam        | Bassam    | Male   | tbassam1z@smh.com.au          | 2000-05-16    | Iran
 73 | Irv        | Shervil   | Male   | ishervil20@google.cn          | 2001-01-16    | France
 70 | Pegeen     | Itzcovich | Female | pitzcovich1x@ehow.com         | 1994-05-13    | Czech Republic
 78 | Page       | Yukhtin   | Male   | pyukhtin25@webeden.co.uk      | 1995-10-17    | China
 75 | Miriam     | Althorp   | Female | malthorp22@canalblog.com      | 1997-11-07    | China
 79 | Evaleen    | Lightwing | Female | elightwing26@wunderground.com | 2000-07-08    | Argentina
(11 rows)


films=# SELECT country_of_birth FROM employee where id < 8 order by country_of_birth;
    country_of_birth
------------------------
 Bosnia and Herzegovina
 Canada
 China
 France
 Japan
 Russia
 Ukraine
(7 rows)


films=# SELECT DISTINCT country_of_birth from employee ORDER BY country_of_birth;
          country_of_birth
------------------------------------
 Afghanistan
 Aland Islands
 Albania
 Argentina
 Armenia
 Australia
 Austria
 Azerbaijan
 Bahrain
 Bangladesh
 Belarus
 Bhutan
 Bolivia
 Bonaire, Saint Eustatius and Saba
 Bosnia and Herzegovina
 Brazil
 Bulgaria
 Cambodia
 Cameroon
 Canada
 Cape Verde
 Chile
 China
 Colombia
 Croatia
 Cuba
 Cyprus
 Czech Republic
 Democratic Republic of the Congo
 Denmark
 Dominica
 Dominican Republic
 Ecuador
 Egypt
 El Salvador
 Estonia
 Ethiopia
 Finland
 France
 Gambia
 Georgia
 Germany
 Ghana
 Greece
 Greenland
 Grenada
 Guadeloupe
 Guatemala
 Guinea
 Guinea-Bissau
 Haiti
 Honduras
 Hungary
 Indonesia
 Iran
 Iraq
 Ireland
 Israel
 Ivory Coast
 Japan
 Jordan
 Kazakhstan
 Kenya
 Latvia
 Lebanon
 Lesotho
 Lithuania
 Luxembourg
 Macedonia
 Madagascar
 Malawi
 Malaysia
 Malta
 Marshall Islands
 Mauritania
 Mauritius
 Mexico
 Mongolia
 Montenegro
 Morocco
 Mozambique
 Myanmar
 Netherlands
 New Caledonia
 New Zealand
 Nicaragua
 Nigeria
 Norway
 Oman
 Pakistan
 Palau
 Palestinian Territory
 Panama
 Paraguay
 Peru
 Philippines
 Poland
 Portugal
 Qatar
 Russia
 Samoa
 Senegal
 Serbia
 Slovenia
 Somalia
 South Africa
 South Korea
 Spain
 Sri Lanka
 Sudan
 Sweden
 Switzerland
 Syria
 Tajikistan
 Tanzania
 Thailand
 Togo
 Tunisia
 Uganda
 Ukraine
 United States
 Uruguay
 Uzbekistan
 Venezuela
 Vietnam
 Yemen
 Zambia
 Zimbabwe
(128 rows)


films=# SELECT * from employee where gender = 'Female' and id < 24;
 id | first_name |  last_name   | gender |            email             | date_of_birth | country_of_birth
----+------------+--------------+--------+------------------------------+---------------+------------------
  1 | Jesse      | Hillum       | Female |                              | 2004-08-16    | Japan
  2 | Petunia    | Andriuzzi    | Female | pandriuzzi1@livejournal.com  | 2000-05-03    | Russia
  5 | Jeni       | Sonnenschein | Female |                              | 2001-12-14    | Ukraine
  6 | Genovera   | Polamontayne | Female | gpolamontayne5@scribd.com    | 1993-01-22    | China
  8 | Christalle | Winney       | Female | cwinney7@ft.com              | 1994-09-04    | Portugal
  9 | Lisabeth   | Mockford     | Female | lmockford8@ezinearticles.com | 1992-04-17    | Russia
 13 | Lanita     | Briand       | Female |                              | 1993-05-22    | Ireland
 15 | Tina       | Dunklee      | Female | tdunkleee@twitter.com        | 2004-01-24    | Philippines
 19 | Gilda      | Mealand      | Female |                              | 1991-02-03    | France
 21 | Melissa    | Runnicles    | Female |                              | 1992-07-30    | China
 22 | Keelia     | Ruslen       | Female | kruslenl@ehow.com            | 1992-11-21    | Ecuador
(11 rows)


films=# SELECT * from employee where gender = 'Female' and country_of_birth = 'Ukraine';
 id  | first_name |  last_name   | gender |           email            | date_of_birth | country_of_birth
-----+------------+--------------+--------+----------------------------+---------------+------------------
   5 | Jeni       | Sonnenschein | Female |                            | 2001-12-14    | Ukraine
 107 | Marika     | Wadworth     | Female |                            | 1998-09-23    | Ukraine
 143 | Angelle    | Straneo      | Female | astraneo3y@apple.com       | 1995-03-04    | Ukraine
 165 | Wilone     | Courtman     | Female | wcourtman4k@yolasite.com   | 1991-09-06    | Ukraine
 332 | Caryn      | Elmar        | Female | celmar97@mozilla.org       | 1990-12-12    | Ukraine
 350 | Gerty      | Ward         | Female | gward9p@va.gov             | 2004-11-12    | Ukraine
 373 | Franciska  | Kupis        | Female | fkupisac@mozilla.org       | 1996-06-22    | Ukraine
 460 | Kati       | Butchart     | Female | kbutchartcr@guardian.co.uk | 2004-02-08    | Ukraine
 527 | Janela     | Garrelts     | Female | jgarreltsem@google.com.br  | 2004-10-28    | Ukraine
 530 | Hedda      | Perrett      | Female | hperrettep@eventbrite.com  | 1993-05-19    | Ukraine
 883 | Sunshine   | Lie          | Female |                            | 1995-11-02    | Ukraine
(11 rows)


films=# SELECT * from employee where gender = 'Female' and (country_of_birth = 'Ukraine' or country_of_birth = 'China');
 id  | first_name  |   last_name   | gender |             email              | date_of_birth | country_of_birth
-----+-------------+---------------+--------+--------------------------------+---------------+------------------
   5 | Jeni        | Sonnenschein  | Female |                                | 2001-12-14    | Ukraine
   6 | Genovera    | Polamontayne  | Female | gpolamontayne5@scribd.com      | 1993-01-22    | China
  21 | Melissa     | Runnicles     | Female |                                | 1992-07-30    | China
  26 | Abagael     | Crat          | Female | acratp@google.com.au           | 2004-06-03    | China
  29 | Belia       | Perkinson     | Female | bperkinsons@angelfire.com      | 1995-02-14    | China
  43 | Ag          | Reen          | Female | areen16@cbsnews.com            | 1997-06-14    | China
  49 | Pollyanna   | Milella       | Female |                                | 1993-02-12    | China
  51 | Phylys      | Slessar       | Female | pslessar1e@va.gov              | 1995-04-29    | China
  65 | Belva       | Bockett       | Female | bbockett1s@google.nl           | 1997-03-29    | China
  67 | Elvera      | Villalta      | Female | evillalta1u@nydailynews.com    | 1999-11-17    | China
  75 | Miriam      | Althorp       | Female | malthorp22@canalblog.com       | 1997-11-07    | China
 101 | Grayce      | Chivrall      | Female | gchivrall2s@feedburner.com     | 1990-05-09    | China
 107 | Marika      | Wadworth      | Female |                                | 1998-09-23    | Ukraine
 125 | Ruthanne    | Pauls         | Female | rpauls3g@bravesites.com        | 2004-03-28    | China
 136 | Belle       | Della Scala   | Female | bdellascala3r@miitbeian.gov.cn | 1991-10-20    | China
 137 | Berte       | Knagges       | Female | bknagges3s@irs.gov             | 1995-03-27    | China
 143 | Angelle     | Straneo       | Female | astraneo3y@apple.com           | 1995-03-04    | Ukraine
 160 | Nesta       | Snalham       | Female | nsnalham4f@reuters.com         | 2000-09-21    | China
 165 | Wilone      | Courtman      | Female | wcourtman4k@yolasite.com       | 1991-09-06    | Ukraine
 176 | Adelina     | Belk          | Female |                                | 1994-04-02    | China
 180 | Fayette     | Shotbolt      | Female |                                | 1991-09-01    | China
 195 | Catharine   | Cobelli       | Female | ccobelli5e@prnewswire.com      | 2003-10-14    | China
 203 | Eunice      | Pidgeon       | Female |                                | 2001-04-02    | China
 235 | Tallulah    | Rigg          | Female |                                | 2003-03-29    | China
 238 | Torey       | Cadany        | Female |                                | 1995-10-15    | China
 242 | Jerrie      | Eckersall     | Female | jeckersall6p@shop-pro.jp       | 2004-05-24    | China
 267 | Kelcie      | Ryton         | Female | kryton7e@state.tx.us           | 2004-10-15    | China
 275 | Barbabra    | Carvil        | Female | bcarvil7m@dailymotion.com      | 2001-04-03    | China
 279 | Hephzibah   | Zamboniari    | Female |                                | 2003-03-11    | China
 293 | Sharla      | McCome        | Female | smccome84@wikispaces.com       | 2004-04-16    | China
 296 | Minni       | Waryk         | Female | mwaryk87@live.com              | 1996-03-12    | China
 298 | Debra       | Longmire      | Female | dlongmire89@washington.edu     | 2002-06-05    | China
 305 | Othilia     | Lisamore      | Female | olisamore8g@surveymonkey.com   | 1999-02-16    | China
 330 | Madelyn     | Moxstead      | Female | mmoxstead95@nifty.com          | 2003-09-13    | China
 332 | Caryn       | Elmar         | Female | celmar97@mozilla.org           | 1990-12-12    | Ukraine
 339 | Nannie      | Maffulli      | Female |                                | 1999-12-09    | China
 348 | Cynthy      | Hockell       | Female | chockell9n@vistaprint.com      | 2002-07-08    | China
 350 | Gerty       | Ward          | Female | gward9p@va.gov                 | 2004-11-12    | Ukraine
 373 | Franciska   | Kupis         | Female | fkupisac@mozilla.org           | 1996-06-22    | Ukraine
 383 | Layney      | Robbert       | Female | lrobbertam@dagondesign.com     | 1998-05-16    | China
 390 | Daveen      | Campanelle    | Female | dcampanelleat@bloomberg.com    | 1996-09-24    | China
 400 | Bethena     | Feckey        | Female | bfeckeyb3@meetup.com           | 2003-06-25    | China
 404 | Othilia     | Blakebrough   | Female | oblakebroughb7@ameblo.jp       | 1999-12-26    | China
 419 | Vonny       | Aughton       | Female | vaughtonbm@mlb.com             | 2000-06-10    | China
 422 | Samara      | Burbage       | Female | sburbagebp@prweb.com           | 1996-10-20    | China
 438 | Nancie      | Nasey         | Female |                                | 1991-11-02    | China
 443 | Tove        | Spowart       | Female |                                | 1999-10-19    | China
 460 | Kati        | Butchart      | Female | kbutchartcr@guardian.co.uk     | 2004-02-08    | Ukraine
 463 | Danya       | Luby          | Female | dlubycu@cdbaby.com             | 1991-04-17    | China
 464 | Livvyy      | Ouchterlony   | Female |                                | 1999-12-24    | China
 469 | Janessa     | Esselin       | Female |                                | 1994-01-13    | China
 474 | Tildie      | Bletsoe       | Female | tbletsoed5@sbwire.com          | 1997-04-11    | China
 475 | Brita       | Leedal        | Female | bleedald6@samsung.com          | 1997-05-26    | China
 484 | Daisey      | Realph        | Female | drealphdf@zimbio.com           | 1998-05-02    | China
 490 | Randene     | Szubert       | Female |                                | 1990-07-16    | China
 499 | Willie      | McCritichie   | Female |                                | 1999-06-18    | China
 517 | Lizette     | Shuxsmith     | Female |                                | 1993-03-12    | China
 519 | Gustie      | Smy           | Female |                                | 2004-01-14    | China
 526 | Venita      | McKeand       | Female | vmckeandel@sakura.ne.jp        | 1994-08-19    | China
 527 | Janela      | Garrelts      | Female | jgarreltsem@google.com.br      | 2004-10-28    | Ukraine
 530 | Hedda       | Perrett       | Female | hperrettep@eventbrite.com      | 1993-05-19    | Ukraine
 537 | Xylia       | O'Carrol      | Female | xocarrolew@indiegogo.com       | 1997-03-15    | China
 543 | Dacy        | Capponeer     | Female |                                | 1996-03-02    | China
 547 | Aurore      | Richard       | Female | arichardf6@de.vu               | 1991-10-08    | China
 551 | Janella     | Labin         | Female |                                | 1993-06-17    | China
 561 | Ellene      | Zanetello     | Female | ezanetellofk@last.fm           | 1999-07-27    | China
 563 | Rachael     | Vanni         | Female | rvannifm@google.de             | 1994-10-15    | China
 566 | Jilleen     | Dermot        | Female | jdermotfp@home.pl              | 2003-09-27    | China
 581 | Jenilee     | Lambdon       | Female | jlambdong4@icio.us             | 1992-09-10    | China
 585 | Prue        | Searson       | Female | psearsong8@edublogs.org        | 1997-10-21    | China
 591 | Elenore     | Hanmore       | Female | ehanmorege@cnbc.com            | 2003-10-07    | China
 608 | Amalee      | Karlolczak    | Female | akarlolczakgv@51.la            | 2000-05-14    | China
 615 | Mollee      | Buxam         | Female | mbuxamh2@auda.org.au           | 2004-04-03    | China
 627 | Sonja       | Best          | Female | sbesthe@google.co.jp           | 1997-02-03    | China
 631 | Marissa     | Forgie        | Female |                                | 2003-06-26    | China
 635 | Elga        | Carleman      | Female | ecarlemanhm@addtoany.com       | 1992-02-07    | China
 638 | Eleanore    | Beneze        | Female |                                | 1994-07-03    | China
 639 | Loise       | Sopp          | Female | lsopphq@elegantthemes.com      | 1999-06-03    | China
 641 | Jolynn      | Treend        | Female | jtreendhs@businessinsider.com  | 1992-10-21    | China
 642 | Sib         | Medlin        | Female | smedlinht@reuters.com          | 2002-01-07    | China
 643 | Aileen      | MacQueen      | Female | amacqueenhu@census.gov         | 2001-12-24    | China
 648 | Lorrie      | Follows       | Female | lfollowshz@fc2.com             | 2001-02-24    | China
 654 | Devinne     | Martignon     | Female | dmartignoni5@xing.com          | 1999-07-11    | China
 666 | Netta       | Pleasants     | Female | npleasantsih@nature.com        | 1999-04-17    | China
 691 | Antonina    | Delacote      | Female |                                | 1997-03-22    | China
 701 | Melina      | Umbers        | Female |                                | 1992-08-13    | China
 703 | L;urette    | Paradin       | Female | lparadinji@state.tx.us         | 1993-10-11    | China
 717 | Bria        | Cutforth      | Female | bcutforthjw@t-online.de        | 1999-11-05    | China
 718 | Carmelle    | Suddock       | Female |                                | 2002-07-21    | China
 720 | Moria       | Atthow        | Female | matthowjz@naver.com            | 1996-09-04    | China
 725 | Magdaia     | Jacquet       | Female | mjacquetk4@domainmarket.com    | 2004-12-31    | China
 734 | Glynda      | Dahler        | Female | gdahlerkd@tuttocitta.it        | 1999-11-09    | China
 737 | Lorrie      | Tondeur       | Female | ltondeurkg@bigcartel.com       | 1994-12-26    | China
 749 | Renee       | Clifton       | Female | rcliftonks@opera.com           | 2003-08-19    | China
 758 | Geralda     | Langhor       | Female | glanghorl1@hatena.ne.jp        | 1998-01-31    | China
 762 | Britt       | Baccup        | Female |                                | 2003-09-15    | China
 770 | Abby        | Milan         | Female | amilanld@newyorker.com         | 2003-02-04    | China
 810 | Dale        | Berling       | Female | dberlingmh@gnu.org             | 1996-05-10    | China
 812 | Gypsy       | Roman         | Female | gromanmj@stanford.edu          | 1994-08-08    | China
 814 | Cristi      | Dowson        | Female | cdowsonml@economist.com        | 2001-09-25    | China
 817 | Averyl      | Loudian       | Female | aloudianmo@blogger.com         | 2002-03-05    | China
 837 | Lizzie      | Reardon       | Female | lreardonn8@1und1.de            | 1995-01-18    | China
 841 | Idalia      | Van der Velde | Female | ivanderveldenc@nhs.uk          | 1993-08-17    | China
 842 | Rosa        | Khomishin     | Female | rkhomishinnd@odnoklassniki.ru  | 1996-10-22    | China
 856 | Frederica   | Doll          | Female | fdollnr@bandcamp.com           | 1997-10-14    | China
 867 | Maible      | Langman       | Female |                                | 1999-02-28    | China
 883 | Sunshine    | Lie           | Female |                                | 1995-11-02    | Ukraine
 884 | Linette     | Scohier       | Female | lscohieroj@blog.com            | 1996-02-26    | China
 886 | Kiley       | Legion        | Female | klegionol@cbc.ca               | 1994-08-15    | China
 889 | Toma        | Garwood       | Female | tgarwoodoo@yelp.com            | 2003-05-14    | China
 891 | Ottilie     | Antognazzi    | Female | oantognazzioq@google.co.jp     | 2000-03-01    | China
 899 | Eilis       | Eich          | Female | eeichoy@reverbnation.com       | 1997-01-09    | China
 906 | Constantine | Deeson        | Female | cdeesonp5@springer.com         | 1998-11-14    | China
 916 | Merralee    | Rayhill       | Female |                                | 1996-01-09    | China
 959 | Farand      | Smout         | Female |                                | 2004-11-25    | China
 961 | Renee       | Kalewe        | Female | rkaleweqo@angelfire.com        | 1996-05-14    | China
 968 | Bobby       | Gimert        | Female |                                | 1999-05-01    | China
 988 | Bonnee      | Perigeaux     | Female | bperigeauxrf@prnewswire.com    | 2002-02-12    | China
 990 | Addy        | Thomerson     | Female | athomersonrh@nymag.com         | 1990-11-28    | China
 991 | Consuela    | Nassie        | Female | cnassieri@loc.gov              | 1992-10-11    | China
 998 | Billye      | Rodmell       | Female | brodmellrp@wikispaces.com      | 1999-08-18    | China
 999 | Kayley      | Kidstoun      | Female | kkidstounrq@yellowbook.com     | 2000-03-17    | China
(122 rows)


films=# select * from employee limit 20;
id | first_name |  last_name   | gender |            email             | date_of_birth |    country_of_birth
----+------------+--------------+--------+------------------------------+---------------+------------------------
  1 | Jesse      | Hillum       | Female |                              | 2004-08-16    | Japan
  2 | Petunia    | Andriuzzi    | Female | pandriuzzi1@livejournal.com  | 2000-05-03    | Russia
  3 | Rickard    | Vayne        | Male   | rvayne2@oakley.com           | 1992-05-18    | Canada
  4 | Eric       | Bodechon     | Male   | ebodechon3@altervista.org    | 2001-05-29    | France
  5 | Jeni       | Sonnenschein | Female |                              | 2001-12-14    | Ukraine
  6 | Genovera   | Polamontayne | Female | gpolamontayne5@scribd.com    | 1993-01-22    | China
  7 | Isaiah     | Sibylla      | Male   | isibylla6@tamu.edu           | 1992-02-15    | Bosnia and Herzegovina
  8 | Christalle | Winney       | Female | cwinney7@ft.com              | 1994-09-04    | Portugal
  9 | Lisabeth   | Mockford     | Female | lmockford8@ezinearticles.com | 1992-04-17    | Russia
 10 | Nehemiah   | Filipovic    | Male   | nfilipovic9@tripadvisor.com  | 1999-01-10    | Zimbabwe
 11 | Donall     | Shawcroft    | Male   | dshawcrofta@ycombinator.com  | 1994-05-13    | Spain
 12 | Vinson     | Palay        | Male   |                              | 1994-11-08    | China
 13 | Lanita     | Briand       | Female |                              | 1993-05-22    | Ireland
 14 | Gun        | Megson       | Male   |                              | 1993-10-07    | Poland
 15 | Tina       | Dunklee      | Female | tdunkleee@twitter.com        | 2004-01-24    | Philippines
 16 | Wayland    | La Vigne     | Male   | wlavignef@washington.edu     | 1990-11-11    | Tanzania
 17 | Glen       | Plummer      | Male   |                              | 1993-12-20    | Germany
 18 | Roldan     | Hanalan      | Male   |                              | 1992-07-02    | Macedonia
 19 | Gilda      | Mealand      | Female |                              | 1991-02-03    | France
 20 | Dmitri     | Smaleman     | Male   |                              | 2000-02-10    | Tanzania
(20 rows)


select * from employee offset 10 limit 5;
 id | first_name | last_name | gender |            email            | date_of_birth | country_of_birth
----+------------+-----------+--------+-----------------------------+---------------+------------------
 11 | Donall     | Shawcroft | Male   | dshawcrofta@ycombinator.com | 1994-05-13    | Spain
 12 | Vinson     | Palay     | Male   |                             | 1994-11-08    | China
 13 | Lanita     | Briand    | Female |                             | 1993-05-22    | Ireland
 14 | Gun        | Megson    | Male   |                             | 1993-10-07    | Poland
 15 | Tina       | Dunklee   | Female | tdunkleee@twitter.com       | 2004-01-24    | Philippines
(5 rows)


films=# SELECT * from employee offset 10 fetch first 5 row only;
id | first_name | last_name | gender |            email            | date_of_birth | country_of_birth
----+------------+-----------+--------+-----------------------------+---------------+------------------
 11 | Donall     | Shawcroft | Male   | dshawcrofta@ycombinator.com | 1994-05-13    | Spain
 12 | Vinson     | Palay     | Male   |                             | 1994-11-08    | China
 13 | Lanita     | Briand    | Female |                             | 1993-05-22    | Ireland
 14 | Gun        | Megson    | Male   |                             | 1993-10-07    | Poland
 15 | Tina       | Dunklee   | Female | tdunkleee@twitter.com       | 2004-01-24    | Philippines
(5 rows)


films=# SELECT * from employee fetch first 5 row only;
 id | first_name |  last_name   | gender |            email            | date_of_birth | country_of_birth
----+------------+--------------+--------+-----------------------------+---------------+------------------
  1 | Jesse      | Hillum       | Female |                             | 2004-08-16    | Japan
  2 | Petunia    | Andriuzzi    | Female | pandriuzzi1@livejournal.com | 2000-05-03    | Russia
  3 | Rickard    | Vayne        | Male   | rvayne2@oakley.com          | 1992-05-18    | Canada
  4 | Eric       | Bodechon     | Male   | ebodechon3@altervista.org   | 2001-05-29    | France
  5 | Jeni       | Sonnenschein | Female |                             | 2001-12-14    | Ukraine
(5 rows)


films=# SELECT * from employee fetch first 3 row only offset 12;
 id | first_name | last_name | gender |         email         | date_of_birth | country_of_birth
----+------------+-----------+--------+-----------------------+---------------+------------------
 13 | Lanita     | Briand    | Female |                       | 1993-05-22    | Ireland
 14 | Gun        | Megson    | Male   |                       | 1993-10-07    | Poland
 15 | Tina       | Dunklee   | Female | tdunkleee@twitter.com | 2004-01-24    | Philippines
(3 rows)

