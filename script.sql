INSERT INTO technologies (name, description, dbu, add_other_layers)
VALUES ('sky130', 'SkyWater 130nm technology', 0.001, 1);

INSERT INTO writer_options (libname, max_vertex_count, write_timestamps, technology_id)
VALUES (
    'LIB',
    8000,
    1,
    (SELECT id FROM technologies WHERE name = 'sky130')
);

INSERT INTO symbols (name, technology_id) VALUES ('capm', (SELECT id FROM technologies WHERE name = 'sky130'));
INSERT INTO symbols (name, technology_id) VALUES ('cap2m', (SELECT id FROM technologies WHERE name = 'sky130'));
INSERT INTO symbols (name, technology_id) VALUES ('poly', (SELECT id FROM technologies WHERE name = 'sky130'));
INSERT INTO symbols (name, technology_id) VALUES ('licon', (SELECT id FROM technologies WHERE name = 'sky130'));
INSERT INTO symbols (name, technology_id) VALUES ('li', (SELECT id FROM technologies WHERE name = 'sky130'));
INSERT INTO symbols (name, technology_id) VALUES ('mcon', (SELECT id FROM technologies WHERE name = 'sky130'));
INSERT INTO symbols (name, technology_id) VALUES ('met1', (SELECT id FROM technologies WHERE name = 'sky130'));
INSERT INTO symbols (name, technology_id) VALUES ('via1', (SELECT id FROM technologies WHERE name = 'sky130'));
INSERT INTO symbols (name, technology_id) VALUES ('met2', (SELECT id FROM technologies WHERE name = 'sky130'));
INSERT INTO symbols (name, technology_id) VALUES ('via2', (SELECT id FROM technologies WHERE name = 'sky130'));
INSERT INTO symbols (name, technology_id) VALUES ('met3', (SELECT id FROM technologies WHERE name = 'sky130'));
INSERT INTO symbols (name, technology_id) VALUES ('via3', (SELECT id FROM technologies WHERE name = 'sky130'));
INSERT INTO symbols (name, technology_id) VALUES ('met4', (SELECT id FROM technologies WHERE name = 'sky130'));
INSERT INTO symbols (name, technology_id) VALUES ('via4', (SELECT id FROM technologies WHERE name = 'sky130'));
INSERT INTO symbols (name, technology_id) VALUES ('met5', (SELECT id FROM technologies WHERE name = 'sky130'));

INSERT INTO physical_layers (layer, datatype, negative) VALUES (89, 44, 0);
INSERT INTO physical_layers (layer, datatype, negative) VALUES (97, 44, 0);
INSERT INTO physical_layers (layer, datatype, negative) VALUES (66, 20, 0);
INSERT INTO physical_layers (layer, datatype, negative) VALUES (66, 5, 0);
INSERT INTO physical_layers (layer, datatype, negative) VALUES (66, 13, 1);
INSERT INTO physical_layers (layer, datatype, negative) VALUES (66, 14, 1);
INSERT INTO physical_layers (layer, datatype, negative) VALUES (66, 15, 1);
INSERT INTO physical_layers (layer, datatype, negative) VALUES (66, 44, 0);
INSERT INTO physical_layers (layer, datatype, negative) VALUES (67, 20, 0);
INSERT INTO physical_layers (layer, datatype, negative) VALUES (67, 5, 0);
INSERT INTO physical_layers (layer, datatype, negative) VALUES (67, 13, 1);
INSERT INTO physical_layers (layer, datatype, negative) VALUES (67, 14, 1);
INSERT INTO physical_layers (layer, datatype, negative) VALUES (67, 15, 1);
INSERT INTO physical_layers (layer, datatype, negative) VALUES (67, 44, 0);
INSERT INTO physical_layers (layer, datatype, negative) VALUES (68, 20, 0);
INSERT INTO physical_layers (layer, datatype, negative) VALUES (68, 5, 0);
INSERT INTO physical_layers (layer, datatype, negative) VALUES (68, 14, 1);
INSERT INTO physical_layers (layer, datatype, negative) VALUES (68, 15, 1);
INSERT INTO physical_layers (layer, datatype, negative) VALUES (68, 44, 0);
INSERT INTO physical_layers (layer, datatype, negative) VALUES (69, 20, 0);
INSERT INTO physical_layers (layer, datatype, negative) VALUES (69, 5, 0);
INSERT INTO physical_layers (layer, datatype, negative) VALUES (69, 14, 1);
INSERT INTO physical_layers (layer, datatype, negative) VALUES (69, 15, 1);
INSERT INTO physical_layers (layer, datatype, negative) VALUES (69, 44, 0);
INSERT INTO physical_layers (layer, datatype, negative) VALUES (70, 20, 0);
INSERT INTO physical_layers (layer, datatype, negative) VALUES (70, 5, 0);
INSERT INTO physical_layers (layer, datatype, negative) VALUES (70, 14, 1);
INSERT INTO physical_layers (layer, datatype, negative) VALUES (70, 15, 1);
INSERT INTO physical_layers (layer, datatype, negative) VALUES (70, 44, 0);
INSERT INTO physical_layers (layer, datatype, negative) VALUES (89, 44, 1);
INSERT INTO physical_layers (layer, datatype, negative) VALUES (71, 20, 0);
INSERT INTO physical_layers (layer, datatype, negative) VALUES (71, 5, 0);
INSERT INTO physical_layers (layer, datatype, negative) VALUES (71, 14, 1);
INSERT INTO physical_layers (layer, datatype, negative) VALUES (71, 15, 1);
INSERT INTO physical_layers (layer, datatype, negative) VALUES (71, 44, 0);
INSERT INTO physical_layers (layer, datatype, negative) VALUES (97, 44, 1);
INSERT INTO physical_layers (layer, datatype, negative) VALUES (72, 20, 0);
INSERT INTO physical_layers (layer, datatype, negative) VALUES (72, 5, 0);
INSERT INTO physical_layers (layer, datatype, negative) VALUES (72, 14, 1);
INSERT INTO physical_layers (layer, datatype, negative) VALUES (72, 15, 1);

