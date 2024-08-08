
/****** Object:  View [dbo].[VI_RECEBIMENTOS_ITENS]    Script Date: 08/08/2024 11:51:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO







CREATE        VIEW [dbo].[VI_RECEBIMENTOS_ITENS]
AS
SELECT RE.RECEBIMENTO, 
       RE.PERIODO, 
       RE.DATA_EMISSAO,
       RE.ROTA, 
       RE.MOTORISTA, 
       RE.PRODUTO, 
       RE.TURNO,
       RE.CALCULA_FRETE, 
       RE.QTD_TOTAL AS QTD_TOTAL_RECEBIMENTO,
       RE.VALOR_FRETE_LITRO, 
       RE.DATA_CADASTRO,
       RE.CODUSUARIO, 
       RE.VALOR_TOTAL_FRETE, 
       RE.CONFIG_RECEBIMENTO,
       RP.PESSOA, 
       RP.ORDEM_RECEBIMENTO, 
       RP.CATEGORIA_PRODUTOR,
       RP.ASSOCIACAO,
       RP.QTD_TOTAL AS QTD_RECEBIMENTO_PESSOA, 
       RP.PRECO_MEDIO AS PRECO_MEDIO_PESSOA,
       RP.VALOR_TOTAL AS VALOR_TOTAL_PESSOA, RPF.FINALIDADE, 
       RPF.QUANTIDADE AS QTD_FINALIDADE,
       RPF.PRECO_UNITARIO,
        RPF.VALOR_TOTAL AS VALOR_TOTAL_FINALIDADE
FROM RECEBIMENTOS RE
JOIN RECEBIMENTOS_PRODUTORES RP ON RE.RECEBIMENTO = RP.RECEBIMENTO
JOIN RECEBIMENTOS_PRODUTORES_FINALIDADES RPF 
     ON RP.RECEBIMENTO = RPF.RECEBIMENTO AND RP.PESSOA = RPF.PESSOA








GO


