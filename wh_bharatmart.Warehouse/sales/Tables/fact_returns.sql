CREATE TABLE [sales].[fact_returns] (
    [return_key]            BIGINT          NOT NULL,
    [return_number]         VARCHAR (30)    NOT NULL,
    [return_line_no]        INT             NOT NULL,
    [return_date_key]       INT             NOT NULL,
    [original_order_number] VARCHAR (30)    NOT NULL,
    [customer_key]          BIGINT          NOT NULL,
    [product_key]           BIGINT          NOT NULL,
    [store_key]             BIGINT          NOT NULL,
    [employee_key]          BIGINT          NOT NULL,
    [geography_key]         BIGINT          NOT NULL,
    [return_reason_key]     BIGINT          NOT NULL,
    [quantity]              INT             NOT NULL,
    [refund_amount]         DECIMAL (18, 2) NOT NULL,
    [restocking_fee]        DECIMAL (18, 2) NOT NULL
);


GO