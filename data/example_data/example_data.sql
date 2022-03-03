INSERT INTO public.language (id, name) VALUES (1, 'hungarian');
INSERT INTO public.language (id, name) VALUES (2, 'russian');
INSERT INTO public.language (id, name) VALUES (3, 'english');

INSERT INTO public.status (id, description) VALUES (1, 'active');
INSERT INTO public.status (id, description) VALUES (2, 'to_delete');

INSERT INTO public.person (id,name, email, phone, night_call, status) VALUES (1,'kovacs miklos', 'kovacs@gmail.com','0036205434534',true,1);
INSERT INTO public.person (id,name, email, phone, night_call, status) VALUES (2,'kiss anna', 'kisss@gmail.com','003623453434',true,1);
INSERT INTO public.person (id,name, email, phone, night_call, status) VALUES (3,'szabo marcsi', 'szabo@gmail.com','00334534534',true,1);
INSERT INTO public.person (id,name, email, phone, night_call, status) VALUES (4,'pelda geza', 'pelda@gmail.com','0036205345345534',true,1);
INSERT INTO public.person (id,name, email, phone, night_call, status) VALUES (5,'nincsen kati', 'nincsen@gmail.com','003345453534',true,1);
INSERT INTO public.person (id,name, email, phone, night_call, status) VALUES (6,'barna mari', 'barnas@gmail.com','0036345344534',true,1);

INSERT INTO public.accomodation (id,person, city, max, male, female, kids, animals, transport, comment, status) VALUES (1,1,'budapest',4,false,true, true,false,true,'semmi',1);
INSERT INTO public.accomodation (id,person, city, max, male, female, kids, animals, transport, comment, status) VALUES (2,2,'nyiregyhaza',2,true,true, false,false,false,'semmi',1);
INSERT INTO public.accomodation (id,person, city, max, male, female, kids, animals, transport, comment, status) VALUES (3,3,'budapest',40,true,true, true,false,true,'semmi',1);
INSERT INTO public.accomodation (id,person, city, max, male, female, kids, animals, transport, comment, status) VALUES (4,1,'koszeg',6,true,true, false,false,false,'semmi',2);
INSERT INTO public.accomodation (id,person, city, max, male, female, kids, animals, transport, comment, status) VALUES (5,6,'budapest',20,true,true, true,false,true,'semmi',1);
INSERT INTO public.accomodation (id,person, city, max, male, female, kids, animals, transport, comment, status) VALUES (6,5,'budapest',4,true,false, true,false,true,'semmi',2);
INSERT INTO public.accomodation (id,person, city, max, male, female, kids, animals, transport, comment, status) VALUES (7,4,'budapest',4,true,true, false,false,true,'semmi',1);

INSERT INTO public.person_language (person, language) VALUES (1,1);
INSERT INTO public.person_language (person, language) VALUES (1,2);
INSERT INTO public.person_language (person, language) VALUES (1,3);
INSERT INTO public.person_language (person, language) VALUES (2,1);
INSERT INTO public.person_language (person, language) VALUES (2,3);
INSERT INTO public.person_language (person, language) VALUES (3,1);
INSERT INTO public.person_language (person, language) VALUES (3,2);
INSERT INTO public.person_language (person, language) VALUES (4,1);
INSERT INTO public.person_language (person, language) VALUES (5,1);
INSERT INTO public.person_language (person, language) VALUES (6,1);

