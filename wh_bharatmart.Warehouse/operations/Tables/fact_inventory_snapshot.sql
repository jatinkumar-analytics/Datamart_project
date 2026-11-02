CREATE TABLE [operations].[fact_inventory_snapshot] (
    [snapshot_date_key] INT             NOT NULL,
    [product_key]       BIGINT          NOT NULL,
    [warehouse_key]     BIGINT          NOT NULL,
    [opening_qty]       INT             NOT NULL,
    [received_qty]      INT             NOT NULL,
    [sold_qty]          INT             NOT NULL,
    [returned_qty]      INT             NOT NULL,
    [damaged_qty]       INT             NOT NULL,
    [closing_qty]       INT             NOT NULL,
    [reorder_level]     INT             NOT NULL,
    [unit_cost]         DECIMAL (18, 2) NOT NULL,
    [inventory_value]   DECIMAL (18, 2) NOT NULL,
    [is_stockout]       BIT             NOT NULL
);


GO