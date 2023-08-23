CREATE TABLE "profile" (
  "account_id" uuid PRIMARY KEY,
  "trx_id" uuid UNIQUE,
  "first_name" string,
  "middle_name" string,
  "last_name" string,
  "email" string,
  "password" varchar(32),
  "gender" char(10),
  "nationality" string,
  "date_of_bith" date,
  "hotel" string,
  "prefer_mall" string,
  "consent" boolean,
  "marketing_consent" boolean,
  "email_verified" boolean,
  "created_at" timestamp,
  "updated_at" timestamp,
  "first_name_hash" string,
  "last_name_hash" string,
  "email_hash" string,
  "passport_hash" string,
  "is_active" boolean
);

CREATE TABLE "collect_spending" (
  "account_id" uuid PRIMARY KEY,
  "trx_id" uuid UNIQUE,
  "edc_id" string,
  "edc_token" string,
  "edc_trx_id" string,
  "building_id" integer,
  "building" varchar(25),
  "tenant_id" integer,
  "tenant_name" string,
  "receipt_id" string,
  "receipt_date" date,
  "total_amount" number,
  "edc_created_at" date,
  "edc_updated_at" date,
  "created_at" timestamp,
  "updated_at" timestamp,
  "void_flag" boolean
);

ALTER TABLE "collect_spending" ADD FOREIGN KEY ("account_id") REFERENCES "profile" ("account_id");
