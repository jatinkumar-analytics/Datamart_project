CREATE TABLE [conformed].[dim_promotion] (
    [promotion_key]  BIGINT          NOT NULL,
    [promotion_id]   VARCHAR (20)    NOT NULL,
    [campaign_name]  VARCHAR (100)   NOT NULL,
    [promotion_type] VARCHAR (30)    NOT NULL,
    [discount_type]  VARCHAR (10)    NOT NULL,
    [discount_value] DECIMAL (10, 2) NOT NULL,
    [start_date]     DATE            NOT NULL,
    [end_date]       DATE            NOT NULL
);


GO