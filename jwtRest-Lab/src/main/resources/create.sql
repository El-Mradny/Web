drop table BLOGCOMMENTREPLAY if exists;
drop table BLOGLIKE if exists;
drop table BLOGCOMMENT if exists;
drop table BLOG if exists;
drop table STORE if exists;
drop table SUPPLIER if exists;
drop table RATING if exists;
drop table WISHLIST if exists;
drop table COMPAER if exists;
drop table CARTITEM if exists;
drop table CART if exists;
drop table SHIPPING if exists;
drop table PAYMENT if exists;
drop table SALE if exists;
drop table PACKAGEPRODUCT if exists;
drop table PACKAGE if exists;
drop table PRODUCT if exists;
drop table FEEDBACK if exists;
drop table PROMOTIONEMAIL if exists;
drop table DISCOUNT if exists;
drop table APPLICATION if exists;
drop table FAQ if exists;
drop table CONTACT if exists;
drop table USER if exists;
--meeee
-- ID field value will match jwtUser username 1-1
CREATE TABLE USER
(
    ID    VARCHAR(255) not null primary key,
    FIRSTNAME  VARCHAR(255),
    ROLE  VARCHAR(255) not null,
    PICTURE VARCHAR(255),
    GENDER VARCHAR(10),
    LASTNAME VARCHAR(255),
    BIRTHDATE TIMESTAMP,
    CREATEACCOUNTDATE TIMESTAMP
);

insert into USER (ID, FIRSTNAME, ROLE, PICTURE, GENDER, LASTNAME, BIRTHDATE, CREATEACCOUNTDATE) VALUES ('joe@joe.com', 'Joe', 'Customer', 'http://clone.myfuneralhomesite.com/wp-content/uploads/sites/30/2015/10/sample-person.jpg','Male','jack',date '1998-03-16',date '2021-03-15');
insert into USER (ID, FIRSTNAME, ROLE, PICTURE, GENDER, LASTNAME,BIRTHDATE, CREATEACCOUNTDATE) VALUES ('ann@ann.com', 'Ann', 'Customer', '/images/UsersPictureann@ann.com.jpg','Female','john',date '1998-01-27',date '2021-01-15');
insert into USER (ID, FIRSTNAME, ROLE, PICTURE, GENDER, LASTNAME, BIRTHDATE, CREATEACCOUNTDATE) VALUES ('fred@fred.com', 'Fred', 'Support', '/images/UsersPictureDefault.png','Male','joe',date '2022-01-10',date '2021-03-15');
insert into USER (ID, FIRSTNAME, ROLE, PICTURE, GENDER, LASTNAME, BIRTHDATE, CREATEACCOUNTDATE) VALUES ('admin@admin.com', 'Admin', 'Admin', '/images/UsersPictureDefault.png','Female','',date '2021-03-15',date '2021-03-15');
insert into USER (ID, FIRSTNAME, ROLE, PICTURE, GENDER, LASTNAME, BIRTHDATE, CREATEACCOUNTDATE) VALUES ('jack@jack.com', 'Jack', 'Supplier', '/images/UsersPictureDefault.png','Male','zayan',date '2021-03-15',date '2021-03-15');
insert into USER (ID, FIRSTNAME, ROLE, PICTURE, GENDER, LASTNAME, BIRTHDATE, CREATEACCOUNTDATE) VALUES ('abdullah@abdullah.com', 'abdullah', 'Customer', 'https://www.shaungalanos.com/wp-content/uploads/2020/10/mr-nice-guy-1024x768.jpg','Male','Ail',date '1997-01-25',date '2021-03-15');
insert into USER (ID, FIRSTNAME, ROLE, PICTURE, GENDER, LASTNAME, BIRTHDATE, CREATEACCOUNTDATE) VALUES ('jackson@jackson.com', 'jackson', 'Customer', '/images/UsersPictureDefault.png','Male','john',date '1995-03-01',date '2021-03-15');
insert into USER (ID, FIRSTNAME, ROLE, PICTURE, GENDER, LASTNAME, BIRTHDATE, CREATEACCOUNTDATE) VALUES ('sara@sara.com', 'Sara', 'Customer', 'https://i.pinimg.com/originals/bb/ee/e1/bbeee115522332771a871c4efa6585fb.jpg','Female','ahmad',date '1996-07-10',date '2021-03-15');
insert into USER (ID, FIRSTNAME, ROLE, PICTURE, GENDER, LASTNAME, BIRTHDATE, CREATEACCOUNTDATE) VALUES ('meena@meena.com', 'meena', 'Customer', '/images/UsersPictureDefault.png','Female','ikram',date '1996-07-10',date '2021-03-15');


CREATE TABLE PRODUCT
(
    ID    BIGINT       not null primary key GENERATED ALWAYS AS IDENTITY (START WITH 1),
    NAME  VARCHAR(255) not null,
    PRICE BIGINT       not null,
    SUNLIGHT VARCHAR(255) ,
    WATER VARCHAR(255) ,
    TEMPERATURE VARCHAR(255) ,
    MEASURES VARCHAR(255) ,
    CATEGORY VARCHAR(255) not null,
    QUANTITY BIGINT not null,
    DATE TIMESTAMP,
    IMAGE VARCHAR(255) ,
    DESCRIPTION VARCHAR(400),
    SOLDCOUNT BIGINT
);

insert into PRODUCT (name, price, sunlight, water, temperature, measures, category, quantity, date, image, description ,soldcount)
VALUES ('ALOE VERA PLANT',100,'Bright direct or indirect light; the kitchen windowsill is a favorite spot','Thoroughly, but only every 2-4 weeks',
        'Ranges between 65 and 90°F','12"H x 4"D ','Indoor',10,date '2021-01-01',
        'https://www.plants.com/images/177111_20210218-1613669870200.webp',
        'Aloe vera is a succulent plant species of the genus Aloe. An evergreen perennial, it originates from the Arabian Peninsula, but grows wild in tropical, semi-tropical, and arid climates around the world. It is cultivated for agricultural and medicinal uses.',547);
insert into PRODUCT(name, price, sunlight, water, temperature, measures, category, quantity, date, image, description,soldcount)
VALUES ('PHALAENOPSIS ORCHID',150,'Soft indirect sunlight (Fun fact: they grow naturally in shady trees!)',
        'Requires just 3 ice cubes a week','65-85°F; do not place near chilly drafts or expose to temps below 55°F','20-30”H x 5” D','Indoor',100,date '2021-04-05',
        'https://www.plants.com/images/157690-Large-Phalaenopsis_Orchid_Blue_L2_20210310-1615393728480.webp','Blue orchids, mostly found in supermarkets and grocery stores, are eye-catchers. These Phalaenopsis orchids display a deep, rich blue that is so uncommon in nature. Even people who are not plant-lovers slow their pace when walking by the mystical, jaw-dropping display, and it’s almost as if you can read their minds.'
       ,30);
insert into PRODUCT(name, price, sunlight, water, temperature, measures, category, quantity, date, image, description,soldcount)
VALUES ('FIDDLE LEAF FIG',80,'Set it by a bright & sunny window for consistent light','Water thoroughly but only when soil is dry to the touch','Warm, tropical vibes of 65-90°F','16-18"H x 6"D','Indoor',200,date '2021-01-20','https://www.plants.com/images/177106%20(1)_20210324-1616617998104.webp','The fiddle-leaf fig (Ficus lyrata) is a popular indoor specimen plant featuring very large, heavily veined, violin-shaped leaves that grow upright. These plants are native to tropical parts of Africa, where they thrive in very warm and wet conditions.'
       ,50);
insert into PRODUCT(name, price, sunlight, water, temperature, measures, category, quantity, date, image, description,soldcount)
VALUES ('BABY RUBBER PLANT',244,'Medium to bright light; no direct sunlight','When top 1" of soil is dry to touch; leaves are succulent in nature and can tolerate less watering','Prefers temperatures of 60-80° F','6-8"H x 7.5"D','Indoor',323,date '2021-03-15','https://www.plants.com/images/177047m_20200929-1601416207077.webp','Peperomia obtusifolia, the baby rubberplant or pepper face, is a species of flowering plant in the family Piperaceae, native to Florida, Mexico and the Caribbean. The specific epithet obtusifolia means "blunt-leaved". The plant has gained the Royal Horticultural Societys Award of Garden Merit.',300);

insert into PRODUCT(name, price, sunlight, water, temperature, measures, category, quantity, date, image, description,soldcount)
VALUES ('BROMELIAD ANTONIO',90,'Bright, indirect light is best','Soil should be slightly moist; let the upper soil layer become dry between watering; do not water into the cup of the bloom',
        'Warmer room temperatures (70-80°F) and high humidity encourage good growth','14-18"H potted','Indoor',400,date '2021-05-24','https://www.plants.com/images/177078_20210310-1615399509400.webp',
        'The Antonio Pink is an outstanding Tillandsia Bromeliad. It is sought after for its beautiful pink on light green coloring in its bloom.The blooms can last four months or more.',200);

insert into PRODUCT(name, price, sunlight, water, temperature, measures, category, quantity, date, image, description,soldcount)
VALUES ('GOLDEN BARREL CACTUS',98,'Handles indirect sunlight, but thrives in full sun','Water sparingly; plant in a very well-draining soil or potting mix and water infrequently',
        'Favors warm, dry conditions, but can tolerate temperatures down to 40°F','8-10"H x 6"D','Indoor',200,date '2021-05-17','https://www.plants.com/images/177103%20(1)_20210324-1616618951134.webp',
        'Echinocactus grusonii, popularly known as the golden barrel cactus, golden ball or mother-in-law''s cushion, is a well known species of cactus, and is endemic to east-central Mexico.',250);

insert into PRODUCT(name, price, sunlight, water, temperature, measures, category, quantity, date, image, description,soldcount)
VALUES ('SNAKE PLANT',244,'Low light/partial shade, though ok in moderate indirect light','Drought tolerant, water only when soil is dry to touch',
        '65-90°F','22-23 "H x 6"D','Indoor',323,date '2021-03-01','https://www.plants.com/images/157646mgp_20201029-1604001554366.webp','snake plant is called Dracaena trifasciata is a species of flowering plant in the family Asparagaceae, native to tropical West Africa from Nigeria east to the Congo. It is most commonly known as the snake plant, Saint George''s sword, mother-in-law''s tongue, and viper''s bowstring hemp, among other names.',323);

insert into PRODUCT(name, price, sunlight, water, temperature, measures, category, quantity, date, image, description,soldcount)
VALUES ('MONEY TREE',300,'bright','Do it thoroughly once a week, and let the soil dry between waterings','Warm, tropical vibes of 65-90°F','38”H x 9.5”D','Outdoor',0,date '2021-01-25','https://www.plants.com/images/1567018001734_20190828-1567018004621.webp','Also called Pachira aquatica is a tropical wetland tree in the mallow family Malvaceae, native to Central and South America where it grows in swamps.',624);

insert into PRODUCT(name, price, sunlight, water, temperature, measures, category, quantity, date, image, description,soldcount)
VALUES ('MASS CANE',244,'Medium-Bright','Water when top ½" of soil is dry to the touch','Medium Bright, tropical vibes of 65-90F','35-38"H x 9.5"D','Outdoor',323,date '2021-02-10','https://www.plants.com/images/1566418581157_20190821-1566418581931.webp','The common name for a Mass Cane is Corn Plant, because the leaves on the plant are varigated and slightly resemble the foliage of corn. The scientific name for the plant is Dracaena Massangeana and is native to West Africa, Tanzania, & Zambia.',159);

insert into PRODUCT(name, price, sunlight, water, temperature, measures, category, quantity, date, image, description,soldcount)
VALUES ('YUCCA CANE FLOOR PLANT',444,'Medium-Bright','Water when top ½" of soil is dry to the touch','Medium Bright, tropical vibes of 65-90F',
        '35-38"H x 9.5"D','Outdoor',323,date '2021-02-10','https://www.plants.com/images/177109%20(1)_20210324-1616617371284.webp',
        'The common name for a Mass Cane is Corn Plant, because the leaves on the plant are varigated and slightly resemble the foliage of corn. The scientific name for the plant is Dracaena Massangeana and is native to West Africa, Tanzania, & Zambia.',690);

