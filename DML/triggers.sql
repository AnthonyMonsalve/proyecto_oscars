-- CATEGORIA: 1.1.- Validar que cuando nivel = 1:
CREATE TRIGGER validar_categoria_nivel_1
BEFORE INSERT OR UPDATE
ON categoria FOR EACH ROW
EXECUTE PROCEDURE validar_categoria_nivel_1();


-- CATEGORIA: 1.2.- Validar que cuando nivel = 2:
CREATE TRIGGER validar_categoria_nivel_2
BEFORE INSERT OR UPDATE
ON categoria FOR EACH ROW
EXECUTE PROCEDURE validar_categoria_nivel_2();