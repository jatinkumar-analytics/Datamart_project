CREATE TABLE [supply].[fact_shipment] (
    [shipment_key]      BIGINT          NOT NULL,
    [shipment_number]   VARCHAR (30)    NOT NULL,
    [shipment_line_no]  INT             NOT NULL,
    [ship_date_key]     INT             NOT NULL,
    [promised_date_key] INT             NOT NULL,
    [delivery_date_key] INT             NOT NULL,
    [product_key]       BIGINT          NOT NULL,
    [supplier_key]      BIGINT          NOT NULL,
    [warehouse_key]     BIGINT          NOT NULL,
    [store_key]         BIGINT          NOT NULL,
    [carrier_key]       BIGINT          NOT NULL,
    [geography_key]     BIGINT          NOT NULL,
    [shipped_quantity]  INT             NOT NULL,
    [shipment_weight]   DECIMAL (18, 3) NOT NULL,
    [shipping_cost]     DECIMAL (18, 2) NOT NULL
);


GO