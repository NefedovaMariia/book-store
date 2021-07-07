DROP TABLE IF EXISTS book;

CREATE TABLE book
(
    id     INT AUTO_INCREMENT PRIMARY KEY,
    author VARCHAR(250) NOT NULL,
    title  VARCHAR(250) NOT NULL,
    price  DECIMAL NOT NULL,
    groups_id bigint

);

create table comment
(
    id   bigint primary key auto_increment,
    text varchar(400),
    book_id bigint
);
create table sale
(
    id   bigint primary key auto_increment,
    number int
);
drop table if exists groups;
create table groups
(
    id   bigint primary key auto_increment,
    text varchar(10),
    sale_id bigint
);

alter table comment
    add constraint fk_commentBook
        foreign key (book_id) references book(Id) ON DELETE CASCADE;
alter table book
    add constraint fk_groupBook
        foreign key (groups_id) references groups(Id) ON DELETE CASCADE;
alter table groups
    add constraint fk_groupSale
        foreign key (sale_id) references sale(Id) ON DELETE CASCADE;
