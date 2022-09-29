CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL,
  "email" varchar NOT NULL,
  "password" varchar NOT NULL,
  "id_rol" uuid NOT NULL
);

CREATE TABLE "courses" (
  "id" uuid PRIMARY KEY,
  "title" varchar NOT NULL,
  "description" text NOT NULL,
  "level" varchar NOT NULL,
  "teacher" varchar NOT NULL,
  "id_categories" uuid NOT NULL
);

CREATE TABLE "courses_videos" (
  "id" uuid PRIMARY KEY,
  "title" varchar NOT NULL,
  "url" text NOT NULL,
  "id_courses" uuid NOT NULL
);

CREATE TABLE "categories" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "roles" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL
);

ALTER TABLE "courses" ADD FOREIGN KEY ("id_categories") REFERENCES "categories" ("id");

ALTER TABLE "courses_videos" ADD FOREIGN KEY ("id_courses") REFERENCES "courses" ("id");

ALTER TABLE "users" ADD FOREIGN KEY ("id_rol") REFERENCES "roles" ("id");




insert into roles (
id,
name
)

values (
'554703db-3291-476c-9a9f-5dd638c09a1e',
'admin'
),
(
'40953ec5-9fe0-4c9e-91ca-542451ac9658',
'student'
);


insert into users (
id,
name,
email,
password,
id_rol
)

values (
'1eaaff1c-9682-45f4-8f9d-1e4f324f2b9a',
'jesus',
'jesus@gmail.com',
'1234',
'554703db-3291-476c-9a9f-5dd638c09a1e'
),
(
'b20a94d6-bb6e-41ea-89fa-e53b6e64a517',
'ale',
'ale@gmail.com',
'2456',
'40953ec5-9fe0-4c9e-91ca-542451ac9658'
);

insert into categories (
id,
name
)
values (
'9ec3ff1b-5a08-4b36-a68e-620b50d62c81',
'cars'
),
(
'dd0920c8-6077-4b42-823a-86c5c9d9fe23',
'aircrafs'
);


insert into courses (
id,
title,
description,
level,
teacher,
id_categories 
)

values (
'011bda12-06e8-47af-a391-68fb37005a5d',
'sport cars',
'this is the categories of the sport cars',
'beginner',
'jesus',
'9ec3ff1b-5a08-4b36-a68e-620b50d62c81'
),
(
'3ead238c-8447-4f69-a5a4-b0cf6bb498f0',
'commercial planes',
'this is the categories of the commercial aircrafs',
'junior',
'rogelio',
'dd0920c8-6077-4b42-823a-86c5c9d9fe23'
);

insert into courses_videos (
id,
title,
url,
id_courses
)
values (
'ac0f2e0f-f85c-49b2-b6c6-8c906d2c75bd',
'tesla electric cars',
'this is the url',
'011bda12-06e8-47af-a391-68fb37005a5d'
),
(
'29257691-e0c3-4456-97c4-84e747cfde10',
'boing aircrafs',
'this is the url',
'3ead238c-8447-4f69-a5a4-b0cf6bb498f0'
);




