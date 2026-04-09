-- Silver Layer DDL
CREATE TABLE social_media_impact_silver (
    Student_ID BIGINT NULL,
    Age BIGINT NULL,
    Gender VARCHAR(512) NULL,
    Academic_Level VARCHAR(512) NULL,
    Country VARCHAR(512) NULL,
    Avg_Daily_Usage_Hours DOUBLE PRECISION NULL,
    Most_Used_Platform VARCHAR(512) NULL,
    Affects_Academic_Performance VARCHAR(512) NULL,
    Sleep_Hours_Per_Night DOUBLE PRECISION NULL,
    Mental_Health_Score DOUBLE PRECISION NULL,
    Overall_Impact VARCHAR(512) NULL
);

-- Gold Layer DDL
CREATE TABLE social_media_impact_gold (
    Student_ID BIGINT NULL,
    Age BIGINT NULL,
    Gender_masked VARCHAR(512) NULL,
    Academic_Level VARCHAR(512) NULL,
    Country VARCHAR(512) NULL,
    Avg_Daily_Usage_Hours DOUBLE PRECISION NULL,
    Most_Used_Platform VARCHAR(512) NULL,
    Affects_Academic_Performance VARCHAR(512) NULL,
    Sleep_Hours_Per_Night DOUBLE PRECISION NULL,
    Mental_Health_Score DOUBLE PRECISION NULL,
    Overall_Impact VARCHAR(512) NULL,
    _valid_from TIMESTAMP NOT NULL,
    _valid_to TIMESTAMP,
    _is_current BOOLEAN NOT NULL DEFAULT TRUE,
    _change_hash VARCHAR(64),
    _last_updated TIMESTAMP NOT NULL
);