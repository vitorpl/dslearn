INSERT INTO tb_user (name, email, password) VALUES ('Alex',  'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_uri, img_gray_uri) VALUES ('Bootcamp JavaScript', 'https://res.cloudinary.com/dte7upwcr/image/upload/f_auto,w_1500/v1618959177/blog/blog2/curso-de-programacao/curso-de-programacao-img_header.jpg', 'https://www2.educacao.mg.gov.br/images/stories/noticias/2021/08-Agosto/CURSOSESCOLADEFORMAO.jpg');

INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2022-01-10T20:00:00Z', TIMESTAMP WITH TIME ZONE '2022-05-01T20:00:00Z', 1);
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2022-06-10T20:00:00Z', TIMESTAMP WITH TIME ZONE '2022-12-01T20:00:00Z', 1);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) values
('Trilha JS', 'Trilha principal do curso', 1, 'https://res.cloudinary.com/dte7upwcr/image/upload/f_auto,w_1500/v1618959177/blog/blog2/curso-de-programacao/curso-de-programacao-img_header.jpg', 1, 1);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) values
('Fórum', 'Tire suas dúvidas', 2, 'https://res.cloudinary.com/dte7upwcr/image/upload/f_auto,w_1500/v1618959177/blog/blog2/curso-de-programacao/curso-de-programacao-img_header.jpg', 2, 1);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) values
('Lives', 'Lives ao vivo exclusivas', 3, 'https://res.cloudinary.com/dte7upwcr/image/upload/f_auto,w_1500/v1618959177/blog/blog2/curso-de-programacao/curso-de-programacao-img_header.jpg', 0, 1);


INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) values
('Capítulo 1', 'Neste capítulo vamos começar', 1, 'https://res.cloudinary.com/dte7upwcr/image/upload/f_auto,w_1500/v1618959177/blog/blog2/curso-de-programacao/curso-de-programacao-img_header.jpg', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) values
('Capítulo 2', 'Primeiros passos', 2, 'https://res.cloudinary.com/dte7upwcr/image/upload/f_auto,w_1500/v1618959177/blog/blog2/curso-de-programacao/curso-de-programacao-img_header.jpg', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) values
('Capítulo 3', 'Conhecendo o projeto', 3, 'https://res.cloudinary.com/dte7upwcr/image/upload/f_auto,w_1500/v1618959177/blog/blog2/curso-de-programacao/curso-de-programacao-img_header.jpg', 1, 2);


INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refound_Moment, available, only_update) values
(1, 1, TIMESTAMP WITH TIME ZONE '2022-10-15T18:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refound_Moment, available, only_update) values
(2, 1, TIMESTAMP WITH TIME ZONE '2022-10-15T18:00:00Z', null, true, false);   


INSERT INTO TB_LESSON (title, position, section_id) values ('Aula 1 cap 1', 1, 1);
INSERT INTO TB_CONTENT (id, text_content, video_uri) values (1, 'Material de apoio: abc', 'https://www.youtube.com/watch?v=QekeJBShCy4'); 
INSERT INTO TB_LESSON (title, position, section_id) values ('Aula 2 cap 1', 2, 1);
INSERT INTO TB_CONTENT (id, text_content, video_uri) values (2, 'Material de apoio: abc', 'https://www.youtube.com/watch?v=QekeJBShCy4');
INSERT INTO TB_LESSON (title, position, section_id) values ('Aula 3 cap 1', 3, 1); 
INSERT INTO TB_CONTENT (id, text_content, video_uri) values (3, 'Material de apoio: abc', 'https://www.youtube.com/watch?v=QekeJBShCy4');

INSERT INTO TB_LESSON (title, position, section_id) values ('Tarefa 1 cap 1', 4, 1);
INSERT INTO TB_TASK (id, description, question_count, approval_count, weight, due_date) values (4, 'Fazer uma tarefa boladona', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2022-10-31T18:00:00Z');

INSERT INTO TB_LESSONS_DONE (LESSON_ID, USER_ID, OFFER_ID) VALUES  (1, 1, 1);
INSERT INTO TB_LESSONS_DONE (LESSON_ID, USER_ID, OFFER_ID) VALUES  (2, 1, 1);
