CREATE TABLE [conformed].[dim_supplier] (
    [supplier_key]    BIGINT         NOT NULL,
    [supplier_id]     VARCHAR (20)   NOT NULL,
    [supplier_name]   VARCHAR (100)  NOT NULL,
    [supplier_type]   VARCHAR (30)   NOT NULL,
    [city]            VARCHAR (50)   NOT NULL,
    [state_name]      VARCHAR (50)   NOT NULL,
    [supplier_rating] DECIMAL (4, 1) NOT NULL,
    [payment_terms]   VARCHAR (20)   NOT NULL
);


GO