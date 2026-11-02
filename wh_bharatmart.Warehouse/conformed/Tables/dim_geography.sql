CREATE TABLE [conformed].[dim_geography] (
    [geography_key] BIGINT       NOT NULL,
    [geography_id]  VARCHAR (20) NOT NULL,
    [city]          VARCHAR (50) NOT NULL,
    [state_name]    VARCHAR (50) NOT NULL,
    [region]        VARCHAR (30) NOT NULL,
    [zone]          VARCHAR (30) NOT NULL
);


GO