CREATE TABLE [conformed].[dim_payment] (
    [payment_key]    BIGINT       NOT NULL,
    [payment_method] VARCHAR (20) NOT NULL,
    [card_type]      VARCHAR (20) NOT NULL,
    [sales_channel]  VARCHAR (20) NOT NULL,
    [is_cod]         BIT          NOT NULL
);


GO