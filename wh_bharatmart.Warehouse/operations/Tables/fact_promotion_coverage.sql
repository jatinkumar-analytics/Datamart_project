CREATE TABLE [operations].[fact_promotion_coverage] (
    [coverage_date_key] INT    NOT NULL,
    [promotion_key]     BIGINT NOT NULL,
    [product_key]       BIGINT NOT NULL,
    [store_key]         BIGINT NOT NULL,
    [is_eligible]       BIT    NOT NULL
);


GO