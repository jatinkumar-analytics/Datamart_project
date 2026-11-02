CREATE TABLE [conformed].[dim_date] (
    [date_key]     INT          NOT NULL,
    [full_date]    DATE         NOT NULL,
    [day_number]   INT          NOT NULL,
    [month_number] INT          NOT NULL,
    [month_name]   VARCHAR (10) NOT NULL,
    [quarter_no]   INT          NOT NULL,
    [year_number]  INT          NOT NULL
);


GO