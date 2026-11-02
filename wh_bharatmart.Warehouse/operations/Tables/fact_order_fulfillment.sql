CREATE TABLE [operations].[fact_order_fulfillment] (
    [order_key]          BIGINT          NOT NULL,
    [order_number]       VARCHAR (30)    NOT NULL,
    [order_date_key]     INT             NOT NULL,
    [payment_date_key]   INT             NOT NULL,
    [packed_date_key]    INT             NOT NULL,
    [shipped_date_key]   INT             NOT NULL,
    [delivered_date_key] INT             NULL,
    [cancelled_date_key] INT             NULL,
    [customer_key]       BIGINT          NOT NULL,
    [store_key]          BIGINT          NOT NULL,
    [warehouse_key]      BIGINT          NOT NULL,
    [carrier_key]        BIGINT          NOT NULL,
    [geography_key]      BIGINT          NOT NULL,
    [is_cancelled]       BIT             NOT NULL,
    [days_to_ship]       INT             NULL,
    [order_total]        DECIMAL (18, 2) NOT NULL
);


GO