INSERT INTO country(country_name) VALUES 
('Великобритания'), 
('Германия'), 
('Швеция');

INSERT INTO genre VALUES 
(1, 'rock'),
(2, 'hardrock'),
(3, 'dance'),
(4, 'industrial'),
(5, 'estrada'),
(6, 'pop');


INSERT INTO artist(artist_name, bio) VALUES 
('Led Zeppelin', 'Британская рок-группа, образовавшаяся в сентябре 1968 года в Лондоне, и признанная одной из самых успешных, новаторских и влиятельных в современной истории. Создав собственное звучание, Led Zeppelin стали одной из ведущих групп хард-рока, сыграли основополагающую роль в становлении хеви-метала, свободно интерпретируя фолк- и блюз-классику и обогащая стиль элементами других музыкальных жанров.'),
('Rammstein', 'Немецкая метал-группа, образованная в январе 1994 года в Берлине. Музыкальный стиль группы относится к жанру индастриал-метала. Основные черты творчества группы: специфический ритм, в котором выдержана большая часть композиций, и эпатирующие тексты песен. Особую известность группе принесли сценические выступления, часто сопровождаемые использованием пиротехники, получившие признание в музыкальной среде. Состав группы ни разу не менялся.'),
('ABBA', 'Шведская поп-группа, существовавшая в 1972-1982 годах и с 2018 года, названная по первым буквам имён исполнителей: Агнета Фельтског, Бьорн Ульвеус, Бенни Андерссон, Анни-Фрид Лингстад. Является одним из наиболее успешных коллективов за всю историю популярной музыки и самым успешным из числа созданных в Скандинавии: записи группы по всему миру были проданы тиражом более 350 миллионов экземпляров.'); 


INSERT INTO genre_artist VALUES 
(1, 1),
(2, 1),
(3, 2), 
(4, 3), 
(5, 3), 
(6, 3); 


INSERT INTO genre_artist VALUES 
(1, 1), 
(1, 2), 
(2, 3), 
(3, 4), 
(3, 5), 
(3, 6);


INSERT INTO country_artist VALUES 
(1, 1), 
(2, 2), 
(3, 3);


INSERT INTO musician(artist_id, last_name, first_name) VALUES 
(1, 'Плант', 'Роберт'), 
(1, 'Пейдж', 'Джимми'), 
(1, 'Джонс', 'Джон Пол'), 
(1, 'Бонэм', 'Джон'), 
(2, 'Линдеманн', 'Тилль'), 
(2, 'Круспе', 'Рихард'), 
(2, 'Ландерс', 'Пауль'), 
(2, 'Ридель', 'Оливер'), 
(2, 'Шнайдер', 'Кристоф'), 
(2, 'Лоренц', 'Кристиан'), 
(3, 'Фельтског', 'Агнета'), 
(3, 'Ульвеус', 'Бьорн'), 
(3, 'Андерссон', 'Бенни'), 
(3, 'Лингстад', 'Анни-Фрид'); 



INSERT INTO album(artist_id, album_year, album_title) VALUES 
(1, 2021, 'Ten songs for you'),
(1, 2019, 'The Classics of Led Zeppelin'),
(1, 2019, 'The Best of Led Zeppelin'),
(1, 2018, 'Led Zeppelin x Led Zeppelin'),
(1, 2018, 'Rock And Roll'),
(1, 2013, 'Mothership'),
(1, 2012, 'Celebration Day'),
(1, 2003, 'How the West Was Won'),
(1, 1997, 'The Complete BBC Sessions'),
(1, 1982, 'Coda'),
(1, 1979, 'In Through the out Door'),
(1, 1976, 'Presence'),
(1, 1976, 'The Song Remains the Same'),
(1, 1975, 'Physical Graffiti'),
(1, 1973, 'Houses of the Holy'),
(1, 1971, 'Led Zeppelin IV'),
(1, 1970, 'Led Zeppelin III: Companion Audio'),
(1, 1970, 'Led Zeppelin III'),
(1, 1969, 'Led Zeppelin II'),
(1, 1969, 'Live At The Olympia'),
(2, 2020, 'REMIXES'),
(2, 2019, 'AUSLÄNDER'),
(2, 2019, 'RAMMSTEIN'),
(2, 2019, 'RADIO'),
(2, 2019, 'Deutschland'),
(2, 2017, 'Paris'),
(2, 2015, 'XXI - Klavier'),
(2, 2011, 'Made in Germany 1995–2011'),
(2, 2009, 'Liebe Ist Für Alle Da'),
(2, 2005, 'Rosenrot'),
(2, 2004, 'Reise, Reise'),
(2, 2001, 'Mutter'),
(2, 1999, 'Live aus Berlin'),
(2, 1997, 'Sehnsucht'),
(2, 1995, 'Herzeleid. XXV Anniversary Edition'),
(2, 1995, 'Herzeleid'),
(3, 2021, 'Chiquitita'),
(3, 2014, 'Gracias Por La Musica'),
(3, 2014, 'Live At Wembley Arena'),
(3, 2014, 'Abba Gold Anniversary Edition'),
(3, 2012, 'The Essential Collection'),
(3, 2008, 'More ABBA Gold'),
(3, 1994, 'Thank You For The Music'),
(3, 1981, 'The Visitors'),
(3, 1980, 'Super Trouper'),
(3, 1979, 'Voulez-Vous'),
(3, 1977, 'The Album'),
(3, 1976, 'Arrival'),
(3, 1975, 'ABBA'),
(3, 1974, 'Waterloo'),
(3, 1973, 'Ring Ring');



