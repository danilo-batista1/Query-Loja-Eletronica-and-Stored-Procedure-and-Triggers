
/* Inserir um produto somente se houver pelo menos um item dele no estoque e se n�o est�
vencido */
@PRECO_VENDA DECIMAL(10,2),
@DESCRICAO VARCHAR(100),
@DATA_VALIDADE DATE,
@PRECO_CUSTO DECIMAL(10,2),
@ESTOQUE INT,
@FK_COD_DIS INT

AS
BEGIN

DECLARE @PRODUTO INT;

IF (@ESTOQUE >=1 AND @DATA_VALIDADE>CURRENT_TIMESTAMP)

BEGIN
INSERT INTO PRODUTOS (PRECO_VENDA, DESCRICAO, DATA_VALIDADE, PRECO_CUSTO, ESTOQUE, FK_COD_DIS) VALUES (@PRECO_VENDA, @DESCRICAO, @DATA_VALIDADE, @PRECO_CUSTO, @ESTOQUE, @FK_COD_DIS);

END

SET @ESTOQUE = @PRODUTO;

SELECT @PRODUTO

END
