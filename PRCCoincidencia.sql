-- =============================================
-- Autor: Gabriel Espinola
-- Description:	Procedimiento para buscar nombres tablas, vistas, procedimientos y funciones que coinciden con el text que se le pasa
-- Exec PRCBuscaTextos 'texto'
-- =============================================
Create PROCEDURE [dbo].[PRCCoincidencia] @vTexto varchar(100) 
AS
BEGIN
	select distinct name 
	from syscomments sc 
	join sysobjects so on sc.id=so.id
	where sc.text like '%'+@vTexto+'%'
END
