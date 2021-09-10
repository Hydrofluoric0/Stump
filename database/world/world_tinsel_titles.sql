create table tinsel_titles
(
    Id         int          not null
        primary key,
    Name       varchar(255) null,
    NameId     int unsigned not null,
    Visible    tinyint      not null,
    CategoryId int          not null
)
    engine = MyISAM
    charset = utf8;

INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (1, 'Ghul', 216860, 0, 9);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (2, 'Vampyro', 216680, 0, 9);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (3, 'Vampyro Sangryento', 599131, 0, 9);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (4, 'Vampyro Maldyto', 216793, 0, 9);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (5, 'Vampyro Suprym', 217014, 0, 9);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (6, 'Vampyro Demonýaco', 216719, 0, 9);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (7, 'Vampyro Rúnyco', 216829, 0, 9);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (8, 'Asesino de Bworker', 216781, 0, 6);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (9, 'Asesino de Sfinter Cell', 216780, 0, 6);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (10, 'Asesino de Trankitronko', 216728, 0, 6);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (11, 'Asesino del Wey Wabbit', 216930, 0, 6);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (12, 'Asesino del Kimbo', 216959, 0, 6);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (13, 'Asesino del Minotauroro', 216775, 0, 6);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (14, 'Asesino de Dragocerdo', 216877, 0, 6);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (15, 'Asesino de Roble Blando', 216893, 0, 6);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (16, 'Asesino de Moon', 216823, 0, 6);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (17, 'Asesino de Dark Vlad', 216674, 0, 6);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (18, 'Héroe Bicentenario', 216703, 0, 5);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (19, 'Caballero HispáÑico', 216696, 0, 5);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (20, 'Matasaurio', 216941, 1, 7);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (21, 'Cascador', 216741, 1, 7);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (22, 'Leñador primordial', 216762, 0, 4);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (23, 'Herrero de espadas primordial', 216755, 0, 4);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (24, 'Escultor de arcos primordial', 216662, 0, 4);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (25, 'Herrero de martillos primordial', 216901, 0, 4);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (26, 'Zapatero primordial', 216907, 0, 4);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (27, 'Joyero primordial', 216654, 0, 4);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (28, 'Herrero de dagas primordial', 216929, 0, 4);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (29, 'Escultor de bastones primordial', 216677, 0, 4);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (30, 'Escultor de varitas primordial', 216758, 0, 4);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (31, 'Herrero de palas primordial', 217027, 0, 4);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (32, 'Minero primordial', 216808, 0, 4);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (33, 'Panadero primordial', 216872, 0, 4);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (34, 'Alquimista primordial', 216948, 0, 4);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (35, 'Sastre primordial', 216720, 0, 4);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (36, 'Campesino primordial', 216906, 0, 4);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (37, 'Herrero de hachas primordial', 216977, 0, 4);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (38, 'Pescador primordial', 216754, 0, 4);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (39, 'Cazador primordial', 216820, 0, 4);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (40, 'Forjamago de dagas primordial', 216966, 0, 4);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (41, 'Forjamago de espadas primordial', 216657, 0, 4);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (42, 'Forjamago de martillos primordial', 216746, 0, 4);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (43, 'Forjamago de palas primordial', 216805, 0, 4);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (44, 'Forjamago de hachas primordial', 216694, 0, 4);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (45, 'Escultomago de arcos primordial', 216706, 0, 4);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (46, 'Escultomago de varitas primordial', 216964, 0, 4);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (47, 'Escultomago de bastones primordial', 216895, 0, 4);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (48, 'Carnicero primordial', 216838, 0, 4);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (49, 'Pescadero primordial', 216836, 0, 4);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (50, 'Herrero de escudos primordial', 216887, 0, 4);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (51, 'Zapateromago primordial', 216649, 0, 4);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (52, 'Joyeromago primordial', 216855, 0, 4);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (53, 'Sastremago primordial', 216867, 0, 4);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (54, 'Manitas primordial', 216826, 0, 4);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (55, 'Asesino de las nieves perpétuas', 216771, 0, 8);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (56, 'Mazmorreitor', 217026, 0, 8);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (57, 'Maldito por Az, el Teka', 217036, 0, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (58, 'Maestro de los elementos', 291135, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (59, 'Gran maestro de los elementos', 291133, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (60, 'Iniciado del S.L.I.P.', 216896, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (61, 'Miembro de la «Fuerza Luz»', 216723, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (62, 'Popol el pulpo', 216671, 0, 8);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (63, 'Nawidista', 216786, 1, 7);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (64, 'Valentón', 216692, 1, 7);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (65, 'Valentona', 216912, 1, 7);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (66, 'Corazón solitario', 714471, 1, 7);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (67, 'Rey Vegolosote', 217013, 0, 8);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (68, 'Caminante dimensional', 216885, 0, 9);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (69, 'Aprendiz de Otomai', 216918, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (70, 'Campeón del Gultarminator del año 639', 309966, 0, 8);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (71, 'Míster Amakna', 216749, 0, 8);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (72, 'Miss Amakna', 216765, 0, 8);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (73, 'Mister Mundo de los Doce', 216874, 0, 8);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (74, 'Miss Mundo de los Doce', 216936, 0, 8);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (75, 'Cazador de Turistas', 216898, 1, 7);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (76, 'Cazador de Cascasaurios', 216828, 1, 7);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (77, 'Cazador de Leyendas', 216958, 1, 7);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (78, 'Héroe de Hispañia', 216882, 0, 5);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (79, 'Buscador de dofus', 455558, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (80, 'Marcapáginas', 216903, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (81, 'Campeón del Gultarminator del año 640', 309968, 0, 8);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (82, 'Campeón del Gultarminator del año 641', 309970, 0, 8);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (83, 'Terror de Vulkania', 216821, 1, 7);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (84, 'Nawidista grandilocuente', 216731, 1, 7);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (85, 'Nawidista decadente', 216687, 1, 7);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (86, 'Discípulo pandawushuka', 216785, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (87, 'Campeón Azur', 216744, 0, 5);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (89, 'Protector de las Profundidades', 216897, 0, 8);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (90, 'Pazcuakficador', 216851, 1, 8);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (91, 'Jug''Onh Adoptivo', 216701, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (93, 'Soldado de las Nieves', 455584, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (94, 'Don Chisme', 455598, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (95, 'Rolero de Oro', 455596, 0, 5);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (96, 'Minimíster Amakna', 455594, 0, 8);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (97, 'Minimister Amakna', 455590, 0, 8);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (98, 'Pirata de los 107 mares', 455604, 0, 7);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (99, 'Rebuscador de Otomai', 455602, 0, 9);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (100, 'Calawaza espantadoso', 455552, 1, 7);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (101, 'Campeón del Gultarminator del año 642', 455554, 0, 8);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (102, 'Caballero Dorado HispáÑico', 455548, 0, 5);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (103, 'Amigo de Kerubim', 455550, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (109, 'La Máquina', 455626, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (110, 'Partero sobreexcitado', 455628, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (111, 'Coloso con pies de guarro', 455632, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (112, 'Advienturero de Nawidad', 455630, 1, 7);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (113, 'Ilustrado', 455636, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (114, 'Coronado', 455634, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (115, 'Cultivador de almas', 455640, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (116, 'Héroe del año', 455638, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (117, 'Cazarrecompensas', 455644, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (118, 'Alborotador clandestino', 455646, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (119, 'Pendenciero clandestino', 455642, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (120, 'Camorrista clandestino', 455654, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (121, 'Luchador clandestino', 455652, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (122, 'Combatiente clandestino', 455650, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (123, 'Campeón  clandestino', 455648, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (124, 'Estibador', 455660, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (125, 'Senderista', 455658, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (126, 'Krosmonauta', 455656, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (128, 'Centemisionario', 455580, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (129, 'Quingentemisionario', 455582, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (130, 'Tricentemisionario', 455586, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (134, 'Guardián del Día sin Fin', 455600, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (135, 'Benefactor de Frigost', 455592, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (136, 'Vengador de las tierras heladas', 455588, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (139, 'Cazador de mitos', 455606, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (140, 'Juguete de los inmortales', 455608, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (142, 'Larva de Dremoan', 455624, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (143, 'Coleccionista de cosas', 455622, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (144, 'Explorador de la oscuridad', 455620, 1, 8);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (145, 'Mowdedow de zanahowias', 455618, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (146, 'Limpiador de fab''huritu', 455616, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (147, 'Superasistente', 455614, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (148, 'Campeón del Gultarminator del año 643', 455612, 0, 8);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (149, 'Agente de paz', 455610, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (150, 'Terror de los mercenarinos', 455578, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (151, 'Justiciero del Krosmoz', 455574, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (152, 'Héroe trajeado', 455576, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (153, 'Esclarecedor de misterios', 455570, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (154, 'Desactivador de trampas', 455572, 1, 8);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (155, 'Agente de viajes', 455566, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (156, 'Sénior de Anutropía', 455568, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (157, 'Barón de la corte tenebrosa', 455562, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (158, 'Vagabundo dimensional', 455564, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (159, 'Campeón del Gultarminator del año 644', 455560, 0, 8);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (160, 'Defensor de la naturaleza', 459873, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (161, 'Abridor de portales', 469683, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (162, 'Guardián de Xelorium', 469685, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (163, 'Rmubfae qu oeb usywrmb', 470123, 1, 5);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (164, 'Investigador obstinado', 502612, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (165, 'Batallador', 514652, 1, 7);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (166, 'Acosador implacable', 514654, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (167, 'Discípulo de Menalt', 551112, 0, 10);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (168, 'Escudero', 551116, 0, 10);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (169, 'Caballero de la Esperanza', 564638, 0, 10);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (170, 'Campeón maravilloso', 600472, 0, 10);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (171, 'Héroe legendario', 517195, 0, 10);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (172, 'Discípulo de Ilyzaelle', 551100, 0, 10);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (173, 'Aprendiz iluminado', 551104, 0, 10);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (174, 'Adepto a las Escrituras', 564632, 0, 10);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (175, 'Maestro de los pergaminos', 600468, 0, 10);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (176, 'Guardián del conocimiento', 517205, 0, 10);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (177, 'Discípulo de Silvosse', 551108, 0, 10);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (178, 'Espía silencioso', 551114, 0, 10);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (179, 'Cazador de Renegados', 564636, 0, 10);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (180, 'Asesino supremo', 600474, 0, 10);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (181, 'Maestro de los espejismos', 517216, 0, 10);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (182, 'Discípulo de Djaul', 551096, 0, 10);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (183, 'Destripador', 551102, 0, 10);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (184, 'Caballero de la Desesperación', 564630, 0, 10);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (185, 'Campeón del caos', 600476, 0, 10);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (186, 'Héroe del apocalipsis', 517242, 0, 10);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (187, 'Discípulo de Hécate', 551106, 0, 10);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (188, 'Aprendiz oscuro', 551110, 0, 10);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (189, 'Adepto a los Dolores', 564634, 0, 10);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (190, 'Maestro de los estragos', 600470, 0, 10);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (191, 'Guardián de las torturas', 517253, 0, 10);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (192, 'Discípulo de Brumario', 551094, 0, 10);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (193, 'Espía oscuro', 551098, 0, 10);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (194, 'Cazador de Almas', 564628, 0, 10);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (195, 'Psicópata', 600466, 0, 10);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (196, 'Maestro de las sombras', 517263, 0, 10);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (197, 'Hijo de Incarnam', 552600, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (198, 'Campeón del Gultarminator del año 645', 542950, 0, 8);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (199, 'Ídolo de los jóvenes', 552598, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (200, 'Aliado de Joris', 565451, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (201, 'Maestro de Cachipún', 565749, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (202, 'Vencedor de las mil y una garras', 587783, 0, 8);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (203, 'Jugador profesional', 616389, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (204, 'Perfeccionista', 643717, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (205, 'Señor de las Salpicaduras', 649401, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (206, 'Kutulú Fhtagn', 651958, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (207, 'Rey del buceo', 651962, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (208, 'Trithonita', 657702, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (209, 'Campeón del Gultarminator del año 646', 657786, 0, 8);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (210, 'Cazador de trools', 698126, 0, 8);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (211, 'Amigo de los dragones', 698129, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (213, 'Aliado emérito', 711370, 1, 8);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (214, 'Pegajoso', 711371, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (215, 'Moderador', 717037, 0, 11);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (216, 'Community Manager', 717038, 0, 11);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (217, 'Testeador', 717035, 0, 11);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (218, 'Game Designer', 717034, 0, 11);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (219, 'Level Designer', 717052, 0, 11);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (220, 'Grafista', 717042, 0, 11);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (221, 'Animador', 717047, 0, 11);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (222, 'Desarrollador de cliente', 717033, 0, 11);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (223, 'Desarrollador de servidor', 717036, 0, 11);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (225, 'Protector de animales', 721735, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (226, 'Vencedor de la Copa DOFUS', 723464, 0, 8);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (227, 'Rondador de Sidimote', 728456, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (228, 'Guerrero del verano del 647', 736775, 0, 8);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (229, 'Azote de los mediomuertos', 740993, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (230, 'Cenizas y marfil', 742693, 0, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (231, 'Míster Mundo de los Doce 648', 745460, 0, 8);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (232, 'Clase encarnada 648', 745463, 0, 8);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (233, 'Fabricante primordial', 743788, 0, 4);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (234, 'Fabricamago primordial', 743792, 0, 4);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (235, 'Herrero primordial', 743796, 0, 4);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (236, 'Forjamago primordial', 743800, 0, 4);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (237, 'Escultor primordial', 743805, 0, 4);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (238, 'Escultomago primordial', 743809, 0, 4);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (239, 'Guerrero del invierno 648', 748698, 0, 8);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (240, 'Guerrero del verano del 648', 748709, 0, 8);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (241, 'Campeón de Furyha 648', 756683, 0, 8);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (242, 'Nanoinvencible', 756947, 1, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (243, 'Fisgón', 756954, 1, 5);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (244, 'Magister Temporis I', 761524, 0, 7);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (245, 'Heraldo del tumulto', 762777, 0, 8);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (246, 'Trotamazmorras', 765089, 1, 7);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (247, 'Bronceado', 767117, 1, 12);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (248, 'Emplatado', 767114, 1, 12);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (249, 'Hombre dorado', 767112, 1, 12);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (250, 'Cristal puro', 767125, 1, 12);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (251, 'Diamante bruto', 767121, 1, 12);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (252, 'Leyenda viva', 767119, 1, 12);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (255, 'Míster Mundo de los Doce 649', 769790, 0, 8);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (256, 'Clase encarnada 649', 769792, 0, 8);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (257, 'Insomne veterano', 777756, 1, 7);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (258, 'Blanqueador de noches', 777750, 1, 7);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (259, 'Viento del Krosmoz', 777068, 0, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (260, 'Elegido de los dioses', 777066, 0, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (261, 'Campeón eterno', 777064, 0, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (262, 'Garra de los demonios', 776683, 0, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (263, 'Guardián del Kontinuum', 776693, 0, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (264, 'Mano del destino', 776713, 0, 1);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (265, 'Advienturero de Nawidad 648', 778341, 1, 7);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (266, 'Fuerza Hyrkúlea', 780797, 1, 7);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (268, 'Epifanático 649', 783027, 1, 7);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (269, 'Habófilo 649', 783029, 1, 7);
INSERT INTO world.tinsel_titles (Id, Name, NameId, Visible, CategoryId) VALUES (270, 'Wey por un día 649', 783031, 1, 7);