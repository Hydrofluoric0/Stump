create table interactives_templates_skills
(
    Id                    int auto_increment
        primary key,
    InteractiveTemplateId int not null,
    SkillId               int not null
)
    engine = MyISAM
    charset = utf8;

create index InteractiveTemplateId
    on interactives_templates_skills (InteractiveTemplateId);

INSERT INTO world.interactives_templates_skills (Id, InteractiveTemplateId, SkillId) VALUES (7, 120, 327);
INSERT INTO world.interactives_templates_skills (Id, InteractiveTemplateId, SkillId) VALUES (6, 106, 329);
INSERT INTO world.interactives_templates_skills (Id, InteractiveTemplateId, SkillId) VALUES (3, 58, 1147);
INSERT INTO world.interactives_templates_skills (Id, InteractiveTemplateId, SkillId) VALUES (4, 314, 10421);
INSERT INTO world.interactives_templates_skills (Id, InteractiveTemplateId, SkillId) VALUES (5, 315, 10420);
INSERT INTO world.interactives_templates_skills (Id, InteractiveTemplateId, SkillId) VALUES (8, 313, 10505);
INSERT INTO world.interactives_templates_skills (Id, InteractiveTemplateId, SkillId) VALUES (9, 319, 10511);
INSERT INTO world.interactives_templates_skills (Id, InteractiveTemplateId, SkillId) VALUES (10, 202, 10541);
INSERT INTO world.interactives_templates_skills (Id, InteractiveTemplateId, SkillId) VALUES (11, 128, 10535);