insert into PRODUCT(name, price, sunlight, water, temperature, measures, category, quantity, date, image, description,soldcount)
VALUES ('PARLOR PALM PLANT',269,'Thrives in bright, indirect light','In general, weekly; water more often during growing season',
        '65-90°F',
        '8-11"H 4"D','Outdoor',0,date '2021-04-02','https://www.plants.com/images/157645sgp_20201029-1604001597813.webp',
        'Native to the rainforests of Southern Mexico and Guatemala, the Neanthe Bella Palm (Chamaedorea elegans) or Parlor Palm is known for its air purifying properties and ability to adapt to lower light conditions.',500);

insert into PRODUCT(name, price, sunlight, water, temperature, measures, category, quantity, date, image, description,soldcount)
VALUES ('DIEFFENBACHIA',244,'Medium Bright','Once a week, when top soil is dry','65 – 90°F','35-38"H x 9.5"D','Outdoor',323,date '2021-05-29','https://www.plants.com/images/1570134987645_20191003-1570134989807.webp','Dieffenbachia is a genus of tropical flowering plants in the family Araceae. It is native to the New World Tropics from Mexico and the West Indies south to Argentina. Some species are widely cultivated as ornamental plants, especially as houseplants, and have become naturalized on a few tropical islands.',546);

insert into PRODUCT(name, price, sunlight, water, temperature, measures, category, quantity, date, image, description,soldcount)
VALUES ('BROMELIAD GUZMANIA',244,'Low Bright','Soil should be slightly moist; let the upper soil layer become dry between watering; do not water into the cup of the bloom','room temperatures (70-80°F) and high humidity encourage good growth','35-38"H x 9.5"D',
        'Outdoor',0,date '2020-12-05','https://www.plants.com/images/177077_20210310-1615399468154.webp','Guzmania is a genus of over 120 species of flowering plants in the botanical family Bromeliaceae, subfamily Tillandsioideae. They are mainly stemless, evergreen, epiphytic perennials native to Florida, the West Indies, southern Mexico, Central America, and northern and western South America.',625);

insert into PRODUCT(name, price, sunlight, water, temperature, measures, category, quantity, date, image, description,soldcount)
VALUES ('SAGO PALM',244,'Low Bright','Some drought tolerance, but prefers a moderate amount of moisture in the soil; water whenever soil feels dry to the touch, making sure never to overwater to the point of soggy soil; reduce watering slightly in the winter when it’s not actively growing','Measures overall approximately 14-13"H potted','18-24"H x 10"D','Outdoor',323,date '2021-03-16','https://www.plants.com/images/177107l_20210406-1617721441084.webp','Cycas revoluta, is a species of gymnosperm in the family Cycadaceae, native to southern Japan including the Ryukyu Islands. It is one of several species used for the production of sago, as well as an ornamental plant. The sago cycad can be distinguished by a thick coat of fibers on its trunk.',456);

insert into PRODUCT(name, price, sunlight, water, temperature, measures, category, quantity, date, image, description,soldcount)
VALUES ('PLANT TABLE',450,'','','','Medium','Plant accessories',0,date '2021-04-01','https://i.pinimg.com/564x/21/8f/12/218f124470f64a67d332b4e027971ac5.jpg','macrame planter for small pot, indoor vertical garden, macrame plant holder, spiral pot suspension, houseplant decor, cozy rustic home art',258);

insert into PRODUCT(name, price, sunlight, water, temperature, measures, category, quantity, date, image, description,soldcount)
VALUES ('BOX POTS',100,'','','','Medium','Plant accessories',123,date '2021-05-08','https://i.pinimg.com/564x/f1/4e/f2/f14ef2ea420993c01ebeb144a59fc0a5.jpg','Hanging Flower black color Pots that give an classic look that everyone need',123);

insert into PRODUCT(name, price, sunlight, water, temperature, measures, category, quantity, date, image, description,soldcount)
VALUES ('COPPER PLATED MISTER',50,'','','','Medium','Plant accessories',323,date '2020-03-14','https://gardenornamentsandaccessories.com/wp-content/webp-express/webp-images/doc-root/wp-content/uploads/2018/12/Esschert-Design-TG236-Mister-Copper-B079322D72-510x510.jpg.webp','This metal plant mister looks beautiful almost anywhere, and will do a fantastic job of keeping your orchids moist and fed, of keeping proper humidity around bonsai trees, and can even be used to keep mosses and terrariums happy. Some folks even use these to spritz succulents and water other indoor plants.',154);

