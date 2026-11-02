CREATE TABLE [conformed].[dim_warehouse] (
    [warehouse_key]  BIGINT        NOT NULL,
    [warehouse_id]   VARCHAR (20)  NOT NULL,
    [warehouse_name] VARCHAR (100) NOT NULL,
    [warehouse_type] VARCHAR (30)  NOT NULL,
    [city]           VARCHAR (50)  NOT NULL,
    [state_name]     VARCHAR (50)  NOT NULL,
    [capacity_units] INT           NOT NULL
);


GO