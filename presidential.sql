CREATE TABLE STATE
(STATE_NAME    CHAR(15)  NOT NULL,
 ADMIN_ENTERED SMALLINT          ,
 YEAR_ENTERED  SMALLINT  NOT NULL,
 PRIMARY KEY (STATE_NAME)        ,
 CHECK (ADMIN_ENTERED >= 0)      ,
 CHECK (YEAR_ENTERED >= 1776)    );

CREATE TABLE PRESIDENT
(PRES_NAME   CHAR(16)  NOT NULL,
 BIRTH_YR    SMALLINT  NOT NULL,
 YRS_SERV    SMALLINT  NOT NULL,
 DEATH_AGE   SMALLINT          ,
 PARTY       CHAR(11)  NOT NULL,
 STATE_BORN  CHAR(15)          ,
 PRIMARY KEY (PRES_NAME)       ,
 FOREIGN KEY (STATE_BORN)
    REFERENCES STATE (STATE_NAME),
 CHECK (YRS_SERV >= 0)         ,
 CHECK (BIRTH_YR >= 1700)      );
 
CREATE TABLE PRES_MARRIAGE
(PRES_NAME   CHAR(16)  NOT NULL,
 SPOUSE_NAME CHAR(16)  NOT NULL,
 PR_AGE      SMALLINT          ,
 SP_AGE      SMALLINT          ,
 NR_CHILDREN SMALLINT          ,
 MAR_YEAR    SMALLINT          ,
 PRIMARY KEY (PRES_NAME, SPOUSE_NAME),
 FOREIGN KEY (PRES_NAME)
    REFERENCES PRESIDENT (PRES_NAME),
 CHECK (PR_AGE >= 18)          ,
 CHECK (SP_AGE >= 16)          ,
 CHECK (NR_CHILDREN >= 0)      ,
 CHECK (MAR_YEAR >= 1700)      );

CREATE TABLE PRES_HOBBY
(PRES_NAME   CHAR(16)  NOT NULL,
 HOBBY       CHAR(20)  NOT NULL,
 PRIMARY KEY (PRES_NAME, HOBBY),
 FOREIGN KEY (PRES_NAME)
    REFERENCES PRESIDENT (PRES_NAME));

CREATE TABLE ADMINISTRATION
(ADMIN_NR         SMALLINT  NOT NULL,
 PRES_NAME        CHAR(16)  NOT NULL,
 YEAR_INAUGURATED SMALLINT  NOT NULL,
 PRIMARY KEY (ADMIN_NR, PRES_NAME),
 FOREIGN KEY (PRES_NAME)
    REFERENCES PRESIDENT (PRES_NAME),
 CHECK (ADMIN_NR >= 0)              ,
 CHECK (YEAR_INAUGURATED >= 1789)   );

CREATE TABLE ADMIN_PR_VP
(ADMIN_NR        SMALLINT  NOT NULL,
 PRES_NAME       CHAR(16)  NOT NULL,
 VICE_PRES_NAME  CHAR(16)  NOT NULL,
 PRIMARY KEY (ADMIN_NR , PRES_NAME, VICE_PRES_NAME),
 FOREIGN KEY (ADMIN_NR, PRES_NAME)
    REFERENCES ADMINISTRATION (ADMIN_NR, PRES_NAME),
 CHECK (ADMIN_NR >= 0)             );

CREATE TABLE ELECTION
(ELECTION_YEAR      SMALLINT  NOT NULL,
 CANDIDATE          CHAR(16)  NOT NULL,
 VOTES              SMALLINT  NOT NULL,
 WINNER_LOSER_INDIC CHAR(1)   NOT NULL,
 PRIMARY KEY (ELECTION_YEAR, CANDIDATE),
 CHECK (ELECTION_YEAR >= 1789)        ,
 CHECK (VOTES >= 1)                   ,
 CHECK (WINNER_LOSER_INDIC IN ('W', 'L')));
 
CREATE INDEX PRESIDENT_INDEX1
ON PRESIDENT (BIRTH_YR);

CREATE INDEX PRES_HOBBY_INDEX1
ON PRES_HOBBY (HOBBY);

CREATE INDEX STATE_INDEX1
ON STATE (ADMIN_ENTERED);