insert into PRODUCT(name, price, sunlight, water, temperature, measures, category, quantity, date, image, description,soldcount)
VALUES ('JAPANESE CUTTLE-FISH HOE',75,'','','','Medium','Plant accessories',80,date '2021-05-15','https://cdn.shopify.com/s/files/1/0596/9309/products/Japanese_Cuttle_Fish_Hoe__71979.jpeg?v=1568929510','This Cuttle-Fish Hoe will soon be one of your favorite gardening tools. One-handed cultivating, aeration, weeding and small root chopping are just a few uses the Cuttle-Fish hoe is great at.
The Cuttle Fish hoe is a solid one-piece forged Japanese steel and fitted with an Oak hardwood handle for years of gardening pleasure.',357);

insert into PRODUCT(name, price, sunlight, water, temperature, measures, category, quantity, date, image, description,soldcount)
VALUES ('DEWIT - PLANTING TROWEL',55,'','','','Medium','Plant accessories',200,date '2021-03-27',
        'https://cdn.shopify.com/s/files/1/0039/7780/5924/products/3000-trowel-1_580x.jpg?v=1593800496',
        'its high quality tempered steel it will hold a very sharp edge making it easy to dig with one hand. The blade is fully sharpened.',456);

insert into PRODUCT(name, price, sunlight, water, temperature, measures, category, quantity, date, image, description,soldcount)
VALUES ('KOKEDAMA',75,'','','','Small','Plant accessories',100,date '2021-03-30',
        'https://www.plants.com/images/157638l_20201120-1605903335286.webp',
        'its high quality tempered steel it will hold a very sharp edge making it easy to dig with one hand. The blade is fully sharpened.',546);

insert into PRODUCT(name, price, sunlight, water, temperature, measures, category, quantity, date, image, description,soldcount)
VALUES ('STRING OF PEARLS HANGING',80,'','','','Medium','Plant accessories',88,date '2021-04-14',
        'https://www.plants.com/images/177041phiLbxL_20200428-1588109820989.webp',
        'its high quality tempered steel it will hold a very sharp edge making it easy to dig with one hand. The blade is fully sharpened.',254);



CREATE TABLE PACKAGE
(
    ID BIGINT not null primary key GENERATED ALWAYS AS IDENTITY (START WITH 200),
    NAME      VARCHAR(255),
    PRICE     DOUBLE,
    STARTDATE     TIMESTAMP,
    ENDDATE       TIMESTAMP,
    PUBLISH VARCHAR(255),
    QTY       BIGINT
);
insert into PACKAGE (NAME, PRICE,STARTDATE,ENDDATE,PUBLISH,QTY)
VALUES ('Lover', 200, date '2021-03-01', date '2021-03-03','Not Published',3);

insert into PACKAGE (NAME, PRICE,STARTDATE,ENDDATE,PUBLISH,QTY)
VALUES ('Green', 200, date '2021-03-01', date '2021-04-15','Published',3);

insert into PACKAGE (NAME, PRICE,STARTDATE,ENDDATE,PUBLISH,QTY)
VALUES ('Home Care', 200, date '2021-05-30', date '2021-06-15','Published',3);

insert into PACKAGE (NAME, PRICE,STARTDATE,ENDDATE,PUBLISH,QTY)
VALUES ('Giving Green', 150, date '2021-05-01', date '2021-09-17','Published',2);

insert into PACKAGE (NAME, PRICE,STARTDATE,ENDDATE,PUBLISH,QTY)
VALUES ('Peace', 150, date '2021-05-01', date '2021-10-02','Published',2);

insert into PACKAGE (NAME, PRICE,STARTDATE,ENDDATE,PUBLISH,QTY)
VALUES ('Inside Peace', 150, date '2021-10-01', date '2021-10-04','Not Published',2);



CREATE TABLE SHIPPING
(
    ID  BIGINT   not null primary key GENERATED ALWAYS AS IDENTITY (START WITH 1),
    USERID VARCHAR(255) not null REFERENCES USER (ID),
    COUNTRY VARCHAR(255),
    CITY VARCHAR(255),
    POBOX BIGINT,
    ADDRESS VARCHAR(355),
    STREETNUM BIGINT,
    EMAIL VARCHAR(255),
    PHONENUMBER BIGINT,
    SHIPPINGMETHOD VARCHAR(255),
    LONGITUDE VARCHAR(500),
    LATITUDE VARCHAR(500),
    NAME VARCHAR(255)
);

INSERT INTO SHIPPING(USERID, COUNTRY, CITY, POBOX, ADDRESS, STREETNUM, EMAIL, PHONENUMBER, SHIPPINGMETHOD,LONGITUDE,LATITUDE,NAME)
VALUES ('joe@joe.com','Qatar','Al-Wakrah',1111,'Nr Jaidah Flyover',2345,'joe_23@hotmail.com',66874525,'Express Shipping','51.532688950838725','25.282800528312546','joe');

INSERT INTO SHIPPING(USERID, COUNTRY, CITY, POBOX, ADDRESS, STREETNUM, EMAIL, PHONENUMBER, SHIPPINGMETHOD,LONGITUDE,LATITUDE,NAME)
VALUES ('ann@ann.com','Qatar','Doha',6771,'Doha street',2855,'ann_236@hotmail.com',66887744,'Standard Shipping','51.539435269063986','25.2814024106727','ann');

INSERT INTO SHIPPING(USERID, COUNTRY, CITY, POBOX, ADDRESS, STREETNUM, EMAIL, PHONENUMBER, SHIPPINGMETHOD,LONGITUDE,LATITUDE,NAME)
VALUES ('sara@sara.com','Qatar','Al Rayyan',8524,'Rayyan street',7845,'sara333@hotmail.com',88541256,'Express Shipping','51.54163758992678','25.284671906494346','sara');

INSERT INTO SHIPPING(USERID, COUNTRY, CITY, POBOX, ADDRESS, STREETNUM, EMAIL, PHONENUMBER, SHIPPINGMETHOD,LONGITUDE,LATITUDE,NAME)
VALUES ('abdullah@abdullah.com','Qatar','Al Khor',9528,'Khor street',1426,'abdullah36@hotmail.com',55693258,'Standard Shipping','51.54294816862135','25.287083128643307','abdullah');

CREATE TABLE DISCOUNT
(
    ID  BIGINT not null primary key GENERATED ALWAYS AS IDENTITY (START WITH 500),
    DISCOUNTVALUE DECIMAL,
    STARTDATE     TIMESTAMP,
    ENDDATE       TIMESTAMP,
    PUBLISH VARCHAR(255),
    description  VARCHAR(255),
    discountCode  VARCHAR(255)

);

insert into DISCOUNT (DISCOUNTVALUE, STARTDATE, ENDDATE ,PUBLISH,description, discountCode)
values (1.2, date '2021-01-01', date '2021-03-15','Published','heyy we have offer','VTHY67');

insert into DISCOUNT (DISCOUNTVALUE, STARTDATE, ENDDATE,PUBLISH,description, discountCode)
values (3.2,date'2021-01-01', date '2021-02-15','Published','heyy we have amzing offer','QW34DF');

insert into DISCOUNT (DISCOUNTVALUE, STARTDATE, ENDDATE,PUBLISH,description, discountCode)
values (2.4,date'2021-11-01', date '2021-11-18','Not Published','heyy we have now offer','DRG7');

insert into DISCOUNT (DISCOUNTVALUE, STARTDATE, ENDDATE,PUBLISH,description, discountCode)
values (2.4,date'2021-03-28', date '2021-06-06','Published','heyy we have now offer FOR YOU','AMNAXX20');

create table PAYMENT
(
    ID     BIGINT       not null primary key GENERATED ALWAYS AS IDENTITY (START WITH 300),
    METHOD VARCHAR(255),
    CARDNUMBER VARCHAR(255),
    CARDHOLDERNAME VARCHAR(255),
    CVCCODE BIGINT,
    EXPIRYDATE TIMESTAMP
);

insert into PAYMENT( method, cardnumber, cardholdername, cvccode, expirydate)
VALUES ('Credit card','785015','Joe',190,date'2025-01-02');

insert into PAYMENT( method, cardnumber, cardholdername, cvccode, expirydate)
VALUES ('Credit card','785015','Joe',190,date'2025-01-02');

insert into PAYMENT( method, cardnumber, cardholdername, cvccode, expirydate)
VALUES ('Credit card','785015','Joe',190,date'2025-01-02');

insert into PAYMENT( method, cardnumber, cardholdername, cvccode, expirydate)
VALUES ('Credit card','102015','Joe',471,date'2022-04-02');

insert into PAYMENT( method, cardnumber, cardholdername, cvccode, expirydate)
VALUES ('Credit card','102015','Joe',471,date'2022-04-02');

insert into PAYMENT(method, cardnumber, cardholdername, cvccode, expirydate)
VALUES ('Credit card','784524','Ann',777,date'2023-01-02');

insert into PAYMENT(method, cardnumber, cardholdername, cvccode, expirydate)
VALUES ('Credit card','5261524','Ann',778,date'2021-06-02');


insert into PAYMENT(method, cardnumber, cardholdername, cvccode, expirydate)
VALUES ('Credit card','784524','sara',478,date'2023-01-02');

insert into PAYMENT(method, cardnumber, cardholdername, cvccode, expirydate)
VALUES ('Credit card','47585','sara',147,date'2021-06-02');

insert into PAYMENT(method, cardnumber, cardholdername, cvccode, expirydate)
VALUES ('Credit card','47585','abdullah',951,date'2023-01-02');

insert into PAYMENT(method, cardnumber, cardholdername, cvccode, expirydate)
VALUES ('Credit card','10258','abdullah',852,date'2021-06-02');


CREATE TABLE CART
(
    ID     BIGINT       not null primary key GENERATED ALWAYS AS IDENTITY (START WITH 1),
    STATUS VARCHAR(255) not null,
    USERID VARCHAR(255) not null REFERENCES USER (ID),
    PAYMENTID BIGINT  ,
    SHIPPINGID BIGINT  REFERENCES SHIPPING(ID),
    CHECKOUTDATE TIMESTAMP,
    ORDERSTATUS VARCHAR(255) not null,
    TOTAL DOUBLE,
    DISCOUNTID BIGINT  REFERENCES DISCOUNT(ID),
    SHIPPINGCOST BIGINT
);
insert into CART(STATUS, USERID, PAYMENTID, SHIPPINGID, CHECKOUTDATE, ORDERSTATUS,TOTAL,DISCOUNTID,SHIPPINGCOST) VALUES ('paid','joe@joe.com',300,1,date'2021-04-25','Shipped',644,503,94);
insert into CART(STATUS, USERID, PAYMENTID, SHIPPINGID, CHECKOUTDATE, ORDERSTATUS,TOTAL,DISCOUNTID,SHIPPINGCOST) VALUES ('paid','joe@joe.com',301,1,date'2021-05-18','Delayed Due To Missed Contact',200,null,94);
insert into CART(STATUS, USERID, PAYMENTID, SHIPPINGID, CHECKOUTDATE, ORDERSTATUS,TOTAL,DISCOUNTID,SHIPPINGCOST) VALUES ('paid','joe@joe.com',302,1,date'2021-04-05','Processing',80,null,94);

insert into CART(STATUS, USERID, PAYMENTID, SHIPPINGID, CHECKOUTDATE, ORDERSTATUS,TOTAL,DISCOUNTID,SHIPPINGCOST) VALUES ('paid','joe@joe.com',303,1,date'2020-02-18','Shipped',794,null,69);
insert into CART(STATUS, USERID, PAYMENTID, SHIPPINGID, CHECKOUTDATE, ORDERSTATUS,TOTAL,DISCOUNTID,SHIPPINGCOST) VALUES ('paid','joe@joe.com',304,1,date'2020-01-05','Shipped',330,null,69);

insert into CART(STATUS, USERID, PAYMENTID, SHIPPINGID, CHECKOUTDATE, ORDERSTATUS,TOTAL,DISCOUNTID,SHIPPINGCOST) VALUES ('paid','ann@ann.com',305,2,date'2020-04-01','Shipped',718,null,94);
insert into CART(STATUS, USERID, PAYMENTID, SHIPPINGID, CHECKOUTDATE, ORDERSTATUS,TOTAL,DISCOUNTID,SHIPPINGCOST) VALUES ('paid','ann@ann.com',306,2,date'2019-01-04','Shipped',589,500,69);

insert into CART(STATUS, USERID, PAYMENTID, SHIPPINGID, CHECKOUTDATE, ORDERSTATUS,TOTAL,DISCOUNTID,SHIPPINGCOST) VALUES ('paid','sara@sara.com',307,3,date'2019-03-14','Shipped',724,null,94);
insert into CART(STATUS, USERID, PAYMENTID, SHIPPINGID, CHECKOUTDATE, ORDERSTATUS,TOTAL,DISCOUNTID,SHIPPINGCOST) VALUES ('paid','sara@sara.com',308,3,date'2019-07-17','Shipped',586,null,69);

insert into CART(STATUS, USERID, PAYMENTID, SHIPPINGID, CHECKOUTDATE, ORDERSTATUS,TOTAL,DISCOUNTID,SHIPPINGCOST) VALUES ('paid','abdullah@abdullah.com',309,4,date'2021-12-08','Shipped',488,null,69);
insert into CART(STATUS, USERID, PAYMENTID, SHIPPINGID, CHECKOUTDATE, ORDERSTATUS,TOTAL,DISCOUNTID,SHIPPINGCOST) VALUES ('paid','abdullah@abdullah.com',310,4,date'2020-01-07','Shipped',294,null,94);

insert into CART(STATUS, USERID, PAYMENTID, SHIPPINGID, CHECKOUTDATE, ORDERSTATUS,TOTAL,DISCOUNTID,SHIPPINGCOST) VALUES ('unpaid','ann@ann.com',null,null,null,'Processing',null,null,null);
insert into CART(STATUS, USERID, PAYMENTID, SHIPPINGID, CHECKOUTDATE, ORDERSTATUS,TOTAL,DISCOUNTID,SHIPPINGCOST) VALUES ('unpaid','joe@joe.com',null,null,null,'Processing',null,null,null);

CREATE TABLE CARTITEM
(
    ID        BIGINT not null primary key GENERATED ALWAYS AS IDENTITY (START WITH 1),
    CARTID    BIGINT not null REFERENCES CART (ID),
    PRODUCTID BIGINT  REFERENCES PRODUCT (ID),
    PACKAGEID BIGINT  REFERENCES PACKAGE(ID),
    PRODUCTQTY BIGINT,
    PACKAGEQTY BIGINT
);
--joe
insert into CARTITEM( cartid, productid, PACKAGEID,PRODUCTQTY,PACKAGEQTY) VALUES (1,1,202,1,1);
insert into CARTITEM( cartid, productid, PACKAGEID,PRODUCTQTY,PACKAGEQTY) VALUES (1,12,null,1,null);
insert into CARTITEM( cartid, productid, PACKAGEID,PRODUCTQTY,PACKAGEQTY) VALUES (1,21,201,1,1);
insert into CARTITEM( cartid, productid, PACKAGEID,PRODUCTQTY,PACKAGEQTY) VALUES (4,10,null,1,null);
insert into CARTITEM( cartid, productid, PACKAGEID,PRODUCTQTY,PACKAGEQTY) VALUES (4,2,201,1,1);
insert into CARTITEM( cartid, productid, PACKAGEID,PRODUCTQTY,PACKAGEQTY) VALUES (4,8,204,1,1);
insert into CARTITEM(cartid, productid, PACKAGEID,PRODUCTQTY,PACKAGEQTY) VALUES (2,17,null,1,null);
insert into CARTITEM( cartid, productid, PACKAGEID,PRODUCTQTY,PACKAGEQTY) VALUES (2,7,204,2,1);
insert into CARTITEM( cartid, productid, PACKAGEID,PRODUCTQTY,PACKAGEQTY) VALUES (3,20,null,1,null);
insert into CARTITEM(cartid, productid, PACKAGEID,PRODUCTQTY,PACKAGEQTY) VALUES (5,3,null,1,null);
insert into CARTITEM( cartid, productid, PACKAGEID,PRODUCTQTY,PACKAGEQTY) VALUES (5,6,204,1,1);

--ann
insert into CARTITEM( cartid, productid, PACKAGEID,PRODUCTQTY,PACKAGEQTY) VALUES (6,1,204,2,1);
insert into CARTITEM( cartid, productid, PACKAGEID,PRODUCTQTY,PACKAGEQTY) VALUES (6,9,null,1,null);
insert into CARTITEM( cartid, productid, PACKAGEID,PRODUCTQTY,PACKAGEQTY) VALUES (6,7,null,1,null);
insert into CARTITEM( cartid, productid, PACKAGEID,PRODUCTQTY,PACKAGEQTY) VALUES (6,20,null,1,null);
insert into CARTITEM( cartid, productid, PACKAGEID,PRODUCTQTY,PACKAGEQTY) VALUES (7,21,null,1,null);
insert into CARTITEM( cartid, productid, PACKAGEID,PRODUCTQTY,PACKAGEQTY) VALUES (7,12,null,1,null);
insert into CARTITEM( cartid, productid, PACKAGEID,PRODUCTQTY,PACKAGEQTY) VALUES (7,8,null,1,null);

--sara
insert into CARTITEM( cartid, productid, PACKAGEID,PRODUCTQTY,PACKAGEQTY) VALUES (8,7,null,1,null);
insert into CARTITEM( cartid, productid, PACKAGEID,PRODUCTQTY,PACKAGEQTY) VALUES (8,20,null,1,null);
insert into CARTITEM( cartid, productid, PACKAGEID,PRODUCTQTY,PACKAGEQTY) VALUES (8,8,null,1,null);
insert into CARTITEM( cartid, productid, PACKAGEID,PRODUCTQTY,PACKAGEQTY) VALUES (8,1,null,1,null);
insert into CARTITEM( cartid, productid, PACKAGEID,PRODUCTQTY,PACKAGEQTY) VALUES (9,6,null,1,null);
insert into CARTITEM( cartid, productid, PACKAGEID,PRODUCTQTY,PACKAGEQTY) VALUES (9,4,null,1,null);
insert into CARTITEM( cartid, productid, PACKAGEID,PRODUCTQTY,PACKAGEQTY) VALUES (9,13,null,1,null);
--abdullah
insert into CARTITEM( cartid, productid, PACKAGEID,PRODUCTQTY,PACKAGEQTY) VALUES (10,9,null,1,null);
insert into CARTITEM( cartid, productid, PACKAGEID,PRODUCTQTY,PACKAGEQTY) VALUES (10,7,null,1,null);
insert into CARTITEM( cartid, productid, PACKAGEID,PRODUCTQTY,PACKAGEQTY) VALUES (11,17,null,1,null);
insert into CARTITEM( cartid, productid, PACKAGEID,PRODUCTQTY,PACKAGEQTY) VALUES (11,14,null,1,null);

CREATE TABLE RATING
(
    ID    BIGINT not null primary key GENERATED ALWAYS AS IDENTITY (START WITH 1),
    USERID VARCHAR(255) REFERENCES USER(ID),
    PRODUCTID BIGINT   references PRODUCT(ID),
    REVIWECOMMENT VARCHAR(255),
    STARS BIGINT,
    IMAGE VARCHAR(255),
    RATINGDATE TIMESTAMP
);
insert into RATING(userid, productid, reviwecomment, stars, image, ratingdate) VALUES ('joe@joe.com',1,'Its same as in the image',5,'https://cdn-yotpo-images-production.yotpo.com/instagram/66/18029312326273066/standard_resolution.jpg',date'2021-04-28');
insert into RATING(userid, productid, reviwecomment, stars, image, ratingdate) VALUES ('joe@joe.com',12,'Am so happy Thank you',5,'https://cdn-yotpo-images-production.yotpo.com/instagram/66/18029312326273066/standard_resolution.jpg',date'2021-01-08');
insert into RATING(userid, productid, reviwecomment, stars, image, ratingdate) VALUES ('joe@joe.com',10,'Its so big i though it will be small',5,'https://www.plants.com/images/177109alt_view3%20(1)_20210324-1616617394111.webp',date'2021-01-08');

insert into RATING(userid, productid, reviwecomment, stars, image, ratingdate) VALUES ('joe@joe.com',9,'My dog love it',5,'https://www.plants.com/images/plants_dog_562x562_20200728-1595969567292.webp',date'2020-05-07');
insert into RATING(userid, productid, reviwecomment, stars, image, ratingdate) VALUES ('joe@joe.com',2,'Am so happy its real blue',5,'https://cdn-yotpo-images-production.yotpo.com/instagram/33/18062499454227433/standard_resolution.jpg',date'2021-05-27');
insert into RATING(userid, productid, reviwecomment, stars, image, ratingdate) VALUES ('joe@joe.com',8,'i feel so green',3,'https://cdn-yotpo-images-production.yotpo.com/instagram/22/17925424756436022/standard_resolution.jpg',date'2021-04-04');
insert into RATING(userid, productid, reviwecomment, stars, image, ratingdate) VALUES ('joe@joe.com',21,'Cant wait to share it with friends',4,'https://cdn-yotpo-images-production.yotpo.com/instagram/27/18043507717269627/standard_resolution.jpg',date'2021-01-08');
insert into RATING(userid, productid, reviwecomment, stars, image, ratingdate) VALUES ('joe@joe.com',7,'New start new plant',5,'https://cdn-yotpo-images-production.yotpo.com/instagram/19/18079210213196619/standard_resolution.jpg',date'2021-01-08');

insert into RATING(userid, productid, reviwecomment, stars, image, ratingdate) VALUES ('joe@joe.com',17,'The size is fine',3,'https://www.plants.com/images/88431alt_view1x%20(1)_20201119-1605817113023.webp',date'2021-04-04');
insert into RATING(userid, productid, reviwecomment, stars, image, ratingdate) VALUES ('joe@joe.com',20,'OMG am in love',4,'https://www.plants.com/images/157638alt_view2_20201120-1605903383286.webp',date'2021-01-08');
insert into RATING(userid, productid, reviwecomment, stars, image, ratingdate) VALUES ('joe@joe.com',3,'perfect for my living room table',5,'https://www.plants.com/images/177106alt_view3%20(1)_20210324-1616618039696.webp',date'2021-01-08');
insert into RATING(userid, productid, reviwecomment, stars, image, ratingdate) VALUES ('joe@joe.com',6,'they are so cute',5,'https://www.plants.com/images/preview%20new_20200117-1579282468048.webp',date'2021-01-08');


insert into RATING(userid, productid, reviwecomment, stars, image, ratingdate) VALUES ('ann@ann.com',1,'finally i got it now perfect table',5,'https://www.plants.com/images/177111alt_view3_20210218-1613669897129.webp',date'2021-04-28');
insert into RATING(userid, productid, reviwecomment, stars, image, ratingdate) VALUES ('ann@ann.com',9,'am so happy thank you i feel so green grown in peace',5,'https://cdn-yotpo-images-production.yotpo.com/instagram/26/17845191269080826/standard_resolution.jpg',date'2020-05-07');
insert into RATING(userid, productid, reviwecomment, stars, image, ratingdate) VALUES ('ann@ann.com',7,'First plant in new houes',5,'https://cdn-yotpo-images-production.yotpo.com/instagram/60/17954891404337160/standard_resolution.jpg',date'2021-01-05');
insert into RATING(userid, productid, reviwecomment, stars, image, ratingdate) VALUES ('ann@ann.com',20,'One this that was missing in the room thank you',5,'https://www.plants.com/images/157643alt_view2_20201120-1605904111662.webp',date'2020-05-07');
insert into RATING(userid, productid, reviwecomment, stars, image, ratingdate) VALUES ('ann@ann.com',21,'Its same as in the image',4,'https://www.plants.com/images/177041_group_20200428-1588109948035.webp',date'2021-01-08');
insert into RATING(userid, productid, reviwecomment, stars, image, ratingdate) VALUES ('ann@ann.com',12,'Am so happy that are so cute thank you',5,'https://cdn-yotpo-images-production.yotpo.com/instagram/36/17862129223904836/standard_resolution.jpg',date'2021-01-08');
insert into RATING(userid, productid, reviwecomment, stars, image, ratingdate) VALUES ('ann@ann.com',8,'i like it',4,'https://www.gardeningknowhow.com/wp-content/uploads/2013/04/money-tree-400x533.jpg',date'2021-01-08');


insert into RATING(userid, productid, reviwecomment, stars, image, ratingdate) VALUES ('sara@sara.com',7,'Its same as in the image',5,'https://cdn-yotpo-images-production.yotpo.com/instagram/30/17868729394806130/standard_resolution.jpg',date'2021-01-08');
insert into RATING(userid, productid, reviwecomment, stars, image, ratingdate) VALUES ('sara@sara.com',20,'Its perfect for my home',5,'https://www.plants.com/images/177069alt_view2_20201119-1605815873075.webp',date'2021-01-08');
insert into RATING(userid, productid, reviwecomment, stars, image, ratingdate) VALUES ('sara@sara.com',8,'Its same as in the image',5,'https://www.plants.com/images/157651-Money-Tree-Plant-DUO_20191118-1574104004367.webp',date'2021-01-08');
insert into RATING(userid, productid, reviwecomment, stars, image, ratingdate) VALUES ('sara@sara.com',1,'I love it',5,'https://interiorplants.ca/wp-content/uploads/2020/04/aloe-vera-barbadensis-variety-of-sizes.png',date'2021-01-08');

insert into RATING(userid, productid, reviwecomment, stars, image, ratingdate) VALUES ('sara@sara.com',6,'They are perfect',5,'https://live.staticflickr.com/7290/8744485807_e09ffa34ac_z.jpg',date'2021-01-08');
insert into RATING(userid, productid, reviwecomment, stars, image, ratingdate) VALUES ('sara@sara.com',4,'Its same as in the image',5,'https://www.indoorplants24.com/wp-content/uploads/2020/12/inbloomflowershop_70924086_506728360118327_9086339111766900175_n.jpg',date'2021-01-08');
insert into RATING(userid, productid, reviwecomment, stars, image, ratingdate) VALUES ('sara@sara.com',13,'OMG its red and so pretty cant wait to grow it',5,'https://cdn.shopify.com/s/files/1/0584/6065/products/brom6_800x.jpg?v=1588546226',date'2021-01-08');

insert into RATING(userid, productid, reviwecomment, stars, image, ratingdate) VALUES ('abdullah@abdullah.com',19,'Its nice but the color is not black',3,'https://img.crocdn.co.uk/images/products2/pr/20/00/00/92/pr2000009224.jpg?width=440&height=440',date'2021-01-08');
insert into RATING(userid, productid, reviwecomment, stars, image, ratingdate) VALUES ('abdullah@abdullah.com',20,'Its pretty',5,'https://www.plants.com/images/157642alt_view2_20201120-1605903882900.webp',date'2021-01-08');
insert into RATING(userid, productid, reviwecomment, stars, image, ratingdate) VALUES ('abdullah@abdullah.com',1,'Its fine but i though it will be more big',4,'https://www.kendallsflorist.co.uk/wp-content/uploads/2016/01/Aloe-Vera-Plant-1.jpg',date'2021-01-08');

insert into RATING(userid, productid, reviwecomment, stars, image, ratingdate) VALUES ('abdullah@abdullah.com',9,'Its so big i love it',5,'https://cdn.shopify.com/s/files/1/1806/9149/products/InteriorFoliage_6_of_78_1024x1024.jpg?v=1548359546',date'2021-01-08');
insert into RATING(userid, productid, reviwecomment, stars, image, ratingdate) VALUES ('abdullah@abdullah.com',7,'Its not to open',2,'https://royalcitynursery.com/wp-content/uploads/2021/01/Snake-Plant-Black-Coral-scaled.jpg',date'2021-01-08');
insert into RATING(userid, productid, reviwecomment, stars, image, ratingdate) VALUES ('abdullah@abdullah.com',17,'Its small',2,'https://gardenornamentsandaccessories.com/wp-content/uploads/imported/Esschert-Design-TG236-Mister-Copper-B079322D72-2.jpg',date'2021-01-08');
insert into RATING(userid, productid, reviwecomment, stars, image, ratingdate) VALUES ('abdullah@abdullah.com',14,'Its perfect',2,'https://cdn.shopify.com/s/files/1/0268/8355/5406/products/kaboompics_Sago_palm_Monstera_plants_-_Edited_1_1.jpg?v=1610737904',date'2021-01-08');


CREATE TABLE PROMOTIONEMAIL
(
    ID            BIGINT  not null primary key GENERATED ALWAYS AS IDENTITY (START WITH 1),
    EMAIL           VARCHAR(255)
);

insert into PROMOTIONEMAIL(EMAIL) VALUES ('amna_2023@hotmail.com');
insert into PROMOTIONEMAIL(EMAIL) VALUES ('jack798@hotmail.com');
insert into PROMOTIONEMAIL(EMAIL) VALUES ('selena43@hotmail.com');
insert into PROMOTIONEMAIL(EMAIL) VALUES ('abdullah_8756@hotmail.com');

create table FEEDBACK
(
    ID   BIGINT not null primary key GENERATED ALWAYS AS IDENTITY (START WITH 1),
    COMMENT      VARCHAR(255),
    RATING  DOUBLE,
    PUBLISH VARCHAR(255),
    USERID VARCHAR(255) not null REFERENCES USER (ID)

);

insert into FEEDBACK (COMMENT, RATING,PUBLISH, USERID) VALUES ('the website is user-friendly and has great descriptions, I think i found the perfect gift', 3,'Published','joe@joe.com' );
insert into FEEDBACK (COMMENT, RATING,PUBLISH, USERID) VALUES ('it is amazing', 4,'Not Published','joe@joe.com');
insert into FEEDBACK (COMMENT, RATING,PUBLISH, USERID) VALUES ('The service was perfect and on time, i like the style of the website.', 5 ,'Published','ann@ann.com');
insert into FEEDBACK (COMMENT, RATING,PUBLISH, USERID) VALUES ('I really like about the website is that the website is easy to use', 5,'Published','sara@sara.com');
insert into FEEDBACK (COMMENT, RATING,PUBLISH, USERID) VALUES ('The website is very beautiful in my point od view also the service is pretty good i got all of my plants fresh.', 5,'Published', 'joe@joe.com');

create table FAQ
(
    ID    BIGINT not null primary key GENERATED ALWAYS AS IDENTITY (START WITH 1),
    USERNAME VARCHAR(255) not null references USER(ID),
    QUESTION  VARCHAR(255),
    ANSWER   VARCHAR(300),
    STATUS VARCHAR(255) default 'Sent',
    PUBLISH VARCHAR(255) default 'Not Publish'

);

insert into FAQ (USERNAME, QUESTION, ANSWER,STATUS,PUBLISH)
VALUES ('joe@joe.com', 'What health & safety measures are you taking in light of COVID-19?', 'As we navigate the current health crisis together, we continue to prioritize the safety and well-being of our team members, their families and our customers. As always, we are here to help and support you during these unprecedented times. Our plants are delivered by Fedex. ','answered','Published');
insert into FAQ (USERNAME, QUESTION, ANSWER,STATUS,PUBLISH)
VALUES ('joe@joe.com', 'Do I need to sign for my delivery?', 'As a measure of social distancing and to minimize any potential risk of exposure for both our carriers and our customers, all deliveries will not require a signature.','answered','Published');
insert into FAQ (USERNAME, QUESTION, ANSWER,STATUS,PUBLISH)
VALUES ('joe@joe.com', 'Do I need to sign for my delivery?', 'As a measure of social distancing and to minimize any potential risk of exposure for both our carriers and our customers, all deliveries will not require a signature.','answered','Published');
insert into FAQ (USERNAME, QUESTION, ANSWER,STATUS,PUBLISH)
VALUES ('ann@ann.com', 'Will my house plant look like the picture?',
        'Yes! All of our plants look like the picture, however, each plant is unique so there will be variations in color, shape, etc. Your plant will arrive healthy and undamaged and pre-potted in the pictured pot.','answered','Published');


create table CONTACT
(
    ID    BIGINT not null primary key GENERATED ALWAYS AS IDENTITY (START WITH 1),
    USERNAME VARCHAR(255) not null references USER(ID),
    PROBLEM  VARCHAR(255),
    ANSWER   VARCHAR(300),
    PHONENUMBER VARCHAR(255),
    Email VARCHAR(255)

);

insert into CONTACT (USERNAME, PROBLEM, ANSWER, PHONENUMBER, Email) VALUES ('ann@ann.com','Dear reader, I have ordered a plant 1 month ago and still, I didn''t reserve it could you please provide me with an update.
thank you,ann','Yes hi Ann i just checked it turn out the plant is out of stocked and we didnt contact you but no one answerd we are sorry we will update you as faster as we can thank you','33225514','ann@ann.com');
insert into CONTACT (USERNAME, PROBLEM, ANSWER, PHONENUMBER, Email) VALUES ('joe@joe.com','Dear reader, I have ordered many times this never happened I didn''t received my order yet idk i might not be at home could you please update me on my order.
thank you,joe','Hi joe, i just checked your oder is still shipping you can track your order by going to tracking order in our website thank you.','55345863','joe_29@hotmail.com');


create table APPLICATION
(
    ID         BIGINT not null primary key GENERATED ALWAYS AS IDENTITY (START WITH 1),
    CV         VARCHAR(255) NOT NULL,
    USERID     VARCHAR(255) REFERENCES USER(ID),
    ROLEAPPLYING VARCHAR(255),
    APPLIEDDATE TIMESTAMP,
    STATUS VARCHAR(255)
);

insert into APPLICATION(cv, userid,ROLEAPPLYING,APPLIEDDATE,STATUS) values('/images/ApplicationDocument-abdullah@abdullah.com.pdf','abdullah@abdullah.com','Accountant',date '2021-03-27','-');
insert into APPLICATION(cv, userid, ROLEAPPLYING,APPLIEDDATE,STATUS) values('/images/ApplicationDocument-meena@meena.com.pdf','meena@meena.com','Supplier',date '2021-03-27','-');
insert into APPLICATION(cv, userid, ROLEAPPLYING,APPLIEDDATE,STATUS) values('/images/ApplicationDocument-jackson@jackson.com.pdf','jackson@jackson.com','Supplier',date '2021-03-27','-');
insert into APPLICATION(cv, userid, ROLEAPPLYING,APPLIEDDATE,STATUS) values('/images/ApplicationDocument-jack@jack.com.pdf','jack@jack.com','Supplier',date '2021-03-27','Approved');



CREATE TABLE SALE
(
    ID            BIGINT  not null primary key GENERATED ALWAYS AS IDENTITY (START WITH 1),
    PRODUCTID     BIGINT  not null REFERENCES PRODUCT(ID),
    DISCOUNTPERCENT INT  not null,
    STARTDATE     TIMESTAMP,
    ENDDATE       TIMESTAMP,
    PUBLISH VARCHAR(255)

);

insert into SALE (PRODUCTID, DISCOUNTPERCENT,STARTDATE,ENDDATE,PUBLISH ) VALUES (1, 2,date'2021-01-01', date'2021-02-15','Published');
insert into SALE (PRODUCTID, DISCOUNTPERCENT,STARTDATE,ENDDATE,PUBLISH) VALUES (2, 3,date'2021-03-01', date'2021-10-15','Not Published');
insert into SALE (PRODUCTID, DISCOUNTPERCENT,STARTDATE,ENDDATE,PUBLISH) VALUES (3, 1,date'2021-02-01', date'2021-04-15','Not Published');
insert into SALE (PRODUCTID, DISCOUNTPERCENT,STARTDATE,ENDDATE ,PUBLISH) VALUES (4, 3,date'2021-01-01', date'2021-08-15','Published');
insert into SALE (PRODUCTID, DISCOUNTPERCENT,STARTDATE,ENDDATE,PUBLISH) VALUES (5, 3,date'2021-02-01', date'2021-03-15','Published');
insert into SALE (PRODUCTID, DISCOUNTPERCENT,STARTDATE,ENDDATE,PUBLISH) VALUES (6, 3,date'2021-05-04', date'2021-07-19','Not Published');
insert into SALE (PRODUCTID, DISCOUNTPERCENT,STARTDATE,ENDDATE ,PUBLISH) VALUES (9, 3,date'2021-05-18', date'2021-06-01','Published');
insert into SALE (PRODUCTID, DISCOUNTPERCENT,STARTDATE,ENDDATE,PUBLISH) VALUES (16, 2,date'2021-05-15', date'2021-07-15','Published');
insert into SALE (PRODUCTID, DISCOUNTPERCENT,STARTDATE,ENDDATE,PUBLISH) VALUES (14, 4,date'2021-05-04', date'2021-06-19','Published');
insert into SALE (PRODUCTID, DISCOUNTPERCENT,STARTDATE,ENDDATE,PUBLISH) VALUES (7, 4,date'2021-05-04', date'2021-06-19','Published');

create table PACKAGEPRODUCT
(
    ID     BIGINT       not null primary key GENERATED ALWAYS AS IDENTITY (START WITH 1),
    PACKAGEID BIGINT not null references PACKAGE(ID),
    PRODUCTID BIGINT not null  references PRODUCT(ID)
);

insert into PACKAGEPRODUCT (PACKAGEID, PRODUCTID) VALUES (200, 1);
insert into PACKAGEPRODUCT (PACKAGEID, PRODUCTID) VALUES (200, 6);
insert into PACKAGEPRODUCT (PACKAGEID, PRODUCTID) VALUES (200, 3);

insert into PACKAGEPRODUCT (PACKAGEID, PRODUCTID) VALUES (201, 12);
insert into PACKAGEPRODUCT (PACKAGEID, PRODUCTID) VALUES (201, 5);
insert into PACKAGEPRODUCT (PACKAGEID, PRODUCTID) VALUES (201, 8);

insert into PACKAGEPRODUCT (PACKAGEID, PRODUCTID) VALUES (202, 11);
insert into PACKAGEPRODUCT (PACKAGEID, PRODUCTID) VALUES (202, 1);
insert into PACKAGEPRODUCT (PACKAGEID, PRODUCTID) VALUES (202, 6);

insert into PACKAGEPRODUCT (PACKAGEID, PRODUCTID) VALUES (203, 3);
insert into PACKAGEPRODUCT (PACKAGEID, PRODUCTID) VALUES (203, 12);

insert into PACKAGEPRODUCT (PACKAGEID, PRODUCTID) VALUES (204, 5);
insert into PACKAGEPRODUCT (PACKAGEID, PRODUCTID) VALUES (204, 8);

insert into PACKAGEPRODUCT (PACKAGEID, PRODUCTID) VALUES (205, 11);
insert into PACKAGEPRODUCT (PACKAGEID, PRODUCTID) VALUES (205, 1);


create table WISHLIST
(
    ID     BIGINT       not null primary key GENERATED ALWAYS AS IDENTITY (START WITH 1),
    USERID VARCHAR(255) REFERENCES USER(ID),
    PACKAGEID BIGINT  references PACKAGE(ID),
    PRODUCTID BIGINT   references PRODUCT(ID)
);

INSERT INTO WISHLIST(USERID, PACKAGEID, PRODUCTID) VALUES ('joe@joe.com',null,15);
INSERT INTO WISHLIST(USERID, PACKAGEID, PRODUCTID) VALUES ('joe@joe.com',null,13);
INSERT INTO WISHLIST(USERID, PACKAGEID, PRODUCTID) VALUES ('joe@joe.com',204,null);
INSERT INTO WISHLIST(USERID, PACKAGEID, PRODUCTID) VALUES ('joe@joe.com',203,4);

INSERT INTO WISHLIST(USERID, PACKAGEID, PRODUCTID) VALUES ('ann@ann.com',null,12);
INSERT INTO WISHLIST(USERID, PACKAGEID, PRODUCTID) VALUES ('ann@ann.com',null,3);
INSERT INTO WISHLIST(USERID, PACKAGEID, PRODUCTID) VALUES ('ann@ann.com',null,5);


create table COMPAER
(
    ID     BIGINT       not null primary key GENERATED ALWAYS AS IDENTITY (START WITH 1),
    USERID VARCHAR(255) REFERENCES USER(ID),
    PRODUCTID BIGINT   references PRODUCT(ID)
);

INSERT INTO COMPAER(USERID, PRODUCTID) VALUES ('joe@joe.com',3);
INSERT INTO COMPAER(USERID, PRODUCTID) VALUES ('joe@joe.com',6);
INSERT INTO COMPAER(USERID, PRODUCTID) VALUES ('joe@joe.com',1);

INSERT INTO COMPAER(USERID, PRODUCTID) VALUES ('ann@ann.com',11);
INSERT INTO COMPAER(USERID, PRODUCTID) VALUES ('ann@ann.com',3);
INSERT INTO COMPAER(USERID, PRODUCTID) VALUES ('ann@ann.com',13);


CREATE TABLE SUPPLIER
(
    ID    BIGINT not null primary key GENERATED ALWAYS AS IDENTITY (START WITH 1),
    USERID VARCHAR(255) REFERENCES USER(ID),
    COMPANYNAME          VARCHAR(255),
    EMAIL         VARCHAR(255),
    PHONE         VARCHAR(255),
    FAX           VARCHAR(255),
    POBOX         VARCHAR(255)
);

insert into SUPPLIER (USERID,COMPANYNAME, EMAIL, PHONE, FAX, POBOX) values ('jack@jack.com','Doha Green House', 'dohaGreen@qatar.com','66895741', '44589325', '80361');


CREATE TABLE STORE
(
    ID    BIGINT not null primary key GENERATED ALWAYS AS IDENTITY (START WITH 1),
    SUPPLIERID BIGINT REFERENCES SUPPLIER(ID),
    USERID VARCHAR(255) REFERENCES USER(ID),
    PRODUCTID BIGINT   references PRODUCT(ID),
    PRODUCTREALPRICE          BIGINT,
    TOTALPRICEPAID         VARCHAR(255),
    PAYMENTDATE           TIMESTAMP,
    NOTE         VARCHAR(255),
    AVAILABLEQTY    BIGINT
);

INSERT INTO STORE(SUPPLIERID, USERID, PRODUCTID, PRODUCTREALPRICE, TOTALPRICEPAID, PAYMENTDATE, NOTE, AVAILABLEQTY)
VALUES (1,'admin@admin.com',1,20,2000,date'2020-07-25','It will take one day.',100);

INSERT INTO STORE(SUPPLIERID, USERID, PRODUCTID, PRODUCTREALPRICE, TOTALPRICEPAID, PAYMENTDATE, NOTE, AVAILABLEQTY)
VALUES (1,'admin@admin.com',3,40,600,date'2020-01-19','It will take one day.',15);

INSERT INTO STORE(SUPPLIERID, USERID, PRODUCTID, PRODUCTREALPRICE, TOTALPRICEPAID, PAYMENTDATE, NOTE, AVAILABLEQTY)
VALUES (1,'admin@admin.com',2,50,250,date'2020-05-14','It will take one day.',5);

INSERT INTO STORE(SUPPLIERID, USERID, PRODUCTID, PRODUCTREALPRICE, TOTALPRICEPAID, PAYMENTDATE, NOTE, AVAILABLEQTY)
VALUES (1,'admin@admin.com',14,35,175,date'2021-08-05','It will take one day.',5);

INSERT INTO STORE(SUPPLIERID, USERID, PRODUCTID, PRODUCTREALPRICE, TOTALPRICEPAID, PAYMENTDATE, NOTE, AVAILABLEQTY)
VALUES (1,'admin@admin.com',15,100,1000,date'2021-07-19','It will take one day.',20);

INSERT INTO STORE(SUPPLIERID, USERID, PRODUCTID, PRODUCTREALPRICE, TOTALPRICEPAID, PAYMENTDATE, NOTE, AVAILABLEQTY)
VALUES (1,'admin@admin.com',16,20,200,date'2021-07-19','It will take one day.',10);

INSERT INTO STORE(SUPPLIERID, USERID, PRODUCTID, PRODUCTREALPRICE, TOTALPRICEPAID, PAYMENTDATE, NOTE, AVAILABLEQTY)
VALUES (1,'admin@admin.com',19,45,1350,date'2019-07-19','It will take one day.',30);

INSERT INTO STORE(SUPPLIERID, USERID, PRODUCTID, PRODUCTREALPRICE, TOTALPRICEPAID, PAYMENTDATE, NOTE, AVAILABLEQTY)
VALUES (1,'admin@admin.com',21,45,2025,date'2019-07-19','It will take one day.',45);

INSERT INTO STORE(SUPPLIERID, USERID, PRODUCTID, PRODUCTREALPRICE, TOTALPRICEPAID, PAYMENTDATE, NOTE, AVAILABLEQTY)
VALUES (1,'admin@admin.com',5,45,900,date'2019-07-19','It will take one day.',20);


CREATE TABLE BLOG
(
    ID    BIGINT not null primary key GENERATED ALWAYS AS IDENTITY (START WITH 1),
    TITLE            VARCHAR(500),
    TEXT             VARCHAR(900000000),
    AUTHER           VARCHAR(255),
    PUBLISHDATE      TIMESTAMP,
    IMAGE            VARCHAR(255),
    VIEWSCOUNT       BIGINT,
    READINGTIME     VARCHAR(255)
);

insert into BLOG(title, text, auther, publishdate, image, viewscount,readingtime)
VALUES ('How Plants Help to Clean the Air','With their large, glossy leaves or tropical flowers, houseplants add a pop of color to any space. Plus, they are good for our minds, bodies and souls.
But there’s a bigger payback.
Indoor plants are more than just a pretty face; they scrub the air clean, add moisture to dry air and release oxygen, the very air we need to breathe.
According to NASA, houseplants remove up to 90 percent of toxins in the air. You can’t see or smell these pollutants, but they can come from regular household items. Eek! The EPA estimates indoor air can be up to 1,000 times dirtier than outdoor air! Indoor pollutants can build up and aggravate asthma, allergies, and other illnesses.
And since Americans are considered the ‘Indoor Generation,’ spending most of our time indoors, healthy, clean air quality should be a top priority.
How Plants Clean Indoor Air
Plants absorb gases through their leaves. That’s how they convert carbon dioxide and light into energy, a process called photosynthesis.
But that’s not all they absorb. Researchers found that house plants also absorb VOCs, or volatile organic compounds, from the air. VOCs include things like benzene from plastics and fabrics, or formaldehyde found in things such as cleaning products, beauty products, fragrances, dry-cleaned clothes, paraffin wax candles, carpets, and furniture. Plants’ ability to remove these pollutants from our air is extraordinary. They also absorb the carbon dioxide and viruses we exhale. When plants absorb gases through their leaves, it stays sequestered or moves into their roots. Microorganisms that live in the soil, help breakdown and neutralize the toxins before turning them into food.
Filling your home with attractive houseplants is a beautiful step in detoxifying the air. In fact, houseplants make people feel more relaxed and calm while beautifying every room in the house. 🧘‍♂️
So now we know how plants clean the air, but it’s important to note that not ALL plants have the air purifying qualities of others!','By Connor',date'2020-05-19','https://www.plants.com/greenhouse/wp-content/uploads/2019/08/GettyImages-953779982-min.jpg',0,'5 min');


insert into BLOG(title, text, auther, publishdate, image, viewscount,readingtime)
VALUES ('How To Get New Leaves on Ficus Lyrata','Houseplants can improve the quality of indoor air, leaving rooms smelling purer and fresher. According to NASA, they effectively filter potentially harmful volatile organic compounds (VOCs) — such as benzene, formaldehyde, and xylene — from the air.
Whether you’re a first-time plant parent or someone who travels a lot, it’s possible to find low maintenance indoor plants that don’t die easily that will also work around the clock to keep the air you breathe clean.
When selecting a low maintenance plant, look for plants with deep green leaves since they perform best in low light and require less water. You’ll know your plant is too thirsty if it has wilting leaves or soil pulling away from the sides of the planter.
We’ve compiled a list of 7 low light plants and low maintenance houseplants that are best for brown thumbs, new plant parents or frequent travelers. And since the benefits of plants are endless, you may end up adding all seven to your home.','By Amna',date'2020-01-01','https://img5.goodfon.com/wallpaper/nbig/3/e6/wallpaper-flower-plant-hand.jpg',0,'5 min');


insert into BLOG(title, text, auther, publishdate, image, viewscount,readingtime)values ('how to keep cats out of house plants
','<h2>keep your cats out of houseplants forever</h2><p>Are you a plant lover, but also own a cat who’s sole purpose is to kill and maim every green thing in your house? Are you excited by the potential of growing an oasis indoors&nbsp;only to be disappointed by their demise only weeks after bringing them home?</p><p>Owning a <a href="https://www.houseplantgirl.com/best-pet-friendly-plants/">cat and being a plant lover is HARD</a>. They love to chew and gnaw on your precious plants, batting them as if they were toys. No respect for the greenery, cats use them for their own sadistic fun, all the while we have to watch as onlookers, not having enough time to whack the cats away&nbsp;each time they’re caught in the act.</p><p>Not only this, but cats love to use our precious house plants as their new litter box, peeing and defecating in the shrubs as if their shit is gold. It’s not. <strong>It’s gross and ruining my plants.</strong></p><p>Many think you have to choose one or the other, But why can’t you can’t have both?</p><p>I recently caught my cat gnawing on my new baby <a href="http://wp.me/p6SpvR-6f">parlor palm tree</a> and nothing made me scream more than the thought of not seeing my baby plant grow up. I couldn’t believe my luck and all I wanted to know was how to keep my cat out of my house plants.</p><p>&nbsp;</p><h2>don’t give up on your plants</h2><p>Here’s the thing,<strong> I am not willing to give up my love for plants just because my cat (who will probably outlive us all) has no respect for the botanic garden I’m trying to create in my home. </strong>I also live in a climate that gets cold and blustery in the winter, where the only sign of life and hope resides in my plants. I’m not willing to give them up.</p><p>Don’t get me wrong, I adore my cat. I’m obviously not willing to get rid of the little stinker just so I can have some extra oxygen in the household. So, what’s a gal to do?</p><figure class="image"><img src="https://www.houseplantgirl.com/wp-content/uploads/2015/10/cat-who-eats-plants-683x1024.jpg" alt="cats who eat plants" srcset="https://www.houseplantgirl.com/wp-content/uploads/2015/10/cat-who-eats-plants-683x1024.jpg 683w, https://www.houseplantgirl.com/wp-content/uploads/2015/10/cat-who-eats-plants-600x900.jpg 600w, https://www.houseplantgirl.com/wp-content/uploads/2015/10/cat-who-eats-plants-200x300.jpg 200w, https://www.houseplantgirl.com/wp-content/uploads/2015/10/cat-who-eats-plants-696x1044.jpg 696w, https://www.houseplantgirl.com/wp-content/uploads/2015/10/cat-who-eats-plants-280x420.jpg 280w, https://www.houseplantgirl.com/wp-content/uploads/2015/10/cat-who-eats-plants.jpg 700w" sizes="100vw" width="354"></figure><h2>how to keep your cat away from your beloved indoor garden</h2><p>&nbsp;</p><h3><strong>make the pots inconvenient for digging&nbsp;</strong></h3><p>Experiment by placing different sticks, forks, chopsticks or popsicle sticks in the pot so it becomes a hassle for your cat to dig around. This obviously won’t look great, but if it works then I’d say it’s a keeper. Or try and place strips of lint roller tape face up inside your pots. When your cats try and use the soil, they’ll find unpleasant lint tape stuck to them and will think twice about coming back for more!</p><h3><strong>citrus to the rescue</strong></h3><p>Cats hate citrus. Oranges, lemons, limes, they hate them all! Try and place lemon and lime peels throughout your potted plants to keep them away. Experiment and see what works, how much you need and how often you need it. Or, go and get some citrus <a href="http://www.houseplantgirl.com/the-best-essential-oil-brands/">essential oils</a> and place a few drops around the potting soil. You can also place essential oils into the watering can for added citrus magic.</p><h3><strong>grow special plants just for the cats</strong></h3><p>Okay, so nothing seems to be working. It’s time to play by their rules. This tactic uses a couple plants as “offerings” to your cats in order to save the rest of the flock. This idea is fun because you get to plant even more while saving the others. Totally a victim-bait strategy and it works great. Grow some <a href="http://www.amazon.com/Catnip-Plant-Nepeta-INSIDE-OUTSIDE/dp/B000PEHBKI/ref=as_li_bk_tl/?tag=polkpunc-20&amp;linkId=28a7814c9cd42cd4016a58f9025eead5&amp;linkCode=ktl">cat- nip</a>, barley&nbsp;or other grasses which will be used as bait. These plants will be fair game—allow your cats to go crazy with them. As long as they have something to munch on, they’ll leave alone the less interesting foilage. This is a win-win situation. And you get more plants!</p><figure class="image"><img src="https://ir-na.amazon-adsystem.com/e/ir?source=bk&amp;t=polkpunc-20&amp;bm-id=default&amp;l=ktl&amp;linkId=28a7814c9cd42cd4016a58f9025eead5&amp;_cb=1466700079195" alt=""></figure><h3><strong>pine cones&nbsp;</strong></h3><p>If you have access to pine cones, this is another good strategy. Place these just underneath the soil, so the rounded edges come curving out. Most cats won’t like the feel or smell of the pine cones and will stay away. Would you like to walk on pinecones? I didn’t think so. Amazingly, you can buy pinecones on amazon, just click the link <a href="http://amzn.to/2oEVkoC">here</a>.</p><h3><strong>cayenne pepper</strong></h3><p>Try sprinkling <a href="http://www.amazon.com/McCormick-Ground-Cayenne-Pepper-14-Ounce/dp/B001PQMJD4/ref=as_li_bk_tl/?tag=polkpunc-20&amp;linkId=2c6961e0b2c567877027444d53b877d9&amp;linkCode=ktl">Cayenne pepper</a>&nbsp;on the leaves of your most beloved houseplants. Most cats will have a complete distaste for such a move on your part, and stay away. I don’t think that many cats have food dreams about cayenne pepper, and the total surprise of a hot and spicy flavor coming from their favorite leaf will make them think twice about eating your plants.&nbsp;</p><figure class="image"><img src="https://ir-na.amazon-adsystem.com/e/ir?source=bk&amp;t=polkpunc-20&amp;bm-id=default&amp;l=ktl&amp;linkId=2c6961e0b2c567877027444d53b877d9&amp;_cb=1466700090627" alt=""></figure><h3><strong>fruit and vegetable bags</strong></h3><p>Another idea is to use the net fruit and vegetable bags to cover your soil. Cut the bag into a circle the same size diameter as your pot. Cut a hole in the middle, and place the net all along the top of the dirt. You can tape the sides and make sure that everything is covered. What’s great about this solution is you’re still able to fertilize and water the plant through the netted bag.</p><h3><strong>fake it till you make it</strong></h3><p>Another solution is to give into the idea that you won’t be able to enjoy living and breathing plants as long as your feline friends are still around for the party. That’s okay! Thank the plant gods that we have fake plants. And nowadays we have fake plants that actually LOOK GOOD! Take <a href="http://amzn.to/2kXjd8x">Nearly Naturals</a>, for example. I’m impressed by this company and their approach to making fake plants look real. Gone are the days for hokey looking, embarrassing&nbsp;silk trees. Now is the time when you can be proud of your fake Fig trees. Plus your cat won’t kill it!</p><h3><strong>grow your plants in water</strong></h3><p>For those of you who are sick and tired of coming home after a long day at work only to find your potted plants spewed on the floor and dirt everywhere, why not just transfer some of them into a water? You heard that right, some <a href="http://www.houseplantgirl.com/best-indoor-plants-that-grow-in-water-2/">indoor plants grow in water</a>, and you can switch over a few of your favorites into a vase or mason jar. The process is not that difficult, and hopefully, your cat will stay far away from this boring new presentation, except of course to use it as a water bowl. I’ve done this with a couple of my plants and have found that my cat has little to no interest in them.</p><h2>summary</h2><p>Cats are wonderful pets and plants are wonderful additions to your <a href="http://www.apartmenttherapy.com/how-do-you-keep-your-cats-away-146478">home</a>, but you shouldn’t have to pick one over the other, all you have to do to is get creative and learn to hack the world of simultaneous cat and plant living! Once your cats learn that plants are sacred territory, you can have a household of green, oxygen-rich living. Cats will stay out of your house plants, and you are able to have both.</p><p>Keeping cats out of houseplants is easy, not to mention the added benefit of&nbsp;having your air clean and filtered by your green friends. Litter boxes smell the worst.</p>','By Amna',date'2020-01-01','https://cdn.dribbble.com/users/3783883/screenshots/6725388/dribbble.png',0,'20 min');

insert into BLOG(title, text, auther, publishdate, image, viewscount, readingtime)
VALUES ('How to give your garden an affordable makeover','<p>The arrival of spring encourages us all to spend more time in our gardens. You’ll often be keen to tidy up and then improve on what you have. Of course, if you had an unlimited budget, you could easily spend a fortune there.</p><p>But most of us simply don’t have such resources.</p><p>So, the key here is ‘affordable’ – finding inexpensive ways to add to the look, style and enjoyment you can gain through your garden makeover.</p><h2>FIRST STEPS INTO THE NEW SEASON</h2><p>There are a range of starting tasks to complete before considering making some changes:</p><ul><li>Treating your garden to a spring clean is an obvious starting point – Like a publisher being handed a manuscript, your first step might be a little ‘editing’. This means removing – or perhaps simply relocating to better-suited positions – those plants that you have noticed have been struggling in recent times.</li><li>Repainting as necessary – If your fences are looking tired or drab, a couple of coats of a proven dark (many experts choose black) outdoor paint will make them look impressive and also provide an excellent backdrop to show vibrant foliage and colours to best effect. Decking might also appreciate a light pressure wash and a fresh coat of oil. Plants pots and containers can also be refurbished in this way.</li><li>Wash-down other hard surfaces – Carefully pressure wash stone, concrete or timber; use a light touch to remove surface muck. Depending on the style you have chosen, the same process might refresh your garden furniture.</li><li>Carry out any manageable bush and tree-trimming actions – Expert help may be needed for taller and broader trees, but removing decayed or damaged branches is one part of the exercise. You might also remove some lower foliage to provide lights for ground plants underneath, or trim into a tidier, cleaner shape.</li></ul><h2>UNDERTAKE SOME REARRANGING</h2><p>There are several inexpensive ways to achieve such improvements:</p><ul><li>Well-established perennial plants have often spread further than you imagined. Many such species can be dug up and moved to a better place. A quick check can confirm which of your plants are also suitable for splitting. These can be divided to create several plants where there once was only one. You might then spread these across a single area, to give a better overall effect, or place them in different parts of your garden where the tidy-up has provided some space.</li><li>If your lawn is a bit straggly around its edges, a simple reshaping can deliver what seems like a major improvement. You might choose a square, rectangle, or circle design, or waves around the edges where borders meet grass. Simply use some string and a few canes to mark your route, and use a spade to edit out the excess. The result will be both sharp and professional-looking! You might even consider adding some stone or brick edging – either to the lawn or your borders.</li></ul><h2>SPEND A LITTLE FOR GREAT EFFECT</h2><p>If your gardening budget is limited, then consider choosing from the following actions that would best add to your garden:</p><ul><li>Give your garden a proper bio or composted dark mulching – This delivers a great background to allow your plants to stand out and helps to prevent weed growth. This mulch delivers vital nutrients, and also helps maintain soil temperatures and moisture retention. If you have trees in your lawn, digging a small ring around them and then adding a few inches of mulch adds to the effect.</li><li>Consider adding a veggie patch in an unobtrusive corner – A few dollars spent now can both save money in the shops later and help the family appreciate the real taste of properly fresh vegetables. It’s not unknown for kids who hate any task involving the garden to adore having their own growing patch!</li><li>An alternative way youngsters can often become involved is if you create a small raised veggie or flower border, which also adds a different aspect to your garden. Cover the current surface (lawn or soil) with a piece of tarp or membrane, build up the outside with cinder blocks or bricks to your chosen level, and then fill with a nutrient-rich soil.</li><li>Break up your lawn with a path – Or you could add one round the edges between the grass and border. Simply remove grass (or soil), add a membrane to prevent weed growth, and then spread your choice of gravel, stones, wood, or flagstones. Choose a shade that best reflects the planting of your garden.</li><li>Finally, consider adding an internal picket fence to separate specific parts of your garden.</li></ul>','by Bernie Boys',date'2020-04-01','https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/small-garden-royalty-free-image-584877834-1552576830.jpg',0,'15 min');

insert into BLOG(title, text, auther, publishdate, image, viewscount,readingtime)
VALUES ('Indoor Plant Care 101','<p>We <a href="https://www.plants.com/greenhouse/plant-care/talking-to-plants/">talk to our plants</a> to cheer them up and encourage them to grow, but did you know houseplants communicate back? You can even figure out how to save a dying plant.</p><p>Whether you already have a <a href="https://www.plants.com/c/house-plants">houseplant </a>or two, or you are starting from scratch, below are some practical tips on indoor plant care.</p><p>First, think about your lifestyle and what chores you want your houseplants to do. Do you want them to <a href="https://www.plants.com/greenhouse/decor/air-purifying-plants/">clean the air,</a> just sit around and look pretty or both? Think about how much light your space gets, as some houseplants love bright light while others thrive in little to <a href="https://www.plants.com/greenhouse/plant-care/6-best-low-light-indoor-plants/">low light</a>. (check out our <a href="https://www.plants.com/c/low-light-plants">signature low light plants colletion</a>)</p><h3><strong>Let’s look at a few general guidelines for how to take care of </strong><a href="https://www.plants.com/c/house-plants"><strong>houseplants </strong></a><strong>and how to save a dying plant.</strong></h3><p>&nbsp;</p><p><strong>1.</strong> Check the plant tag to find out how much light your plant needs. Place your plant away from heat vents and cold drafts.</p><p>&nbsp;</p><p><strong>2.</strong> Water with room-temperature water when the top one inch of soil is dry. Keep soil consistently moist, but not wet or soggy. Not all plants have the same watering needs, so check the plant tag for watering requirements. Don’t allow your plants to sit in standing water or overwater them. <strong>It’s the number one reason houseplants die</strong>. (<a href="https://www.plants.com/greenhouse/plant-care/how-to-water-plants-while-on-vacation/">If you’re going on vacation, check out our plant care tips before you leave!</a>)</p><p>&nbsp;</p><p><strong>3.</strong> Feed with a <a href="https://www.plants.com/greenhouse/plant-care/indoor-plant-fertilizer/">fertilizer</a> made for houseplants monthly from spring until early fall or according to package directions.</p><p>There’s a lot to know about houseplants for beginners, but there are a few tricks to learning the language of plants. And we’re here to help. Here are the tell-tale signs you’ve got a dying plant on your hands.</p><p>Make sure your plant has room to grow. If the pot it’s sold in is too small, re-potting is key to good indoor plant care and can even help save a dying plant.</p><p>&nbsp;</p><h3><strong>
Leaf and Flower Drop</strong></h3><p>No one likes stress, especially plants. A sign your plant is stressed is dropped leaves and flowers. Stressors include lack of water, overwatering, temperature change, not enough light –you name it. Yellow leaves say “Hold off the water. You’re killing me with kindness.” If the problem isn’t water or something else easy to identify, have patience. Plants take time to adapt to new situations.</p><p>&nbsp;</p><h3><strong>Wilting</strong></h3><p>If your plants’ leaves are wilting, they’re saying “Please water me.” Some plants, like peace lilies, wilt so terribly you’d think it was dead. But don’t worry, it’s just being dramatic and will perk up after a good watering.</p><p>&nbsp;</p><h3><strong>Stretching</strong></h3><p>We’re not talking about yoga here. In the plant world, that means long and spindly stems. The plants are literally stretching themselves toward the light. Some older leaves may fall off. Check on your plant’s light requirements – chances are it just needs more light. It could also mean your plant needs pinching – or pruning. Pinching the top inch of your plant’s stem will encourage it to grow fuller and more beautiful.</p><h3><strong>Salt Build Up</strong></h3><p>Have you noticed white stuff on the side of your pots? As you water and fertilize, salts and other minerals can build up. It may cause foliage tips to turn yellow or brown. Watering your plants in the sink and allowing the water to run through a few times helps flush them out. You can use a scrubbing pad on the outside of the pot. And most houseplants like to be repotted once per year.</p>','By Amna',date'2020-12-30','https://themodemag.com/wp-content/uploads/2020/08/plants-in-natural-dining-room.jpg',0,'5 min');

insert into BLOG(title, text, auther, publishdate, image, viewscount,readingtime)
values ('The Benefits of Having Plants at Home','<p>Plants are living, breathing organisms. Each has its own temperament, personality, and look. They are beautifying, allow us to nurture something, and let us enjoy the all-too-wonderful results: lush foliage, bright flowers, fresh aromas, and sometimes even fruits. But, they offer even more, there are so many benefits of having plants at home. They clean our air and give rooms life and a sense of calm. Plants make indoor spaces better in every way possible.</p><p>&nbsp;</p><h2><strong>Plants and&nbsp;Personality</strong></h2><p>Happy plant owners are well-matched to their plants. Each plant owner has a certain amount of time and each plant needs a certain amount of care. For instance, busy plant lovers that are stretched for time need stress-free, low-care, sun-loving succulents, like <a href="https://www.plants.com/p/echeveria-succulent-157662?c=succulents">Echeveria</a>, healing <a href="https://www.plants.com/p/aloe-vera-plant-157650?c=succulents">Aloe</a>, and cute <a href="https://www.plants.com/p/aloe-vera-plant-157650?c=succulents">cactus</a>. Succulents take so little and give so much. Homebodies with more time and a desire to create green enclaves for retreat should choose white-flowered <a href="https://www.plants.com/p/peace-lily-plant-157654?c=house-plants">Peace Lily</a>, <a href="https://www.plants.com/c/bonsai-bamboo">artful bonsai</a>, or <a href="https://www.plants.com/p/boston-fern-hanging-plant-157641?c=feng-shui-plants">elegant hanging ferns</a>, which need more water and attention. Colorful flowering plants, like <a href="https://www.plants.com/c/orchid-plants">orchids</a>, or airy sun-loving plants, like silvery <a href="https://www.plants.com/p/olive-tree-177006?c=trees">olive trees</a>, are a good fit for outgoing plant lovers that like to entertain with decorative, plant-filled table tops.&nbsp;</p><p>&nbsp;</p><h2><strong>Plants for Cleaner Air</strong></h2><p>Another benefit f having plants at home is that house plants are nature’s best air cleaners. Not only do they provide needed oxygen, but they can remove common indoor air toxins, such as cancer-causing formaldehyde. The best-known studies have been conducted by NASA, including the<a href="https://en.wikipedia.org/wiki/NASA_Clean_Air_Study">NASA Clean Air Study</a> where ~30 plants were tested to measure their removal of six airborne toxins (benzene, formaldehyde, trichloroethylene, xylene, toluene, and ammonia).<a href="https://www.plants.com/p/fall-mum-177037">Chrysanthemum</a> and<a href="https://www.plants.com/p/peace-lily-plant-157654">Peace Lily</a> (<i>Spathiphyllum</i> hybrid) were the two best air cleaners–cleaning nearly all of the toxins present. But, <a href="https://www.plants.com/p/aloe-vera-plant-157650">Aloe</a>,<a href="https://www.plants.com/p/english-ivy-hanging-plant-157642">English Ivy</a>,<a href="https://www.plants.com/p/pothos-hanging-plant-157639">Pothos</a>, and<a href="https://www.plants.com/p/snake-plant-157646">Snake Plant</a> also showed impressive air-cleaning power.</p><p>&nbsp;</p><h2><strong>Plants for Flavor</strong></h2><p>Fresh indoor herbs are so much nicer than store-bought, and they are so easy. Line cool, sunny kitchen window sills with pots of Basil, <a href="https://www.plants.com/p/parsley-plant-157698?c=herb-plants">Parsley</a>, <a href="https://www.plants.com/p/oregano-plant-157697?c=herb-plants">Oregano</a>, Rosemary, and <a href="https://www.plants.com/p/oregano-plant-157697?c=herb-plants">Thyme</a>. Keep them lightly irrigated through winter, and snip fresh herbs as you need them. Feed them weekly with a diluted dose of all-purpose water soluble fertilizer. Their aromatic leaves also provide natural fragrance.</p><p>&nbsp;</p><h2>&nbsp;</h2><h2><strong>Plants for Stress Relief</strong></h2><p>Studies show that plant-filled spaces are calming, improve personal wellness, reduce stress, and even boost work productivity. Green leaves are pleasing to the senses. They are a pleasure to look at, provide natural aroma, and even generate calming sounds. Think of leaves falling on a windy fall day or palms and grasses softly rustling a windy seaside. Place a tall <a href="https://www.plants.com/p/majesty-palm-floor-plant-157652">Majesty Palm</a> next to a workspace or favorite reading spot. A window cross breeze is all you need to make your home feel like an oasis. The soothing effect will be immediate. Likewise, catching the fragrance of <a href="https://www.plants.com/c/orchid-plants">orchids</a>, <a href="https://www.plants.com/p/moro-blood-orange-tree-157684">orange blossoms</a>, or <a href="https://www.plants.com/c/herb-plants">herbs </a>as you enter a room is the best aromatherapy, and simply snapping off an <a href="https://www.plants.com/p/aloe-vera-plant-157650?c=succulents">aloe </a>leaf to soothe a burn or scrape will make you glad you planted one.</p><p>Bring <a href="https://www.plants.com/c/feng-shui-plants">feng shui </a>into your home with plants. It is believed that certain plants have an innate positive energy and help naturally strike a balance and bring harmony to your living or work space.</p><h2>&nbsp;</h2><h2><strong>Plants for Functionality</strong></h2><p>House plants can be functional. Floor house plants make some of the prettiest, softest room dividers. Sequestering off a work area or private nook with a collection of tall floor plants, such as <a href="https://www.plants.com/p/fiddle-leaf-fig-floor-plant-157653">Fiddle Leaf Fig</a>, <a href="https://www.plants.com/p/majesty-palm-floor-plant-157652?c=floor-plants">Majesty Palm </a>or <a href="https://www.plants.com/p/money-tree-floor-plant-177003?c=floor-plants">Money Tree</a>, gives instant privacy. Well-placed plants can also make small rooms appear bigger, deeper, and more inviting. A well-placed plant is also a great way to lift a plain piece of furniture or cover an ugly outlet…</p><p>&nbsp;</p><h2><strong>Plants for Pet-Friendly Indoor Greening</strong></h2><p>Plants and pets can coexist beautifully. It’s just a matter of choosing plants that won’t harm your pets and your pets cannot harm. Our tall <a href="https://www.plants.com/p/majesty-palm-floor-plant-157652?c=floor-plants">Majesty Palm</a>, <a href="https://www.plants.com/p/money-tree-floor-plant-177003?c=floor-plants">Money Tree</a>, and <a href="https://www.plants.com/p/olive-tree-177006">Olive Tree</a> are all bold, non-toxic options for the home. Just be sure to cover the soil with stones, shells, or pine cones if your cats or dogs get the urge to dig. Air plants and orchids are also perfectly pet friendly.</p>','by Jessie Keith',date'2020-09-19','https://cdn10.bostonmagazine.com/wp-content/uploads/sites/2/2019/11/house-plants-social.jpg',0,'15 min');


CREATE TABLE BLOGCOMMENT
(
    ID    BIGINT not null primary key GENERATED ALWAYS AS IDENTITY (START WITH 1),
    COMMENT            VARCHAR(600),
    USERID VARCHAR(255) REFERENCES USER(ID),
    BLOGID BIGINT REFERENCES BLOG(ID),
    COMMENTDATE      TIMESTAMP
);

INSERT INTO BLOGCOMMENT(COMMENT, USERID, BLOGID, COMMENTDATE) VALUES ('nice thank you it help alot','joe@joe.com',1,date'2020-05-20');
INSERT INTO BLOGCOMMENT(COMMENT, USERID, BLOGID, COMMENTDATE) VALUES ('I have learn a few excellent stuff here. Definitely worth bookmarking for revisiting.
I surprise how so much effort you place to create one of these great informative site.','ann@ann.com',1,date'2020-06-01');
INSERT INTO BLOGCOMMENT(COMMENT, USERID, BLOGID, COMMENTDATE) VALUES ('There is certainly a great deal to know about this topic.
I like all of the points you have made.','abdullah@abdullah.com',1,date'2020-06-15');
INSERT INTO BLOGCOMMENT(COMMENT, USERID, BLOGID, COMMENTDATE) VALUES ('Your company is the bomb I appreciate all of your professional advice','sara@sara.com',1,date'2020-05-20');
INSERT INTO BLOGCOMMENT(COMMENT, USERID, BLOGID, COMMENTDATE) VALUES ('What’s up, after reading this amazing piece
of writing i am as well delighted to share my knowledge here with friends.','sara@sara.com',1,date'2020-01-18');
INSERT INTO BLOGCOMMENT(COMMENT, USERID, BLOGID, COMMENTDATE) VALUES ('Dear admin your best','joe@joe.com',2,date'2020-01-01');
INSERT INTO BLOGCOMMENT(COMMENT, USERID, BLOGID, COMMENTDATE) VALUES ('Thank you you saved my plant','ann@ann.com',2,date'2020-01-20');
INSERT INTO BLOGCOMMENT(COMMENT, USERID, BLOGID, COMMENTDATE) VALUES ('Pretty! This has been an incredibly wonderful article.
Thank you for supplying this info.','abdullah@abdullah.com',2,date'2020-04-19');
INSERT INTO BLOGCOMMENT(COMMENT, USERID, BLOGID, COMMENTDATE) VALUES ('I’m impressed, I have to admit. Seldom do I encounter a blog that’s
both equally educative and interesting, and without a doubt,
you have hit the nail on the head. The issue is an issue that not enough
men and women are speaking intelligently about.
Now i’m very happy I found this in my hunt for something
concerning this. asmr 0mniartist','sara@sara.com',2,date'2020-03-28');
INSERT INTO BLOGCOMMENT(COMMENT, USERID, BLOGID, COMMENTDATE) VALUES ('my cat is always around the plants thank you it helped','joe@joe.com',3,date'2020-05-18');
INSERT INTO BLOGCOMMENT(COMMENT, USERID, BLOGID, COMMENTDATE) VALUES ('my cat love plants i saw her onces eating plant and i was shocked the artical helped alot thank you','ann@ann.com',3,date'2020-04-15');
INSERT INTO BLOGCOMMENT(COMMENT, USERID, BLOGID, COMMENTDATE) VALUES ('I didnt know that pets cant get along with plants mu cat dont line my nice plant :(','abdullah@abdullah.com',3,date'2020-09-18');
INSERT INTO BLOGCOMMENT(COMMENT, USERID, BLOGID, COMMENTDATE) VALUES ('I bought a small plant for my mom and my cat sit on it and now there is no plant RIP to my baby plant.','sara@sara.com',3,date'2020-07-01');
INSERT INTO BLOGCOMMENT(COMMENT, USERID, BLOGID, COMMENTDATE) VALUES ('Very interesting post & great ideas that I am going to us in my garden & plant my seeds or cuttings this year… thank you.','joe@joe.com',4,date'2020-01-01');
INSERT INTO BLOGCOMMENT(COMMENT, USERID, BLOGID, COMMENTDATE) VALUES ('You guys are a wonderful team. I have ordered a few plants via your website site, and I am quIte happy with my purchases. Keep up the good work.Please bring back the large snake plant! Thanks','ann@ann.com',4,date'2020-12-02');
INSERT INTO BLOGCOMMENT(COMMENT, USERID, BLOGID, COMMENTDATE) VALUES ('My partner and I stumbled over here different web page and thought I might check things out.
I like what I see so now i’m following you. Look forward to going over
your web page yet again.','abdullah@abdullah.com',4,date'2020-02-10');
INSERT INTO BLOGCOMMENT(COMMENT, USERID, BLOGID, COMMENTDATE) VALUES ('I just happened on your website. I just joined my daughter living in Arizona. We have started collecting different plants. She is trying her hand with vegetables & I with houseplants. I have picked up an Aloe plant for starts. Any advice appreciated!👨‍🌾','sara@sara.com',4,date'2020-02-17');
INSERT INTO BLOGCOMMENT(COMMENT, USERID, BLOGID, COMMENTDATE) VALUES ('This article was really helpful for me just starting my plant parent journey! I didn’t know i am supposed to water my plant with room temperature water.','joe@joe.com',5,date'2020-12-30');
INSERT INTO BLOGCOMMENT(COMMENT, USERID, BLOGID, COMMENTDATE) VALUES ('I am not a new plant parent but it’s always good to have a reminder!
','ann@ann.com',5,date'2020-12-11');
INSERT INTO BLOGCOMMENT(COMMENT, USERID, BLOGID, COMMENTDATE) VALUES ('Thank you.','abdullah@abdullah.com',5,date'2021-01-18');
INSERT INTO BLOGCOMMENT(COMMENT, USERID, BLOGID, COMMENTDATE) VALUES ('graet thank you it help alot','sara@sara.com',5,date'2021-01-03');
INSERT INTO BLOGCOMMENT(COMMENT, USERID, BLOGID, COMMENTDATE) VALUES ('wow this is amzing','jackson@jackson.com',5,date'2021-02-03');
INSERT INTO BLOGCOMMENT(COMMENT, USERID, BLOGID, COMMENTDATE) VALUES ('thank you your better then google','meena@meena.com',5,date'2021-03-08');
INSERT INTO BLOGCOMMENT(COMMENT, USERID, BLOGID, COMMENTDATE) VALUES ('this tips WORKKKKK thank you my plant is back to normal','meena@meena.com',5,date'2021-02-04');
INSERT INTO BLOGCOMMENT(COMMENT, USERID, BLOGID, COMMENTDATE) VALUES ('this is so true i agree, having green around is other level feeling ','meena@meena.com',5,date'2021-09-04');
INSERT INTO BLOGCOMMENT(COMMENT, USERID, BLOGID, COMMENTDATE) VALUES ('wow this is amzing','jackson@jackson.com',5,date'2021-09-18');


CREATE TABLE BLOGCOMMENTREPLAY
(
    ID    BIGINT not null primary key GENERATED ALWAYS AS IDENTITY (START WITH 1),
    REPLAY            VARCHAR(600),
    USERID VARCHAR(255) REFERENCES USER(ID),
    BLOGCOMMENTID BIGINT REFERENCES BLOGCOMMENT(ID),
    COMMENTDATE      TIMESTAMP
);
INSERT INTO BLOGCOMMENTREPLAY(REPLAY, USERID, BLOGCOMMENTID, COMMENTDATE) VALUES ('Your right its amzing','jackson@jackson.com',1,date'2021-09-18');
INSERT INTO BLOGCOMMENTREPLAY(REPLAY, USERID, BLOGCOMMENTID, COMMENTDATE) VALUES ('cant agree more','abdullah@abdullah.com',2,date'2021-09-18');

INSERT INTO BLOGCOMMENTREPLAY(REPLAY, USERID, BLOGCOMMENTID, COMMENTDATE) VALUES ('true','sara@sara.com',3,date'2021-09-18');
INSERT INTO BLOGCOMMENTREPLAY(REPLAY, USERID, BLOGCOMMENTID, COMMENTDATE) VALUES ('they are the best man','jackson@jackson.com',3,date'2021-09-18');
INSERT INTO BLOGCOMMENTREPLAY(REPLAY, USERID, BLOGCOMMENTID, COMMENTDATE) VALUES ('cant uuuuuu agree more','meena@meena.com',4,date'2021-09-18');

INSERT INTO BLOGCOMMENTREPLAY(REPLAY, USERID, BLOGCOMMENTID, COMMENTDATE) VALUES ('IKKK he.she is','abdullah@abdullah.com',6,date'2021-09-18');
INSERT INTO BLOGCOMMENTREPLAY(REPLAY, USERID, BLOGCOMMENTID, COMMENTDATE) VALUES ('i wanna know when the bolgs are publish','sara@sara.com',6,date'2021-09-18');



CREATE TABLE BLOGLIKE
(
    ID    BIGINT not null primary key GENERATED ALWAYS AS IDENTITY (START WITH 1),
    LIKECOUNT           int,
    DISLIKECOUNT           int,
    USERID VARCHAR(255) REFERENCES USER(ID),
    BLOGID BIGINT REFERENCES BLOG(ID)
);

insert into BLOGLIKE(likecount,DISLIKECOUNT, userid, blogid) VALUES (1,0,'sara@sara.com',1);
insert into BLOGLIKE(likecount,DISLIKECOUNT, userid, blogid) VALUES (1,0,'joe@joe.com',1);

insert into BLOGLIKE(likecount,DISLIKECOUNT, userid, blogid) VALUES (1,0,'ann@ann.com',1);
insert into BLOGLIKE(likecount,DISLIKECOUNT, userid, blogid) VALUES (0,1,'abdullah@abdullah.com',1);
insert into BLOGLIKE(likecount,DISLIKECOUNT, userid, blogid) VALUES (1,0,'meena@meena.com',1);
insert into BLOGLIKE(likecount,DISLIKECOUNT, userid, blogid) VALUES (0,1,'jackson@jackson.com',1);

insert into BLOGLIKE(likecount,DISLIKECOUNT, userid, blogid) VALUES (1,0,'sara@sara.com',2);
insert into BLOGLIKE(likecount,DISLIKECOUNT, userid, blogid) VALUES (1,0,'joe@joe.com',2);
insert into BLOGLIKE(likecount,DISLIKECOUNT, userid, blogid) VALUES (0,1,'ann@ann.com',2);

insert into BLOGLIKE(likecount,DISLIKECOUNT, userid, blogid) VALUES (1,0,'joe@joe.com',3);
insert into BLOGLIKE(likecount,DISLIKECOUNT, userid, blogid) VALUES (1,0,'ann@ann.com',3);