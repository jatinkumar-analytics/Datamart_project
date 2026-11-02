CREATE TABLE [supply].[fact_purchase_orders] (
    [po_key]            BIGINT          NOT NULL,
    [po_number]         VARCHAR (30)    NOT NULL,
    [po_line_no]        INT             NOT NULL,
    [po_date_key]       INT             NOT NULL,
    [expected_date_key] INT             NOT NULL,
    [received_date_key] INT             NOT NULL,
    [product_key]       BIGINT          NOT NULL,
    [supplier_key]      BIGINT          NOT NULL,
    [warehouse_key]     BIGINT          NOT NULL,
    [employee_key]      BIGINT          NOT NULL,
    [ordered_quantity]  INT             NOT NULL,
    [received_quantity] INT             NOT NULL,
    [unit_cost]         DECIMAL (18, 2) NOT NULL,
    [ordered_amount]    DECIMAL (18, 2) NOT NULL,
    [po_amount]         DECIMAL (18, 2) NOT NULL
);


GO