CREATE INDEX ADMINISTRATION_INDEX1
ON ADMINISTRATION (ADMIN_NR);

CREATE INDEX ADMIN_PR_VP_INDEX1
ON ADMIN_PR_VP (ADMIN_NR);

CREATE INDEX ADMIN_PR_VP_INDEX2
ON ADMIN_PR_VP (PRES_NAME);

CREATE INDEX ADMIN_PR_VP_INDEX3
ON ADMIN_PR_VP (VICE_PRES_NAME);

CREATE INDEX ELECTION_INDEX1
ON ELECTION (ELECTION_YEAR);

CREATE INDEX ELECTION_INDEX2
ON ELECTION (CANDIDATE);

CREATE VIEW RECENT_PRESIDENTS AS
SELECT * 
FROM   PRESIDENT 
WHERE  BIRTH_YR > 1880;

INSERT INTO STATE VALUES ('Massachusetts', NULL, 1776), 
('Pensylvania', NULL, 1776), 
('Virginia', NULL, 1776), 
('Connecticut', NULL, 1776), 
('South Carolina', NULL, 1776), 
('Maryland', NULL, 1776), 
('New Jersey', NULL, 1776), 
('Georgia', NULL, 1776), 
('New Hampshire', NULL, 1776), 
('Delaware', NULL, 1776), 
('New York', NULL, 1776), 
('North Carolina', NULL, 1776), 
('Rhode Island', NULL, 1776), 
('Vermont', 1, 1791), 
('Kentucky', 1, 1792), 
('Tennessee', 2, 1796), 
('Ohio', 4, 1803), 
('Louisianna', 6, 1812), 
('Indiana', 7, 1816), 
('Mississippi', 8, 1817), 
('Illinois', 8, 1818), 
('Alabama', 8, 1819), ('Maine', 8, 1820), ('Missouri', 9, 1821), ('Arkansas', 12, 1836), ('Michigan', 12, 1837), ('Florida', 14, 1845), ('Texas', 15, 1845), ('Iowa', 15, 1846), ('Wisconsin', 15, 1848), ('California', 16, 1850), ('Minnesota', 18, 1858), ('Oregon', 18, 1859), ('Kansas', 18, 1861), ('West Virginia', 19, 1863), ('Nevada', 19, 1864), ('Nebraska', 20, 1867), ('Colorado', 22, 1876), ('North Dakota', 26, 1889), ('South Dakota', 26, 1889), ('Montana', 26, 1889), ('Washington', 26, 1889), ('Idaho', 26, 1890), ('Wyoming', 26, 1890), ('Utah', 27, 1896), ('Oklahoma', 30, 1907), ('New Mexico', 31, 1912), ('Arizona', 31, 1912), ('Alaska', 43, 1959), ('Hawaii', 43, 1959);

