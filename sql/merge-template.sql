set IDENTITY_INSERT dbo. on 



merge derivatives.ContractGenericExtension as TARGET
using (
    VALUES
    (1, 18, '3,5,7,10')
)
as source(
     [ProductId],
     [MaxGenericNumber],
     [ContractMonths]
)
on source.[ProductId] = TARGET.[ProductId]
when matched then
    update set
       target.[ProductId] = source.[ProductId],
       target.[MaxGenericNumber] = source.[MaxGenericNumber],
       target.[ContractMonths] = source.[ContractMonths]
when not matched then 
    insert(
       [ProductId],
       [MaxGenericNumber],
       [ContractMonths]
    )    
    values(
       source.[ProductId],
       source.[MaxGenericNumber],
       source.[ContractMonths]
    );





set IDENTITY_INSERT dbo. off 