INSERT INTO symbol_physical_layer_pairs (symbol_id, physical_layer_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'capm' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM physical_layers WHERE layer = 89 AND datatype = 44 AND negative = 0)
);
INSERT INTO symbol_physical_layer_pairs (symbol_id, physical_layer_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'cap2m' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM physical_layers WHERE layer = 97 AND datatype = 44 AND negative = 0)
);
INSERT INTO symbol_physical_layer_pairs (symbol_id, physical_layer_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'poly' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM physical_layers WHERE layer = 66 AND datatype = 20 AND negative = 0)
);
INSERT INTO symbol_physical_layer_pairs (symbol_id, physical_layer_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'poly' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM physical_layers WHERE layer = 66 AND datatype = 5 AND negative = 0)
);
INSERT INTO symbol_physical_layer_pairs (symbol_id, physical_layer_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'poly' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM physical_layers WHERE layer = 66 AND datatype = 13 AND negative = 1)
);
INSERT INTO symbol_physical_layer_pairs (symbol_id, physical_layer_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'poly' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM physical_layers WHERE layer = 66 AND datatype = 14 AND negative = 1)
);
INSERT INTO symbol_physical_layer_pairs (symbol_id, physical_layer_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'poly' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM physical_layers WHERE layer = 66 AND datatype = 15 AND negative = 1)
);
INSERT INTO symbol_physical_layer_pairs (symbol_id, physical_layer_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'licon' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM physical_layers WHERE layer = 66 AND datatype = 44 AND negative = 0)
);
INSERT INTO symbol_physical_layer_pairs (symbol_id, physical_layer_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'li' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM physical_layers WHERE layer = 67 AND datatype = 20 AND negative = 0)
);
INSERT INTO symbol_physical_layer_pairs (symbol_id, physical_layer_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'li' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM physical_layers WHERE layer = 67 AND datatype = 5 AND negative = 0)
);
INSERT INTO symbol_physical_layer_pairs (symbol_id, physical_layer_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'li' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM physical_layers WHERE layer = 67 AND datatype = 13 AND negative = 1)
);
INSERT INTO symbol_physical_layer_pairs (symbol_id, physical_layer_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'li' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM physical_layers WHERE layer = 67 AND datatype = 14 AND negative = 1)
);
INSERT INTO symbol_physical_layer_pairs (symbol_id, physical_layer_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'li' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM physical_layers WHERE layer = 67 AND datatype = 15 AND negative = 1)
);
INSERT INTO symbol_physical_layer_pairs (symbol_id, physical_layer_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'mcon' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM physical_layers WHERE layer = 67 AND datatype = 44 AND negative = 0)
);
INSERT INTO symbol_physical_layer_pairs (symbol_id, physical_layer_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'met1' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM physical_layers WHERE layer = 68 AND datatype = 20 AND negative = 0)
);
INSERT INTO symbol_physical_layer_pairs (symbol_id, physical_layer_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'met1' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM physical_layers WHERE layer = 68 AND datatype = 5 AND negative = 0)
);
INSERT INTO symbol_physical_layer_pairs (symbol_id, physical_layer_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'met1' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM physical_layers WHERE layer = 68 AND datatype = 14 AND negative = 1)
);
INSERT INTO symbol_physical_layer_pairs (symbol_id, physical_layer_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'met1' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM physical_layers WHERE layer = 68 AND datatype = 15 AND negative = 1)
);
INSERT INTO symbol_physical_layer_pairs (symbol_id, physical_layer_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'via1' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM physical_layers WHERE layer = 68 AND datatype = 44 AND negative = 0)
);
INSERT INTO symbol_physical_layer_pairs (symbol_id, physical_layer_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'met2' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM physical_layers WHERE layer = 69 AND datatype = 20 AND negative = 0)
);
INSERT INTO symbol_physical_layer_pairs (symbol_id, physical_layer_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'met2' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM physical_layers WHERE layer = 69 AND datatype = 5 AND negative = 0)
);
INSERT INTO symbol_physical_layer_pairs (symbol_id, physical_layer_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'met2' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM physical_layers WHERE layer = 69 AND datatype = 14 AND negative = 1)
);
INSERT INTO symbol_physical_layer_pairs (symbol_id, physical_layer_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'met2' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM physical_layers WHERE layer = 69 AND datatype = 15 AND negative = 1)
);
INSERT INTO symbol_physical_layer_pairs (symbol_id, physical_layer_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'via2' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM physical_layers WHERE layer = 69 AND datatype = 44 AND negative = 0)
);
INSERT INTO symbol_physical_layer_pairs (symbol_id, physical_layer_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'met3' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM physical_layers WHERE layer = 70 AND datatype = 20 AND negative = 0)
);
INSERT INTO symbol_physical_layer_pairs (symbol_id, physical_layer_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'met3' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM physical_layers WHERE layer = 70 AND datatype = 5 AND negative = 0)
);
INSERT INTO symbol_physical_layer_pairs (symbol_id, physical_layer_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'met3' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM physical_layers WHERE layer = 70 AND datatype = 14 AND negative = 1)
);
INSERT INTO symbol_physical_layer_pairs (symbol_id, physical_layer_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'met3' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM physical_layers WHERE layer = 70 AND datatype = 15 AND negative = 1)
);
INSERT INTO symbol_physical_layer_pairs (symbol_id, physical_layer_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'via3' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM physical_layers WHERE layer = 70 AND datatype = 44 AND negative = 0)
);
INSERT INTO symbol_physical_layer_pairs (symbol_id, physical_layer_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'via3' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM physical_layers WHERE layer = 89 AND datatype = 44 AND negative = 1)
);
INSERT INTO symbol_physical_layer_pairs (symbol_id, physical_layer_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'met4' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM physical_layers WHERE layer = 71 AND datatype = 20 AND negative = 0)
);
INSERT INTO symbol_physical_layer_pairs (symbol_id, physical_layer_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'met4' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM physical_layers WHERE layer = 71 AND datatype = 5 AND negative = 0)
);
INSERT INTO symbol_physical_layer_pairs (symbol_id, physical_layer_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'met4' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM physical_layers WHERE layer = 71 AND datatype = 14 AND negative = 1)
);
INSERT INTO symbol_physical_layer_pairs (symbol_id, physical_layer_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'met4' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM physical_layers WHERE layer = 71 AND datatype = 15 AND negative = 1)
);
INSERT INTO symbol_physical_layer_pairs (symbol_id, physical_layer_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'via4' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM physical_layers WHERE layer = 71 AND datatype = 44 AND negative = 0)
);
INSERT INTO symbol_physical_layer_pairs (symbol_id, physical_layer_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'via4' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM physical_layers WHERE layer = 97 AND datatype = 44 AND negative = 1)
);
INSERT INTO symbol_physical_layer_pairs (symbol_id, physical_layer_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'met5' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM physical_layers WHERE layer = 72 AND datatype = 20 AND negative = 0)
);
INSERT INTO symbol_physical_layer_pairs (symbol_id, physical_layer_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'met5' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM physical_layers WHERE layer = 72 AND datatype = 5 AND negative = 0)
);
INSERT INTO symbol_physical_layer_pairs (symbol_id, physical_layer_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'met5' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM physical_layers WHERE layer = 72 AND datatype = 14 AND negative = 1)
);
INSERT INTO symbol_physical_layer_pairs (symbol_id, physical_layer_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'met5' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM physical_layers WHERE layer = 72 AND datatype = 15 AND negative = 1)
);

