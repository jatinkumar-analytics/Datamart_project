CREATE TABLE [conformed].[dim_carrier] (
    [carrier_key]    BIGINT        NOT NULL,
    [carrier_id]     VARCHAR (20)  NOT NULL,
    [carrier_name]   VARCHAR (100) NOT NULL,
    [service_level]  VARCHAR (30)  NOT NULL,
    [transport_mode] VARCHAR (30)  NOT NULL
);


GO