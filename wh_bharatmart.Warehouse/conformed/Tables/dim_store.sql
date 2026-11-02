CREATE TABLE [conformed].[dim_store] (
    [store_key]    BIGINT        NOT NULL,
    [store_id]     VARCHAR (20)  NOT NULL,
    [store_name]   VARCHAR (100) NOT NULL,
    [store_format] VARCHAR (30)  NOT NULL,
    [city]         VARCHAR (50)  NOT NULL,
    [state_name]   VARCHAR (50)  NOT NULL,
    [region]       VARCHAR (30)  NOT NULL,
    [open_date]    DATE          NOT NULL
);


GO