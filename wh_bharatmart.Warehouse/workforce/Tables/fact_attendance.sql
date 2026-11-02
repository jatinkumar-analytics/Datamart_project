CREATE TABLE [workforce].[fact_attendance] (
    [attendance_key]      BIGINT          NOT NULL,
    [employee_key]        BIGINT          NOT NULL,
    [department_key]      BIGINT          NOT NULL,
    [store_key]           BIGINT          NOT NULL,
    [attendance_date_key] INT             NOT NULL,
    [scheduled_hours]     DECIMAL (10, 2) NOT NULL,
    [worked_hours]        DECIMAL (10, 2) NOT NULL,
    [overtime_hours]      DECIMAL (10, 2) NOT NULL,
    [late_minutes]        INT             NOT NULL,
    [absence_count]       INT             NOT NULL
);


GO