CREATE TABLE [workforce].[fact_payroll] (
    [payroll_key]         BIGINT          NOT NULL,
    [employee_key]        BIGINT          NOT NULL,
    [department_key]      BIGINT          NOT NULL,
    [store_key]           BIGINT          NOT NULL,
    [pay_period_date_key] INT             NOT NULL,
    [pay_period]          VARCHAR (7)     NOT NULL,
    [basic_pay]           DECIMAL (18, 2) NOT NULL,
    [allowances]          DECIMAL (18, 2) NOT NULL,
    [overtime_pay]        DECIMAL (18, 2) NOT NULL,
    [deductions]          DECIMAL (18, 2) NOT NULL,
    [tax]                 DECIMAL (18, 2) NOT NULL,
    [gross_pay]           DECIMAL (18, 2) NOT NULL,
    [net_pay]             DECIMAL (18, 2) NOT NULL
);


GO