INSERT INTO PRESIDENT VALUES ('Washington G', 1732, 7, 67, 'Federalist', 'Virginia'), 
('Adams J', 1735, 4, 90, 'Federalist', 'Massachusetts'), 
('Jefferson T', 1743, 8, 83, 'Demo-Rep', 'Virginia'), 
('Madison J', 1751, 8, 85, 'Demo-Rep', 'Virginia'), 
('Monroe J', 1758, 8, 73, 'Demo-Rep', 'Virginia'),
('Adams J Q', 1767, 4, 80, 'Demo-Rep', 'Massachusetts'),
('Jackson A', 1767, 8, 78, 'Democratic', 'South Carolina'),
('Van Buren M', 1782, 4, 79, 'Democratic', 'New York'),
('Harrison W H', 1773, 0, 68, 'Whig', 'Virginia'),
('Tyler J', 1790, 3, 71, 'Whig', 'Virginia'),
('Polk J K', 1795, 4, 53, 'Democratic', 'North Carolina'),
('Taylor Z', 1784, 1, 65, 'Whig', 'Virginia'),
('Fillmore M', 1800, 2, 74, 'Whig', 'New York'),
('Pierce F', 1804, 4, 64, 'Democratic', 'New Hampshire'),
('Buchanan J', 1791, 4, 77, 'Democratic', 'Pensylvania'),
('Lincoln A', 1809, 4, 56, 'Republican', 'Kentucky'),
('Johnson A', 1808, 3, 66, 'Democratic', 'North Carolina'),
('Grant U S', 1822, 8, 63, 'Republican', 'Ohio'),
('Hayes R B', 1822, 4, 70, 'Republican', 'Ohio'),
('Garfield J A', 1831, 0, 49, 'Republican', 'Ohio'),
('Arthur C A', 1830, 3, 56, 'Republican', 'Vermont'),
('Cleveland G', 1837, 8, 71, 'Democratic', 'New Jersey'),
('Harrison B', 1833, 4, 67, 'Republican', 'Ohio'),
('McKinley W', 1843, 4, 58, 'Republican', 'Ohio'),
('Roosevelt T', 1858, 7, 60, 'Republican', 'New York'),
('Taft W H', 1857, 4, 72, 'Republican', 'Ohio'),
('Wilson W', 1856, 8, 67, 'Democratic', 'Virginia'),
('Harding W G', 1865, 2, 57, 'Republican', 'Ohio'),
('Coolidge C', 1872, 5, 60, 'Republican', 'Vermont'),
('Hoover H C', 1874, 4, 90, 'Republican', 'Iowa'),
('Roosevelt F D', 1882, 12, 63, 'Democratic', 'New York'),
('Truman H S', 1884, 7, 88, 'Democratic', 'Missouri'),
('Eisenhower D D', 1890, 8, 79, 'Republican', 'Texas'),
('Kennedy J F', 1917, 2, 46, 'Democratic', 'Massachusetts'),
('Johnson L B', 1908, 5, 65, 'Democratic', 'Texas'),
('Nixon R M', 1913, 5, NULL, 'Republican', 'California'),
('Ford G R', 1913, 2, NULL, 'Republican', 'Nebraska'),
('Carter J E', 1924, 4, NULL, 'Democratic', 'Georgia'),
('Reagan R', 1911, 3, NULL, 'Republican', 'Illinois');

INSERT INTO PRES_MARRIAGE VALUES ('Washington G', 'Custis M D', 26, 27, 0, 1759),
('Adams J', 'Smith A', 28, 19, 5, 1764), ('Jefferson T', 'Skelton M W', 28, 23, 6, 1772),
('Madison J', 'Todd D D P', 43, 26, 0, 1794), ('Monroe J', 'Kortright E', 27, 17, 3, 1786),
('Adams J Q', 'Johnson L C', 30, 22, 4, 1797), ('Jackson A', 'Robards R D', 26, 26, 0, 1794),
('Van Buren M', 'Hoes H', 24, 23, 4, 1807), ('Harrison W H', 'Symmes A T', 22, 20, 10, 1795),
('Tyler J', 'Christian L', 23, 22, 8, 1813), ('Tyler J', 'Gardiner J', 54, 24, 7, 1844),
('Polk J K', 'Childress S', 28, 20, 0, 1824), ('Taylor Z', 'Smith M M', 25, 21, 6, 1810),
('Fillmore M', 'Powers A', 26, 27, 2, 1826), ('Fillmore M', 'McIntosh C C', 58, 44, 0, 1858),
('Pierce F', 'Appleton J M', 29, 28, 3, 1834), ('Lincoln A', 'Todd M', 33, 23, 4, 1842),
('Johnson A', 'McCardle E', 18, 16, 5, 1827), ('Grant U S', 'Dent J B', 26, 22, 4, 1848),
('Hayes R B', 'Webb L W', 30, 21, 8, 1852), ('Garfield J A', 'Rudolph L', 26, 26, 7, 1858),
('Arthur C A', 'Herndon E L', 29, 22, 3, 1859), ('Cleveland G', 'Folson F', 49, 21, 5, 1886),
('Harrison B', 'Scott C L', 20, 21, 2, 1853), ('Harrison B', 'Dimmick M S L', 62, 37, 1, 1896),
('McKinley W', 'Saxton I', 27, 23, 2, 1871), ('Roosevelt T', 'Lee A H', 22, 19, 1, 1880),
('Roosevelt T', 'Carow E K', 28, 25, 5, 1886), ('Taft W H', 'Herron H', 28, 25, 3, 1886),
('Wilson W', 'Axson E L', 28, 25, 3, 1885), ('Wilson W', 'Galt E B', 58, 43, 0, 1915),
('Harding W G', 'De Wolfe F K', 25, 30, 0, 1891), ('Coolidge C', 'Goodhue G A', 33, 26, 2, 1905),
('Hoover H C', 'Henry L', 24, 23, 2, 1899), ('Roosevelt F D', 'Roosevelt A E', 23, 20, 6, 1905),
('Truman H S', ' Wallace E V', 35, 34, 1, 1919), ('Eisenhower D D', 'Doud G', 25, 19, 2, 1916),
('Kennedy J F', 'Bouvier J L', 36, 24, 3, 1953), ('Johnson L B', 'Taylor C A', 26, 21, 2, 1934),
('Nixon R M', 'Ryan T C', 27, 28, 2, 1940), ('Ford G R', 'Warren E B', 35, 30, 4, 1948),
('Carter J E', 'Smith R', 21, 18, 4, 1946), ('Reagan R', 'Wyman J', 28, 25, 2, 1940),
('Reagan R', 'Davis N', 41, 28, 2, 1952);

