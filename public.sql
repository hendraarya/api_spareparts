/*
 Navicat Premium Data Transfer

 Source Server         : Database Postgres Server DE
 Source Server Type    : PostgreSQL
 Source Server Version : 130001
 Source Host           : 10.202.10.111:5432
 Source Catalog        : spareparts
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 130001
 File Encoding         : 65001

 Date: 01/04/2022 15:09:52
*/


-- ----------------------------
-- Sequence structure for autoincrement_stockin
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."autoincrement_stockin";
CREATE SEQUENCE "public"."autoincrement_stockin" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
CYCLE ;

-- ----------------------------
-- Sequence structure for autoincrement_transactionpart
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."autoincrement_transactionpart";
CREATE SEQUENCE "public"."autoincrement_transactionpart" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
CYCLE ;

-- ----------------------------
-- Sequence structure for failed_jobs_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."failed_jobs_id_seq";
CREATE SEQUENCE "public"."failed_jobs_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for migrations_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."migrations_id_seq";
CREATE SEQUENCE "public"."migrations_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for oauth_clients_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."oauth_clients_id_seq";
CREATE SEQUENCE "public"."oauth_clients_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for oauth_personal_access_clients_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."oauth_personal_access_clients_id_seq";
CREATE SEQUENCE "public"."oauth_personal_access_clients_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for personal_access_tokens_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."personal_access_tokens_id_seq";
CREATE SEQUENCE "public"."personal_access_tokens_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for users_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."users_id_seq";
CREATE SEQUENCE "public"."users_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS "public"."failed_jobs";
CREATE TABLE "public"."failed_jobs" (
  "id" int8 NOT NULL DEFAULT nextval('failed_jobs_id_seq'::regclass),
  "uuid" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "connection" text COLLATE "pg_catalog"."default" NOT NULL,
  "queue" text COLLATE "pg_catalog"."default" NOT NULL,
  "payload" text COLLATE "pg_catalog"."default" NOT NULL,
  "exception" text COLLATE "pg_catalog"."default" NOT NULL,
  "failed_at" timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS "public"."migrations";
CREATE TABLE "public"."migrations" (
  "id" int4 NOT NULL DEFAULT nextval('migrations_id_seq'::regclass),
  "migration" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "batch" int4 NOT NULL
)
;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO "public"."migrations" VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO "public"."migrations" VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO "public"."migrations" VALUES (3, '2016_06_01_000001_create_oauth_auth_codes_table', 1);
INSERT INTO "public"."migrations" VALUES (4, '2016_06_01_000002_create_oauth_access_tokens_table', 1);
INSERT INTO "public"."migrations" VALUES (5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1);
INSERT INTO "public"."migrations" VALUES (6, '2016_06_01_000004_create_oauth_clients_table', 1);
INSERT INTO "public"."migrations" VALUES (7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1);
INSERT INTO "public"."migrations" VALUES (8, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO "public"."migrations" VALUES (9, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS "public"."oauth_access_tokens";
CREATE TABLE "public"."oauth_access_tokens" (
  "id" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "user_id" int8,
  "client_id" int8 NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "scopes" text COLLATE "pg_catalog"."default",
  "revoked" bool NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "expires_at" timestamp(0)
)
;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
INSERT INTO "public"."oauth_access_tokens" VALUES ('870ce59a5279a42bd7c7d6776411dcf64da7f69d746c3231082a8bd28cdb6deb6ebe052c9fc83b6f', 1, 1, 'nApp', '[]', 'f', '2022-03-17 02:36:07', '2022-03-17 02:36:07', '2023-03-17 02:36:07');
INSERT INTO "public"."oauth_access_tokens" VALUES ('17eae2bd5bedc5c8b242f900a078dd37ad0f88d0293791df83a91b92c5d969f379377786b816ed58', 1, 1, 'nApp', '[]', 'f', '2022-03-17 02:43:09', '2022-03-17 02:43:09', '2023-03-17 02:43:09');
INSERT INTO "public"."oauth_access_tokens" VALUES ('f696ca5d9877b2c54e438f3e6d04d13167abc22bea571c5f6b5c82b6fc3fc938c3c4e18238b02eba', 1, 1, 'nApp', '[]', 'f', '2022-03-17 03:06:36', '2022-03-17 03:06:36', '2023-03-17 03:06:36');
INSERT INTO "public"."oauth_access_tokens" VALUES ('471aa465871fc9298947fb2ba710b3985d23a6b1cd65b0e2a2462e718189bd8631b904d769ae4602', 1, 1, 'nApp', '[]', 'f', '2022-03-17 03:17:02', '2022-03-17 03:17:02', '2023-03-17 03:17:02');
INSERT INTO "public"."oauth_access_tokens" VALUES ('89992ef5d31d297b57b947c3ed12dd75571f946d3ddfd2e967d0269544c3f44ae07c493c1ac97c08', 1, 1, 'nApp', '[]', 'f', '2022-03-30 05:44:23', '2022-03-30 05:44:23', '2023-03-30 05:44:23');
INSERT INTO "public"."oauth_access_tokens" VALUES ('a756599c579ea7c15c40cce16035052285bd374906297562f1f64fbb1092eb3f3f2b8f47a06dfda2', 1, 1, 'nApp', '[]', 't', '2022-03-17 04:02:27', '2022-03-17 04:02:27', '2023-03-17 04:02:27');
INSERT INTO "public"."oauth_access_tokens" VALUES ('299db4d0e8d5479ca50d1f7c57962f02d13ce752a1254b13145b673177450b2f38d537155b57ba03', 1, 1, 'nApp', '[]', 'f', '2022-03-22 12:20:00', '2022-03-22 12:20:00', '2023-03-22 12:20:00');
INSERT INTO "public"."oauth_access_tokens" VALUES ('409c5d4510d6ae0e75fc75a3cd3e9f9f4f4d73d19ba27eb58213650f072306cc67e6b258e240015e', 1, 1, 'nApp', '[]', 't', '2022-03-24 11:28:05', '2022-03-24 11:28:05', '2023-03-24 11:28:05');
INSERT INTO "public"."oauth_access_tokens" VALUES ('130a5198d39a9d99719049a416896e750c0909c3b7cda04c4cf56de137d54f484a8fcf80e1bd69bb', 2, 1, 'nApp', '[]', 'f', '2022-03-25 03:42:04', '2022-03-25 03:42:04', '2023-03-25 03:42:04');
INSERT INTO "public"."oauth_access_tokens" VALUES ('133708c75dbb075a19397b5a929e402b31b21eb174cbe25f978bcbc2e2c44f40acf40ce0acb8e6e1', 1, 1, 'nApp', '[]', 'f', '2022-03-28 05:54:43', '2022-03-28 05:54:43', '2023-03-28 05:54:43');
INSERT INTO "public"."oauth_access_tokens" VALUES ('01decc1df963dd5abf0ad2de5b4725cca25c6d438122e8835539c8e8127629ae53cc810fddc2e2da', 1, 1, 'nApp', '[]', 'f', '2022-03-28 07:40:38', '2022-03-28 07:40:38', '2023-03-28 07:40:38');
INSERT INTO "public"."oauth_access_tokens" VALUES ('7bb1ae278f48714e4aedd105d713c973a4640859a98ed2d88a32acd1f747593e16cce4701e006e5e', 1, 1, 'nApp', '[]', 'f', '2022-03-28 08:07:23', '2022-03-28 08:07:23', '2023-03-28 08:07:23');
INSERT INTO "public"."oauth_access_tokens" VALUES ('48ff80bfcc807de139377f38af670454e6bcb953aaf97e64a4daae9ba60ac3243ba8508d3100c3e3', 4, 1, 'nApp', '[]', 'f', '2022-03-29 10:43:09', '2022-03-29 10:43:09', '2023-03-29 10:43:09');
INSERT INTO "public"."oauth_access_tokens" VALUES ('fdb5d34a8dfc4c7ebec45321cb28379b32a4ec4c3f3b1fb9d93acf8312cb2e5b68db11b2032038da', 5, 1, 'nApp', '[]', 'f', '2022-03-29 11:29:33', '2022-03-29 11:29:33', '2023-03-29 11:29:33');
INSERT INTO "public"."oauth_access_tokens" VALUES ('46bc6d58edd9d6e4bcd2b52270fc9fd79995032a7fb1d5345cf4d2096a3a7c30d3c905f157001506', 1, 1, 'nApp', '[]', 'f', '2022-03-29 11:46:01', '2022-03-29 11:46:01', '2023-03-29 11:46:01');
INSERT INTO "public"."oauth_access_tokens" VALUES ('2fc0aa3fd3cd10cbd934dc928123b09fb2a9366730db8013a639f9714f18e91f575962366bb6e67d', 2, 1, 'nApp', '[]', 'f', '2022-03-29 11:52:28', '2022-03-29 11:52:28', '2023-03-29 11:52:28');
INSERT INTO "public"."oauth_access_tokens" VALUES ('4edeb85f32f8364aa97c27f7e05de6e5eac892e4bca7bed702913db1e7d693547debb88fb40cecb0', 6, 1, 'nApp', '[]', 'f', '2022-03-29 11:57:48', '2022-03-29 11:57:48', '2023-03-29 11:57:48');
INSERT INTO "public"."oauth_access_tokens" VALUES ('774d3536108c9ac086635862d94ecc663495b88ab3ef6f6aa6e68659b58b1a84d29460e18c537989', 7, 1, 'nApp', '[]', 'f', '2022-03-29 12:00:25', '2022-03-29 12:00:25', '2023-03-29 12:00:25');
INSERT INTO "public"."oauth_access_tokens" VALUES ('a10e057fee3f34c58bd339263f4c0be2fba11f7861d0d0ca07f4ef61cdf97096b7cb14f373776cf5', 8, 1, 'nApp', '[]', 'f', '2022-03-29 12:14:43', '2022-03-29 12:14:43', '2023-03-29 12:14:43');
INSERT INTO "public"."oauth_access_tokens" VALUES ('6195fea1ece3d3f9267da2c0f6d09bb39c54d37cd04d8bdc94aedd8455380029986633699deb35be', 9, 1, 'nApp', '[]', 'f', '2022-03-29 12:51:06', '2022-03-29 12:51:06', '2023-03-29 12:51:06');
INSERT INTO "public"."oauth_access_tokens" VALUES ('537823977cfd33f5fc9db9b6a5251983a53662f86ecd776846724f25859d3a9f1318e36d09c05c63', 10, 1, 'nApp', '[]', 'f', '2022-03-30 04:15:43', '2022-03-30 04:15:43', '2023-03-30 04:15:43');
INSERT INTO "public"."oauth_access_tokens" VALUES ('9fa9d820a709c654956ec7bcde93d0943a3d4affc2fd91e47d1025d374047bdab7bb8132637cea33', 1, 1, 'nApp', '[]', 'f', '2022-03-30 05:44:52', '2022-03-30 05:44:52', '2023-03-30 05:44:52');
INSERT INTO "public"."oauth_access_tokens" VALUES ('158ba9f09ea7ba79baacb37057def8b2b509463f63ec14c5347e84e409b4b5f5a4c0963c021043c6', 1, 1, 'nApp', '[]', 'f', '2022-03-30 06:04:00', '2022-03-30 06:04:00', '2023-03-30 06:04:00');
INSERT INTO "public"."oauth_access_tokens" VALUES ('9c6e199212ee45517a09824f5e20c7cb829d342e19e801e99ba9e642369ad1fbca67f453f869d92d', 1, 1, 'nApp', '[]', 'f', '2022-03-30 06:48:00', '2022-03-30 06:48:00', '2023-03-30 06:48:00');
INSERT INTO "public"."oauth_access_tokens" VALUES ('3492436adff2964f32ab111d1cd0233837bd032f0f59cee3dccd160748cbf94555a5f588ed3f027e', 1, 1, 'nApp', '[]', 'f', '2022-03-30 06:50:11', '2022-03-30 06:50:11', '2023-03-30 06:50:11');
INSERT INTO "public"."oauth_access_tokens" VALUES ('836c22a2951e73578870254d55857b21dbfeeed5cdee790e940ebde875d46ed20b949de18a6d4e11', 1, 1, 'nApp', '[]', 'f', '2022-03-30 06:55:04', '2022-03-30 06:55:04', '2023-03-30 06:55:04');
INSERT INTO "public"."oauth_access_tokens" VALUES ('07ddfe5325f03c95c7fdfcd0675617e97e2140122f2dca151e4cb5033be83fcc48c2a48ceb7fd6d7', 1, 1, 'nApp', '[]', 'f', '2022-03-30 06:56:22', '2022-03-30 06:56:22', '2023-03-30 06:56:22');
INSERT INTO "public"."oauth_access_tokens" VALUES ('51b80d5e7383e44a9685b55c532258126132141c25c6a7ad276cfe2614e82f2d323b51f44dde77cb', 1, 1, 'nApp', '[]', 'f', '2022-03-30 07:31:16', '2022-03-30 07:31:16', '2023-03-30 07:31:16');
INSERT INTO "public"."oauth_access_tokens" VALUES ('3c043ba3a2b762934ccba883efea220b702cb397a687e0ea78c3e29ed6a5ba90537158802ad0712a', 1, 1, 'nApp', '[]', 'f', '2022-03-30 08:08:11', '2022-03-30 08:08:11', '2023-03-30 08:08:11');
INSERT INTO "public"."oauth_access_tokens" VALUES ('f2e8f19e24e4242382dc27f4c911b478181b1a17b5a70506a4a4b7e112b6cedf23aa0ecdaab45826', 1, 1, 'nApp', '[]', 'f', '2022-04-01 04:31:02', '2022-04-01 04:31:02', '2023-04-01 04:31:02');

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS "public"."oauth_auth_codes";
CREATE TABLE "public"."oauth_auth_codes" (
  "id" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "user_id" int8 NOT NULL,
  "client_id" int8 NOT NULL,
  "scopes" text COLLATE "pg_catalog"."default",
  "revoked" bool NOT NULL,
  "expires_at" timestamp(0)
)
;

-- ----------------------------
-- Records of oauth_auth_codes
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS "public"."oauth_clients";
CREATE TABLE "public"."oauth_clients" (
  "id" int8 NOT NULL DEFAULT nextval('oauth_clients_id_seq'::regclass),
  "user_id" int8,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "secret" varchar(100) COLLATE "pg_catalog"."default",
  "provider" varchar(255) COLLATE "pg_catalog"."default",
  "redirect" text COLLATE "pg_catalog"."default" NOT NULL,
  "personal_access_client" bool NOT NULL,
  "password_client" bool NOT NULL,
  "revoked" bool NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO "public"."oauth_clients" VALUES (1, NULL, 'Laravel Personal Access Client', 'HYdN7iCu7h2DYDSdl7i9futW4ZVzjWgwWXOMg6jF', NULL, 'http://localhost', 't', 'f', 'f', '2022-03-17 01:44:10', '2022-03-17 01:44:10');
INSERT INTO "public"."oauth_clients" VALUES (2, NULL, 'Laravel Password Grant Client', 'XSIIkNvfpdnwfzZVwiYuGnURGeBJqyq4JYB0lmdu', 'users', 'http://localhost', 'f', 't', 'f', '2022-03-17 01:44:10', '2022-03-17 01:44:10');

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS "public"."oauth_personal_access_clients";
CREATE TABLE "public"."oauth_personal_access_clients" (
  "id" int8 NOT NULL DEFAULT nextval('oauth_personal_access_clients_id_seq'::regclass),
  "client_id" int8 NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------
INSERT INTO "public"."oauth_personal_access_clients" VALUES (1, 1, '2022-03-17 01:44:10', '2022-03-17 01:44:10');

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS "public"."oauth_refresh_tokens";
CREATE TABLE "public"."oauth_refresh_tokens" (
  "id" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "access_token_id" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "revoked" bool NOT NULL,
  "expires_at" timestamp(0)
)
;

-- ----------------------------
-- Records of oauth_refresh_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for parts
-- ----------------------------
DROP TABLE IF EXISTS "public"."parts";
CREATE TABLE "public"."parts" (
  "part_id" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "part_name" varchar(50) COLLATE "pg_catalog"."default",
  "type" varchar(100) COLLATE "pg_catalog"."default",
  "brand" varchar(100) COLLATE "pg_catalog"."default",
  "maker" varchar(100) COLLATE "pg_catalog"."default",
  "location" varchar(100) COLLATE "pg_catalog"."default",
  "min_stock" int2,
  "rop" int2,
  "designation" varchar(100) COLLATE "pg_catalog"."default",
  "remark" varchar(255) COLLATE "pg_catalog"."default",
  "created_at" timestamp(6) NOT NULL DEFAULT now(),
  "updated_at" timestamp(6) NOT NULL DEFAULT now(),
  "stock_onhand" int2
)
;

-- ----------------------------
-- Records of parts
-- ----------------------------
INSERT INTO "public"."parts" VALUES ('40SW0101-015', 'PUSH BUTTON', 'ALL-45L', 'FUJI ELECTRIC', NULL, 'COM E6-A4', 4, 4, NULL, 'Update ya', '2022-03-23 15:07:10.544709', '2022-03-24 08:54:49.513499', 5);
INSERT INTO "public"."parts" VALUES ('40SW0101-013', 'PUSH BUTTON', 'AH 164-SLW IIE3(PUTIH)(D15)', 'FUJI ELECTRIC', NULL, 'COM E6-A2', 20, NULL, NULL, NULL, '2022-03-16 16:34:41.909038', '2022-03-24 18:50:41.977579', 15);
INSERT INTO "public"."parts" VALUES ('40SW0101-012', 'PUSH BUTTON', 'AL2H-M11Y', 'IDEC', NULL, 'COM E6-A1', 2, 4, NULL, NULL, '2022-03-16 16:31:31', '2022-03-24 19:17:11.563231', 20);
INSERT INTO "public"."parts" VALUES ('40SW0101-014', 'RELAY', 'MY2N-GS', 'OMRON', 'OMRON', 'COM E4-A2', 4, NULL, NULL, NULL, '2022-03-25 10:16:37.614022', '2022-03-25 10:16:37.614022', 25);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS "public"."password_resets";
CREATE TABLE "public"."password_resets" (
  "email" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "token" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(0)
)
;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS "public"."personal_access_tokens";
CREATE TABLE "public"."personal_access_tokens" (
  "id" int8 NOT NULL DEFAULT nextval('personal_access_tokens_id_seq'::regclass),
  "tokenable_type" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "tokenable_id" int8 NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "token" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "abilities" text COLLATE "pg_catalog"."default",
  "last_used_at" timestamp(0),
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for stock_partin
-- ----------------------------
DROP TABLE IF EXISTS "public"."stock_partin";
CREATE TABLE "public"."stock_partin" (
  "id_stock" int4 NOT NULL DEFAULT nextval('autoincrement_stockin'::regclass),
  "date_stock" timestamp(6) NOT NULL DEFAULT now(),
  "part_id" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "partin" int4,
  "created_at" timestamp(6) NOT NULL DEFAULT now(),
  "updated_at" timestamp(6) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Records of stock_partin
-- ----------------------------
INSERT INTO "public"."stock_partin" VALUES (2, '2022-03-24 08:52:42', '40SW0101-015', 10, '2022-03-24 08:52:49.892364', '2022-03-24 08:52:49.892364');
INSERT INTO "public"."stock_partin" VALUES (3, '2022-03-24 18:50:41.977579', '40SW0101-013', 5, '2022-03-24 18:50:41.977579', '2022-03-24 18:50:41.977579');

-- ----------------------------
-- Table structure for transaction_part
-- ----------------------------
DROP TABLE IF EXISTS "public"."transaction_part";
CREATE TABLE "public"."transaction_part" (
  "id_transaction" int4 NOT NULL DEFAULT nextval('autoincrement_transactionpart'::regclass),
  "date_transaction" timestamp(6) NOT NULL,
  "part_id" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "part_out" int4,
  "machine_no" varchar(30) COLLATE "pg_catalog"."default",
  "group_shift" varchar(5) COLLATE "pg_catalog"."default",
  "pic" varchar(50) COLLATE "pg_catalog"."default",
  "no_jobmta" varchar(30) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of transaction_part
-- ----------------------------
INSERT INTO "public"."transaction_part" VALUES (1, '2022-03-24 08:54:23', '40SW0101-015', 5, 'PP-010-ID', 'B', 'ANWAR', NULL);
INSERT INTO "public"."transaction_part" VALUES (2, '2022-03-24 19:17:11.563231', '40SW0101-012', 10, 'HP-137-ID', 'A', 'SOLEH', NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "public"."users";
CREATE TABLE "public"."users" (
  "id" int8 NOT NULL DEFAULT nextval('users_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "email" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "email_verified_at" timestamp(0),
  "password" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "remember_token" varchar(100) COLLATE "pg_catalog"."default",
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "profile_picture" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO "public"."users" VALUES (1, 'Hendra Arya', 'hendra@nok.co.id', NULL, '$2y$10$KXaVL5T4/hwWHsWTrDtesejKsUI/fYnHxUjfU6Z0uSMT2OdjzJRAS', NULL, '2022-03-17 02:36:07', '2022-03-24 01:10:22', 'public/assets/image_profile/1648084222.jpg');
INSERT INTO "public"."users" VALUES (2, 'Ade Maulana A', 'ade@nok.co.id', NULL, '$2y$10$OHVVzEmlzRRyML4GJUplN.OP8kfAzJZPBLxZ.veZ1/e878ZJkvlCu', NULL, '2022-03-25 03:42:03', '2022-03-25 03:42:03', NULL);
INSERT INTO "public"."users" VALUES (7, 'agus', 'agus@nok.co.id', NULL, '$2y$10$6U5aRcJ9CfY38S/dOSDA8.Pk9.SjQ4KRmiiDGd6yB.0tDwmArJFs2', NULL, '2022-03-29 12:00:25', '2022-03-29 12:00:25', NULL);
INSERT INTO "public"."users" VALUES (8, 'evi', 'evi@nok.co.id', NULL, '$2y$10$/TI7zfZW8LCmyHw9nzBc1OIXQRoIz.ipk5d9kqRuOr6otlo7/f6w.', NULL, '2022-03-29 12:14:42', '2022-03-29 12:14:42', NULL);
INSERT INTO "public"."users" VALUES (9, 'iin', 'iin@gmail.com', NULL, '$2y$10$l6UCAWfBfCtj.pfGgroPiOmp6KeLqieDD.JJGUalBkeDMHRqECr0i', NULL, '2022-03-29 12:51:06', '2022-03-29 12:51:06', NULL);
INSERT INTO "public"."users" VALUES (10, 'dindin', 'pembisnismuda2@gmail.com', NULL, '$2y$10$LYBXWokdFvgWojuMAPr5FOwkc8SwW7ST5pZKPlS41K3to9z8hacyq', NULL, '2022-03-30 04:15:42', '2022-03-30 04:15:42', NULL);

-- ----------------------------
-- Function structure for stockin_part
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."stockin_part"();
CREATE OR REPLACE FUNCTION "public"."stockin_part"()
  RETURNS "pg_catalog"."trigger" AS $BODY$
	
	DECLARE
	
	get_partid VARCHAR := NEW.part_id;
	get_totalpartin INTEGER := NEW.partin;

BEGIN

 IF tg_op = 'INSERT' THEN
 UPDATE parts SET stock_onhand = stock_onhand+get_totalpartin WHERE part_id = get_partid;
 END IF;
  RETURN NEW;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for transaction_partout
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."transaction_partout"();
CREATE OR REPLACE FUNCTION "public"."transaction_partout"()
  RETURNS "pg_catalog"."trigger" AS $BODY$
	
	DECLARE
	
	get_partid VARCHAR := NEW.part_id;
	get_totalpartout INTEGER := NEW.part_out;

BEGIN

 IF tg_op = 'INSERT' THEN
 UPDATE parts SET stock_onhand = stock_onhand-get_totalpartout WHERE part_id = get_partid;
 END IF;
  RETURN NEW;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for trigger_set_timestamp
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."trigger_set_timestamp"();
CREATE OR REPLACE FUNCTION "public"."trigger_set_timestamp"()
  RETURNS "pg_catalog"."trigger" AS $BODY$
BEGIN
  NEW.created_at = NOW();
	NEW.updated_at = NOW();
  RETURN NEW;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for update_timestamp
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."update_timestamp"();
CREATE OR REPLACE FUNCTION "public"."update_timestamp"()
  RETURNS "pg_catalog"."trigger" AS $BODY$
BEGIN
	NEW.updated_at = NOW();
  RETURN NEW;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."autoincrement_stockin"
OWNED BY "public"."stock_partin"."id_stock";
SELECT setval('"public"."autoincrement_stockin"', 4, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."autoincrement_transactionpart"
OWNED BY "public"."transaction_part"."id_transaction";
SELECT setval('"public"."autoincrement_transactionpart"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."failed_jobs_id_seq"
OWNED BY "public"."failed_jobs"."id";
SELECT setval('"public"."failed_jobs_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."migrations_id_seq"
OWNED BY "public"."migrations"."id";
SELECT setval('"public"."migrations_id_seq"', 10, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."oauth_clients_id_seq"
OWNED BY "public"."oauth_clients"."id";
SELECT setval('"public"."oauth_clients_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."oauth_personal_access_clients_id_seq"
OWNED BY "public"."oauth_personal_access_clients"."id";
SELECT setval('"public"."oauth_personal_access_clients_id_seq"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."personal_access_tokens_id_seq"
OWNED BY "public"."personal_access_tokens"."id";
SELECT setval('"public"."personal_access_tokens_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."users_id_seq"
OWNED BY "public"."users"."id";
SELECT setval('"public"."users_id_seq"', 11, true);

-- ----------------------------
-- Uniques structure for table failed_jobs
-- ----------------------------
ALTER TABLE "public"."failed_jobs" ADD CONSTRAINT "failed_jobs_uuid_unique" UNIQUE ("uuid");

-- ----------------------------
-- Primary Key structure for table failed_jobs
-- ----------------------------
ALTER TABLE "public"."failed_jobs" ADD CONSTRAINT "failed_jobs_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table migrations
-- ----------------------------
ALTER TABLE "public"."migrations" ADD CONSTRAINT "migrations_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table oauth_access_tokens
-- ----------------------------
CREATE INDEX "oauth_access_tokens_user_id_index" ON "public"."oauth_access_tokens" USING btree (
  "user_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table oauth_access_tokens
-- ----------------------------
ALTER TABLE "public"."oauth_access_tokens" ADD CONSTRAINT "oauth_access_tokens_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table oauth_auth_codes
-- ----------------------------
CREATE INDEX "oauth_auth_codes_user_id_index" ON "public"."oauth_auth_codes" USING btree (
  "user_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table oauth_auth_codes
-- ----------------------------
ALTER TABLE "public"."oauth_auth_codes" ADD CONSTRAINT "oauth_auth_codes_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table oauth_clients
-- ----------------------------
CREATE INDEX "oauth_clients_user_id_index" ON "public"."oauth_clients" USING btree (
  "user_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table oauth_clients
-- ----------------------------
ALTER TABLE "public"."oauth_clients" ADD CONSTRAINT "oauth_clients_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table oauth_personal_access_clients
-- ----------------------------
ALTER TABLE "public"."oauth_personal_access_clients" ADD CONSTRAINT "oauth_personal_access_clients_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table oauth_refresh_tokens
-- ----------------------------
CREATE INDEX "oauth_refresh_tokens_access_token_id_index" ON "public"."oauth_refresh_tokens" USING btree (
  "access_token_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table oauth_refresh_tokens
-- ----------------------------
ALTER TABLE "public"."oauth_refresh_tokens" ADD CONSTRAINT "oauth_refresh_tokens_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Triggers structure for table parts
-- ----------------------------
CREATE TRIGGER "Automatic_timestamp" AFTER INSERT ON "public"."parts"
FOR EACH ROW
EXECUTE PROCEDURE "public"."trigger_set_timestamp"();
CREATE TRIGGER "update_timestamp" BEFORE UPDATE ON "public"."parts"
FOR EACH ROW
EXECUTE PROCEDURE "public"."update_timestamp"();

-- ----------------------------
-- Primary Key structure for table parts
-- ----------------------------
ALTER TABLE "public"."parts" ADD CONSTRAINT "parts_pkey" PRIMARY KEY ("part_id");

-- ----------------------------
-- Indexes structure for table password_resets
-- ----------------------------
CREATE INDEX "password_resets_email_index" ON "public"."password_resets" USING btree (
  "email" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Indexes structure for table personal_access_tokens
-- ----------------------------
CREATE INDEX "personal_access_tokens_tokenable_type_tokenable_id_index" ON "public"."personal_access_tokens" USING btree (
  "tokenable_type" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "tokenable_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table personal_access_tokens
-- ----------------------------
ALTER TABLE "public"."personal_access_tokens" ADD CONSTRAINT "personal_access_tokens_token_unique" UNIQUE ("token");

-- ----------------------------
-- Primary Key structure for table personal_access_tokens
-- ----------------------------
ALTER TABLE "public"."personal_access_tokens" ADD CONSTRAINT "personal_access_tokens_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Triggers structure for table stock_partin
-- ----------------------------
CREATE TRIGGER "trigger_update_stockonhand" AFTER INSERT OR UPDATE OF "partin" ON "public"."stock_partin"
FOR EACH ROW
EXECUTE PROCEDURE "public"."stockin_part"();

-- ----------------------------
-- Primary Key structure for table stock_partin
-- ----------------------------
ALTER TABLE "public"."stock_partin" ADD CONSTRAINT "stock_partin_pkey" PRIMARY KEY ("id_stock");

-- ----------------------------
-- Triggers structure for table transaction_part
-- ----------------------------
CREATE TRIGGER "trigger_transaction_partout" AFTER INSERT ON "public"."transaction_part"
FOR EACH ROW
EXECUTE PROCEDURE "public"."transaction_partout"();

-- ----------------------------
-- Primary Key structure for table transaction_part
-- ----------------------------
ALTER TABLE "public"."transaction_part" ADD CONSTRAINT "transaction_part_pkey" PRIMARY KEY ("id_transaction");

-- ----------------------------
-- Uniques structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "users_email_unique" UNIQUE ("email");

-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "users_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Keys structure for table stock_partin
-- ----------------------------
ALTER TABLE "public"."stock_partin" ADD CONSTRAINT "stock_partin_part_id_fkey" FOREIGN KEY ("part_id") REFERENCES "public"."parts" ("part_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table transaction_part
-- ----------------------------
ALTER TABLE "public"."transaction_part" ADD CONSTRAINT "transaction_part_part_id_fkey" FOREIGN KEY ("part_id") REFERENCES "public"."parts" ("part_id") ON DELETE NO ACTION ON UPDATE NO ACTION;
