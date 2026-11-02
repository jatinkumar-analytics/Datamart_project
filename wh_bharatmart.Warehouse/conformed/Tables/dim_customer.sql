CREATE TABLE [conformed].[dim_customer] (
    [customer_key]  BIGINT        NOT NULL,
    [customer_id]   VARCHAR (20)  NOT NULL,
    [customer_name] VARCHAR (100) NOT NULL,
    [segment]       VARCHAR (30)  NOT NULL,
    [city]          VARCHAR (50)  NOT NULL,
    [state_name]    VARCHAR (50)  NOT NULL,
    [region]        VARCHAR (30)  NOT NULL,
    [start_date]    DATE          NOT NULL,
    [end_date]      DATE          NOT NULL,
    [is_current]    BIT           NOT NULL
);


GO