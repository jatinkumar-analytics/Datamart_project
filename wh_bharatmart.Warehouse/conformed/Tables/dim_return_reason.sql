CREATE TABLE [conformed].[dim_return_reason] (
    [return_reason_key] BIGINT        NOT NULL,
    [return_reason_id]  VARCHAR (20)  NOT NULL,
    [category]          VARCHAR (50)  NOT NULL,
    [description]       VARCHAR (100) NOT NULL,
    [is_controllable]   VARCHAR (5)   NOT NULL
);


GO