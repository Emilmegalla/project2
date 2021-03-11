CREATE DATABASE picgallary;


CREATE TABLE pics (
    id SERIAL PRIMARY KEY,
    title TEXT,
    image_url TEXT
);

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    email TEXT,
    password_digest TEXT
);

INSERT INTO pics (title, image_url) VALUES ('Rushcutters bay', 'https://scontent.fsyd4-1.fna.fbcdn.net/v/t1.0-9/115786702_4722408341109962_5447389430230695228_o.jpg?_nc_cat=103&ccb=1-3&_nc_sid=0debeb&_nc_ohc=99jzHW9x8twAX9-VWEY&_nc_ht=scontent.fsyd4-1.fna&oh=32f5007183a0a0cc1b3e681da9685de6&oe=606EBB93'); (fineart)

INSERT INTO pics (title, image_url) VALUES ('Sydney CBD', 'https://scontent.fsyd4-1.fna.fbcdn.net/v/t1.0-9/121362870_5118982328119226_502611087472481723_o.jpg?_nc_cat=100&ccb=1-3&_nc_sid=0debeb&_nc_ohc=V6uR7F2qGvAAX-ZTiZf&_nc_ht=scontent.fsyd4-1.fna&oh=13bf7b92c3cbc8982ea7a26b963acece&oe=606E7C0E');

INSERT INTO pics (title, image_url) VALUES ('Chatswood', 'https://scontent.fsyd4-1.fna.fbcdn.net/v/t1.0-9/125188370_5254325197918271_1126810414698039904_o.jpg?_nc_cat=100&ccb=1-3&_nc_sid=0debeb&_nc_ohc=DZrOyr24zaYAX9eFOmo&_nc_ht=scontent.fsyd4-1.fna&oh=ee184c92953e84cb5a3903b149eef908&oe=606E10D6');

INSERT INTO pics (title, image_url) VALUES ('hi speed', 'https://scontent.fsyd4-1.fna.fbcdn.net/v/t1.0-9/106452628_4568417583175706_1954226065320504344_o.jpg?_nc_cat=103&ccb=1-3&_nc_sid=19026a&_nc_ohc=6P-dwPnclAgAX_SQYac&_nc_ht=scontent.fsyd4-1.fna&oh=5a407d100b0e4c42551d68bb08133a55&oe=606CDE5A');

INSERT INTO pics (title, image_url) VALUES ('compstion photography', 'https://scontent.fsyd4-1.fna.fbcdn.net/v/t1.0-9/48144719_2820908981259917_9004882055460290560_o.jpg?_nc_cat=102&ccb=1-3&_nc_sid=19026a&_nc_ohc=9esVD3OLiWYAX_DPXd0&_nc_ht=scontent.fsyd4-1.fna&oh=a1c5478bda46db7f67ba60abfb6a87dd&oe=606DC311');

INSERT INTO pics (title, image_url) VALUES ('Panoram','https://scontent.fsyd4-1.fna.fbcdn.net/v/t1.0-9/36594263_2493463950671090_6561423788662063104_o.jpg?_nc_cat=106&ccb=1-3&_nc_sid=19026a&_nc_ohc=JaQGZMYQoPoAX_GvivP&_nc_ht=scontent.fsyd4-1.fna&oh=47b394949f2e69beaca2eb824a013b76&oe=606D750B');


INSERT INTO pics (title, image_url) VALUES ('', 'https://scontent.fsyd4-1.fna.fbcdn.net/v/t1.0-9/33403114_2425729664111186_7759523255391617024_n.jpg?_nc_cat=100&ccb=1-3&_nc_sid=19026a&_nc_ohc=4j6A7zgbmBMAX_h0unu&_nc_ht=scontent.fsyd4-1.fna&oh=fc349ff195e965a49553e7ee5105787c&oe=606F2C48');


INSERT INTO pics (title, image_url) VALUES ('Collections', 'https://scontent.fsyd4-1.fna.fbcdn.net/v/t1.0-9/31282181_2378309815519838_9196159873195481686_n.jpg?_nc_cat=110&ccb=1-3&_nc_sid=19026a&_nc_ohc=wIVnVjyIsB8AX--lgxA&_nc_ht=scontent.fsyd4-1.fna&oh=e58fd1e6b8bf698777b8a9687676505c&oe=606F725C');


INSERT INTO pics (title, image_url) VALUES ('macro', 'https://scontent.fsyd4-1.fna.fbcdn.net/v/t1.0-9/21192002_2025954270755396_3476563658178635286_n.jpg?_nc_cat=101&ccb=1-3&_nc_sid=19026a&_nc_ohc=Se8-gnhvyLgAX_A_6O6&_nc_ht=scontent.fsyd4-1.fna&oh=2b6e70c1519111dc53dfd1a4bbd37c4e&oe=606E0A86');