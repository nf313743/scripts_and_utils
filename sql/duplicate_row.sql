
declare @trade varchar(32) = '615068',
  @seq decimal(4,0) = 1,
   @AllocationRef int = '333',
    @exerciseSeq decimal(4,0) = 10,
    @currency varchar(8) = 'USD',
    @quantity decimal(16,6) = 500,
    @tradePrice decimal(16,6) = 3.3,
    @Username varchar(255)= 'nathan',
    @marketPrice decimal(16,6) = 56.3

drop table #PhysicalCopy
SELECT *
INTO #PhysicalCopy
FROM physicalposition
WHERE 
    trade = @trade
    and seq = @seq

alter table #PhysicalCopy drop column PhysicalPositionId

update #PhysicalCopy
set
    creationdate = GETDATE(),
    creationname = @Username,
    currency = @currency,
    feecode = 9,
    fixedprice = @tradePrice,
    futuresPrice = @marketPrice,
    pricecode = null,
    pricing_ref = @AllocationRef,
    quantity = @quantity,
    revisiondate = null,
    revisionname = null,
    seq = @exerciseSeq

insert into physicalposition
select *
from #PhysicalCopy

select *
from physicalposition
where trade = '615068'