CREATE TABLE [conformed].[dim_employee] (
    [employee_key]  BIGINT        NOT NULL,
    [employee_id]   VARCHAR (20)  NOT NULL,
    [employee_name] VARCHAR (100) NOT NULL,
    [role_name]     VARCHAR (50)  NOT NULL,
    [grade]         VARCHAR (10)  NOT NULL,
    [department_id] VARCHAR (20)  NOT NULL,
    [home_store_id] VARCHAR (20)  NOT NULL,
    [start_date]    DATE          NOT NULL,
    [end_date]      DATE          NOT NULL,
    [is_current]    BIT           NOT NULL
);


GO