CREATE TABLE members (
id INTEGER PRIMARY KEY,
name TEXT,
role_id INTEGER,
email TEXT,
phone INTEGER
);

#ROLE_ID KEY
#President = 1
#Vice President 2
#Sergeant at Arms 3
#Representative 4
#Secretary 5
#Treasurer 6
#Historian 7
#Commissioner of Scholarship 8
#Commissioner of Philanthropy 9
#Commissioner of Alumnae Relations 10
#Commissioner of Fundraising 11
#Commissioner of Recruitment 12
#Commissioner of Expansion 13
#Commissioner of Publicity 14
#Commissioner of Multiculturalism 15

INSERT INTO members (name, role_id, email, phone) VALUES (
('Fiona Goode', 1, 'alphasupreme@gmail.com', '+15105709666'),
('Cordelia Foxx', 2, 'nouveausupreme@gmail.com', '+15105709666'),
('Myrtle Snow', 3, 'gingerandthriving@gmail.com', '+15105709666'),
('Zoe Benson', 4, 'blackneworange@gmail.com', '+15105709666'),
('Wilhemina Venable', 5, 'apocalypseinpurple.com', '+15105709666'),
('Madison Montgomery', 6, 'yesimfamous@gmail.com', '+15105709666'),
('Coco St. Pierre Vanderbilt ', 7, 'richandwitch@gmail.com', '+15105709666'),
('Mallory', 8, 'nextsupreme@gmail.com', '+15105709666'),
('Dinah Stevens', 9, 'spellswithgrace@gmail.com', '+15105709666'),
('Queenie', 10, 'neworleansmagic@gmail.com', '+15105709666'),
('Constance Langdon', 11, 'murderhousemother@gmail.com', '+15105709666'),
('Moira O\'Hara', 12, 'cleananddeadly@gmail.com', '+15105709666'),
('Vivien Harmon', 13, 'murderhouseresident@gmail.com', '+15105709666'),
('Hypodermic Sally', 14, 'cortezghost@gmail.com', '+15105709666'),
('Misty Day', 15, 'whitewitchfan@gmail.com', '+15105709666')
);