INSERT INTO track(track_title) VALUES 
('Whole lotta love'),
('Immigrant song'),
('Thank you'),
('Moby Dick'),
('Good times bad times'),
('Babe im gonna leave you'),
('Celebration day'),
('Heartbreaker'),
('What is and what should never be'),
('Since ive been loving you'),
('Good Times Bad Times'),
('You Shook Me'),
('Your Time Is Gonna Come'),
('Black Mountain Side'),
('I Cant Quit You Baby'),
('How Many More Times'),
('Since Ive Been Loving You'),
('Out on the Tiles'),
('Gallows Pole'),
('Bron-Y-Aur Stomp'),
('Hats off to (Roy) Harper'),
('Bathroom Sound'),
('Tangerine'),
('Thats the Way'),
('Immigrant Song'),
('Friends'),
('Out on the Tiles'),
('Gallows Pole'),
('Tangerine'),
('Friends'),
('Celebration Day'),
('Gallows Pole'),
('Thats the Way'),
('Good Times Bad Times'),
('Babe Im Gonna Leave You'),
('Your Time Is Gonna Come'),
('Black Mountain Side'),
('How Many More Times'),
('Immigrant Song'),
('Rock and Roll'),
('Whole Lotta Love'),
('Black Dog'),
('Stairway to Heaven'),
('Good Times Bad Times'),
('Going to California'),
('Ramble On'),
('Kashmir'),
('Over the Hills and Far Away'),
('Hey, Hey, What Can I Do'),
('Dyer Maker'),
('When the Levee Breaks'),
('All My Love'),
('Babe Im Gonna Leave You'),
('Heartbreaker'),
('Dazed and Confused'),
('The Song Remains the Same'),
('Fool in the Rain'),
('The Ocean'),
('What Is and What Should Never Be'),
('Houses of the Holy'),
('Since Ive Been Loving You'),
('Misty Mountain Hop'),
('Communication Breakdown'),
('Thank You'),
('No Quarter'),
('Trampled Under Foot'),
('I Cant Quit You Baby'),
('In the Evening'),
('Rock and Roll'),
('Friends'),
('Good Times Bad Times'),
('Communication Breakdown'),
('Dazed and Confused'),
('Babe Im Gonna Leave You'),
('Whole Lotta Love'),
('Ramble On'),
('Heartbreaker'),
('Immigrant Song'),
('Since Ive Been Loving You'),
('Rock and Roll'),
('Black Dog'),
('When the Levee Breaks'),
('Stairway to Heaven'),
('The Song Remains the Same'),
('Over the Hills and Far Away'),
('Dyer Maker'),
('No Quarter'),
('Trampled Under Foot'),
('Houses of the Holy'),
('Kashmir'),
('Nobodys Fault but Mine'),
('Achilles Last Stand'),
('In the Evening'),
('All My Love'),
('Good Times Bad Times'),
('Ramble On'),
('Black Dog'),
('In My Time of Dying'),
('For Your Life'),
('Trampled Under Foot'),
('Nobodys Fault but Mine'),
('No Quarter'),
('Since Ive Been Loving You'),
('Dazed and Confused'),
('Stairway to Heaven'),
('The Song Remains the Same'),
('Misty Mountain Hop'),
('Kashmir'),
('Whole Lotta Love'),
('Rock and Roll'),
('LA Drone'),
('Immigrant Song'),
('Heartbreaker'),
('Black Dog'),
('Over the Hills and Far Away'),
('Since Ive Been Loving You'),
('Stairway to Heaven'),
('Going to California'),
('Thats The Way'),
('Bron-Y-Aur Stomp'),
('Dazed and Confused'),
('What Is and What Should Never Be'),
('Dancing Days'),
('Moby Dick'),
('Whole Lotta Love'),
('Rock and Roll'),
('The Ocean'),
('Bring It on Home / Bring It on Back'),
('You Shook Me (23/3/69 Top Gear)'),
('I Cant Quit You Baby (23/3/69 Top Gear)'),
('Communication Breakdown'),
('Dazed and Confused (3/23/69 Top Gear)'),
('The Girl I Love She Got Long Black Wavy Hair'),
('What Is and What Should Never Be (29/6/69 Top Gear)'),
('Communication Breakdown (29/6/69 Top Gear)'),
('Travelling Riverside Blues (29/6/69 Top Gear)'),
('Whole Lotta Love (29/6/69 Top Gear)'),
('Somethin Else'),
('Communication Breakdown (10/8/69 Playhouse Theatre)'),
('I Cant Quit You Baby (10/8/69 Playhouse Theatre)'),
('You Shook Me (10/8/69 Playhouse Theatre)'),
('How Many More Times (10/8/69 Playhouse Theatre)'),
('Immigrant Song (1/4/71 Paris Theatre)'),
('Heartbreaker (1/4/71 Paris Theatre)'),
('Since Ive Been Loving You (1/4/71 Paris Theatre)'),
('Black Dog (1/4/71 Paris Theatre)'),
('Dazed and Confused (1/4/71 Paris Theatre)'),
('Stairway to Heaven'),
('Going to California'),
('Thats the Way (1/4/71 Paris Theatre)'),
('Whole Lotta Love  [1/4/71 Paris Theatre]'),
('Thank You (1/4/71 Paris Theatre)'),
('Communication Breakdown (23/3/69 Top Gear)'),
('What Is and What Should Never Be'),
('Dazed and Confused (10/8/69 Playhouse Theatre)'),
('White Summer (10/8/69 Playhouse Theatre)'),
('What Is and What Should Never Be (1/4/71 Paris Theatre)'),
('Communication Breakdown (1/4/71 Paris Theatre)'),
('I Cant Quit You Baby (14/4/69 Rhythm & Blues Session)'),
('You Shook Me (14/4/69 Rhythm & Blues Session)'),
('Sunshine Woman'),
('Were Gonna Groove'),
('Poor Tom'),
('I Cant Quit You Baby'),
('Walters Walk'),
('Ozone Baby'),
('Darlene'),
('Bonzos Montreux'),
('Wearing and Tearing'),
('Were Gonna Groove'),
('If It Keeps on Raining'),
('Bonzos Montreux'),
('Baby Come on Home'),
('Sugar Mama'),
('Poor Tom'),
('Travelling Riverside Blues (BBC Session)'),
('Hey, Hey, What Can I Do'),
('Four Hands (Four Sticks) [Bombay Orchestra]'),
('Friends (Bombay Orchestra)'),
('St. Tristans Sword'),
('Desire (The Wanton Song)'),
('Bring It on Home'),
('Walters Walk'),
('Everybody Makes It Through (In the Light)'),
('In the Evening'),
('South Bound Saurez'),
('Fool in the Rain'),
('Hot Dog'),
('Carouselambra'),
('All My Love'),
('Im Gonna Crawl'),
('In the Evening'),
('Southbound Piano (South Bound Saurez)'),
('Fool in the Rain'),
('Hot Dog'),
('The Epic (Carouselambra)'),
('The Hook (All My Love)'),
('Blot (Im Gonna Crawl)'),
('Achilles Last Stand'),
('For Your Life'),
('Royal Orleans'),
('Nobodys Fault but Mine'),
('Candy Store Rock'),
('Hots on for Nowhere'),
('Tea for One'),
('Two Ones Are Won'),
('For Your Life'),
('10 Ribs & All / Carrot Pod Pod (Pod)'),
('Royal Orleans'),
('Hots on for Nowhere'),
('Rock and Roll'),
('Celebration Day'),
('Black Dog'),
('Over the Hills and Far Away'),
('Misty Mountain Hop'),
('Since Ive Been Loving You'),
('No Quarter'),
('The Song Remains the Same'),
('The Rain Song'),
('The Ocean'),
('Dazed and Confused'),
('Stairway to Heaven'),
('Moby Dick'),
('Heartbreaker'),
('Whole Lotta Love'),
('Custard Pie'),
('The Rover'),
('In My Time of Dying'),
('Houses of the Holy'),
('Trampled Under Foot'),
('Kashmir'),
('In the Light'),
('Bron-Yr-Aur'),
('Down by the Seaside'),
('Ten Years Gone'),
('Night Flight'),
('The Wanton Song'),
('Boogie with Stu'),
('Black Country Woman'),
('Sick Again'),
('Brandy & Coke (Trampled Under Foot)'),
('Sick Again'),
('In My Time of Dying'),
('Houses of the Holy'),
('Everybody Makes It Through (In the Light)'),
('Boogie with Stu'),
('Driving Through Kashmir'),
('The Song Remains the Same'),
('The Rain Song'),
('Over the Hills and Far Away'),
('The Crunge'),
('Dancing Days'),
('Dyer Maker'),
('No Quarter'),
('The Ocean'),
('The Song Remains the Same'),
('The Rain Song'),
('Over the Hills and Far Away'),
('The Crunge'),
('Dancing Days'),
('No Quarter'),
('The Ocean'),
('Black Dog'),
('Rock and Roll'),
('The Battle of Evermore'),
('Stairway to Heaven'),
('Misty Mountain Hop'),
('Four Sticks'),
('Going to California'),
('When the Levee Breaks'),
('Black Dog'),
('Rock and Roll'),
('The Battle of Evermore'),
('Stairway to Heaven'),
('Misty Mountain Hop'),
('Four Sticks'),
('Going to California'),
('When the Levee Breaks'),
('The Immigrant Song'),
('Friends'),
('Celebration Day'),
('Since Ive Been Loving You'),
('Bathroom Sound'),
('Gallows Pole'),
('Thats the Way'),
('Jennings Farm Blues'),
('Key to the Highway / Trouble in Mind'),
('Immigrant Song'),
('Friends'),
('Celebration Day'),
('Since Ive Been Loving You'),
('Out on the Tiles'),
('Gallows Pole'),
('Tangerine'),
('Thats the Way'),
('Bron-Y-Aur Stomp'),
('Hats off To (Roy) Harper'),
('The Immigrant Song'),
('Friends'),
('Celebration Day'),
('Since Ive Been Loving You'),
('Bathroom Sound'),
('Gallows Pole'),
('Thats the Way'),
('Jennings Farm Blues'),
('Key to the Highway / Trouble in Mind'),
('Whole Lotta Love'),
('What Is and What Should Never Be'),
('The Lemon Song'),
('Thank You'),
('Heartbreaker'),
('Living Loving Maid (Shes Just a Woman)'),
('Ramble On'),
('Moby Dick'),
('Bring It on Home'),
('Whole Lotta Love'),
('What Is and What Should Never Be'),
('Thank You'),
('Heartbreaker'),
('Living Loving Maid (Shes Just a Woman)'),
('Ramble On'),
('Moby Dick'),
('La La'),
('Good Times Bad Times / Communication Breakdown'),
('I Cant Quit You Baby'),
('Heartbreaker'),
('Dazed and Confused'),
('White Summer / Black Mountain Side'),
('You Shook Me'),
('Moby Dick'),
('How Many More Times'),
('DU RIECHST SO GUT'),
('RAMMSTEIN IN THE HOUSE'),
('DU RIECHST SO GUT'),
('DU RIECHST SO GUT'),
('DU RIECHST SO GUT'),
('DU RIECHST SO GUT'),
('DU RIECHST SO GUT'),
('DU RIECHST SO GUT'),
('DU RIECHST SO GUT'),
('DU RIECHST SO GUT'),
('RAMMSTEIN'),
('RAMMSTEIN'),
('ENGEL'),
('FEUERRÄDER'),
('WILDER WEIN'),
('DU HAST'),
('DU HAST'),
('STRIPPED'),
('STRIPPED'),
('STRIPPED'),
('STRIPPED'),
('SONNE'),
('SONNE'),
('SONNE'),
('LINKS 2 3 4'),
('LINKS 2 3 4'),
('LINKS 2 3 4'),
('ICH WILL'),
('ICH WILL'),
('PET SEMATARY'),
('MUTTER'),
('FEUER FREI!'),
('FEUER FREI!'),
('FEUER FREI!'),
('MEIN TEIL'),
('MEIN TEIL'),
('MEIN TEIL'),
('AMERIKA'),
('AMERIKA'),
('AMERIKA'),
('AMERIKA'),
('AMERIKA'),
('AMERIKA'),
('OHNE DICH'),
('OHNE DICH'),
('OHNE DICH'),
('OHNE DICH'),
('OHNE DICH'),
('KEINE LUST'),
('KEINE LUST'),
('KEINE LUST'),
('KEINE LUST'),
('KEINE LUST'),
('KEINE LUST'),
('KEINE LUST'),
('BENZIN'),
('BENZIN'),
('BENZIN'),
('ROSENROT'),
('ROSENROT'),
('ROSENROT'),
('MANN GEGEN MANN'),
('PUSSY'),
('RAMMLIED'),
('ICH TU DIR WEH'),
('HAIFISCH'),
('HAIFISCH'),
('HAIFISCH'),
('Mein Herz Brennt'),
('Mein Herz Brennt'),
('Mein Herz Brennt'),
('MEIN LAND'),
('AUSLÄNDER'),
('AUSLÄNDER'),
('AUSLÄNDER'),
('DEUTSCHLAND'),
('RADIO'),
('ZEIG DICH'),
('AUSLÄNDER'),
('SEX'),
('PUPPE'),
('WAS ICH LIEBE'),
('DIAMANT'),
('WEIT WEG'),
('TATTOO'),
('HALLOMANN'),
('RADIO'),
('RADIO'),
('DEUTSCHLAND'),
('Deutschland'),
('Intro'),
('Sonne'),
('Wollt Ihr Das Bett In Flammen Sehen'),
('Keine Lust'),
('Sehnsucht'),
('Asche zu Asche'),
('Feuer Frei!'),
('Mutter'),
('Mein Teil'),
('Du Riechst So Gut'),
('Links 2 3 4'),
('Du Hast'),
('Haifisch'),
('Bück Dich'),
('Mann Gegen Mann'),
('Ohne Dich'),
('Mein Herz Brennt'),
('Amerika'),
('Ich Will'),
('Engel'),
('Pussy'),
('Frühling in Paris'),
('Frühling In Paris'),
('Feuer Und Wasser'),
('Nebel'),
('Sonne'),
('Klavier'),
('Wilder Wein'),
('Ohne Dich'),
('Ein Lied'),
('Roter Sand'),
('Engel'),
('Seemann'),
('Donaukinder'),
('Mein Herz Brennt'),
('Engel'),
('Links 2 3 4'),
('Keine Lust'),
('Mein Teil'),
('Du Hast'),
('Du Riechst So Gut'),
('Ich Will'),
('Mein Herz Brennt'),
('Mutter'),
('Pussy'),
('Rosenrot'),
('Haifisch'),
('Amerika'),
('Sonne'),
('Ohne Dich'),
('Mein Land'),
('Rammlied'),
('Ich Tu Dir Weh'),
('Waidmanns Heil'),
('Haifisch'),
('B********'),
('Frühling in Paris'),
('Wiener Blut'),
('Pussy'),
('Liebe Ist Für Alle Da'),
('Mehr'),
('Roter Sand'),
('Benzin'),
('Mann Gegen Mann'),
('Rosenrot'),
('Spring'),
('Wo Bist Du'),
('Stirb Nicht Vor Mir (Dont Die Before I Do)'),
('Zerstören'),
('Hilf Mir'),
('Te Quiero Puta!'),
('Feuer und Wasser'),
('Ein Lied'),
('Reise, Reise'),
('Mein Teil'),
('Dalai Lama'),
('Keine Lust'),
('Los'),
('Amerika'),
('Moskau'),
('Morgenstern'),
('Stein um Stein'),
('Ohne Dich'),
('Amour'),
('Mein Herz Brennt'),
('Links 2 3 4'),
('Sonne'),
('Ich Will'),
('Feuer Frei!'),
('Mutter'),
('Spieluhr'),
('Zwitter'),
('Rein Raus'),
('Adios'),
('Nebel'),
('Spiel Mit Mir'),
('Bestrafe Mich'),
('Weisses Fleisch'),
('Sehnsucht'),
('Asche zu Asche'),
('Wilder Wein'),
('Heirate Mich'),
('Du Riechst So Gut'),
('Du Hast'),
('Bück Dich'),
('Engel'),
('Rammstein'),
('Laichzeit'),
('Wollt Ihr Das Bett In Flammen Sehen'),
('Seemann'),
('Sehnsucht'),
('Engel'),
('Tier'),
('Bestrafe Mich'),
('Du Hast'),
('Bück Dich'),
('Spiel Mit Mir'),
('Klavier'),
('Alter Mann'),
('Eifersucht'),
('Küss Mich (Fellfrosch)'),
('Wollt Ihr Das Bett In Flammen Sehen'),
('Der Meister'),
('Weisses Fleisch'),
('Asche zu Asche'),
('Seemann'),
('Du Riechst So Gut'),
('Das Alte Leid'),
('Heirate Mich'),
('Herzeleid'),
('Laichzeit'),
('Rammstein'),
('Wollt ihr das Bett in Flammen sehen'),
('Der Meister'),
('Weisses Fleisch'),
('Asche zu Asche'),
('Seemann'),
('Du riechst so gut'),
('Das alte Leid'),
('Heirate mich'),
('Herzeleid'),
('Laichzeit'),
('Rammstein'),
('Chiquitita'),
('Gracias Por La Musica'),
('La Reina Del Baile'),
('Al Andar'),
('Dame! Dame! Dame!'),
('Fernando'),
('Estoy Soñando'),
('Mamma Mia'),
('Hasta Mañana'),
('Conociendome, Conociendote'),
('Chiquitita'),
('Ring Ring'),
('Andante, Andante'),
('Felicidad'),
('No Hay A Quien Culpar'),
('Se Me Esta Escapando'),
('Gammal fäbodpsalm'),
('Voulez-Vous'),
('If It Wasnt For The Nights'),
('As Good As New'),
('Knowing Me, Knowing You'),
('Rock Me'),
('Chiquitita'),
('Money, Money, Money'),
('I Have A Dream'),
('Gimme! Gimme! Gimme! (A Man After Midnight)'),
('SOS'),
('Fernando'),
('The Name Of The Game'),
('Eagle'),
('Thank You For The Music'),
('Why Did It Have To Be Me?'),
('Intermezzo No.1'),
('Im Still Alive'),
('Summer Night City'),
('Take A Chance On Me'),
('Does Your Mother Know'),
('Hole In Your Soul'),
('The Way Old Friends Do'),
('Dancing Queen'),
('Waterloo'),
('Dancing Queen'),
('Knowing Me, Knowing You'),
('Take A Chance On Me'),
('Mamma Mia'),
('Lay All Your Love On Me'),
('Super Trouper'),
('I Have A Dream'),
('The Winner Takes It All'),
('Money, Money, Money'),
('SOS'),
('Chiquitita'),
('Fernando'),
('Voulez-Vous'),
('Gimme! Gimme! Gimme! (A Man After Midnight)'),
('Does Your Mother Know'),
('One Of Us'),
('The Name Of The Game'),
('Thank You For The Music'),
('Waterloo'),
('Summer Night City'),
('Angeleyes'),
('The Day Before You Came'),
('Eagle'),
('I Do, I Do, I Do, I Do, I Do'),
('So Long'),
('Honey, Honey'),
('The Visitors'),
('Our Last Summer'),
('On And On And On'),
('Ring Ring'),
('I Wonder (Departure)'),
('Lovelight'),
('Head Over Heels'),
('When I Kissed The Teacher'),
('I Am The City'),
('Cassandra'),
('Under Attack'),
('When All Is Said And Done'),
('The Way Old Friends Do'),
('Shes My Kind Of Girl'),
('I Am Just A Girl'),
('Gonna Sing You My Love Song'),
('King Kong Song'),
('Ive Been Waiting For You'),
('Rock Me'),
('Man In The Middle'),
('Intermezzo No.1'),
('Thats Me'),
('Crazy World'),
('Happy Hawaii'),
('Im A Marionette'),
('Medley: Pick A Bale Of Cotton'),
('Kisses Of Fire'),
('The King Has Lost His Crown'),
('Elaine'),
('The Piper'),
('Andante, Andante'),
('Should I Laugh Or Cry'),
('Soldiers'),
('People Need Love'),
('He Is Your Brother'),
('Ring Ring'),
('Love Isnt Easy (But It Sure Is Hard Enough)'),
('Waterloo'),
('Honey, Honey'),
('So Long'),
('I Do, I Do, I Do, I Do, I Do'),
('SOS'),
('Mamma Mia'),
('Bang-A-Boomerang'),
('Fernando'),
('Dancing Queen'),
('Money, Money, Money'),
('Knowing Me, Knowing You'),
('Thats Me'),
('The Name Of The Game'),
('Take A Chance On Me'),
('Eagle'),
('One Man, One Woman'),
('Thank You For The Music'),
('Summer Night City'),
('Chiquitita'),
('Does Your Mother Know'),
('Voulez-Vous'),
('Angeleyes'),
('Gimme! Gimme! Gimme! (A Man After Midnight)'),
('I Have A Dream'),
('The Winner Takes It All'),
('Super Trouper'),
('On And On And On'),
('Lay All Your Love On Me'),
('Happy New Year'),
('One Of Us'),
('When All Is Said And Done'),
('Head Over Heels'),
('The Visitors'),
('The Day Before You Came'),
('Under Attack'),
('Summer Night City'),
('Angeleyes'),
('The Day Before You Came'),
('Eagle'),
('I Do, I Do, I Do, I Do, I Do'),
('So Long'),
('Honey, Honey'),
('The Visitors'),
('Our Last Summer'),
('On And On And On'),
('Ring Ring'),
('I Wonder (Departure)'),
('Lovelight'),
('Head Over Heels'),
('When I Kissed The Teacher'),
('I Am The City'),
('Cassandra'),
('Under Attack'),
('When All Is Said And Done'),
('The Way Old Friends Do'),
('People Need Love'),
('Another Town, Another Train'),
('He Is Your Brother'),
('Love Isnt Easy (But It Sure Is Hard Enough)'),
('Ring Ring'),
('Waterloo'),
('Hasta Manana'),
('Honey, Honey'),
('Dance (While The Music Still Goes On)'),
('So Long'),
('Ive Been Waiting For You'),
('I Do, I Do, I Do, I Do, I Do'),
('SOS'),
('Mamma Mia'),
('Fernando'),
('Dancing Queen'),
('Thats Me'),
('When I Kissed The Teacher'),
('Money, Money, Money'),
('Crazy World'),
('My Love, My Life'),
('Knowing Me, Knowing You'),
('Happy Hawaii'),
('The Name Of The Game'),
('I Wonder (Departure)'),
('Eagle'),
('Take A Chance On Me'),
('Thank You For The Music'),
('Summer Night City'),
('Chiquitita'),
('Lovelight'),
('Does Your Mother Know'),
('Voulez-Vous'),
('Angeleyes'),
('Gimme! Gimme! Gimme! (A Man After Midnight)'),
('I Have A Dream'),
('The Winner Takes It All'),
('Elaine'),
('Super Trouper'),
('Lay All Your Love On Me'),
('On And On And On'),
('Our Last Summer'),
('The Way Old Friends Do'),
('The Visitors'),
('One Of Us'),
('Should I Laugh Or Cry'),
('Head Over Heels'),
('When All Is Said And Done'),
('Like An Angel Passing Through My Room'),
('The Day Before You Came'),
('Cassandra'),
('Under Attack'),
('Put On Your White Sombrero'),
('Dream World'),
('Thank You For The Music'),
('Hej gamle man'),
('Merry-Go-Round'),
('Santa Rosa'),
('Shes My Kind Of Girl'),
('Medley: Pick A Bale Of Cotton'),
('You Owe Me One'),
('Slipping Through My Fingers / Me And I'),
('Abba Undeleted'),
('Waterloo'),
('Ring Ring'),
('Honey Honey'),
('The Visitors'),
('Head Over Heels'),
('When All Is Said And Done'),
('Soldiers'),
('I Let The Music Speak'),
('One Of Us'),
('Two For The Price Of One'),
('Slipping Through My Fingers'),
('Like An Angel Passing Through My Room'),
('Should I Laugh Or Cry'),
('I Am The City'),
('You Owe Me One'),
('Cassandra'),
('Under Attack'),
('The Day Before You Came'),
('From A Twinkling Star To A Passing Angel'),
('Super Trouper'),
('The Winner Takes It All'),
('On And On And On'),
('Andante, Andante'),
('Me And I'),
('Happy New Year'),
('Our Last Summer'),
('The Piper'),
('Lay All Your Love On Me'),
('The Way Old Friends Do'),
('Elaine'),
('Put On Your White Sombrero'),
('As Good As New'),
('Voulez-Vous'),
('I Have A Dream'),
('Angeleyes'),
('The King Has Lost His Crown'),
('Does Your Mother Know'),
('If It Wasnt For The Nights'),
('Chiquitita'),
('Lovers'),
('Kisses Of Fire'),
('Summer Night City'),
('Lovelight'),
('Gimme! Gimme! Gimme! (A Man After Midnight)'),
('Eagle'),
('Take A Chance On Me'),
('One Man, One Woman'),
('The Name Of The Game'),
('Move On'),
('Hole In Your Soul'),
('Thank You For The Music'),
('I Wonder (Departure)'),
('Im A Marionette'),
('Thank You For The Music'),
('When I Kissed The Teacher'),
('Dancing Queen'),
('My Love, My Life'),
('Dum Dum Diddle'),
('Knowing Me, Knowing You'),
('Money, Money, Money'),
('Thats Me'),
('Why Did It Have To Be Me?'),
('Tiger'),
('Arrival'),
('Fernando'),
('Happy Hawaii'),
('Mamma Mia'),
('Hey, Hey Helen'),
('Tropical Loveland'),
('SOS'),
('Man In The Middle'),
('Bang-A-Boomerang'),
('I Do, I Do, I Do, I Do, I Do'),
('Rock Me'),
('Intermezzo No.1'),
('Ive Been Waiting For You'),
('So Long'),
('Crazy World'),
('Medley: Pick A Bale Of Cotton'),
('Waterloo'),
('Sitting In The Palmtree'),
('King Kong Song'),
('Hasta Manana'),
('My Mama Said'),
('Dance (While The Music Still Goes On)'),
('Honey, Honey'),
('Watch Out'),
('What About Livingstone'),
('Gonna Sing You My Love Song'),
('Suzy-Hang-Around'),
('Ring, Ring'),
('Waterloo'),
('Honey Honey'),
('Waterloo'),
('Hasta Mañana'),
('Waterloo'),
('Ring Ring'),
('Waterloo'),
('Ring Ring'),
('Another Town, Another Train'),
('Disillusion'),
('People Need Love'),
('I Saw It In The Mirror'),
('Nina, Pretty Ballerina'),
('Love Isnt Easy (But It Sure Is Hard Enough)'),
('Me And Bobby And Bobbys Brother'),
('He Is Your Brother'),
('Shes My Kind Of Girl'),
('I Am Just A Girl'),
('RockNRoll Band'),
('Ring, Ring'),
('Merry-Go-Round'),
('Santa Rosa'),
('Ring Ring'),
('Wer Im Wartesaal Der Liebe Steht'),
('Ring Ring'),
('En hälsning till våra parkarrangörer'),
('Hej gamle man'),
('There’s A Little Man'),
('I Saw It In The Mirror'),
('Jag är blott en man'),
('Man vill ju leva lite dessemellan'),
('Välkommen till världen');