INSERT INTO PRES_HOBBY VALUES ('Adams J Q', 'Billiards'), ('Adams J Q', 'Swimming'),
('Adams J Q', 'Walking'), ('Arthur C A', 'Fishing'), ('Cleveland G', 'Fishing'), 
('Coolidge C', 'Fishing'), ('Coolidge C', 'Golf'), ('Coolidge C', 'Indian Clubs'),
('Coolidge C', 'Mechanical Horse'), ('Coolidge C', 'Pitching Hay'), ('Eisenhower D D', 'Bridge'),
('Eisenhower D D', 'Golf'), ('Eisenhower D D', 'Hunting'), ('Eisenhower D D', 'Painting '),
('Eisenhower D D', 'Fishing'), ('Garfield J A', 'Billiards'), ('Harding W G', 'Golf'), 
('Harding W G', 'Poker'), ('Harding W G', 'Riding'), ('Harrison B', 'Hunting'),
('Hayes R B', 'Croquet'), ('Hayes R B', 'Driving'), ('Hayes R B', 'Shooting'),
('Hoover H C', 'Fishing'), ('Hoover H C', 'Medicine Ball'), ('Jackson A', 'Riding'),
('Jefferson T', 'Fishing'), ('Jefferson T', 'Riding'), ('Johnson L B', 'Riding'),
('Kennedy J F', 'Sailing'), ('Kennedy J F', 'Swimming'), ('Kennedy J F', 'Touch Football'),
('Lincoln A', 'Walking'), ('McKinley W', 'Riding'), ('McKinley W', 'Swimming'), 
('McKinley W', 'Walking'), ('Nixon R M', 'Golf'), ('Roosevelt F D', 'Fishing'),
('Roosevelt F D', 'Sailing'), ('Roosevelt F D', 'Swimming'), ('Roosevelt T', 'Boxing'),
('Roosevelt T', 'Hunting'), ('Roosevelt T', 'Jujitsu'), ('Roosevelt T', 'Riding'), 
('Roosevelt T', 'Shooting'), ('Roosevelt T', 'Tennis'), ('Roosevelt T', 'Wrestling'),
('Taft W H', 'Golf'), ('Taft W H', 'Riding'), ('Taylor Z', 'Riding'),
('Truman H S', 'Fishing'), ('Truman H S', 'Poker'), ('Truman H S', 'Walking'),
('Van Buren M', 'Riding'), ('Washington G', 'Fishing'), ('Washington G', 'Riding'),
('Wilson W', 'Golf'), ('Wilson W', 'Riding'), ('Wilson W', 'Walking');

