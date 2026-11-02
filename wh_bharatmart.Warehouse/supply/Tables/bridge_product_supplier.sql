CREATE TABLE [supply].[bridge_product_supplier] (
    [product_key]    BIGINT         NOT NULL,
    [supplier_key]   BIGINT         NOT NULL,
    [is_primary]     BIT            NOT NULL,
    [allocation_pct] DECIMAL (5, 2) NOT NULL
);


GO