INSERT INTO connections (a_symbol_id, via_symbol_id, b_symbol_id, technology_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'poly' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM symbols WHERE name = 'licon' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM symbols WHERE name = 'li' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM technologies WHERE name = 'sky130')
);
INSERT INTO connections (a_symbol_id, via_symbol_id, b_symbol_id, technology_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'li' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM symbols WHERE name = 'mcon' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM symbols WHERE name = 'met1' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM technologies WHERE name = 'sky130')
);
INSERT INTO connections (a_symbol_id, via_symbol_id, b_symbol_id, technology_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'met1' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM symbols WHERE name = 'via1' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM symbols WHERE name = 'met2' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM technologies WHERE name = 'sky130')
);
INSERT INTO connections (a_symbol_id, via_symbol_id, b_symbol_id, technology_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'met2' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM symbols WHERE name = 'via2' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM symbols WHERE name = 'met3' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM technologies WHERE name = 'sky130')
);
INSERT INTO connections (a_symbol_id, via_symbol_id, b_symbol_id, technology_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'met3' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM symbols WHERE name = 'via3' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM symbols WHERE name = 'met4' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM technologies WHERE name = 'sky130')
);
INSERT INTO connections (a_symbol_id, via_symbol_id, b_symbol_id, technology_id)
VALUES (
    (SELECT id FROM symbols WHERE name = 'met4' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM symbols WHERE name = 'via4' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM symbols WHERE name = 'met5' AND technology_id = (SELECT id FROM technologies WHERE name = 'sky130')),
    (SELECT id FROM technologies WHERE name = 'sky130')
);