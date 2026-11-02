CREATE TABLE [conformed].[dim_product] (
    [product_key]     BIGINT          NOT NULL,
    [product_id]      VARCHAR (20)    NOT NULL,
    [product_name]    VARCHAR (150)   NOT NULL,
    [brand]           VARCHAR (50)    NOT NULL,
    [department_name] VARCHAR (50)    NOT NULL,
    [category]        VARCHAR (50)    NOT NULL,
    [subcategory]     VARCHAR (70)    NOT NULL,
    [list_price]      DECIMAL (18, 2) NOT NULL,
    [standard_cost]   DECIMAL (18, 2) NOT NULL,
    [start_date]      DATE            NOT NULL,
    [end_date]        DATE            NOT NULL,
    [is_current]      BIT             NOT NULL
);


GO