CREATE TABLE [sales].[fact_sales] (
    [sales_key]       BIGINT          NOT NULL,
    [order_number]    VARCHAR (30)    NOT NULL,
    [order_line_no]   INT             NOT NULL,
    [order_date_key]  INT             NOT NULL,
    [ship_date_key]   INT             NOT NULL,
    [customer_key]    BIGINT          NOT NULL,
    [product_key]     BIGINT          NOT NULL,
    [store_key]       BIGINT          NOT NULL,
    [employee_key]    BIGINT          NOT NULL,
    [geography_key]   BIGINT          NOT NULL,
    [payment_key]     BIGINT          NOT NULL,
    [quantity]        INT             NOT NULL,
    [unit_price]      DECIMAL (18, 2) NOT NULL,
    [gross_amount]    DECIMAL (18, 2) NOT NULL,
    [discount_amount] DECIMAL (18, 2) NOT NULL,
    [net_amount]      DECIMAL (18, 2) NOT NULL,
    [cost_amount]     DECIMAL (18, 2) NOT NULL,
    [tax_amount]      DECIMAL (18, 2) NOT NULL,
    [margin]          DECIMAL (18, 2) NOT NULL,
    [promotion_key]   BIGINT          NULL
);


GO