INSERT INTO ADMINISTRATION VALUES (1, 'Washington G', 1789), (2, 'Washington G', 1793), (3, 'Adams J', 1797), (4, 'Jefferson T', 1801), (5, 'Jefferson T', 1805), (6, 'Madison J', 1809),
(7, 'Madison J', 1813), (8, 'Monroe J', 1817), (9, 'Monroe J', 1821), (10, 'Adams J Q', 1825), 
(11, 'Jackson A', 1829), (12, 'Jackson A', 1833), (13, 'Van Buren M', 1837), 
(14, 'Harrison W H', 1841), (14, 'Tyler J', 1841), (15, 'Polk J K', 1845), (16, 'Taylor Z', 1849), 
(16, 'Fillmore M', 1850), (17, 'Pierce F', 1853), (18, 'Buchanan J', 1857), (19, 'Lincoln A', 1861), (20, 'Lincoln A', 1865), (20, 'Johnson A', 1865), (21, 'Grant U S', 1869), (22, 'Grant U S', 1873), (23, 'Hayes R B', 1877), (24, 'Garfield J A', 1881), (24, 'Arthur C A', 1881), 
(25, 'Cleveland G', 1885), (26, 'Harrison B', 1889), (27, 'Cleveland G', 1893), 
(28, 'McKinley W', 1897), (29, 'McKinley W', 1901), (29, 'Roosevelt T', 1901), 
(30, 'Roosevelt T', 1905), (31, 'Taft W H', 1909), (32, 'Wilson W', 1913), (33, 'Wilson W', 1917),
(34, 'Harding W G', 1921), (34, 'Coolidge C', 1923), (35, 'Coolidge C', 1925),
(36, 'Hoover H C', 1929), (37, 'Roosevelt F D', 1933), (38, 'Roosevelt F D', 1937), 
(39, 'Roosevelt F D', 1941), (40, 'Roosevelt F D', 1945), (40, 'Truman H S', 1945), 
(41, 'Truman H S', 1949), (42, 'Eisenhower D D', 1953), (43, 'Eisenhower D D', 1957),
(44, 'Kennedy J F', 1961), (44, 'Johnson L B', 1963), (45, 'Johnson L B', 1965), 
(46, 'Nixon R M', 1969), (47, 'Nixon R M', 1973), (47, 'Ford G R', 1974),
(48, 'Carter J E', 1977), (49, 'Reagan R', 1981);


INSERT INTO ADMIN_PR_VP VALUES (1, 'Washington G', 'Adams J'), 
(2, 'Washington G', 'Adams J'), (3, 'Adams J', 'Jefferson T'), (4, 'Jefferson T', 'Burr A'), 
(5, 'Jefferson T', 'Clinton G'), (6, 'Madison J', 'Clinton G'), (7, 'Madison J', 'Gerry E'),
(8, 'Monroe J', 'Tompkins D'), (9, 'Monroe J', 'Tompkins D'), (10, 'Adams J Q', 'Calhoun J'),
(11, 'Jackson A', 'Calhoun J'), (12, 'Jackson A', 'Van Buren M'), (13, 'Van Buren M', 'Johnson R M'),
(14, 'Harrison W H', 'Tyler J'), (15, 'Polk J K', 'Dallas G M'), (16, 'Taylor Z', 'Fillmore M'),
(17, 'Pierce F', 'De Vane King W R'), (18, 'Buchanan J', 'Breckinridge J C'), 
(19, 'Lincoln A', 'Hamlin H'), (20, 'Lincoln A', 'Johnson A'), (21, 'Grant U S', 'Colfax S'),
(22, 'Grant U S', 'Wilson H'), (23, 'Hayes R B', 'Wheeler W'), (24, 'Garfield J A', 'Arthur C A'),
(25, 'Cleveland G', 'Hendricks T A'), (26, 'Harrison B', 'Morton L P'), 
(27, 'Cleveland G', 'Stevenson A E'), (28, 'McKinley W', 'Hobart G A'), 
(29, 'McKinley W', 'Roosevelt T'), (30, 'Roosevelt T', 'Fairbanks C W'), 
(31, 'Taft W H', 'Sherman J S'), (32, 'Wilson W', 'Marshall T R'), (33, 'Wilson W', 'Marshall T R'), (34, 'Harding W G', 'Coolidge C'), (35, 'Coolidge C', 'Dawes C G'), (36, 'Hoover H C', 'Curtis C'),
(37, 'Roosevelt F D', 'Garner J N'), (38, 'Roosevelt F D', 'Garner J N'), 
(39, 'Roosevelt F D', 'Wallace H A'), (40, 'Roosevelt F D', 'Truman H S'),
(41, 'Truman H S', 'Barkley A W'), (42, 'Eisenhower D D', 'Nixon R M'),
(43, 'Eisenhower D D', 'Nixon R M'), (44, 'Kennedy J F', 'Johnson L B'),
(45, 'Johnson L B', 'Humphrey H H'), (46, 'Nixon R M', 'Agnew S T'),
(47, 'Nixon R M', 'Agnew S T'), (47, 'Nixon R M', 'Ford G R'), (47, 'Ford G R', 'Rockefeller N A'),
(48, 'Carter J E', 'Mondale W F'), (49, 'Reagan R', 'Bush G');