INSERT INTO album_track VALUES 
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(3, 25),
(3, 26),
(3, 27),
(3, 28),
(3, 29),
(3, 30),
(3, 31),
(3, 32),
(3, 33),
(3, 34),
(3, 35),
(3, 36),
(3, 37),
(3, 38),
(4, 39),
(4, 40),
(4, 41),
(4, 42),
(4, 43),
(4, 44),
(4, 45),
(4, 46),
(4, 47),
(4, 48),
(4, 49),
(4, 50),
(4, 51),
(4, 52),
(4, 53),
(4, 54),
(4, 55),
(4, 56),
(4, 57),
(4, 58),
(4, 59),
(4, 60),
(4, 61),
(4, 62),
(4, 63),
(4, 64),
(4, 65),
(4, 66),
(4, 67),
(4, 68),
(5, 69),
(5, 70),
(6, 71),
(6, 72),
(6, 73),
(6, 74),
(6, 75),
(6, 76),
(6, 77),
(6, 78),
(6, 79),
(6, 80),
(6, 81),
(6, 82),
(6, 83),
(6, 84),
(6, 85),
(6, 86),
(6, 87),
(6, 88),
(6, 89),
(6, 90),
(6, 91),
(6, 92),
(6, 93),
(6, 94),
(7, 95),
(7, 96),
(7, 97),
(7, 98),
(7, 99),
(7, 100),
(7, 101),
(7, 102),
(7, 103),
(7, 104),
(7, 105),
(7, 106),
(7, 107),
(7, 108),
(7, 109),
(7, 110),
(8, 111),
(8, 112),
(8, 113),
(8, 114),
(8, 115),
(8, 116),
(8, 117),
(8, 118),
(8, 119),
(8, 120),
(8, 121),
(8, 122),
(8, 123),
(8, 124),
(8, 125),
(8, 126),
(8, 127),
(8, 128),
(9, 129),
(9, 130),
(9, 131),
(9, 132),
(9, 133),
(9, 134),
(9, 135),
(9, 136),
(9, 137),
(9, 138),
(9, 139),
(9, 140),
(9, 141),
(9, 142),
(9, 143),
(9, 144),
(9, 145),
(9, 146),
(9, 147),
(9, 148),
(9, 149),
(9, 150),
(9, 151),
(9, 152),
(9, 153),
(9, 154),
(9, 155),
(9, 156),
(9, 157),
(9, 158),
(9, 159),
(9, 160),
(9, 161),
(10, 162),
(10, 163),
(10, 164),
(10, 165),
(10, 166),
(10, 167),
(10, 168),
(10, 169),
(10, 170),
(10, 171),
(10, 172),
(10, 173),
(10, 174),
(10, 175),
(10, 176),
(10, 177),
(10, 178),
(10, 179),
(10, 180),
(10, 181),
(10, 182),
(10, 183),
(10, 184),
(11, 185),
(11, 186),
(11, 187),
(11, 188),
(11, 189),
(11, 190),
(11, 191),
(11, 192),
(11, 193),
(11, 194),
(11, 195),
(11, 196),
(11, 197),
(11, 198),
(12, 199),
(12, 200),
(12, 201),
(12, 202),
(12, 203),
(12, 204),
(12, 205),
(12, 206),
(12, 207),
(12, 208),
(12, 209),
(12, 210),
(13, 211),
(13, 212),
(13, 213),
(13, 214),
(13, 215),
(13, 216),
(13, 217),
(13, 218),
(13, 219),
(13, 220),
(13, 221),
(13, 222),
(13, 223),
(13, 224),
(13, 225),
(14, 226),
(14, 227),
(14, 228),
(14, 229),
(14, 230),
(14, 231),
(14, 232),
(14, 233),
(14, 234),
(14, 235),
(14, 236),
(14, 237),
(14, 238),
(14, 239),
(14, 240),
(14, 241),
(14, 242),
(14, 243),
(14, 244),
(14, 245),
(14, 246),
(14, 247),
(15, 248),
(15, 249),
(15, 250),
(15, 251),
(15, 252),
(15, 253),
(15, 254),
(15, 255),
(15, 256),
(15, 257),
(15, 258),
(15, 259),
(15, 260),
(15, 261),
(15, 262),
(16, 263),
(16, 264),
(16, 265),
(16, 266),
(16, 267),
(16, 268),
(16, 269),
(16, 270),
(16, 271),
(16, 272),
(16, 273),
(16, 274),
(16, 275),
(16, 276),
(16, 277),
(16, 278),
(17, 279),
(17, 280),
(17, 281),
(17, 282),
(17, 283),
(17, 284),
(17, 285),
(17, 286),
(17, 287),
(18, 288),
(18, 289),
(18, 290),
(18, 291),
(18, 292),
(18, 293),
(18, 294),
(18, 295),
(18, 296),
(18, 297),
(18, 298),
(18, 299),
(18, 300),
(18, 301),
(18, 302),
(18, 303),
(18, 304),
(18, 305),
(18, 306),
(19, 307),
(19, 308),
(19, 309),
(19, 310),
(19, 311),
(19, 312),
(19, 313),
(19, 314),
(19, 315),
(19, 316),
(19, 317),
(19, 318),
(19, 319),
(19, 320),
(19, 321),
(19, 322),
(19, 323),
(20, 324),
(20, 325),
(20, 326),
(20, 327),
(20, 328),
(20, 329),
(20, 330),
(20, 331),
(21, 332),
(21, 333),
(21, 334),
(21, 335),
(21, 336),
(21, 337),
(21, 338),
(21, 339),
(21, 340),
(21, 341),
(21, 342),
(21, 343),
(21, 344),
(21, 345),
(21, 346),
(21, 347),
(21, 348),
(21, 349),
(21, 350),
(21, 351),
(21, 352),
(21, 353),
(21, 354),
(21, 355),
(21, 356),
(21, 357),
(21, 358),
(21, 359),
(21, 360),
(21, 361),
(21, 362),
(21, 363),
(21, 364),
(21, 365),
(21, 366),
(21, 367),
(21, 368),
(21, 369),
(21, 370),
(21, 371),
(21, 372),
(21, 373),
(21, 374),
(21, 375),
(21, 376),
(21, 377),
(21, 378),
(21, 379),
(21, 380),
(21, 381),
(21, 382),
(21, 383),
(21, 384),
(21, 385),
(21, 386),
(21, 387),
(21, 388),
(21, 389),
(21, 390),
(21, 391),
(21, 392),
(21, 393),
(21, 394),
(21, 395),
(21, 396),
(21, 397),
(21, 398),
(21, 399),
(21, 400),
(21, 401),
(21, 402),
(21, 403),
(22, 404),
(22, 405),
(22, 406),
(23, 407),
(23, 408),
(23, 409),
(23, 410),
(23, 411),
(23, 412),
(23, 413),
(23, 414),
(23, 415),
(23, 416),
(23, 417),
(24, 418),
(24, 419),
(25, 420),
(25, 421),
(26, 422),
(26, 423),
(26, 424),
(26, 425),
(26, 426),
(26, 427),
(26, 428),
(26, 429),
(26, 430),
(26, 431),
(26, 432),
(26, 433),
(26, 434),
(26, 435),
(26, 436),
(26, 437),
(26, 438),
(26, 439),
(26, 440),
(26, 441),
(26, 442),
(26, 443),
(27, 444),
(27, 445),
(27, 446),
(27, 447),
(27, 448),
(27, 449),
(27, 450),
(27, 451),
(27, 452),
(27, 453),
(27, 454),
(27, 455),
(27, 456),
(28, 457),
(28, 458),
(28, 459),
(28, 460),
(28, 461),
(28, 462),
(28, 463),
(28, 464),
(28, 465),
(28, 466),
(28, 467),
(28, 468),
(28, 469),
(28, 470),
(28, 471),
(28, 472),
(29, 473),
(29, 474),
(29, 475),
(29, 476),
(29, 477),
(29, 478),
(29, 479),
(29, 480),
(29, 481),
(29, 482),
(29, 483),
(30, 484),
(30, 485),
(30, 486),
(30, 487),
(30, 488),
(30, 489),
(30, 490),
(30, 491),
(30, 492),
(30, 493),
(30, 494),
(31, 495),
(31, 496),
(31, 497),
(31, 498),
(31, 499),
(31, 500),
(31, 501),
(31, 502),
(31, 503),
(31, 504),
(31, 505),
(32, 506),
(32, 507),
(32, 508),
(32, 509),
(32, 510),
(32, 511),
(32, 512),
(32, 513),
(32, 514),
(32, 515),
(32, 516),
(33, 517),
(33, 518),
(33, 519),
(33, 520),
(33, 521),
(33, 522),
(33, 523),
(33, 524),
(33, 525),
(33, 526),
(33, 527),
(33, 528),
(33, 529),
(33, 530),
(33, 531),
(34, 532),
(34, 533),
(34, 534),
(34, 535),
(34, 536),
(34, 537),
(34, 538),
(34, 539),
(34, 540),
(34, 541),
(34, 542),
(35, 543),
(35, 544),
(35, 545),
(35, 546),
(35, 547),
(35, 548),
(35, 549),
(35, 550),
(35, 551),
(35, 552),
(35, 553),
(36, 554),
(36, 555),
(36, 556),
(36, 557),
(36, 558),
(36, 559),
(36, 560),
(36, 561),
(36, 562),
(36, 563),
(36, 564),
(37, 565),
(38, 566),
(38, 567),
(38, 568),
(38, 569),
(38, 570),
(38, 571),
(38, 572),
(38, 573),
(38, 574),
(38, 575),
(38, 576),
(38, 577),
(38, 578),
(38, 579),
(38, 580),
(39, 581),
(39, 582),
(39, 583),
(39, 584),
(39, 585),
(39, 586),
(39, 587),
(39, 588),
(39, 589),
(39, 590),
(39, 591),
(39, 592),
(39, 593),
(39, 594),
(39, 595),
(39, 596),
(39, 597),
(39, 598),
(39, 599),
(39, 600),
(39, 601),
(39, 602),
(39, 603),
(39, 604),
(39, 605),
(40, 606),
(40, 607),
(40, 608),
(40, 609),
(40, 610),
(40, 611),
(40, 612),
(40, 613),
(40, 614),
(40, 615),
(40, 616),
(40, 617),
(40, 618),
(40, 619),
(40, 620),
(40, 621),
(40, 622),
(40, 623),
(40, 624),
(40, 625),
(40, 626),
(40, 627),
(40, 628),
(40, 629),
(40, 630),
(40, 631),
(40, 632),
(40, 633),
(40, 634),
(40, 635),
(40, 636),
(40, 637),
(40, 638),
(40, 639),
(40, 640),
(40, 641),
(40, 642),
(40, 643),
(40, 644),
(40, 645),
(40, 646),
(40, 647),
(40, 648),
(40, 649),
(40, 650),
(40, 651),
(40, 652),
(40, 653),
(40, 654),
(40, 655),
(40, 656),
(40, 657),
(40, 658),
(40, 659),
(40, 660),
(40, 661),
(40, 662),
(40, 663),
(40, 664),
(41, 665),
(41, 666),
(41, 667),
(41, 668),
(41, 669),
(41, 670),
(41, 671),
(41, 672),
(41, 673),
(41, 674),
(41, 675),
(41, 676),
(41, 677),
(41, 678),
(41, 679),
(41, 680),
(41, 681),
(41, 682),
(41, 683),
(41, 684),
(41, 685),
(41, 686),
(41, 687),
(41, 688),
(41, 689),
(41, 690),
(41, 691),
(41, 692),
(41, 693),
(41, 694),
(41, 695),
(41, 696),
(41, 697),
(41, 698),
(41, 699),
(41, 700),
(41, 701),
(41, 702),
(41, 703),
(42, 704),
(42, 705),
(42, 706),
(42, 707),
(42, 708),
(42, 709),
(42, 710),
(42, 711),
(42, 712),
(42, 713),
(42, 714),
(42, 715),
(42, 716),
(42, 717),
(42, 718),
(42, 719),
(42, 720),
(42, 721),
(42, 722),
(42, 723),
(43, 724),
(43, 725),
(43, 726),
(43, 727),
(43, 728),
(43, 729),
(43, 730),
(43, 731),
(43, 732),
(43, 733),
(43, 734),
(43, 735),
(43, 736),
(43, 737),
(43, 738),
(43, 739),
(43, 740),
(43, 741),
(43, 742),
(43, 743),
(43, 744),
(43, 745),
(43, 746),
(43, 747),
(43, 748),
(43, 749),
(43, 750),
(43, 751),
(43, 752),
(43, 753),
(43, 754),
(43, 755),
(43, 756),
(43, 757),
(43, 758),
(43, 759),
(43, 760),
(43, 761),
(43, 762),
(43, 763),
(43, 764),
(43, 765),
(43, 766),
(43, 767),
(43, 768),
(43, 769),
(43, 770),
(43, 771),
(43, 772),
(43, 773),
(43, 774),
(43, 775),
(43, 776),
(43, 777),
(43, 778),
(43, 779),
(43, 780),
(43, 781),
(43, 782),
(43, 783),
(43, 784),
(43, 785),
(43, 786),
(43, 787),
(43, 788),
(43, 789),
(44, 790),
(44, 791),
(44, 792),
(44, 793),
(44, 794),
(44, 795),
(44, 796),
(44, 797),
(44, 798),
(44, 799),
(44, 800),
(44, 801),
(44, 802),
(44, 803),
(44, 804),
(44, 805),
(45, 806),
(45, 807),
(45, 808),
(45, 809),
(45, 810),
(45, 811),
(45, 812),
(45, 813),
(45, 814),
(45, 815),
(45, 816),
(45, 817),
(46, 818),
(46, 819),
(46, 820),
(46, 821),
(46, 822),
(46, 823),
(46, 824),
(46, 825),
(46, 826),
(46, 827),
(46, 828),
(46, 829),
(46, 830),
(47, 831),
(47, 832),
(47, 833),
(47, 834),
(47, 835),
(47, 836),
(47, 837),
(47, 838),
(47, 839),
(47, 840),
(48, 841),
(48, 842),
(48, 843),
(48, 844),
(48, 845),
(48, 846),
(48, 847),
(48, 848),
(48, 849),
(48, 850),
(48, 851),
(48, 852),
(49, 853),
(49, 854),
(49, 855),
(49, 856),
(49, 857),
(49, 858),
(49, 859),
(49, 860),
(49, 861),
(49, 862),
(49, 863),
(49, 864),
(49, 865),
(50, 866),
(50, 867),
(50, 868),
(50, 869),
(50, 870),
(50, 871),
(50, 872),
(50, 873),
(50, 874),
(50, 875),
(50, 876),
(50, 877),
(50, 878),
(50, 879),
(50, 880),
(50, 881),
(50, 882),
(50, 883),
(50, 884),
(51, 885),
(51, 886),
(51, 887),
(51, 888),
(51, 889),
(51, 890),
(51, 891),
(51, 892),
(51, 893),
(51, 894),
(51, 895),
(51, 896),
(51, 897),
(51, 898),
(51, 899),
(51, 900),
(51, 901),
(51, 902),
(51, 903),
(51, 904),
(51, 905),
(51, 906),
(51, 907),
(51, 908),
(51, 909); 