INSERT INTO ELECTION VALUES (1789, 'Washington G', 69, 'W'),
(1789, 'Adams J', 34, 'L'), (1789, 'Jay J', 9, 'L'), (1789, 'Harrison R H', 6, 'L'), 
(1789, 'Rutledge J', 6, 'L'), (1789, 'Hancock J', 4, 'L'), (1789, 'Clinton G', 3, 'L'), 
(1789, 'Huntington S', 2, 'L'), (1789, 'Milton J', 2, 'L'), (1789, 'Armstrong J', 1, 'L'), 
(1789, 'Lincoln B', 1, 'L'), (1789, 'Telfair E', 1, 'L'), (1792, 'Washington G', 132, 'W'), 
(1792, 'Adams J', 77, 'L'), (1792, 'Clinton G', 50, 'L'), (1792, 'Jefferson T', 4, 'L'), 
(1792, 'Burr A', 1, 'L'), (1796, 'Adams J', 71, 'W'), (1796, 'Jefferson T', 68, 'L'), 
(1796, 'Pinckney T', 59, 'L'), (1796, 'Burr A', 30, 'L'), (1796, 'Adams S', 15, 'L'),
(1796, 'Ellsworth O', 11, 'L'), (1796, 'Clinton G', 7, 'L'), (1796, 'Jay J', 5, 'L'),
(1796, 'Iredell J', 3, 'L'), (1796, 'Henry J', 2, 'L'), (1796, 'Johnson S', 2, 'L'),
(1796, 'Washington G', 2, 'L'), (1796, 'Pinckney C C', 1, 'L'), (1800, 'Jefferson T', 73, 'W'), 
(1800, 'Burr A', 73, 'L'), (1800, 'Adams J', 65, 'L'), (1800, 'Pinckney C C', 64, 'L'),
(1800, 'Jay J', 1, 'L'), (1804, 'Jefferson T', 162, 'W'), (1804, 'Pinckney C C', 14, 'L'),
(1808, 'Madison J', 122, 'W'), (1808, 'Pinckney C C', 47, 'L'), (1808, 'Clinton G', 6, 'L'),
(1812, 'Madison J', 128, 'W'), (1812, 'Clinton G', 89, 'L'), (1816, 'Monroe J', 183, 'W'),
(1816, 'King R', 34, 'L'), (1820, 'Monroe J', 231, 'W'), (1820, 'Adams J Q', 1, 'L'),
(1824, 'Adams J Q', 84, 'W'), (1824, 'Jackson A', 99, 'L'), (1824, 'Crawford W H', 41, 'L'),
(1824, 'Clay H', 37, 'L'), (1828, 'Jackson A', 178, 'W'), (1828, 'Adams J', 83, 'L'),
(1832, 'Jackson A', 219, 'W'), (1832, 'Clay H', 49, 'L'), (1832, 'Floyd J', 11, 'L'),
(1832, 'Wirt W', 7, 'L'), (1836, 'Van Buren M', 170, 'W'), (1836, 'Harrison W H', 73, 'L'),
(1836, 'White H L', 26, 'L'), (1836, 'Webster D', 14, 'L'), (1836, 'Mangum W P', 11, 'L'),
(1840, 'Harrison W H', 234, 'W'), (1840, 'Van Buren M', 60, 'L'), (1844, 'Polk J K', 170, 'W'),
(1844, 'Clay H', 105, 'L'), (1848, 'Taylor Z', 163, 'W'), (1848, 'Cass L', 127, 'L'),
(1852, 'Pierce F', 254, 'W'), (1852, 'Scott, W', 42, 'L'), (1856, 'Buchanan J', 174, 'W'),
(1856, 'Fremont J C', 114, 'L'), (1856, 'Fillmore M', 8, 'L'), (1860, 'Lincoln A', 180, 'W'),
(1860, 'Breckinridge J', 72, 'L'), (1860, 'Bell J', 39, 'L'), (1860, 'Douglas S', 12, 'L'),
(1864, 'Lincoln A', 212, 'W'), (1864, 'McClellan G B', 21, 'L'), (1868, 'Grant U S', 214, 'W'),
(1868, 'Seymour H', 80, 'L'), (1872, 'Grant U S', 286, 'W'), (1872, 'Hendricks T A', 42, 'L'),
(1872, 'Brown B G', 18, 'L'), (1872, 'Jenkins C J', 2, 'L'), (1872, 'Davis D', 1, 'L'),
(1876, 'Hayes R B', 185, 'W'), (1876, 'Tilden S J', 184, 'L'), (1880, 'Garfield J A', 214, 'W'),
(1880, 'Hancock W S', 155, 'L'), (1884, 'Cleveland G', 219, 'W'), (1884, 'Blaine J G', 182, 'L'),
(1888, 'Harrison B', 233, 'W'), (1888, 'Cleveland G', 168, 'L'), (1892, 'Cleveland G', 277, 'W'),
(1892, 'Harrison B', 145, 'L'), (1892, 'Weaver J B', 22, 'L'), (1896, 'McKinley W', 271, 'W'),
(1896, 'Bryan W J', 176, 'L'), (1900, 'McKinley W', 292, 'W'), (1900, 'Bryan W J', 155, 'L'),
(1904, 'Roosevelt T', 336, 'W'), (1904, 'Parker A B', 140, 'L'), (1908, 'Taft W H', 321, 'W'),
(1908, 'Bryan W J', 162, 'L'), (1912, 'Wilson W', 435, 'W'), (1912, 'Roosevelt T', 88, 'L'),
(1912, 'Taft W H', 8, 'L'), (1916, 'Wilson W', 277, 'W'), (1916, 'Hughes C E', 254, 'L'), 
(1920, 'Harding W G', 404, 'W'), (1920, 'Cox W W', 127, 'L'), (1924, 'Coolidge C', 382, 'W'),
(1924, 'Davis J W', 136, 'L'), (1924, 'La Follette R M', 13, 'L'), (1928, 'Hoover H C', 444, 'W'),
(1928, 'Smith A E', 87, 'L'), (1932, 'Roosevelt F D', 472, 'W'), (1932, 'Hoover H C', 59, 'L'), 
(1936, 'Roosevelt F D', 523, 'W'), (1936, 'Landon A M', 8, 'L'), (1940, 'Roosevelt F D', 449, 'W'),
(1940, 'Wilkie W L', 82, 'L'), (1944, 'Roosevelt F D', 432, 'W'), (1944, 'Dewey T E', 99, 'L'),
(1948, 'Truman H S', 303, 'W'), (1948, 'Dewey T E', 189, 'L'), (1948, 'Thurmond J S', 39, 'L'),
(1952, 'Eisenhower D D', 442, 'W'), (1952, 'Stevenson A', 89, 'L'), 
(1956, 'Eisenhower D D', 457, 'W'), (1956, 'Stevenson A', 73, 'L'), (1956, 'Jones W B', 1, 'L'),
(1960, 'Kennedy J F', 303, 'W'), (1960, 'Nixon R M', 219, 'L'), (1960, 'Byrd', 15, 'L'),
(1964, 'Johnson L B', 486, 'W'), (1964, 'Goldwater B', 52, 'L'), (1968, 'Nixon R M', 301, 'W'),
(1968, 'Humphrey H H', 191, 'L'), (1968, 'Wallace G C', 46, 'L'), (1972, 'Nixon R M', 520, 'W'),
(1972, 'McGovern G S', 17, 'L'), (1972, 'Hospers J', 1, 'L'), (1976, 'Carter J E', 297, 'W'),
(1976, 'Ford G R', 240, 'L'), (1980, 'Reagan R', 489, 'W'), (1980, 'Carter J', 49, 'L');
