-- Adminer 4.8.1 PostgreSQL 13.4 dump

\connect "mod";

DROP TABLE IF EXISTS "action_events";
DROP SEQUENCE IF EXISTS action_events_id_seq;
CREATE SEQUENCE action_events_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "mod"."action_events" (
    "id" bigint DEFAULT nextval('action_events_id_seq') NOT NULL,
    "batch_id" character(36) NOT NULL,
    "user_id" bigint NOT NULL,
    "name" character varying(255) NOT NULL,
    "actionable_type" character varying(255) NOT NULL,
    "actionable_id" bigint NOT NULL,
    "target_type" character varying(255) NOT NULL,
    "target_id" bigint NOT NULL,
    "model_type" character varying(255) NOT NULL,
    "model_id" bigint,
    "fields" text NOT NULL,
    "status" character varying(25) DEFAULT 'running' NOT NULL,
    "exception" text NOT NULL,
    "created_at" timestamp(0),
    "updated_at" timestamp(0),
    "original" text,
    "changes" text,
    CONSTRAINT "action_events_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "action_events_actionable_type_actionable_id_index" ON "mod"."action_events" USING btree ("actionable_type", "actionable_id");

CREATE INDEX "action_events_batch_id_model_type_model_id_index" ON "mod"."action_events" USING btree ("batch_id", "model_type", "model_id");

CREATE INDEX "action_events_user_id_index" ON "mod"."action_events" USING btree ("user_id");

<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
INSERT INTO "action_events" ("id", "batch_id", "user_id", "name", "actionable_type", "actionable_id", "target_type", "target_id", "model_type", "model_id", "fields", "status", "exception", "created_at", "updated_at", "original", "changes") VALUES
(1,	'94ce14c8-256e-420c-bc0c-cd3a182c9170',	1,	'Create',	'App\Models\Widget',	1,	'App\Models\Widget',	1,	'App\Models\Widget',	1,	'',	'finished',	'',	'2021-11-05 21:05:28',	'2021-11-05 21:05:28',	NULL,	'{"is_active":false,"home_page_id":2,"title":{"ru":"NEW","uz":"NEW","en":"NEW"},"template":"App\\Widgets\\Widget001","model":"App\\Models\\Category","id":1,"name":"widget001","data":{"fields":["id"],"name":"widget001","types":["App\\Models\\Category","App\\Models\\Catalog","App\\Models\\Brand"],"class":"App\\Widgets\\Widget001"},"type":"category"}'),
(2,	'94ce1594-a51d-4bb5-8c03-47178ee4be56',	1,	'Create',	'App\Models\Widget',	3,	'App\Models\Widget',	3,	'App\Models\Widget',	3,	'',	'finished',	'',	'2021-11-05 21:07:42',	'2021-11-05 21:07:42',	NULL,	'{"is_active":false,"home_page_id":2,"title":{"ru":"NEW","uz":"NEW","en":"NEW"},"template":"App\\Widgets\\Widget002","model":"App\\Models\\Category","id":3,"name":"widget002","data":{"fields":["id","name"],"name":"widget002","types":["App\\Models\\Category","App\\Models\\Catalog","App\\Models\\Brand"],"class":"App\\Widgets\\Widget002"},"type":"category"}'),
(3,	'94ce15c2-59c9-4159-ae2e-2f975fb9f39d',	1,	'Create',	'App\Models\WidgetItem',	1,	'App\Models\WidgetItem',	1,	'App\Models\WidgetItem',	1,	'',	'finished',	'',	'2021-11-05 21:08:12',	'2021-11-05 21:08:12',	NULL,	'{"sort_order":1,"widget_id":3,"template":"App\\Widgets\\Widget001","item_type":"App\\Models\\Category","item_id":"68","id":1}'),
(4,	'94d0064c-9531-4b57-a963-5e95925b6721',	1,	'Create',	'App\Models\Category',	1,	'App\Models\Category',	1,	'App\Models\Category',	1,	'',	'finished',	'',	'2021-11-06 20:16:37',	'2021-11-06 20:16:37',	NULL,	'{"is_active":true,"is_multi_currency":false,"is_sale":false,"is_accessory":false,"meta_title":{"ru":"\u041a\u0443\u0440\u0442\u043a\u0438","uz":"\u041a\u0443\u0440\u0442\u043a\u0438","en":"\u041a\u0443\u0440\u0442\u043a\u0438"},"meta_description":{"en":null},"meta_keywords":{"en":null},"name":{"ru":"\u041a\u0443\u0440\u0442\u043a\u0438","uz":"\u041a\u0443\u0440\u0442\u043a\u0438","en":"\u041a\u0443\u0440\u0442\u043a\u0438"},"slug":"kurtki","parent_id":21,"left":45,"right":46,"updated_at":"2021-11-06T15:16:37.000000Z","created_at":"2021-11-06T15:16:37.000000Z","id":1}'),
(5,	'94d35cbd-5f4a-40c3-a899-826063ebc367',	1,	'Create',	'App\Models\Category',	4,	'App\Models\Category',	4,	'App\Models\Category',	4,	'',	'finished',	'',	'2021-11-08 12:05:49',	'2021-11-08 12:05:49',	NULL,	'{"is_active":true,"is_multi_currency":false,"is_sale":false,"is_accessory":false,"meta_title":{"en":null},"meta_description":{"en":null},"meta_keywords":{"en":null},"name":{"ru":"\u0422\u043e\u043b\u0441\u0442\u043e\u0432\u043a\u0438 | \u0425\u0443\u0434\u0438","uz":"\u0422\u043e\u043b\u0441\u0442\u043e\u0432\u043a\u0438 | \u0425\u0443\u0434\u0438","en":"\u0422\u043e\u043b\u0441\u0442\u043e\u0432\u043a\u0438 | \u0425\u0443\u0434\u0438"},"slug":"tolstovki-hudi","parent_id":3,"left":56,"right":57,"updated_at":"2021-11-08T07:05:49.000000Z","created_at":"2021-11-08T07:05:49.000000Z","id":4}'),
(6,	'94d397cc-5106-4b40-b787-540ee18a69f7',	1,	'Create',	'App\Models\Category',	5,	'App\Models\Category',	5,	'App\Models\Category',	5,	'',	'finished',	'',	'2021-11-08 14:50:57',	'2021-11-08 14:50:57',	NULL,	'{"is_active":true,"is_multi_currency":false,"is_sale":false,"is_accessory":false,"meta_title":{"en":null},"meta_description":{"en":null},"meta_keywords":{"en":null},"name":{"ru":"\u0421\u0443\u043c\u043a\u0438","uz":"\u0421\u0443\u043c\u043a\u0438","en":"\u0421\u0443\u043c\u043a\u0438"},"slug":"sumki","parent_id":34,"left":84,"right":85,"updated_at":"2021-11-08T09:50:57.000000Z","created_at":"2021-11-08T09:50:57.000000Z","id":5}'),
(7,	'94d3b6a3-307a-416d-9ad3-936586bc636d',	1,	'Delete',	'App\Models\Widget',	5,	'App\Models\Widget',	5,	'App\Models\Widget',	5,	'',	'finished',	'',	'2021-11-08 16:17:11',	'2021-11-08 16:17:11',	NULL,	NULL),
(8,	'94d3b6a3-35ac-4734-884b-6193c607e023',	1,	'Delete',	'App\Models\Widget',	6,	'App\Models\Widget',	6,	'App\Models\Widget',	6,	'',	'finished',	'',	'2021-11-08 16:17:11',	'2021-11-08 16:17:11',	NULL,	NULL),
(9,	'94d3b6a3-3a68-4afd-96d3-95c99eaa585c',	1,	'Delete',	'App\Models\Widget',	7,	'App\Models\Widget',	7,	'App\Models\Widget',	7,	'',	'finished',	'',	'2021-11-08 16:17:11',	'2021-11-08 16:17:11',	NULL,	NULL),
(10,	'94d3b6a3-3ddc-4381-b3d3-edad80c11edf',	1,	'Delete',	'App\Models\Widget',	8,	'App\Models\Widget',	8,	'App\Models\Widget',	8,	'',	'finished',	'',	'2021-11-08 16:17:11',	'2021-11-08 16:17:11',	NULL,	NULL),
(11,	'94d3b6a3-417d-4bd2-916e-e1e7b4719360',	1,	'Delete',	'App\Models\Widget',	9,	'App\Models\Widget',	9,	'App\Models\Widget',	9,	'',	'finished',	'',	'2021-11-08 16:17:11',	'2021-11-08 16:17:11',	NULL,	NULL),
(12,	'94d3b6be-dbbb-4ed8-a5f4-0cab4595a126',	1,	'Delete',	'App\Models\Widget',	1,	'App\Models\Widget',	1,	'App\Models\Widget',	1,	'',	'finished',	'',	'2021-11-08 16:17:29',	'2021-11-08 16:17:29',	NULL,	NULL),
(13,	'94d3b6be-e230-4713-8056-4cb686a3f2c3',	1,	'Delete',	'App\Models\Widget',	3,	'App\Models\Widget',	3,	'App\Models\Widget',	3,	'',	'finished',	'',	'2021-11-08 16:17:29',	'2021-11-08 16:17:29',	NULL,	NULL),
(14,	'94d3b6be-e630-40c1-b00f-821d4a3cf338',	1,	'Delete',	'App\Models\Widget',	4,	'App\Models\Widget',	4,	'App\Models\Widget',	4,	'',	'finished',	'',	'2021-11-08 16:17:29',	'2021-11-08 16:17:29',	NULL,	NULL),
(15,	'94d3b6ec-8380-4598-b486-fe91c4103d77',	1,	'Create',	'App\Models\Widget',	4,	'App\Models\Widget',	4,	'App\Models\Widget',	4,	'',	'finished',	'',	'2021-11-08 16:17:59',	'2021-11-08 16:17:59',	NULL,	'{"is_active":false,"home_page_id":2,"title":{"ru":"NEW","uz":"NEW","en":"NEW"},"template":"App\\Widgets\\Widget001","model":"App\\Models\\Category","id":4,"name":"widget001","data":{"fields":["id"],"name":"widget001","types":["App\\Models\\Category","App\\Models\\Catalog","App\\Models\\Brand"],"class":"App\\Widgets\\Widget001"},"type":"category"}'),
(16,	'94d3b73e-9634-4aa6-a83a-f94379a30f15',	1,	'Create',	'App\Models\WidgetItem',	3,	'App\Models\WidgetItem',	3,	'App\Models\WidgetItem',	3,	'',	'finished',	'',	'2021-11-08 16:18:53',	'2021-11-08 16:18:53',	NULL,	'{"sort_order":0,"widget_id":4,"template":"App\\Widgets\\Widget001","item_type":"App\\Models\\Category","item_id":"54","id":3}'),
(17,	'94d3b7ac-34dc-451e-95a3-0a74f6fedbfb',	1,	'Create',	'App\Models\Widget',	5,	'App\Models\Widget',	5,	'App\Models\Widget',	5,	'',	'finished',	'',	'2021-11-08 16:20:05',	'2021-11-08 16:20:05',	NULL,	'{"is_active":false,"home_page_id":2,"title":{"ru":"WOW","uz":"WOW","en":"WOW"},"template":"App\\Widgets\\Widget002","model":"App\\Models\\Catalog","id":5,"name":"widget002","data":{"fields":["id","name"],"name":"widget002","types":["App\\Models\\Category","App\\Models\\Catalog","App\\Models\\Brand"],"class":"App\\Widgets\\Widget002"},"type":"catalog"}'),
(18,	'94d3b7df-a31d-46e3-a004-e30bd886fed5',	1,	'Create',	'App\Models\WidgetItem',	4,	'App\Models\WidgetItem',	4,	'App\Models\WidgetItem',	4,	'',	'finished',	'',	'2021-11-08 16:20:38',	'2021-11-08 16:20:38',	NULL,	'{"sort_order":2,"widget_id":5,"template":"App\\Widgets\\Widget002","item_type":"App\\Models\\Brand","item_id":"13","id":4}'),
(19,	'94d3b81a-755b-415a-b565-f307deee96a1',	1,	'Create',	'App\Models\Widget',	6,	'App\Models\Widget',	6,	'App\Models\Widget',	6,	'',	'finished',	'',	'2021-11-08 16:21:17',	'2021-11-08 16:21:17',	NULL,	'{"is_active":false,"home_page_id":2,"title":{"ru":"TOP","uz":"TOP","en":"TOP"},"template":"App\\Widgets\\Widget001","model":"App\\Models\\Brand","id":6,"name":"widget001","data":{"fields":["id"],"name":"widget001","types":["App\\Models\\Category","App\\Models\\Catalog","App\\Models\\Brand"],"class":"App\\Widgets\\Widget001"},"type":"brand"}'),
(20,	'94d3b83e-6db6-41ee-b005-baa9de0702da',	1,	'Create',	'App\Models\WidgetItem',	5,	'App\Models\WidgetItem',	5,	'App\Models\WidgetItem',	5,	'',	'finished',	'',	'2021-11-08 16:21:41',	'2021-11-08 16:21:41',	NULL,	'{"sort_order":3,"widget_id":6,"template":"App\\Widgets\\Widget002","item_type":"App\\Models\\Category","item_id":"24","id":5}'),
(21,	'94d3b8bf-219a-48c6-9eae-4bdb7e0f1fe3',	1,	'Create',	'App\Models\Widget',	7,	'App\Models\Widget',	7,	'App\Models\Widget',	7,	'',	'finished',	'',	'2021-11-08 16:23:05',	'2021-11-08 16:23:05',	NULL,	'{"is_active":false,"home_page_id":2,"title":{"ru":"LOW","uz":"LOW","en":"LOW"},"template":"App\\Widgets\\Widget002","model":"App\\Models\\Category","id":7,"name":"widget002","data":{"fields":["id","name"],"name":"widget002","types":["App\\Models\\Category","App\\Models\\Catalog","App\\Models\\Brand"],"class":"App\\Widgets\\Widget002"},"type":"category"}'),
(22,	'94d3b8ef-66cf-4f63-bdd5-5f31cc61d3fc',	1,	'Create',	'App\Models\WidgetItem',	6,	'App\Models\WidgetItem',	6,	'App\Models\WidgetItem',	6,	'',	'finished',	'',	'2021-11-08 16:23:37',	'2021-11-08 16:23:37',	NULL,	'{"sort_order":9,"widget_id":7,"template":"App\\Widgets\\Widget001","item_type":"App\\Models\\Category","item_id":"56","id":6}'),
(23,	'94d3bdc7-3776-4043-b061-199130f82185',	1,	'Create',	'App\Models\Category',	6,	'App\Models\Category',	6,	'App\Models\Category',	6,	'',	'finished',	'',	'2021-11-08 16:37:09',	'2021-11-08 16:37:09',	NULL,	'{"is_active":true,"is_multi_currency":false,"is_sale":false,"is_accessory":false,"meta_title":{"en":null},"meta_description":{"en":null},"meta_keywords":{"en":null},"name":{"ru":"\u041d\u043e\u0441\u043a\u0438","uz":"\u041d\u043e\u0441\u043a\u0438","en":"\u041d\u043e\u0441\u043a\u0438"},"slug":"noski","parent_id":34,"left":86,"right":87,"updated_at":"2021-11-08T11:37:09.000000Z","created_at":"2021-11-08T11:37:09.000000Z","id":6}'),
(24,	'94d3c39a-ea68-4ca0-98dd-30ba8564def8',	1,	'Create',	'App\Models\WidgetItem',	7,	'App\Models\WidgetItem',	7,	'App\Models\WidgetItem',	7,	'',	'finished',	'',	'2021-11-08 16:53:27',	'2021-11-08 16:53:27',	NULL,	'{"sort_order":0,"widget_id":5,"template":"App\\Widgets\\Widget002","item_type":"App\\Models\\Brand","item_id":"2","id":7}'),
(25,	'94d3cb1c-a585-445c-adf0-b6e9f35d7af0',	1,	'Create',	'App\Models\Category',	7,	'App\Models\Category',	7,	'App\Models\Category',	7,	'',	'finished',	'',	'2021-11-08 17:14:26',	'2021-11-08 17:14:26',	NULL,	'{"is_active":true,"is_multi_currency":false,"is_sale":false,"is_accessory":false,"meta_title":{"en":null},"meta_description":{"en":null},"meta_keywords":{"en":null},"name":{"ru":"\u0421\u0443\u043c\u043a\u0438","uz":"\u0421\u0443\u043c\u043a\u0438","en":"\u0421\u0443\u043c\u043a\u0438"},"slug":"sumki","parent_id":59,"left":122,"right":123,"updated_at":"2021-11-08T12:14:26.000000Z","created_at":"2021-11-08T12:14:26.000000Z","id":7}');

DROP TABLE IF EXISTS "addresses";
DROP SEQUENCE IF EXISTS addresses_id_seq;
CREATE SEQUENCE addresses_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "mod"."addresses" (
    "id" bigint DEFAULT nextval('addresses_id_seq') NOT NULL,
    "first_name" character varying(32),
    "last_name" character varying(32),
    "phone" character varying(16) NOT NULL,
    "city" character varying(64),
    "street" character varying(255),
    "building" character varying(64),
    "flat" character varying(16),
    "entry" character varying(64),
    "postcode" character varying(12),
    "user_id" bigint NOT NULL,
    "region_id" bigint,
    "is_default" boolean DEFAULT false NOT NULL,
    "created_at" timestamp(0),
    "updated_at" timestamp(0),
    CONSTRAINT "addresses_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "addresses_user_id_index" ON "mod"."addresses" USING btree ("user_id");

<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
INSERT INTO "addresses" ("id", "first_name", "last_name", "phone", "city", "street", "building", "flat", "entry", "postcode", "user_id", "region_id", "is_default", "created_at", "updated_at") VALUES
(1,	NULL,	NULL,	'+998993337733',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	2,	3,	'0',	'2021-11-16 00:10:30',	'2021-11-16 00:10:30'),
(2,	NULL,	NULL,	'+998993337733',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	2,	2,	'0',	'2021-11-16 00:43:31',	'2021-11-16 00:43:31'),
(3,	NULL,	NULL,	'+998993337733',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	2,	3,	'0',	'2021-11-16 01:13:17',	'2021-11-16 01:13:17'),
(4,	NULL,	NULL,	'+998933172347',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	5,	1,	'0',	'2021-11-16 01:28:16',	'2021-11-16 01:28:16'),
(5,	NULL,	NULL,	'+998933172347',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	5,	1,	'0',	'2021-11-16 01:30:58',	'2021-11-16 01:30:58'),
(6,	NULL,	NULL,	'+998990005254',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	6,	2,	'0',	'2021-11-18 22:27:16',	'2021-11-18 22:27:16'),
(7,	NULL,	NULL,	'+998990005254',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	6,	6,	'0',	'2021-11-18 22:38:14',	'2021-11-18 22:38:14'),
(8,	NULL,	NULL,	'+998990005254',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	6,	11,	'0',	'2021-11-23 16:51:24',	'2021-11-23 16:51:24');

DROP TABLE IF EXISTS "attribute_values";
DROP SEQUENCE IF EXISTS attribute_values_id_seq;
CREATE SEQUENCE attribute_values_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "mod"."attribute_values" (
    "id" bigint DEFAULT nextval('attribute_values_id_seq') NOT NULL,
    "attribute_id" bigint NOT NULL,
    "name" json NOT NULL,
    "slug" character varying(255) NOT NULL,
    "color_code" character varying(32),
    "sort_order" integer DEFAULT '0' NOT NULL,
    "created_at" timestamp(0),
    "updated_at" timestamp(0),
    CONSTRAINT "attribute_values_attribute_id_slug_unique" UNIQUE ("attribute_id", "slug"),
    CONSTRAINT "attribute_values_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
INSERT INTO "attribute_values" ("id", "attribute_id", "name", "slug", "color_code", "sort_order", "created_at", "updated_at") VALUES
(225,	5,	'{"en":"DO NOT WASH","ru":"DO NOT WASH"}',	'do-not-wash',	NULL,	0,	NULL,	NULL),
(226,	5,	'{"en":"DO NOT BLEACH","ru":"DO NOT BLEACH"}',	'do-not-bleach',	NULL,	1,	NULL,	NULL),
(227,	5,	'{"en":"IRON UP TO 110ºC\/230ºF","ru":"IRON UP TO 110ºC\/230ºF"}',	'iron-up-to-110oc230of',	NULL,	2,	NULL,	NULL),
(228,	5,	'{"en":"DO NOT TUMBLE DRY","ru":"DO NOT TUMBLE DRY"}',	'do-not-tumble-dry',	NULL,	3,	NULL,	NULL),
(229,	5,	'{"en":"DRY CLEAN TETRACHLORETHYLENE","ru":"DRY CLEAN TETRACHLORETHYLENE"}',	'dry-clean-tetrachlorethylene',	NULL,	4,	NULL,	NULL),
(230,	6,	'{"en":"Наполнитель: 60% cotton, 40% polyester","ru":"Наполнитель: 60% cotton, 40% polyester"}',	'napolnitel-60-cotton-40-polyester',	NULL,	0,	NULL,	NULL),
(231,	6,	'{"en":"Наружная часть: 100% wool","ru":"Наружная часть: 100% wool"}',	'naruzhnaya-chast-100-wool',	NULL,	1,	NULL,	NULL),
(232,	1,	'{"en":"NAVY BLUE","ru":"NAVY BLUE"}',	'navy-blue',	NULL,	0,	NULL,	NULL),
(233,	2,	'{"en":"38","ru":"38"}',	'38',	NULL,	0,	NULL,	NULL),
(234,	2,	'{"en":"40","ru":"40"}',	'40',	NULL,	1,	NULL,	NULL),
(235,	2,	'{"en":"42","ru":"42"}',	'42',	NULL,	2,	NULL,	NULL),
(236,	2,	'{"en":"44","ru":"44"}',	'44',	NULL,	3,	NULL,	NULL),
(237,	2,	'{"en":"46","ru":"46"}',	'46',	NULL,	4,	NULL,	NULL),
(238,	2,	'{"en":"48","ru":"48"}',	'48',	NULL,	5,	NULL,	NULL),
(239,	2,	'{"en":"50","ru":"50"}',	'50',	NULL,	6,	NULL,	NULL),
(240,	7,	'{"en":"Made of 100% wool","ru":"Made of 100% wool"}',	'made-of-100-wool',	NULL,	0,	NULL,	NULL),
(241,	7,	'{"en":"Slim fit","ru":"Slim fit"}',	'slim-fit',	NULL,	1,	NULL,	NULL),
(242,	7,	'{"en":"Zip fly and button fastening","ru":"Zip fly and button fastening"}',	'zip-fly-and-button-fastening',	NULL,	2,	NULL,	NULL),
(243,	7,	'{"en":"Two side pockets","ru":"Two side pockets"}',	'two-side-pockets',	NULL,	3,	NULL,	NULL),
(244,	7,	'{"en":"Made in Portugal","ru":"Made in Portugal"}',	'made-in-portugal',	NULL,	4,	NULL,	NULL),
(245,	7,	'{"en":"Belt loops","ru":"Belt loops"}',	'belt-loops',	NULL,	5,	NULL,	NULL),
(246,	1,	'{"en":"NAVY BLUE","ru":"NAVY BLUE"}',	'1--navy-blue',	NULL,	0,	NULL,	NULL),
(247,	2,	'{"en":"38","ru":"38"}',	'2--38',	NULL,	0,	NULL,	NULL),
(248,	2,	'{"en":"40","ru":"40"}',	'2--40',	NULL,	0,	NULL,	NULL),
(249,	2,	'{"en":"42","ru":"42"}',	'2--42',	NULL,	0,	NULL,	NULL),
(250,	2,	'{"en":"44","ru":"44"}',	'2--44',	NULL,	0,	NULL,	NULL),
(251,	2,	'{"en":"46","ru":"46"}',	'2--46',	NULL,	0,	NULL,	NULL),
(252,	2,	'{"en":"48","ru":"48"}',	'2--48',	NULL,	0,	NULL,	NULL),
(253,	2,	'{"en":"50","ru":"50"}',	'2--50',	NULL,	0,	NULL,	NULL),
(254,	5,	'{"en":"MACHINE WASH UP TO 30ºC\/86ºF GENTLE CYCLE","ru":"MACHINE WASH UP TO 30ºC\/86ºF GENTLE CYCLE"}',	'machine-wash-up-to-30oc86of-gentle-cycle',	NULL,	0,	NULL,	NULL),
(255,	5,	'{"en":"DO NOT DRY CLEAN","ru":"DO NOT DRY CLEAN"}',	'do-not-dry-clean',	NULL,	3,	NULL,	NULL),
(256,	6,	'{"en":"Наружная часть: 95% nylon, 5% elastane","ru":"Наружная часть: 95% nylon, 5% elastane"}',	'naruzhnaya-chast-95-nylon-5-elastane',	NULL,	0,	NULL,	NULL),
(257,	1,	'{"en":"Dark grey","ru":"Dark grey"}',	'dark-grey',	NULL,	0,	NULL,	NULL),
(258,	1,	'{"en":"Lilac","ru":"Lilac"}',	'lilac',	NULL,	1,	NULL,	NULL),
(259,	1,	'{"en":"Sky blue","ru":"Sky blue"}',	'sky-blue',	NULL,	2,	NULL,	NULL),
(260,	1,	'{"en":"Khaki","ru":"Khaki"}',	'khaki',	NULL,	3,	NULL,	NULL),
(261,	1,	'{"en":"Black","ru":"Black"}',	'black',	NULL,	4,	NULL,	NULL),
(262,	1,	'{"en":"Stone","ru":"Stone"}',	'stone',	NULL,	5,	NULL,	NULL),
(263,	1,	'{"en":"Purple","ru":"Purple"}',	'purple',	NULL,	6,	NULL,	NULL),
(264,	1,	'{"en":"Ecru","ru":"Ecru"}',	'ecru',	NULL,	7,	NULL,	NULL),
(265,	1,	'{"en":"Brown","ru":"Brown"}',	'brown',	NULL,	8,	NULL,	NULL),
(266,	1,	'{"en":"Dark grey","ru":"Dark grey"}',	'1--dark-grey',	NULL,	0,	NULL,	NULL),
(267,	2,	'{"en":"XS","ru":"XS"}',	'2--xs',	NULL,	0,	NULL,	NULL),
(268,	2,	'{"en":"S","ru":"S"}',	'2--s',	NULL,	0,	NULL,	NULL),
(269,	2,	'{"en":"M","ru":"M"}',	'2--m',	NULL,	0,	NULL,	NULL),
(270,	2,	'{"en":"L","ru":"L"}',	'2--l',	NULL,	0,	NULL,	NULL),
(271,	2,	'{"en":"XL","ru":"XL"}',	'2--xl',	NULL,	0,	NULL,	NULL),
(272,	1,	'{"en":"Lilac","ru":"Lilac"}',	'1--lilac',	NULL,	0,	NULL,	NULL),
(273,	1,	'{"en":"Sky blue","ru":"Sky blue"}',	'1--sky-blue',	NULL,	0,	NULL,	NULL),
(274,	1,	'{"en":"Khaki","ru":"Khaki"}',	'1--khaki',	NULL,	0,	NULL,	NULL),
(275,	1,	'{"en":"Black","ru":"Black"}',	'1--black',	NULL,	0,	NULL,	NULL),
(276,	1,	'{"en":"Stone","ru":"Stone"}',	'1--stone',	NULL,	0,	NULL,	NULL),
(277,	1,	'{"en":"Purple","ru":"Purple"}',	'1--purple',	NULL,	0,	NULL,	NULL),
(278,	1,	'{"en":"Ecru","ru":"Ecru"}',	'1--ecru',	NULL,	0,	NULL,	NULL),
(279,	1,	'{"en":"Brown","ru":"Brown"}',	'1--brown',	NULL,	0,	NULL,	NULL),
(280,	5,	'{"en":"DO NOT IRON","ru":"DO NOT IRON"}',	'do-not-iron',	NULL,	2,	NULL,	NULL),
(281,	5,	'{"en":"WASH SEPARATELY","ru":"WASH SEPARATELY"}',	'wash-separately',	NULL,	5,	NULL,	NULL),
(282,	6,	'{"en":"Наполнитель: 85% polyester, 15% elastane","ru":"Наполнитель: 85% polyester, 15% elastane"}',	'napolnitel-85-polyester-15-elastane',	NULL,	0,	NULL,	NULL),
(283,	6,	'{"en":"Наружная часть: 85% polyester, 15% elastane","ru":"Наружная часть: 85% polyester, 15% elastane"}',	'naruzhnaya-chast-85-polyester-15-elastane',	NULL,	1,	NULL,	NULL),
(284,	2,	'{"en":"XS","ru":"XS"}',	'xs',	NULL,	0,	NULL,	NULL),
(285,	2,	'{"en":"S","ru":"S"}',	's',	NULL,	1,	NULL,	NULL),
(286,	2,	'{"en":"M","ru":"M"}',	'm',	NULL,	2,	NULL,	NULL),
(287,	2,	'{"en":"L","ru":"L"}',	'l',	NULL,	3,	NULL,	NULL),
(288,	6,	'{"en":"Наполнитель: 100% polyester","ru":"Наполнитель: 100% polyester"}',	'napolnitel-100-polyester',	NULL,	0,	NULL,	NULL),
(289,	6,	'{"en":"Наружная часть: 60% polyurethane, 37% polyester, 2% cotton, 1% viscose","ru":"Наружная часть: 60% polyurethane, 37% polyester, 2% cotton, 1% viscose"}',	'naruzhnaya-chast-60-polyurethane-37-polyester-2-cotton-1-viscose',	NULL,	1,	NULL,	NULL),
(290,	1,	'{"en":"RED","ru":"RED"}',	'red',	NULL,	1,	NULL,	NULL),
(291,	2,	'{"en":"XL","ru":"XL"}',	'xl',	NULL,	4,	NULL,	NULL),
(292,	1,	'{"en":"RED","ru":"RED"}',	'1--red',	NULL,	0,	NULL,	NULL),
(293,	5,	'{"en":"TUMBLE DRY LOW","ru":"TUMBLE DRY LOW"}',	'tumble-dry-low',	NULL,	4,	NULL,	NULL),
(294,	6,	'{"en":"Наружная часть: 54% cotton, 46% polyester, 0% elastane","ru":"Наружная часть: 54% cotton, 46% polyester, 0% elastane"}',	'naruzhnaya-chast-54-cotton-46-polyester-0-elastane',	NULL,	0,	NULL,	NULL),
(295,	6,	'{"en":"Наружная часть: 52% viscose, 28% polyester, 20% polyamide","ru":"Наружная часть: 52% viscose, 28% polyester, 20% polyamide"}',	'naruzhnaya-chast-52-viscose-28-polyester-20-polyamide',	NULL,	0,	NULL,	NULL),
(343,	5,	'{"en":"DO NOT IRON DECORATIONS","ru":"DO NOT IRON DECORATIONS"}',	'do-not-iron-decorations',	NULL,	5,	NULL,	NULL),
(296,	6,	'{"en":"Наружная часть: 62% cotton, 33% polyester, 5% elastane","ru":"Наружная часть: 62% cotton, 33% polyester, 5% elastane"}',	'naruzhnaya-chast-62-cotton-33-polyester-5-elastane',	NULL,	0,	NULL,	NULL),
(297,	1,	'{"en":"Camel","ru":"Camel"}',	'camel',	NULL,	1,	NULL,	NULL),
(298,	6,	'{"en":"Наполнитель: 96% polyester, 4% elastane","ru":"Наполнитель: 96% polyester, 4% elastane"}',	'napolnitel-96-polyester-4-elastane',	NULL,	0,	NULL,	NULL),
(299,	6,	'{"en":"Наружная часть: 96% polyester, 4% elastane","ru":"Наружная часть: 96% polyester, 4% elastane"}',	'naruzhnaya-chast-96-polyester-4-elastane',	NULL,	1,	NULL,	NULL),
(300,	6,	'{"en":"Наружная часть: 95% polyester, 5% elastane","ru":"Наружная часть: 95% polyester, 5% elastane"}',	'naruzhnaya-chast-95-polyester-5-elastane',	NULL,	0,	NULL,	NULL),
(301,	1,	'{"en":"Sand","ru":"Sand"}',	'sand',	NULL,	0,	NULL,	NULL),
(302,	1,	'{"en":"Sand","ru":"Sand"}',	'1--sand',	NULL,	0,	NULL,	NULL),
(303,	6,	'{"en":"Наружная часть: 82% polyester, 15% cotton, 3% elastane","ru":"Наружная часть: 82% polyester, 15% cotton, 3% elastane"}',	'naruzhnaya-chast-82-polyester-15-cotton-3-elastane',	NULL,	0,	NULL,	NULL),
(304,	6,	'{"en":"Наружная часть: 98% polyester, 2% elastane","ru":"Наружная часть: 98% polyester, 2% elastane"}',	'naruzhnaya-chast-98-polyester-2-elastane',	NULL,	0,	NULL,	NULL),
(305,	1,	'{"en":"Green","ru":"Green"}',	'green',	NULL,	0,	NULL,	NULL),
(306,	1,	'{"en":"Green","ru":"Green"}',	'1--green',	NULL,	0,	NULL,	NULL),
(307,	5,	'{"en":"WASH INSIDE OUT","ru":"WASH INSIDE OUT"}',	'wash-inside-out',	NULL,	5,	NULL,	NULL),
(308,	5,	'{"en":"IRON INSIDE OUT","ru":"IRON INSIDE OUT"}',	'iron-inside-out',	NULL,	6,	NULL,	NULL),
(309,	6,	'{"en":"Наружная часть: 66% cotton, 34% polyester","ru":"Наружная часть: 66% cotton, 34% polyester"}',	'naruzhnaya-chast-66-cotton-34-polyester',	NULL,	0,	NULL,	NULL),
(310,	1,	'{"en":"garnet","ru":"garnet"}',	'garnet',	NULL,	0,	NULL,	NULL),
(311,	1,	'{"en":"garnet","ru":"garnet"}',	'1--garnet',	NULL,	0,	NULL,	NULL),
(312,	6,	'{"en":"Наполнитель: 55% cotton, 45% polyester","ru":"Наполнитель: 55% cotton, 45% polyester"}',	'napolnitel-55-cotton-45-polyester',	NULL,	0,	NULL,	NULL),
(313,	6,	'{"en":"Наружная часть: 57% cotton, 43% polyester, 0% elastane","ru":"Наружная часть: 57% cotton, 43% polyester, 0% elastane"}',	'naruzhnaya-chast-57-cotton-43-polyester-0-elastane',	NULL,	1,	NULL,	NULL),
(314,	1,	'{"en":"Grey","ru":"Grey"}',	'grey',	NULL,	0,	NULL,	NULL),
(315,	1,	'{"en":"Grey","ru":"Grey"}',	'1--grey',	NULL,	0,	NULL,	NULL),
(316,	6,	'{"en":"Наружная часть: 71% cotton, 29% polyester, 0% elastane","ru":"Наружная часть: 71% cotton, 29% polyester, 0% elastane"}',	'naruzhnaya-chast-71-cotton-29-polyester-0-elastane',	NULL,	0,	NULL,	NULL),
(317,	1,	'{"en":"Camel","ru":"Camel"}',	'1--camel',	NULL,	0,	NULL,	NULL),
(318,	6,	'{"en":"Наружная часть: 50% polyester, 50% cotton, 0% elastane","ru":"Наружная часть: 50% polyester, 50% cotton, 0% elastane"}',	'naruzhnaya-chast-50-polyester-50-cotton-0-elastane',	NULL,	0,	NULL,	NULL),
(319,	6,	'{"en":"Наполнитель: 65% polyester, 35% cotton","ru":"Наполнитель: 65% polyester, 35% cotton"}',	'napolnitel-65-polyester-35-cotton',	NULL,	0,	NULL,	NULL),
(320,	6,	'{"en":"Наружная часть: 61% polyester, 39% cotton, 0% elastane","ru":"Наружная часть: 61% polyester, 39% cotton, 0% elastane"}',	'naruzhnaya-chast-61-polyester-39-cotton-0-elastane',	NULL,	1,	NULL,	NULL),
(321,	6,	'{"en":"Наружная часть: 67% polyester, 31% viscose, 2% elastane","ru":"Наружная часть: 67% polyester, 31% viscose, 2% elastane"}',	'naruzhnaya-chast-67-polyester-31-viscose-2-elastane',	NULL,	0,	NULL,	NULL),
(322,	1,	'{"en":"White\/Black","ru":"White\/Black"}',	'whiteblack',	NULL,	0,	NULL,	NULL),
(323,	1,	'{"en":"White\/Black","ru":"White\/Black"}',	'1--whiteblack',	NULL,	0,	NULL,	NULL),
(324,	5,	'{"en":"HAND WASH UP TO 30ºC\/86ºF","ru":"HAND WASH UP TO 30ºC\/86ºF"}',	'hand-wash-up-to-30oc86of',	NULL,	0,	NULL,	NULL),
(325,	6,	'{"en":"Наружная часть: 50% polyurethane, 50% polyester","ru":"Наружная часть: 50% polyurethane, 50% polyester"}',	'naruzhnaya-chast-50-polyurethane-50-polyester',	NULL,	1,	NULL,	NULL),
(326,	6,	'{"en":"Наружная часть: 66% acrylic, 13% polyester, 12% polyamide, 6% wool, 3% elastane","ru":"Наружная часть: 66% acrylic, 13% polyester, 12% polyamide, 6% wool, 3% elastane"}',	'naruzhnaya-chast-66-acrylic-13-polyester-12-polyamide-6-wool-3-elastane',	NULL,	0,	NULL,	NULL),
(327,	6,	'{"en":"Наружная часть: 59% polyester, 25% acrylic, 13% polyamide, 3% elastane","ru":"Наружная часть: 59% polyester, 25% acrylic, 13% polyamide, 3% elastane"}',	'naruzhnaya-chast-59-polyester-25-acrylic-13-polyamide-3-elastane',	NULL,	0,	NULL,	NULL),
(328,	6,	'{"en":"Подкладка: 100% polyester","ru":"Подкладка: 100% polyester"}',	'podkladka-100-polyester',	NULL,	0,	NULL,	NULL),
(329,	6,	'{"en":"Наружная часть: 89% polyester, 11% polyamide","ru":"Наружная часть: 89% polyester, 11% polyamide"}',	'naruzhnaya-chast-89-polyester-11-polyamide',	NULL,	0,	NULL,	NULL),
(330,	1,	'{"en":"Cream","ru":"Cream"}',	'cream',	NULL,	0,	NULL,	NULL),
(331,	1,	'{"en":"Cream","ru":"Cream"}',	'1--cream',	NULL,	0,	NULL,	NULL),
(332,	6,	'{"en":"Наружная часть: 48% cotton, 47% polyester, 5% elastane","ru":"Наружная часть: 48% cotton, 47% polyester, 5% elastane"}',	'naruzhnaya-chast-48-cotton-47-polyester-5-elastane',	NULL,	0,	NULL,	NULL),
(333,	1,	'{"en":"Blue","ru":"Blue"}',	'blue',	NULL,	1,	NULL,	NULL),
(334,	1,	'{"en":"Beige","ru":"Beige"}',	'beige',	NULL,	2,	NULL,	NULL),
(335,	6,	'{"en":"Наружная часть: 55% acrylic, 29% polyester, 16% polyamide","ru":"Наружная часть: 55% acrylic, 29% polyester, 16% polyamide"}',	'naruzhnaya-chast-55-acrylic-29-polyester-16-polyamide',	NULL,	0,	NULL,	NULL),
(336,	6,	'{"en":"Наружная часть: 92% polyamide, 8% elastane","ru":"Наружная часть: 92% polyamide, 8% elastane"}',	'naruzhnaya-chast-92-polyamide-8-elastane',	NULL,	0,	NULL,	NULL),
(337,	6,	'{"en":"Наружная часть: 100% cotton","ru":"Наружная часть: 100% cotton"}',	'naruzhnaya-chast-100-cotton',	NULL,	0,	NULL,	NULL),
(338,	2,	'{"en":"32","ru":"32"}',	'32',	NULL,	0,	NULL,	NULL),
(339,	2,	'{"en":"34","ru":"34"}',	'34',	NULL,	1,	NULL,	NULL),
(340,	2,	'{"en":"36","ru":"36"}',	'36',	NULL,	2,	NULL,	NULL),
(341,	6,	'{"en":"Наружний материал: 96% polycarbonate, 4% copper","ru":"Наружний материал: 96% polycarbonate, 4% copper"}',	'naruzhniy-material-96-polycarbonate-4-copper',	NULL,	0,	NULL,	NULL),
(342,	6,	'{"en":"Наружная часть: 54% polyester, 45% cotton, 1% elastane","ru":"Наружная часть: 54% polyester, 45% cotton, 1% elastane"}',	'naruzhnaya-chast-54-polyester-45-cotton-1-elastane',	NULL,	0,	NULL,	NULL),
(344,	6,	'{"en":"Наружная часть: 62% cotton, 38% polyester, 0% elastane","ru":"Наружная часть: 62% cotton, 38% polyester, 0% elastane"}',	'naruzhnaya-chast-62-cotton-38-polyester-0-elastane',	NULL,	0,	NULL,	NULL),
(345,	6,	'{"en":"Наружная часть: 93% cotton, 7% polyester, 0% elastane","ru":"Наружная часть: 93% cotton, 7% polyester, 0% elastane"}',	'naruzhnaya-chast-93-cotton-7-polyester-0-elastane',	NULL,	0,	NULL,	NULL),
(346,	1,	'{"en":"Orange","ru":"Orange"}',	'orange',	NULL,	1,	NULL,	NULL),
(347,	1,	'{"en":"Off white","ru":"Off white"}',	'off-white',	NULL,	3,	NULL,	NULL),
(348,	5,	'{"en":"Do not submerge in water.","ru":"Do not submerge in water."}',	'do-not-submerge-in-water',	NULL,	5,	NULL,	NULL),
(349,	5,	'{"en":"LEATHER \/ PATENT LEATHER \/ ANTIC LEATHER Wipe with a dry cotton cloth.","ru":"LEATHER \/ PATENT LEATHER \/ ANTIC LEATHER Wipe with a dry cotton cloth."}',	'leather-patent-leather-antic-leather-wipe-with-a-dry-cotton-cloth',	NULL,	6,	NULL,	NULL),
(350,	5,	'{"en":"SUEDE \/ NUBUCK LEATHER \/ SPLIT LEATHER Clean with a soft brush or a hard sponge.","ru":"SUEDE \/ NUBUCK LEATHER \/ SPLIT LEATHER Clean with a soft brush or a hard sponge."}',	'suede-nubuck-leather-split-leather-clean-with-a-soft-brush-or-a-hard-sponge',	NULL,	7,	NULL,	NULL),
(351,	5,	'{"en":"Colourless wax or wax the colour of the leather can be applied.","ru":"Colourless wax or wax the colour of the leather can be applied."}',	'colourless-wax-or-wax-the-colour-of-the-leather-can-be-applied',	NULL,	8,	NULL,	NULL),
(352,	5,	'{"en":"SUEDE \/ NUBUCK LEATHER Can be protected with treatment sprays or dust repellents (repellents for mops).","ru":"SUEDE \/ NUBUCK LEATHER Can be protected with treatment sprays or dust repellents (repellents for mops)."}',	'suede-nubuck-leather-can-be-protected-with-treatment-sprays-or-dust-repellents-repellents-for-mops',	NULL,	9,	NULL,	NULL),
(353,	6,	'{"en":"подошва: 100% thermoplastic rubber","ru":"подошва: 100% thermoplastic rubber"}',	'podoshva-100-thermoplastic-rubber',	NULL,	0,	NULL,	NULL),
(354,	6,	'{"en":"Подкладка: 80% polyurethane, 20% polyester","ru":"Подкладка: 80% polyurethane, 20% polyester"}',	'podkladka-80-polyurethane-20-polyester',	NULL,	1,	NULL,	NULL),
(355,	6,	'{"en":"Верх: 100% polyurethane","ru":"Верх: 100% polyurethane"}',	'verkh-100-polyurethane',	NULL,	2,	NULL,	NULL),
(356,	1,	'{"en":"WHITE","ru":"WHITE"}',	'white',	NULL,	0,	NULL,	NULL),
(357,	2,	'{"en":"35","ru":"35"}',	'35',	NULL,	0,	NULL,	NULL),
(358,	2,	'{"en":"37","ru":"37"}',	'37',	NULL,	2,	NULL,	NULL),
(359,	2,	'{"en":"39","ru":"39"}',	'39',	NULL,	4,	NULL,	NULL),
(360,	2,	'{"en":"41","ru":"41"}',	'41',	NULL,	6,	NULL,	NULL),
(361,	1,	'{"en":"WHITE","ru":"WHITE"}',	'1--white',	NULL,	0,	NULL,	NULL),
(362,	1,	'{"en":"Dark Orange","ru":"Dark Orange"}',	'dark-orange',	NULL,	0,	NULL,	NULL),
(363,	1,	'{"en":"Dark Orange","ru":"Dark Orange"}',	'1--dark-orange',	NULL,	0,	NULL,	NULL),
(364,	1,	'{"en":"Mustard","ru":"Mustard"}',	'mustard',	NULL,	0,	NULL,	NULL),
(365,	1,	'{"en":"Mustard","ru":"Mustard"}',	'1--mustard',	NULL,	0,	NULL,	NULL),
(366,	1,	'{"en":"Orange","ru":"Orange"}',	'1--orange',	NULL,	0,	NULL,	NULL),
(367,	6,	'{"en":"Наружная часть: 94% polyester, 6% elastane","ru":"Наружная часть: 94% polyester, 6% elastane"}',	'naruzhnaya-chast-94-polyester-6-elastane',	NULL,	0,	NULL,	NULL),
(368,	1,	'{"en":"Pink","ru":"Pink"}',	'pink',	NULL,	0,	NULL,	NULL),
(369,	1,	'{"en":"Pink","ru":"Pink"}',	'1--pink',	NULL,	0,	NULL,	NULL),
(370,	6,	'{"en":"Наружная часть: 63% polyester, 36% viscose, 1% elastane","ru":"Наружная часть: 63% polyester, 36% viscose, 1% elastane"}',	'naruzhnaya-chast-63-polyester-36-viscose-1-elastane',	NULL,	0,	NULL,	NULL),
(371,	6,	'{"en":"Наполнитель: 91% polyester, 9% elastane","ru":"Наполнитель: 91% polyester, 9% elastane"}',	'napolnitel-91-polyester-9-elastane',	NULL,	0,	NULL,	NULL),
(372,	6,	'{"en":"Наружная часть: 100% viscose","ru":"Наружная часть: 100% viscose"}',	'naruzhnaya-chast-100-viscose',	NULL,	0,	NULL,	NULL),
(373,	1,	'{"en":"Violet","ru":"Violet"}',	'violet',	NULL,	0,	NULL,	NULL),
(374,	1,	'{"en":"Violet","ru":"Violet"}',	'1--violet',	NULL,	0,	NULL,	NULL),
(375,	6,	'{"en":"Наружная часть: 92% polyester, 8% elastane","ru":"Наружная часть: 92% polyester, 8% elastane"}',	'naruzhnaya-chast-92-polyester-8-elastane',	NULL,	0,	NULL,	NULL),
(376,	1,	'{"en":"Light blue","ru":"Light blue"}',	'light-blue',	NULL,	1,	NULL,	NULL),
(377,	6,	'{"en":"Наполнитель: 100% viscose","ru":"Наполнитель: 100% viscose"}',	'napolnitel-100-viscose',	NULL,	0,	NULL,	NULL),
(378,	1,	'{"en":"Off white","ru":"Off white"}',	'1--off-white',	NULL,	0,	NULL,	NULL),
(379,	6,	'{"en":"Наружная часть: 99% cotton, 1% acrylic","ru":"Наружная часть: 99% cotton, 1% acrylic"}',	'naruzhnaya-chast-99-cotton-1-acrylic',	NULL,	0,	NULL,	NULL),
(380,	2,	'{"en":"10-12","ru":"10-12"}',	'10-12',	NULL,	0,	NULL,	NULL),
(381,	1,	'{"en":"Light blue","ru":"Light blue"}',	'1--light-blue',	NULL,	0,	NULL,	NULL),
(382,	6,	'{"en":"Наружная часть: 78% polyester, 18% viscose, 4% elastane","ru":"Наружная часть: 78% polyester, 18% viscose, 4% elastane"}',	'naruzhnaya-chast-78-polyester-18-viscose-4-elastane',	NULL,	0,	NULL,	NULL),
(383,	6,	'{"en":"Наружная часть: 80% cotton, 20% polyester","ru":"Наружная часть: 80% cotton, 20% polyester"}',	'naruzhnaya-chast-80-cotton-20-polyester',	NULL,	0,	NULL,	NULL),
(384,	6,	'{"en":"Наружная часть: 62% cotton, 37% polyester, 1% elastane","ru":"Наружная часть: 62% cotton, 37% polyester, 1% elastane"}',	'naruzhnaya-chast-62-cotton-37-polyester-1-elastane',	NULL,	0,	NULL,	NULL),
(385,	6,	'{"en":"Наружний материал: 100% polyester","ru":"Наружний материал: 100% polyester"}',	'naruzhniy-material-100-polyester',	NULL,	1,	NULL,	NULL),
(386,	6,	'{"en":"Наружний материал: 88% cotton, 10% polyamide, 2% elastane","ru":"Наружний материал: 88% cotton, 10% polyamide, 2% elastane"}',	'naruzhniy-material-88-cotton-10-polyamide-2-elastane',	NULL,	0,	NULL,	NULL),
(387,	6,	'{"en":"Верх: 90% polyurethane, 10% polyurethane thermoplastic","ru":"Верх: 90% polyurethane, 10% polyurethane thermoplastic"}',	'verkh-90-polyurethane-10-polyurethane-thermoplastic',	NULL,	2,	NULL,	NULL),
(388,	1,	'{"en":"Multicolored","ru":"Multicolored"}',	'multicolored',	NULL,	0,	NULL,	NULL),
(389,	1,	'{"en":"Multicolored","ru":"Multicolored"}',	'1--multicolored',	NULL,	0,	NULL,	NULL),
(390,	6,	'{"en":"Наружная часть: 80% polyester, 10% polyurethane, 10% acrylic, 0% elastane","ru":"Наружная часть: 80% polyester, 10% polyurethane, 10% acrylic, 0% elastane"}',	'naruzhnaya-chast-80-polyester-10-polyurethane-10-acrylic-0-elastane',	NULL,	2,	NULL,	NULL),
(391,	6,	'{"en":"Наружная часть: 93% polyester, 7% elastane","ru":"Наружная часть: 93% polyester, 7% elastane"}',	'naruzhnaya-chast-93-polyester-7-elastane',	NULL,	0,	NULL,	NULL),
(392,	6,	'{"en":"Наружная часть: 57% cotton, 38% polyester, 5% elastane","ru":"Наружная часть: 57% cotton, 38% polyester, 5% elastane"}',	'naruzhnaya-chast-57-cotton-38-polyester-5-elastane',	NULL,	0,	NULL,	NULL),
(393,	1,	'{"en":"Yellow","ru":"Yellow"}',	'yellow',	NULL,	2,	NULL,	NULL),
(394,	6,	'{"en":"Наполнитель: 90% polyamide, 10% elastane","ru":"Наполнитель: 90% polyamide, 10% elastane"}',	'napolnitel-90-polyamide-10-elastane',	NULL,	0,	NULL,	NULL),
(395,	6,	'{"en":"Наружная часть: 90% polyamide, 10% elastane","ru":"Наружная часть: 90% polyamide, 10% elastane"}',	'naruzhnaya-chast-90-polyamide-10-elastane',	NULL,	1,	NULL,	NULL),
(396,	6,	'{"en":"Подкладка: 85% polyurethane, 15% polyester","ru":"Подкладка: 85% polyurethane, 15% polyester"}',	'podkladka-85-polyurethane-15-polyester',	NULL,	1,	NULL,	NULL),
(397,	6,	'{"en":"Наружний материал: 85% polyurethane, 15% iron","ru":"Наружний материал: 85% polyurethane, 15% iron"}',	'naruzhniy-material-85-polyurethane-15-iron',	NULL,	1,	NULL,	NULL),
(398,	5,	'{"en":"IRON UP TO150ºC\/302ºF","ru":"IRON UP TO150ºC\/302ºF"}',	'iron-up-to150oc302of',	NULL,	2,	NULL,	NULL),
(399,	6,	'{"en":"Наружная часть: 65% polyester, 33% viscose, 2% elastane","ru":"Наружная часть: 65% polyester, 33% viscose, 2% elastane"}',	'naruzhnaya-chast-65-polyester-33-viscose-2-elastane',	NULL,	0,	NULL,	NULL),
(400,	6,	'{"en":"Подкладка: 86% polyester, 14% cotton","ru":"Подкладка: 86% polyester, 14% cotton"}',	'podkladka-86-polyester-14-cotton',	NULL,	0,	NULL,	NULL),
(401,	6,	'{"en":"Наружная часть: 55% polyester, 45% polyurethane","ru":"Наружная часть: 55% polyester, 45% polyurethane"}',	'naruzhnaya-chast-55-polyester-45-polyurethane',	NULL,	0,	NULL,	NULL),
(402,	6,	'{"en":"Наружная часть: 58% cotton, 39% polyester, 3% elastane","ru":"Наружная часть: 58% cotton, 39% polyester, 3% elastane"}',	'naruzhnaya-chast-58-cotton-39-polyester-3-elastane',	NULL,	0,	NULL,	NULL),
(403,	6,	'{"en":"Наружная часть: 93% polyester, 5% acrylic, 2% wool","ru":"Наружная часть: 93% polyester, 5% acrylic, 2% wool"}',	'naruzhnaya-chast-93-polyester-5-acrylic-2-wool',	NULL,	2,	NULL,	NULL),
(404,	6,	'{"en":"Наружная часть: 61% viscose, 32% polyester, 7% elastane","ru":"Наружная часть: 61% viscose, 32% polyester, 7% elastane"}',	'naruzhnaya-chast-61-viscose-32-polyester-7-elastane',	NULL,	1,	NULL,	NULL);

DROP TABLE IF EXISTS "attributes";
DROP SEQUENCE IF EXISTS attributes_id_seq;
CREATE SEQUENCE attributes_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "mod"."attributes" (
    "id" bigint DEFAULT nextval('attributes_id_seq') NOT NULL,
    "name" json NOT NULL,
    "slug" character varying(255) NOT NULL,
    "type" character varying(255) NOT NULL,
    "sort_order" integer DEFAULT '0' NOT NULL,
    "created_at" timestamp(0),
    "updated_at" timestamp(0),
    CONSTRAINT "attributes_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "attributes_type_slug_unique" UNIQUE ("type", "slug")
) WITH (oids = false);

<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
INSERT INTO "attributes" ("id", "name", "slug", "type", "sort_order", "created_at", "updated_at") VALUES
(1,	'{"ru":"\u0426\u0432\u0435\u0442","en":"\u0426\u0432\u0435\u0442","uz":"\u0426\u0432\u0435\u0442"}',	'cvet',	'color',	0,	'2021-10-22 16:57:05',	'2021-10-22 16:57:05'),
(2,	'{"ru":"\u0420\u0430\u0437\u043c\u0435\u0440","en":"\u0420\u0430\u0437\u043c\u0435\u0440","uz":"\u0420\u0430\u0437\u043c\u0435\u0440"}',	'razmer',	'size',	1,	'2021-10-22 16:57:05',	'2021-10-22 16:57:05'),
(3,	'{"ru":"\u0421\u043e\u0441\u0442\u0430\u0432","en":"\u0421\u043e\u0441\u0442\u0430\u0432","uz":"\u0421\u043e\u0441\u0442\u0430\u0432"}',	'sostav',	'string',	2,	'2021-10-22 16:57:05',	'2021-10-22 16:57:05'),
(4,	'{"ru":"\u0421\u043e\u043f\u043e\u0441\u0431 \u0443\u0445\u043e\u0434\u0430","en":"\u0421\u043e\u043f\u043e\u0441\u0431 \u0443\u0445\u043e\u0434\u0430","uz":"\u0421\u043e\u043f\u043e\u0441\u0431 \u0443\u0445\u043e\u0434\u0430"}',	'soposb-uxoda',	'string',	3,	'2021-10-22 16:57:05',	'2021-10-22 16:57:05'),
(5,	'{"ru":"Уход"}',	'care',	'string',	0,	'2021-10-22 12:12:25',	NULL),
(6,	'{"ru":"Состав"}',	'composition',	'string',	0,	'2021-10-22 12:12:25',	NULL),
(7,	'{"ru":"Детали"}',	'description_list',	'string',	0,	'2021-10-22 12:12:26',	NULL);

DROP TABLE IF EXISTS "brands";
DROP SEQUENCE IF EXISTS brands_id_seq;
CREATE SEQUENCE brands_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "mod"."brands" (
    "id" bigint DEFAULT nextval('brands_id_seq') NOT NULL,
    "name" character varying(128) NOT NULL,
    "slug" character varying(128) NOT NULL,
    "donor_id" bigint,
    "is_active" boolean DEFAULT false NOT NULL,
    "created_at" timestamp(0),
    "updated_at" timestamp(0),
    CONSTRAINT "brands_donor_id_slug_unique" UNIQUE ("donor_id", "slug"),
    CONSTRAINT "brands_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "brands_is_active_index" ON "mod"."brands" USING btree ("is_active");

<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
INSERT INTO "brands" ("id", "name", "slug", "donor_id", "is_active", "created_at", "updated_at") VALUES
(1,	'Zara',	'zara',	1,	'0',	'2021-10-22 16:57:05',	'2021-10-22 16:57:05'),
(2,	'Bershka',	'bershka',	1,	'0',	'2021-10-22 16:57:05',	'2021-10-22 16:57:05'),
(3,	'Oysho',	'oyshop',	1,	'0',	'2021-10-22 16:57:05',	'2021-10-22 16:57:05'),
(4,	'Massimo Dutti',	'massimodutti',	1,	'0',	'2021-10-22 16:57:05',	'2021-10-22 16:57:05'),
(5,	'Pull & Bear',	'pullandbear',	1,	'0',	'2021-10-22 16:57:05',	'2021-10-22 16:57:05'),
(6,	'Stradivarius',	'stradivarius',	1,	'0',	'2021-10-22 16:57:05',	'2021-10-22 16:57:05'),
(7,	'Ozon',	'ozon',	NULL,	'1',	'2021-10-22 12:12:22',	'2021-10-22 12:12:22'),
(8,	'Yoox',	'yoox',	NULL,	'1',	'2021-10-22 12:12:22',	'2021-10-22 12:12:22'),
(9,	'Oysho',	'oysho',	NULL,	'1',	'2021-10-22 12:12:22',	'2021-10-22 12:12:22'),
(10,	'Massimo Dutti',	'massimo-dutti',	NULL,	'1',	'2021-10-22 12:12:23',	'2021-10-22 12:12:23'),
(11,	'Zara Home',	'zara-home',	NULL,	'1',	'2021-10-22 12:12:24',	'2021-10-22 12:12:24'),
(12,	'Pull and Bear',	'pull-and-bear',	NULL,	'1',	'2021-10-22 12:12:24',	'2021-10-22 12:12:24'),
(13,	'Mango',	'mango',	NULL,	'1',	'2021-10-22 12:12:25',	'2021-10-22 12:12:25');

DROP TABLE IF EXISTS "callbacks";
DROP SEQUENCE IF EXISTS callbacks_id_seq;
CREATE SEQUENCE callbacks_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "mod"."callbacks" (
    "id" bigint DEFAULT nextval('callbacks_id_seq') NOT NULL,
    "user_id" bigint,
    "phone" character varying(16) NOT NULL,
    "is_answered" boolean DEFAULT false NOT NULL,
    "created_at" timestamp(0),
    "updated_at" timestamp(0),
    CONSTRAINT "callbacks_pkey" PRIMARY KEY ("id")
) WITH (oids = false);


DROP TABLE IF EXISTS "cards";
DROP SEQUENCE IF EXISTS cards_id_seq;
CREATE SEQUENCE cards_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "mod"."cards" (
    "id" bigint DEFAULT nextval('cards_id_seq') NOT NULL,
    "user_id" bigint NOT NULL,
    "payment_id" bigint NOT NULL,
    "brand" character varying(255) NOT NULL,
    "number" character varying(8) NOT NULL,
    "expire" character varying(5) NOT NULL,
    "data" json,
    "created_at" timestamp(0),
    "updated_at" timestamp(0),
    CONSTRAINT "cards_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "cards_payment_id_index" ON "mod"."cards" USING btree ("payment_id");

CREATE INDEX "cards_user_id_index" ON "mod"."cards" USING btree ("user_id");


DROP TABLE IF EXISTS "carriers";
DROP SEQUENCE IF EXISTS carriers_id_seq;
CREATE SEQUENCE carriers_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "mod"."carriers" (
    "id" bigint DEFAULT nextval('carriers_id_seq') NOT NULL,
    "name" json NOT NULL,
    "transit_time" json,
    "price" integer DEFAULT '0' NOT NULL,
    "delivery_days" integer DEFAULT '0' NOT NULL,
    "sort_order" integer DEFAULT '0' NOT NULL,
    "is_active" boolean DEFAULT false NOT NULL,
    "created_at" timestamp(0),
    "updated_at" timestamp(0),
    CONSTRAINT "carriers_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "carriers_is_active_index" ON "mod"."carriers" USING btree ("is_active");

<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
INSERT INTO "carriers" ("id", "name", "transit_time", "price", "delivery_days", "sort_order", "is_active", "created_at", "updated_at") VALUES
(1,	'{"ru":"\u0411\u0435\u0441\u043f\u043b\u0430\u0442\u043d\u0430\u044f \u0434\u043e\u0441\u0442\u0430\u0432\u043a\u0430","en":"\u0411\u0435\u0441\u043f\u043b\u0430\u0442\u043d\u0430\u044f \u0434\u043e\u0441\u0442\u0430\u0432\u043a\u0430","uz":"\u0411\u0435\u0441\u043f\u043b\u0430\u0442\u043d\u0430\u044f \u0434\u043e\u0441\u0442\u0430\u0432\u043a\u0430"}',	'{"ru":"\u0414\u043e\u0441\u0442\u0430\u0432\u043a\u0430 \u0432 \u0442\u0435\u0447\u0435\u043d\u0438\u0438 \u0434\u043d\u044f","en":"\u0414\u043e\u0441\u0442\u0430\u0432\u043a\u0430 \u0432 \u0442\u0435\u0447\u0435\u043d\u0438\u0438 \u0434\u043d\u044f","uz":"\u0414\u043e\u0441\u0442\u0430\u0432\u043a\u0430 \u0432 \u0442\u0435\u0447\u0435\u043d\u0438\u0438 \u0434\u043d\u044f"}',	0,	0,	0,	'1',	'2021-10-22 16:57:05',	'2021-10-22 16:57:05');

DROP TABLE IF EXISTS "catalogs";
DROP SEQUENCE IF EXISTS catalogs_id_seq;
CREATE SEQUENCE catalogs_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "mod"."catalogs" (
    "id" bigint DEFAULT nextval('catalogs_id_seq') NOT NULL,
    "name" json NOT NULL,
    "slug" character varying(255) NOT NULL,
    "visible_on_app" boolean DEFAULT false NOT NULL,
    "visible_on_mobile" boolean DEFAULT false NOT NULL,
    "visible_on_desktop" boolean DEFAULT false NOT NULL,
    "is_active" boolean DEFAULT false NOT NULL,
    "sort_order" integer DEFAULT '0' NOT NULL,
    "created_at" timestamp(0),
    "updated_at" timestamp(0),
    CONSTRAINT "catalogs_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "catalogs_is_active_visible_on_app_visible_on_mobile_visible_on_" ON "mod"."catalogs" USING btree ("is_active", "visible_on_app", "visible_on_mobile", "visible_on_desktop");

<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
INSERT INTO "catalogs" ("id", "name", "slug", "visible_on_app", "visible_on_mobile", "visible_on_desktop", "is_active", "sort_order", "created_at", "updated_at") VALUES
(1,	'{"ru":"\u0416\u0435\u043d\u0449\u0438\u043d\u0430\u043c","uz":"\u0416\u0435\u043d\u0449\u0438\u043d\u0430\u043c","en":"\u0416\u0435\u043d\u0449\u0438\u043d\u0430\u043c"}',	'zhenshinam',	'1',	'1',	'1',	'1',	0,	'2021-07-25 15:16:13',	'2021-07-25 15:16:13'),
(2,	'{"ru":"\u041c\u0443\u0436\u0447\u0438\u043d\u0430\u043c","uz":"\u041c\u0443\u0436\u0447\u0438\u043d\u0430\u043c","en":"\u041c\u0443\u0436\u0447\u0438\u043d\u0430\u043c"}',	'muzhchinam',	'1',	'1',	'1',	'1',	1,	'2021-07-25 15:16:34',	'2021-07-25 15:16:34'),
(3,	'{"ru":"\u0414\u0435\u0442\u044f\u043c","uz":"\u0414\u0435\u0442\u044f\u043c","en":"\u0414\u0435\u0442\u044f\u043c"}',	'detyam',	'1',	'1',	'1',	'1',	2,	'2021-08-15 15:57:06',	'2021-08-15 15:57:24');

DROP TABLE IF EXISTS "categories";
DROP SEQUENCE IF EXISTS categories_id_seq;
CREATE SEQUENCE categories_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "mod"."categories" (
    "id" bigint DEFAULT nextval('categories_id_seq') NOT NULL,
    "meta_title" json,
    "meta_description" json,
    "meta_keywords" json,
    "name" json NOT NULL,
    "slug" character varying(255) NOT NULL,
    "description" json,
    "donor_category_id" bigint,
    "parent_id" integer,
    "left" integer DEFAULT '0' NOT NULL,
    "right" integer DEFAULT '0' NOT NULL,
    "is_sale" boolean DEFAULT false NOT NULL,
    "is_accessory" boolean DEFAULT false NOT NULL,
    "is_multi_currency" boolean DEFAULT false NOT NULL,
    "is_active" boolean DEFAULT false NOT NULL,
    "created_at" timestamp(0),
    "updated_at" timestamp(0),
    CONSTRAINT "categories_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "categories_is_active_index" ON "mod"."categories" USING btree ("is_active");

CREATE INDEX "categories_left_right_parent_id_index" ON "mod"."categories" USING btree ("left", "right", "parent_id");

<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
INSERT INTO "categories" ("id", "meta_title", "meta_description", "meta_keywords", "name", "slug", "description", "donor_category_id", "parent_id", "left", "right", "is_sale", "is_accessory", "is_multi_currency", "is_active", "created_at", "updated_at") VALUES
(7,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u0421\u0443\u043c\u043a\u0438","uz":"\u0421\u0443\u043c\u043a\u0438","en":"\u0421\u0443\u043c\u043a\u0438"}',	'sumki',	NULL,	NULL,	59,	122,	123,	'0',	'0',	'0',	'1',	'2021-11-08 17:14:26',	'2021-11-08 17:14:26'),
(42,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u0411\u043b\u0435\u0439\u0437\u0435\u0440\u044b","uz":"\u0411\u043b\u0435\u0439\u0437\u0435\u0440\u044b","en":"\u0411\u043b\u0435\u0439\u0437\u0435\u0440\u044b"}',	'blejzery',	NULL,	NULL,	2,	2,	3,	'0',	'0',	'0',	'1',	'2021-08-15 14:59:17',	'2021-08-15 14:59:17'),
(46,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u0411\u0440\u044e\u043a\u0438","uz":"\u0411\u0440\u044e\u043a\u0438","en":"\u0411\u0440\u044e\u043a\u0438"}',	'bryuki',	NULL,	NULL,	2,	10,	11,	'0',	'0',	'0',	'1',	'2021-08-15 15:07:52',	'2021-08-15 15:07:52'),
(50,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u0422\u0440\u0438\u043a\u043e\u0442\u0430\u0436","uz":"\u0422\u0440\u0438\u043a\u043e\u0442\u0430\u0436","en":"\u0422\u0440\u0438\u043a\u043e\u0442\u0430\u0436"}',	'trikotazh',	NULL,	NULL,	2,	18,	19,	'0',	'0',	'0',	'1',	'2021-08-15 15:26:40',	'2021-08-15 15:26:40'),
(52,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u041f\u043b\u0430\u0432\u043a\u0438","uz":"\u041f\u043b\u0430\u0432\u043a\u0438","en":"\u041f\u043b\u0430\u0432\u043a\u0438"}',	'plavki',	NULL,	NULL,	2,	22,	23,	'0',	'0',	'0',	'1',	'2021-08-15 15:33:38',	'2021-08-15 15:33:38'),
(30,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u0421\u0430\u043f\u043e\u0433\u0438 | \u0411\u043e\u0442\u0438\u043d\u043a\u0438","uz":"\u0421\u0430\u043f\u043e\u0433\u0438 | \u0411\u043e\u0442\u0438\u043d\u043a\u0438","en":"\u0421\u0430\u043f\u043e\u0433\u0438 | \u0411\u043e\u0442\u0438\u043d\u043a\u0438"}',	'sapogi-botinki',	NULL,	NULL,	28,	62,	63,	'0',	'0',	'0',	'1',	'2021-08-15 14:43:41',	'2021-08-15 14:43:41'),
(31,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u0422\u0443\u0444\u043b\u0438 \u0431\u0435\u0437 \u043a\u0430\u0431\u043b\u0443\u043a\u0430","uz":"\u0422\u0443\u0444\u043b\u0438 \u0431\u0435\u0437 \u043a\u0430\u0431\u043b\u0443\u043a\u0430","en":"\u0422\u0443\u0444\u043b\u0438 \u0431\u0435\u0437 \u043a\u0430\u0431\u043b\u0443\u043a\u0430"}',	'tufli-bez-kabluka',	NULL,	NULL,	28,	64,	65,	'0',	'0',	'0',	'1',	'2021-08-15 14:44:40',	'2021-08-15 14:44:40'),
(3,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u041e\u0434\u0435\u0436\u0434\u0430 Woman","uz":"\u041e\u0434\u0435\u0436\u0434\u0430 Woman","en":"\u041e\u0434\u0435\u0436\u0434\u0430 Woman"}',	'woman',	NULL,	NULL,	NULL,	25,	58,	'0',	'0',	'0',	'1',	'2021-07-25 04:11:44',	'2021-08-15 14:19:51'),
(16,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u0411\u043b\u0443\u0437\u044b | \u0420\u0443\u0431\u0430\u0448\u043a\u0438","uz":"\u0411\u043b\u0443\u0437\u044b | \u0420\u0443\u0431\u0430\u0448\u043a\u0438","en":"\u0411\u043b\u0443\u0437\u044b | \u0420\u0443\u0431\u0430\u0448\u043a\u0438"}',	'bluzy-rubashki',	NULL,	NULL,	3,	34,	35,	'0',	'0',	'0',	'1',	'2021-08-15 14:32:37',	'2021-08-15 14:32:37'),
(17,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u0424\u0443\u0442\u0431\u043e\u043b\u043a\u0438","uz":"\u0424\u0443\u0442\u0431\u043e\u043b\u043a\u0438","en":"\u0424\u0443\u0442\u0431\u043e\u043b\u043a\u0438"}',	'futbolki',	NULL,	NULL,	3,	36,	37,	'0',	'0',	'0',	'1',	'2021-08-15 14:32:57',	'2021-08-15 14:32:57'),
(32,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u041a\u0435\u0434\u044b | \u041a\u0440\u043e\u0441\u0441\u043e\u0432\u043a\u0438","uz":"\u041a\u0435\u0434\u044b | \u041a\u0440\u043e\u0441\u0441\u043e\u0432\u043a\u0438","en":"\u041a\u0435\u0434\u044b | \u041a\u0440\u043e\u0441\u0441\u043e\u0432\u043a\u0438"}',	'kedy-krossovki',	NULL,	NULL,	28,	66,	67,	'0',	'0',	'0',	'1',	'2021-08-15 14:45:31',	'2021-08-15 14:45:31'),
(43,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u0420\u0443\u0431\u0430\u0448\u043a\u0438","uz":"\u0420\u0443\u0431\u0430\u0448\u043a\u0438","en":"\u0420\u0443\u0431\u0430\u0448\u043a\u0438"}',	'rubashki',	NULL,	NULL,	2,	4,	5,	'0',	'0',	'0',	'1',	'2021-08-15 15:06:55',	'2021-08-15 15:06:55'),
(47,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u0414\u0436\u0438\u043d\u0441\u044b","uz":"\u0414\u0436\u0438\u043d\u0441\u044b","en":"\u0414\u0436\u0438\u043d\u0441\u044b"}',	'dzhinsy',	NULL,	NULL,	2,	12,	13,	'0',	'0',	'0',	'1',	'2021-08-15 15:08:01',	'2021-08-15 15:08:01'),
(13,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u041f\u043b\u0430\u0442\u044c\u044f \u0438 \u0441\u0430\u0440\u0430\u0444\u0430\u043d\u044b","uz":"\u041f\u043b\u0430\u0442\u044c\u044f \u0438 \u0441\u0430\u0440\u0430\u0444\u0430\u043d\u044b","en":"\u041f\u043b\u0430\u0442\u044c\u044f \u0438 \u0441\u0430\u0440\u0430\u0444\u0430\u043d\u044b"}',	'platya-i-sarafany',	NULL,	NULL,	3,	28,	29,	'0',	'0',	'0',	'1',	'2021-08-15 14:25:06',	'2021-08-15 14:25:06'),
(33,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u0421\u0430\u043d\u0434\u0430\u043b\u0438\u0438","uz":"\u0421\u0430\u043d\u0434\u0430\u043b\u0438\u0438","en":"\u0421\u0430\u043d\u0434\u0430\u043b\u0438\u0438"}',	'sandalii',	NULL,	NULL,	28,	68,	69,	'0',	'0',	'0',	'1',	'2021-08-15 14:45:48',	'2021-08-15 14:45:48'),
(37,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u0428\u0430\u0440\u0444\u044b","uz":"\u0428\u0430\u0440\u0444\u044b","en":"\u0428\u0430\u0440\u0444\u044b"}',	'sharfy',	NULL,	NULL,	34,	74,	75,	'0',	'0',	'0',	'1',	'2021-08-15 14:56:39',	'2021-08-15 14:56:39'),
(51,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u041a\u0443\u0440\u0442\u043a\u0438 | \u0422\u0440\u0435\u043d\u0447\u0438","uz":"\u041a\u0443\u0440\u0442\u043a\u0438 | \u0422\u0440\u0435\u043d\u0447\u0438","en":"\u041a\u0443\u0440\u0442\u043a\u0438 | \u0422\u0440\u0435\u043d\u0447\u0438"}',	'kurtki-trenchi',	NULL,	NULL,	2,	20,	21,	'0',	'0',	'0',	'1',	'2021-08-15 15:27:18',	'2021-08-15 15:27:18'),
(14,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u041a\u043e\u043c\u0431\u0438\u043d\u0435\u0437\u043e\u043d\u044b","uz":"\u041a\u043e\u043c\u0431\u0438\u043d\u0435\u0437\u043e\u043d\u044b","en":"\u041a\u043e\u043c\u0431\u0438\u043d\u0435\u0437\u043e\u043d\u044b"}',	'kombinezony',	NULL,	NULL,	3,	30,	31,	'0',	'0',	'0',	'1',	'2021-08-15 14:26:27',	'2021-08-15 14:26:27'),
(20,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u0414\u0436\u0438\u043d\u0441\u044b","uz":"\u0414\u0436\u0438\u043d\u0441\u044b","en":"\u0414\u0436\u0438\u043d\u0441\u044b"}',	'dzhinsy',	NULL,	NULL,	3,	42,	43,	'0',	'0',	'0',	'1',	'2021-08-15 14:34:04',	'2021-08-15 14:34:04'),
(40,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u0410\u043a\u0441\u0435\u0441\u0441\u0443\u0430\u0440\u044b \u0434\u043b\u044f \u0432\u043e\u043b\u043e\u0441","uz":"\u0410\u043a\u0441\u0435\u0441\u0441\u0443\u0430\u0440\u044b \u0434\u043b\u044f \u0432\u043e\u043b\u043e\u0441","en":"\u0410\u043a\u0441\u0435\u0441\u0441\u0443\u0430\u0440\u044b \u0434\u043b\u044f \u0432\u043e\u043b\u043e\u0441"}',	'aksessuary-dlya-volos',	NULL,	NULL,	34,	80,	81,	'0',	'0',	'0',	'1',	'2021-08-15 14:57:29',	'2021-08-15 14:57:29'),
(48,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u0428\u043e\u0440\u0442\u044b","uz":"\u0428\u043e\u0440\u0442\u044b","en":"\u0428\u043e\u0440\u0442\u044b"}',	'shorty',	NULL,	NULL,	2,	14,	15,	'0',	'0',	'0',	'1',	'2021-08-15 15:08:23',	'2021-08-15 15:08:23'),
(4,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u0422\u043e\u043b\u0441\u0442\u043e\u0432\u043a\u0438 | \u0425\u0443\u0434\u0438","uz":"\u0422\u043e\u043b\u0441\u0442\u043e\u0432\u043a\u0438 | \u0425\u0443\u0434\u0438","en":"\u0422\u043e\u043b\u0441\u0442\u043e\u0432\u043a\u0438 | \u0425\u0443\u0434\u0438"}',	'tolstovki-hudi',	NULL,	NULL,	3,	56,	57,	'0',	'0',	'0',	'1',	'2021-11-08 12:05:49',	'2021-11-08 12:05:49'),
(65,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u0420\u0435\u043c\u043d\u0438","uz":"\u0420\u0435\u043c\u043d\u0438","en":"\u0420\u0435\u043c\u043d\u0438"}',	'remni',	NULL,	NULL,	59,	114,	115,	'0',	'0',	'0',	'1',	'2021-08-15 15:44:35',	'2021-08-15 15:44:35'),
(56,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u041c\u043e\u043a\u0430\u0441\u0438\u043d\u044b","uz":"\u041c\u043e\u043a\u0430\u0441\u0438\u043d\u044b","en":"\u041c\u043e\u043a\u0430\u0441\u0438\u043d\u044b"}',	'mokasiny',	NULL,	NULL,	53,	96,	97,	'0',	'0',	'0',	'1',	'2021-08-15 15:38:58',	'2021-08-15 15:38:58'),
(66,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u0427\u0435\u0445\u043b\u044b \u0434\u043b\u044f \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0430","uz":"\u0427\u0435\u0445\u043b\u044b \u0434\u043b\u044f \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0430","en":"\u0427\u0435\u0445\u043b\u044b \u0434\u043b\u044f \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0430"}',	'chehly-dlya-telefona',	NULL,	NULL,	59,	116,	117,	'0',	'0',	'0',	'1',	'2021-08-15 15:44:58',	'2021-08-15 15:44:58'),
(11,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u0411\u043b\u0435\u0439\u0437\u0435\u0440\u044b","uz":"\u0411\u043b\u0435\u0439\u0437\u0435\u0440\u044b","en":"\u0411\u043b\u0435\u0439\u0437\u0435\u0440\u044b"}',	'blejzery',	NULL,	NULL,	3,	26,	27,	'0',	'0',	'0',	'1',	'2021-08-15 14:20:43',	'2021-08-15 14:20:43'),
(44,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u0424\u0443\u0442\u0431\u043e\u043b\u043a\u0438","uz":"\u0424\u0443\u0442\u0431\u043e\u043b\u043a\u0438","en":"\u0424\u0443\u0442\u0431\u043e\u043b\u043a\u0438"}',	'futbolki',	NULL,	NULL,	2,	6,	7,	'0',	'0',	'0',	'1',	'2021-08-15 15:07:09',	'2021-08-15 15:07:09'),
(15,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u0422\u043e\u043f\u044b | \u0411\u043e\u0434\u0438","uz":"\u0422\u043e\u043f\u044b | \u0411\u043e\u0434\u0438","en":"\u0422\u043e\u043f\u044b | \u0411\u043e\u0434\u0438"}',	'topy-bodi',	NULL,	NULL,	3,	32,	33,	'0',	'0',	'0',	'1',	'2021-08-15 14:27:11',	'2021-08-15 14:27:11'),
(2,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u041e\u0434\u0435\u0436\u0434\u0430 Man","uz":"\u041e\u0434\u0435\u0436\u0434\u0430 Man","en":"\u041e\u0434\u0435\u0436\u0434\u0430 Man"}',	'man',	NULL,	NULL,	NULL,	1,	24,	'0',	'0',	'0',	'1',	'2021-07-25 04:11:26',	'2021-08-15 14:20:10'),
(18,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u0422\u0440\u0438\u043a\u043e\u0442\u0430\u0436","uz":"\u0422\u0440\u0438\u043a\u043e\u0442\u0430\u0436","en":"\u0422\u0440\u0438\u043a\u043e\u0442\u0430\u0436"}',	'trikotazh',	NULL,	NULL,	3,	38,	39,	'0',	'0',	'0',	'1',	'2021-08-15 14:33:34',	'2021-08-15 14:33:34'),
(19,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u0411\u0440\u044e\u043a\u0438","uz":"\u0411\u0440\u044e\u043a\u0438","en":"\u0411\u0440\u044e\u043a\u0438"}',	'bryuki',	NULL,	NULL,	3,	40,	41,	'0',	'0',	'0',	'1',	'2021-08-15 14:33:46',	'2021-08-15 14:33:46'),
(29,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u0422\u0443\u0444\u043b\u0438 \u043d\u0430 \u043a\u0430\u0431\u043b\u0443\u043a\u0435","uz":"\u0422\u0443\u0444\u043b\u0438 \u043d\u0430 \u043a\u0430\u0431\u043b\u0443\u043a\u0435","en":"\u0422\u0443\u0444\u043b\u0438 \u043d\u0430 \u043a\u0430\u0431\u043b\u0443\u043a\u0435"}',	'tufli-na-kabluke',	NULL,	NULL,	28,	60,	61,	'0',	'0',	'0',	'1',	'2021-08-15 14:42:46',	'2021-08-15 14:42:46'),
(28,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u041e\u0431\u0443\u0432\u044c woman","uz":"\u041e\u0431\u0443\u0432\u044c woman","en":"\u041e\u0431\u0443\u0432\u044c woman"}',	'woman',	NULL,	NULL,	NULL,	59,	70,	'0',	'0',	'0',	'1',	'2021-08-15 14:40:36',	'2021-08-15 14:49:06'),
(49,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u0425\u0443\u0434\u0438 | \u0422\u043e\u043b\u0441\u0442\u043e\u0432\u043a\u0438","uz":"\u0425\u0443\u0434\u0438 | \u0422\u043e\u043b\u0441\u0442\u043e\u0432\u043a\u0438","en":"\u0425\u0443\u0434\u0438 | \u0422\u043e\u043b\u0441\u0442\u043e\u0432\u043a\u0438"}',	'hudi-tolstovki',	NULL,	NULL,	2,	16,	17,	'0',	'0',	'0',	'1',	'2021-08-15 15:08:44',	'2021-08-15 15:08:44'),
(45,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u041f\u043e\u043b\u043e","uz":"\u041f\u043e\u043b\u043e","en":"\u041f\u043e\u043b\u043e"}',	'polo',	NULL,	NULL,	2,	8,	9,	'0',	'0',	'0',	'1',	'2021-08-15 15:07:26',	'2021-08-15 15:07:26'),
(22,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u042e\u0431\u043a\u0438","uz":"\u042e\u0431\u043a\u0438","en":"\u042e\u0431\u043a\u0438"}',	'yubki',	NULL,	NULL,	3,	48,	49,	'0',	'0',	'0',	'1',	'2021-08-15 14:34:33',	'2021-08-15 14:34:33'),
(23,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u041a\u0443\u043f\u0430\u043b\u044c\u043d\u0438\u043a\u0438","uz":"\u041a\u0443\u043f\u0430\u043b\u044c\u043d\u0438\u043a\u0438","en":"\u041a\u0443\u043f\u0430\u043b\u044c\u043d\u0438\u043a\u0438"}',	'kupalniki',	NULL,	NULL,	3,	50,	51,	'0',	'0',	'0',	'1',	'2021-08-15 14:34:51',	'2021-08-15 14:34:51'),
(21,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u0428\u043e\u0440\u0442\u044b","uz":"\u0428\u043e\u0440\u0442\u044b","en":"\u0428\u043e\u0440\u0442\u044b"}',	'shorty',	NULL,	NULL,	3,	44,	47,	'0',	'0',	'0',	'1',	'2021-08-15 14:34:17',	'2021-08-15 14:34:17'),
(24,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u041a\u0443\u0440\u0442\u043a\u0438","uz":"\u041a\u0443\u0440\u0442\u043a\u0438","en":"\u041a\u0443\u0440\u0442\u043a\u0438"}',	'kurtki',	NULL,	NULL,	3,	52,	53,	'0',	'0',	'0',	'1',	'2021-08-15 14:35:14',	'2021-08-15 14:35:14'),
(5,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u0421\u0443\u043c\u043a\u0438","uz":"\u0421\u0443\u043c\u043a\u0438","en":"\u0421\u0443\u043c\u043a\u0438"}',	'sumki',	NULL,	NULL,	34,	84,	85,	'0',	'0',	'0',	'1',	'2021-11-08 14:50:57',	'2021-11-08 14:50:57'),
(62,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u0411\u0435\u043b\u044c\u0435","uz":"\u0411\u0435\u043b\u044c\u0435","en":"\u0411\u0435\u043b\u044c\u0435"}',	'bele',	NULL,	NULL,	59,	108,	109,	'0',	'0',	'0',	'1',	'2021-08-15 15:42:47',	'2021-08-15 15:42:47'),
(67,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u041a\u043e\u0448\u0435\u043b\u044c\u043a\u0438","uz":"\u041a\u043e\u0448\u0435\u043b\u044c\u043a\u0438","en":"\u041a\u043e\u0448\u0435\u043b\u044c\u043a\u0438"}',	'koshelki',	NULL,	NULL,	59,	118,	119,	'0',	'0',	'0',	'1',	'2021-08-15 15:45:31',	'2021-08-15 15:45:31'),
(53,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u041e\u0431\u0443\u0432\u044c man","uz":"\u041e\u0431\u0443\u0432\u044c man","en":"\u041e\u0431\u0443\u0432\u044c man"}',	'obuv-man',	NULL,	NULL,	NULL,	91,	102,	'0',	'0',	'0',	'1',	'2021-08-15 15:34:18',	'2021-08-15 15:34:18'),
(58,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u0421\u0430\u043f\u043e\u0433\u0438","uz":"\u0421\u0430\u043f\u043e\u0433\u0438","en":"\u0421\u0430\u043f\u043e\u0433\u0438"}',	'sapogi',	NULL,	NULL,	53,	100,	101,	'0',	'0',	'0',	'1',	'2021-08-15 15:39:25',	'2021-08-15 15:39:25'),
(63,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u041d\u043e\u0441\u043a\u0438","uz":"\u041d\u043e\u0441\u043a\u0438","en":"\u041d\u043e\u0441\u043a\u0438"}',	'noski',	NULL,	NULL,	59,	110,	111,	'0',	'0',	'0',	'1',	'2021-08-15 15:42:58',	'2021-08-15 15:42:58'),
(61,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u041e\u0447\u043a\u0438","uz":"\u041e\u0447\u043a\u0438","en":"\u041e\u0447\u043a\u0438"}',	'ochki',	NULL,	NULL,	59,	106,	107,	'0',	'0',	'0',	'1',	'2021-08-15 15:42:30',	'2021-08-15 15:42:30'),
(59,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u0410\u043a\u0441\u0435\u0441\u0441\u0443\u0430\u0440\u044b man","uz":"\u0410\u043a\u0441\u0435\u0441\u0441\u0443\u0430\u0440\u044b man","en":"\u0410\u043a\u0441\u0435\u0441\u0441\u0443\u0430\u0440\u044b man"}',	'aksessuary-man',	NULL,	NULL,	NULL,	103,	124,	'0',	'0',	'0',	'1',	'2021-08-15 15:40:14',	'2021-08-15 15:40:14'),
(25,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u041d\u0438\u0436\u043d\u0435\u0435 \u0431\u0435\u043b\u044c\u0435","uz":"\u041d\u0438\u0436\u043d\u0435\u0435 \u0431\u0435\u043b\u044c\u0435","en":"\u041d\u0438\u0436\u043d\u0435\u0435 \u0431\u0435\u043b\u044c\u0435"}',	'nizhnee-bele',	NULL,	NULL,	3,	54,	55,	'0',	'0',	'0',	'1',	'2021-08-15 14:36:23',	'2021-08-15 14:36:23'),
(1,	'{"ru":"\u041a\u0443\u0440\u0442\u043a\u0438","uz":"\u041a\u0443\u0440\u0442\u043a\u0438","en":"\u041a\u0443\u0440\u0442\u043a\u0438"}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u041a\u0443\u0440\u0442\u043a\u0438","uz":"\u041a\u0443\u0440\u0442\u043a\u0438","en":"\u041a\u0443\u0440\u0442\u043a\u0438"}',	'kurtki',	NULL,	NULL,	21,	45,	46,	'0',	'0',	'0',	'1',	'2021-11-06 20:16:37',	'2021-11-06 20:16:37'),
(36,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u0411\u0438\u0436\u0443\u0442\u0435\u0440\u0438\u044f","uz":"\u0411\u0438\u0436\u0443\u0442\u0435\u0440\u0438\u044f","en":"\u0411\u0438\u0436\u0443\u0442\u0435\u0440\u0438\u044f"}',	'bizhuteriya',	NULL,	NULL,	34,	72,	73,	'0',	'0',	'0',	'1',	'2021-08-15 14:54:56',	'2021-08-15 14:54:56'),
(38,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u041e\u0447\u043a\u0438","uz":"\u041e\u0447\u043a\u0438","en":"\u041e\u0447\u043a\u0438"}',	'ochki',	NULL,	NULL,	34,	76,	77,	'0',	'0',	'0',	'1',	'2021-08-15 14:56:50',	'2021-08-15 14:56:50'),
(39,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u0420\u0435\u043c\u043d\u0438","uz":"\u0420\u0435\u043c\u043d\u0438","en":"\u0420\u0435\u043c\u043d\u0438"}',	'remni',	NULL,	NULL,	34,	78,	79,	'0',	'0',	'0',	'1',	'2021-08-15 14:57:03',	'2021-08-15 14:57:03'),
(41,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u0428\u0430\u043f\u043a\u0438 | \u0428\u043b\u044f\u043f\u044b","uz":"\u0428\u0430\u043f\u043a\u0438 | \u0428\u043b\u044f\u043f\u044b","en":"\u0428\u0430\u043f\u043a\u0438 | \u0428\u043b\u044f\u043f\u044b"}',	'shapki-shlyapy',	NULL,	NULL,	34,	82,	83,	'0',	'0',	'0',	'1',	'2021-08-15 14:57:58',	'2021-08-15 14:57:58'),
(68,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u0411\u0438\u0436\u0443\u0442\u0435\u0440\u0438\u044f | \u0427\u0430\u0441\u044b","uz":"\u0411\u0438\u0436\u0443\u0442\u0435\u0440\u0438\u044f | \u0427\u0430\u0441\u044b","en":"\u0411\u0438\u0436\u0443\u0442\u0435\u0440\u0438\u044f | \u0427\u0430\u0441\u044b"}',	'bizhuteriya-chasy',	NULL,	NULL,	59,	120,	121,	'0',	'0',	'0',	'1',	'2021-08-15 15:45:55',	'2021-08-15 15:45:55'),
(54,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u041a\u0435\u0434\u044b | \u041a\u0440\u043e\u0441\u0441\u043e\u0432\u043a\u0438","uz":"\u041a\u0435\u0434\u044b | \u041a\u0440\u043e\u0441\u0441\u043e\u0432\u043a\u0438","en":"\u041a\u0435\u0434\u044b | \u041a\u0440\u043e\u0441\u0441\u043e\u0432\u043a\u0438"}',	'kedy-krossovki',	NULL,	NULL,	53,	92,	93,	'0',	'0',	'0',	'1',	'2021-08-15 15:38:11',	'2021-08-15 15:38:11'),
(55,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u0421\u0430\u043d\u0434\u0430\u043b\u0438\u0438 | \u042d\u0441\u043f\u0430\u0434\u0440\u0438\u043b\u044c\u0438","uz":"\u0421\u0430\u043d\u0434\u0430\u043b\u0438\u0438 | \u042d\u0441\u043f\u0430\u0434\u0440\u0438\u043b\u044c\u0438","en":"\u0421\u0430\u043d\u0434\u0430\u043b\u0438\u0438 | \u042d\u0441\u043f\u0430\u0434\u0440\u0438\u043b\u044c\u0438"}',	'sandalii-espadrili',	NULL,	NULL,	53,	94,	95,	'0',	'0',	'0',	'1',	'2021-08-15 15:38:43',	'2021-08-15 15:38:43'),
(60,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u0413\u043e\u043b\u043e\u0432\u043d\u044b\u0435 \u0443\u0431\u043e\u0440\u044b","uz":"\u0413\u043e\u043b\u043e\u0432\u043d\u044b\u0435 \u0443\u0431\u043e\u0440\u044b","en":"\u0413\u043e\u043b\u043e\u0432\u043d\u044b\u0435 \u0443\u0431\u043e\u0440\u044b"}',	'golovnye-ubory',	NULL,	NULL,	59,	104,	105,	'0',	'0',	'0',	'1',	'2021-08-15 15:42:17',	'2021-08-15 15:42:17'),
(57,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u0422\u0443\u0444\u043b\u0438","uz":"\u0422\u0443\u0444\u043b\u0438","en":"\u0422\u0443\u0444\u043b\u0438"}',	'tufli',	NULL,	NULL,	53,	98,	99,	'0',	'0',	'0',	'1',	'2021-08-15 15:39:17',	'2021-08-15 15:39:17'),
(64,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u0413\u0430\u043b\u0441\u0442\u0443\u043a\u0438","uz":"\u0413\u0430\u043b\u0441\u0442\u0443\u043a\u0438","en":"\u0413\u0430\u043b\u0441\u0442\u0443\u043a\u0438"}',	'galstuki',	NULL,	NULL,	59,	112,	113,	'0',	'0',	'0',	'1',	'2021-08-15 15:43:41',	'2021-08-15 15:43:41'),
(34,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u0410\u043a\u0441\u0435\u0441\u0441\u0443\u0430\u0440\u044b Woman","uz":"\u0410\u043a\u0441\u0435\u0441\u0441\u0443\u0430\u0440\u044b Woman","en":"\u0410\u043a\u0441\u0435\u0441\u0441\u0443\u0430\u0440\u044b Woman"}',	'aksessuary-woman',	NULL,	NULL,	NULL,	71,	88,	'0',	'0',	'0',	'1',	'2021-08-15 14:47:01',	'2021-08-15 14:47:01'),
(35,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u041a\u0440\u0430\u0441\u043e\u0442\u0430 woman","uz":"\u041a\u0440\u0430\u0441\u043e\u0442\u0430 woman","en":"\u041a\u0440\u0430\u0441\u043e\u0442\u0430 woman"}',	'krasota-woman',	NULL,	NULL,	NULL,	89,	90,	'0',	'0',	'0',	'1',	'2021-08-15 14:53:23',	'2021-08-15 14:53:23'),
(6,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u041d\u043e\u0441\u043a\u0438","uz":"\u041d\u043e\u0441\u043a\u0438","en":"\u041d\u043e\u0441\u043a\u0438"}',	'noski',	NULL,	NULL,	34,	86,	87,	'0',	'0',	'0',	'1',	'2021-11-08 16:37:09',	'2021-11-08 16:37:09');

DROP TABLE IF EXISTS "category_attribute";
CREATE TABLE "mod"."category_attribute" (
    "category_id" bigint NOT NULL,
    "attribute_id" bigint NOT NULL,
    "sort_order" integer DEFAULT '0' NOT NULL,
    CONSTRAINT "category_attribute_pkey" PRIMARY KEY ("category_id", "attribute_id")
) WITH (oids = false);


DROP TABLE IF EXISTS "category_pivot";
CREATE TABLE "mod"."category_pivot" (
    "category_id" bigint NOT NULL,
    "model_type" character varying(255) NOT NULL,
    "model_id" bigint NOT NULL,
    "sort_order" integer DEFAULT '0' NOT NULL
) WITH (oids = false);

CREATE INDEX "category_pivot_category_id_index" ON "mod"."category_pivot" USING btree ("category_id");

CREATE INDEX "category_pivot_model_type_model_id_index" ON "mod"."category_pivot" USING btree ("model_type", "model_id");

<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
INSERT INTO "category_pivot" ("category_id", "model_type", "model_id", "sort_order") VALUES
(3,	'App\Models\HomePage',	2,	0),
(2,	'App\Models\HomePage',	3,	0),
(28,	'App\Models\HomePage',	2,	0),
(34,	'App\Models\HomePage',	2,	0),
(35,	'App\Models\HomePage',	2,	0),
(53,	'App\Models\HomePage',	3,	0),
(59,	'App\Models\HomePage',	3,	0),
(59,	'App\Models\Catalog',	2,	1),
(2,	'App\Models\Catalog',	2,	0),
(53,	'App\Models\Catalog',	2,	1),
(34,	'App\Models\Catalog',	1,	0),
(35,	'App\Models\Catalog',	1,	1),
(28,	'App\Models\Catalog',	1,	0),
(3,	'App\Models\Catalog',	1,	0),
(59,	'App\Models\WelcomePage',	1,	0),
(34,	'App\Models\WelcomePage',	1,	1),
(2,	'App\Models\WelcomePage',	1,	2);

DROP TABLE IF EXISTS "configuration";
DROP SEQUENCE IF EXISTS configuration_id_seq;
CREATE SEQUENCE configuration_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "mod"."configuration" (
    "id" bigint DEFAULT nextval('configuration_id_seq') NOT NULL,
    "key" character varying(32) NOT NULL,
    "value" text,
    CONSTRAINT "configuration_key_unique" UNIQUE ("key"),
    CONSTRAINT "configuration_pkey" PRIMARY KEY ("id")
) WITH (oids = false);


DROP TABLE IF EXISTS "confirmations";
DROP SEQUENCE IF EXISTS confirmations_id_seq;
CREATE SEQUENCE confirmations_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "mod"."confirmations" (
    "id" bigint DEFAULT nextval('confirmations_id_seq') NOT NULL,
    "model_type" character varying(255) NOT NULL,
    "model_id" bigint NOT NULL,
    "code" integer,
    "is_confirmed" boolean DEFAULT false NOT NULL,
    "created_at" timestamp(0),
    "updated_at" timestamp(0),
    CONSTRAINT "confirmations_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "confirmations_is_confirmed_code_created_at_index" ON "mod"."confirmations" USING btree ("is_confirmed", "code", "created_at");

CREATE INDEX "confirmations_model_type_model_id_index" ON "mod"."confirmations" USING btree ("model_type", "model_id");

<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
INSERT INTO "confirmations" ("id", "model_type", "model_id", "code", "is_confirmed", "created_at", "updated_at") VALUES
(1,	'App\Models\User',	1,	6666,	'0',	'2021-10-25 11:43:58',	'2021-10-25 11:43:58'),
(2,	'App\Models\User',	2,	6666,	'1',	'2021-11-16 00:10:18',	'2021-11-16 00:10:21'),
(3,	'App\Models\User',	2,	6666,	'1',	'2021-11-16 00:43:20',	'2021-11-16 00:43:23'),
(4,	'App\Models\User',	2,	6666,	'1',	'2021-11-16 01:11:59',	'2021-11-16 01:12:06'),
(5,	'App\Models\User',	2,	6666,	'1',	'2021-11-16 01:12:29',	'2021-11-16 01:12:34'),
(6,	'App\Models\User',	3,	6666,	'0',	'2021-11-16 01:13:23',	'2021-11-16 01:13:23'),
(7,	'App\Models\User',	3,	6666,	'0',	'2021-11-16 01:13:33',	'2021-11-16 01:13:33'),
(8,	'App\Models\User',	4,	6666,	'0',	'2021-11-16 01:14:17',	'2021-11-16 01:14:17'),
(10,	'App\Models\User',	5,	6666,	'0',	'2021-11-16 01:20:42',	'2021-11-16 01:20:42'),
(9,	'App\Models\User',	5,	6666,	'1',	'2021-11-16 01:20:28',	'2021-11-16 01:20:44'),
(12,	'App\Models\User',	6,	6666,	'0',	'2021-11-18 22:26:55',	'2021-11-18 22:26:55'),
(11,	'App\Models\User',	6,	6666,	'1',	'2021-11-18 22:23:29',	'2021-11-18 22:27:01'),
(13,	'App\Models\User',	6,	6666,	'1',	'2021-11-18 22:35:08',	'2021-11-18 22:35:22'),
(14,	'App\Models\User',	5,	6666,	'1',	'2021-11-18 23:23:41',	'2021-11-18 23:23:58'),
(16,	'App\Models\User',	5,	6666,	'0',	'2021-11-18 23:24:39',	'2021-11-18 23:24:39'),
(15,	'App\Models\User',	5,	6666,	'1',	'2021-11-18 23:24:19',	'2021-11-18 23:24:44'),
(17,	'App\Models\User',	7,	6666,	'1',	'2021-11-19 21:18:01',	'2021-11-19 21:18:03'),
(18,	'App\Models\User',	6,	6666,	'1',	'2021-11-23 16:33:27',	'2021-11-23 16:33:33'),
(19,	'App\Models\User',	6,	6666,	'1',	'2021-11-23 16:51:06',	'2021-11-23 16:51:09'),
(20,	'App\Models\User',	8,	6666,	'1',	'2021-11-23 22:37:47',	'2021-11-23 22:37:51'),
(21,	'App\Models\User',	3,	6666,	'1',	'2021-11-23 22:48:02',	'2021-11-23 22:48:05'),
(22,	'App\Models\User',	9,	6666,	'1',	'2021-12-01 12:15:05',	'2021-12-01 12:15:16');

DROP TABLE IF EXISTS "external_images";
DROP SEQUENCE IF EXISTS external_images_id_seq;
CREATE SEQUENCE external_images_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "mod"."external_images" (
    "id" bigint DEFAULT nextval('external_images_id_seq') NOT NULL,
    "product_id" bigint NOT NULL,
    "product_variation_id" bigint NOT NULL,
    "url" character varying(255) NOT NULL,
    "sort_order" integer NOT NULL,
    "created_at" timestamp(0),
    "updated_at" timestamp(0),
    CONSTRAINT "external_images_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
INSERT INTO "external_images" ("id", "product_id", "product_variation_id", "url", "sort_order", "created_at", "updated_at") VALUES
(298,	33,	310,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/massimodutti/7/8/9.jpg',	0,	NULL,	NULL),
(299,	33,	310,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/massimodutti/7/9/0.jpg',	0,	NULL,	NULL),
(300,	33,	310,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/massimodutti/7/9/1.jpg',	0,	NULL,	NULL),
(301,	33,	310,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/massimodutti/7/9/2.jpg',	0,	NULL,	NULL),
(302,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/2/9/9.jpg',	0,	NULL,	NULL),
(303,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/0/0.jpg',	0,	NULL,	NULL),
(304,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/0/1.jpg',	0,	NULL,	NULL),
(305,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/0/2.jpg',	0,	NULL,	NULL),
(306,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/0/3.jpg',	0,	NULL,	NULL),
(307,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/0/4.jpg',	5,	NULL,	NULL),
(308,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/0/5.jpg',	5,	NULL,	NULL),
(309,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/0/6.jpg',	5,	NULL,	NULL),
(310,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/0/7.jpg',	5,	NULL,	NULL),
(311,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/0/8.jpg',	5,	NULL,	NULL),
(312,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/0/9.jpg',	10,	NULL,	NULL),
(313,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/1/0.jpg',	10,	NULL,	NULL),
(314,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/1/1.jpg',	10,	NULL,	NULL),
(315,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/1/2.jpg',	10,	NULL,	NULL),
(316,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/1/3.jpg',	10,	NULL,	NULL),
(317,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/1/4.jpg',	15,	NULL,	NULL),
(318,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/1/5.jpg',	15,	NULL,	NULL),
(319,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/1/6.jpg',	15,	NULL,	NULL),
(320,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/1/7.jpg',	15,	NULL,	NULL),
(321,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/1/8.jpg',	15,	NULL,	NULL),
(322,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/1/9.jpg',	20,	NULL,	NULL),
(323,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/2/0.jpg',	20,	NULL,	NULL),
(324,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/2/1.jpg',	20,	NULL,	NULL),
(325,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/2/2.jpg',	20,	NULL,	NULL),
(326,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/2/3.jpg',	20,	NULL,	NULL),
(327,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/2/4.jpg',	25,	NULL,	NULL),
(328,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/2/5.jpg',	25,	NULL,	NULL),
(329,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/2/6.jpg',	25,	NULL,	NULL),
(330,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/2/7.jpg',	25,	NULL,	NULL),
(331,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/2/8.jpg',	25,	NULL,	NULL),
(332,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/2/9.jpg',	30,	NULL,	NULL),
(333,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/3/0.jpg',	30,	NULL,	NULL),
(334,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/3/1.jpg',	30,	NULL,	NULL),
(335,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/3/2.jpg',	30,	NULL,	NULL),
(336,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/3/3.jpg',	30,	NULL,	NULL),
(337,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/3/4.jpg',	35,	NULL,	NULL),
(338,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/3/5.jpg',	35,	NULL,	NULL),
(339,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/3/6.jpg',	35,	NULL,	NULL),
(340,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/3/7.jpg',	35,	NULL,	NULL),
(341,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/3/8.jpg',	35,	NULL,	NULL),
(342,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/3/9.jpg',	40,	NULL,	NULL),
(343,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/4/0.jpg',	40,	NULL,	NULL),
(344,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/4/1.jpg',	40,	NULL,	NULL),
(345,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/4/2.jpg',	40,	NULL,	NULL),
(346,	34,	325,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/stradivarius/1/3/4/3.jpg',	40,	NULL,	NULL),
(347,	26,	461,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/bershka/2/2/6.jpg',	0,	NULL,	NULL),
(348,	26,	461,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/bershka/2/2/7.jpg',	0,	NULL,	NULL),
(349,	26,	461,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/bershka/2/2/8.jpg',	0,	NULL,	NULL),
(350,	26,	461,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/bershka/2/2/9.jpg',	0,	NULL,	NULL),
(351,	26,	461,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/bershka/2/3/0.jpg',	0,	NULL,	NULL),
(352,	26,	461,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/bershka/2/3/1.jpg',	0,	NULL,	NULL),
(353,	26,	461,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/bershka/2/3/2.jpg',	4,	NULL,	NULL),
(354,	26,	461,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/bershka/2/3/3.jpg',	4,	NULL,	NULL),
(355,	26,	461,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/bershka/2/3/4.jpg',	4,	NULL,	NULL),
(356,	26,	461,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/bershka/2/3/5.jpg',	4,	NULL,	NULL),
(357,	26,	461,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/bershka/2/3/6.jpg',	4,	NULL,	NULL),
(358,	26,	461,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/bershka/2/3/7.jpg',	4,	NULL,	NULL),
(359,	35,	470,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/oysho/3/1/3/8.jpg',	0,	NULL,	NULL),
(360,	35,	470,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/oysho/3/1/3/9.jpg',	0,	NULL,	NULL),
(361,	35,	470,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/oysho/3/1/4/0.jpg',	0,	NULL,	NULL),
(362,	35,	470,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/oysho/3/1/4/1.jpg',	0,	NULL,	NULL),
(363,	35,	470,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/oysho/3/1/4/2.jpg',	0,	NULL,	NULL),
(364,	35,	470,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/oysho/3/1/4/3.jpg',	0,	NULL,	NULL),
(365,	36,	475,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/pullandbear/3/3/8/4.jpg',	0,	NULL,	NULL),
(366,	36,	475,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/pullandbear/3/3/8/5.jpg',	0,	NULL,	NULL),
(367,	36,	475,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/pullandbear/3/3/8/6.jpg',	0,	NULL,	NULL),
(368,	36,	475,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/pullandbear/3/3/8/7.jpg',	0,	NULL,	NULL),
(369,	36,	475,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/pullandbear/3/3/8/8.jpg',	0,	NULL,	NULL),
(370,	36,	475,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/pullandbear/3/3/8/9.jpg',	0,	NULL,	NULL),
(371,	36,	475,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/pullandbear/3/3/9/0.jpg',	5,	NULL,	NULL),
(372,	36,	475,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/pullandbear/3/3/9/1.jpg',	5,	NULL,	NULL),
(373,	36,	475,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/pullandbear/3/3/9/2.jpg',	5,	NULL,	NULL),
(374,	36,	475,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/pullandbear/3/3/9/3.jpg',	5,	NULL,	NULL),
(375,	36,	475,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/pullandbear/3/3/9/4.jpg',	5,	NULL,	NULL),
(376,	36,	475,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/pullandbear/3/3/9/5.jpg',	5,	NULL,	NULL),
(377,	36,	475,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/pullandbear/3/3/9/6.jpg',	5,	NULL,	NULL),
(378,	36,	475,	'https://spider1-bucket.s3.us-east-2.amazonaws.com/spider/pullandbear/3/3/9/7.jpg',	5,	NULL,	NULL);

DROP TABLE IF EXISTS "failed_jobs";
DROP SEQUENCE IF EXISTS failed_jobs_id_seq;
CREATE SEQUENCE failed_jobs_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "mod"."failed_jobs" (
    "id" bigint DEFAULT nextval('failed_jobs_id_seq') NOT NULL,
    "uuid" character varying(255) NOT NULL,
    "connection" text NOT NULL,
    "queue" text NOT NULL,
    "payload" text NOT NULL,
    "exception" text NOT NULL,
    "failed_at" timestamp(0) DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT "failed_jobs_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "failed_jobs_uuid_unique" UNIQUE ("uuid")
) WITH (oids = false);


DROP TABLE IF EXISTS "favorites";
DROP SEQUENCE IF EXISTS favorites_id_seq;
CREATE SEQUENCE favorites_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "mod"."favorites" (
    "id" bigint DEFAULT nextval('favorites_id_seq') NOT NULL,
    "uid" character varying(255) NOT NULL,
    "user_id" bigint,
    "product_id" bigint NOT NULL,
    CONSTRAINT "favorites_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "favorites_user_id_product_id_unique" UNIQUE ("user_id", "product_id")
) WITH (oids = false);

CREATE INDEX "favorites_uid_index" ON "mod"."favorites" USING btree ("uid");

<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
INSERT INTO "favorites" ("id", "uid", "user_id", "product_id") VALUES
(1,	'4E01573F-41B3-4170-AEED-8274EBB07120',	NULL,	11),
(2,	'EBD57B65-B9E2-4BC1-B10E-486EC34D0F7A',	NULL,	7),
(3,	'EBD57B65-B9E2-4BC1-B10E-486EC34D0F7A',	NULL,	5),
(4,	'4E01573F-41B3-4170-AEED-8274EBB07120',	NULL,	3),
(7,	'B01911FA-3323-4E85-A90D-33DE4D3D3C7D',	NULL,	24),
(8,	'B01911FA-3323-4E85-A90D-33DE4D3D3C7D',	NULL,	25),
(9,	'B01911FA-3323-4E85-A90D-33DE4D3D3C7D',	NULL,	26),
(10,	'B01911FA-3323-4E85-A90D-33DE4D3D3C7D',	NULL,	33),
(11,	'B01911FA-3323-4E85-A90D-33DE4D3D3C7D',	NULL,	34),
(12,	'B01911FA-3323-4E85-A90D-33DE4D3D3C7D',	NULL,	35),
(13,	'ff96b5d0-3c38-4af7-89a9-b2da14a0368a',	6,	36),
(14,	'EBD57B65-B9E2-4BC1-B10E-486EC34D0F7A',	NULL,	34),
(15,	'2D92FAB2-0836-4FEC-9ACC-D1C0431F9E7A',	NULL,	24),
(16,	'2D92FAB2-0836-4FEC-9ACC-D1C0431F9E7A',	NULL,	25),
(17,	'2D92FAB2-0836-4FEC-9ACC-D1C0431F9E7A',	NULL,	26),
(18,	'2D92FAB2-0836-4FEC-9ACC-D1C0431F9E7A',	NULL,	33),
(19,	'2D92FAB2-0836-4FEC-9ACC-D1C0431F9E7A',	NULL,	34),
(20,	'2D92FAB2-0836-4FEC-9ACC-D1C0431F9E7A',	NULL,	35);

DROP TABLE IF EXISTS "home_pages";
DROP SEQUENCE IF EXISTS home_pages_id_seq;
CREATE SEQUENCE home_pages_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "mod"."home_pages" (
    "id" bigint DEFAULT nextval('home_pages_id_seq') NOT NULL,
    "meta_title" json,
    "meta_description" json,
    "meta_keywords" json,
    "name" json NOT NULL,
    "slug" character varying(255) NOT NULL,
    "visible_on_app" boolean DEFAULT false NOT NULL,
    "visible_on_mobile" boolean DEFAULT false NOT NULL,
    "visible_on_desktop" boolean DEFAULT false NOT NULL,
    "is_active" boolean DEFAULT false NOT NULL,
    "sort_order" integer DEFAULT '0' NOT NULL,
    "created_at" timestamp(0),
    "updated_at" timestamp(0),
    CONSTRAINT "home_pages_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "home_pages_is_active_visible_on_app_visible_on_mobile_visible_o" ON "mod"."home_pages" USING btree ("is_active", "visible_on_app", "visible_on_mobile", "visible_on_desktop");

<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
INSERT INTO "home_pages" ("id", "meta_title", "meta_description", "meta_keywords", "name", "slug", "visible_on_app", "visible_on_mobile", "visible_on_desktop", "is_active", "sort_order", "created_at", "updated_at") VALUES
(2,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u0416\u0435\u043d\u0449\u0438\u043d\u0430\u043c","uz":"\u0416\u0435\u043d\u0449\u0438\u043d\u0430\u043c","en":"\u0416\u0435\u043d\u0449\u0438\u043d\u0430\u043c"}',	'zhenshinam',	'1',	'1',	'1',	'1',	0,	'2021-07-25 15:20:08',	'2021-07-25 15:20:08'),
(3,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u041c\u0443\u0436\u0447\u0438\u043d\u0430\u043c","uz":"\u041c\u0443\u0436\u0447\u0438\u043d\u0430\u043c","en":"\u041c\u0443\u0436\u0447\u0438\u043d\u0430\u043c"}',	'muzhchinam',	'1',	'1',	'1',	'1',	0,	'2021-07-25 15:20:29',	'2021-07-25 15:20:29'),
(4,	'{"en":null}',	'{"en":null}',	'{"en":null}',	'{"ru":"\u0414\u0435\u0442\u044f\u043c","uz":"\u0414\u0435\u0442\u044f\u043c","en":"\u0414\u0435\u0442\u044f\u043c"}',	'detyam',	'1',	'1',	'1',	'1',	2,	'2021-07-25 15:20:54',	'2021-07-25 15:20:54');

DROP TABLE IF EXISTS "media";
DROP SEQUENCE IF EXISTS media_id_seq;
CREATE SEQUENCE media_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "mod"."media" (
    "id" bigint DEFAULT nextval('media_id_seq') NOT NULL,
    "model_type" character varying(255) NOT NULL,
    "model_id" bigint NOT NULL,
    "uuid" uuid,
    "collection_name" character varying(255) NOT NULL,
    "name" character varying(255) NOT NULL,
    "file_name" character varying(255) NOT NULL,
    "mime_type" character varying(255),
    "disk" character varying(255) NOT NULL,
    "conversions_disk" character varying(255),
    "size" bigint NOT NULL,
    "manipulations" json NOT NULL,
    "custom_properties" json NOT NULL,
    "generated_conversions" json NOT NULL,
    "responsive_images" json NOT NULL,
    "order_column" integer,
    "created_at" timestamp(0),
    "updated_at" timestamp(0),
    CONSTRAINT "media_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "media_uuid_unique" UNIQUE ("uuid")
) WITH (oids = false);

CREATE INDEX "media_model_type_model_id_index" ON "mod"."media" USING btree ("model_type", "model_id");

<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
INSERT INTO "media" ("id", "model_type", "model_id", "uuid", "collection_name", "name", "file_name", "mime_type", "disk", "conversions_disk", "size", "manipulations", "custom_properties", "generated_conversions", "responsive_images", "order_column", "created_at", "updated_at") VALUES
(3,	'App\Models\WidgetItem',	2,	'206bc9cd-bae6-4ec8-8866-99652dfa6971',	'widget_items',	'ZZ',	'ZZ.jpg',	'image/jpeg',	'public',	'public',	904395,	'[]',	'[]',	'[]',	'[]',	1,	'2021-07-25 15:24:57',	'2021-07-25 15:24:57'),
(5,	'App\Models\WelcomePage',	1,	'556fadf0-9a31-43fa-85f1-7288a1080c3e',	'welcome_pages',	'oo',	'oo.jpg',	'image/jpeg',	'public',	'public',	754026,	'[]',	'[]',	'[]',	'[]',	1,	'2021-08-15 14:16:40',	'2021-08-15 14:16:40'),
(10,	'App\Models\WidgetItem',	8,	'51692e9f-e0fa-4e73-b262-6357ad085fd2',	'widget_items',	'ццц',	'ццц.jpg',	'image/jpeg',	'public',	'public',	549670,	'[]',	'[]',	'[]',	'[]',	1,	'2021-08-15 16:06:18',	'2021-08-15 16:06:18'),
(237,	'App\Models\Product',	24,	'd2ef88de-36e6-aa30-2da2-b86c580fb714',	'products',	'Chunky sole trainers',	'0.jpg',	'image/jpeg',	'public',	NULL,	117850,	'[]',	'[]',	'[]',	'[]',	0,	'2021-10-29 04:13:07',	'2021-10-29 04:13:07'),
(238,	'App\Models\Product',	24,	'a11089d9-14ab-f9ea-508c-2c5d9bedd874',	'products',	'Chunky sole trainers',	'1.jpg',	'image/jpeg',	'public',	NULL,	298697,	'[]',	'[]',	'[]',	'[]',	1,	'2021-10-29 04:13:07',	'2021-10-29 04:13:07'),
(239,	'App\Models\Product',	24,	'77b3bdb0-81db-b647-b54f-90cdd34c732b',	'products',	'Chunky sole trainers',	'2.jpg',	'image/jpeg',	'public',	NULL,	166241,	'[]',	'[]',	'[]',	'[]',	2,	'2021-10-29 04:13:07',	'2021-10-29 04:13:07'),
(240,	'App\Models\Product',	24,	'cd109b72-e9b6-ef71-16c4-25f1919aec87',	'products',	'Chunky sole trainers',	'3.jpg',	'image/jpeg',	'public',	NULL,	201169,	'[]',	'[]',	'[]',	'[]',	3,	'2021-10-29 04:13:07',	'2021-10-29 04:13:07'),
(241,	'App\Models\Product',	24,	'f58f8bed-964f-d224-1691-120bbd276d6e',	'products',	'Chunky sole trainers',	'4.jpg',	'image/jpeg',	'public',	NULL,	178182,	'[]',	'[]',	'[]',	'[]',	4,	'2021-10-29 04:13:07',	'2021-10-29 04:13:07'),
(242,	'App\Models\Product',	24,	'53bff01b-df61-3363-9fdc-9ae08d2f0042',	'products',	'Chunky sole trainers',	'5.jpg',	'image/jpeg',	'public',	NULL,	210540,	'[]',	'[]',	'[]',	'[]',	5,	'2021-10-29 04:13:08',	'2021-10-29 04:13:08'),
(243,	'App\Models\Product',	24,	'15a4240f-c965-3ff0-a2f5-aaf18b96182c',	'products',	'Chunky sole trainers',	'6.jpg',	'image/jpeg',	'public',	NULL,	135814,	'[]',	'[]',	'[]',	'[]',	6,	'2021-10-29 04:13:08',	'2021-10-29 04:13:08'),
(244,	'App\Models\Product',	25,	'1fe4c6e5-54c9-8581-cd80-246be0677c6e',	'products',	'Water-repellent parka',	'0.jpg',	'image/jpeg',	'public',	NULL,	197234,	'[]',	'[]',	'[]',	'[]',	0,	'2021-11-01 11:23:10',	'2021-11-01 11:23:10'),
(245,	'App\Models\Product',	25,	'716b4d78-5ce5-dfae-69cd-c7f96de27761',	'products',	'Water-repellent parka',	'1.jpg',	'image/jpeg',	'public',	NULL,	173451,	'[]',	'[]',	'[]',	'[]',	1,	'2021-11-01 11:23:10',	'2021-11-01 11:23:10'),
(246,	'App\Models\Product',	25,	'24d266bb-9def-52e6-fc89-0a29b5b5d3f5',	'products',	'Water-repellent parka',	'2.jpg',	'image/jpeg',	'public',	NULL,	194554,	'[]',	'[]',	'[]',	'[]',	2,	'2021-11-01 11:23:10',	'2021-11-01 11:23:10'),
(247,	'App\Models\Product',	25,	'feb39817-2280-8c36-e4a2-3e3cf5f01d23',	'products',	'Water-repellent parka',	'3.jpg',	'image/jpeg',	'public',	NULL,	385961,	'[]',	'[]',	'[]',	'[]',	3,	'2021-11-01 11:23:10',	'2021-11-01 11:23:10'),
(248,	'App\Models\Product',	25,	'73141ec7-b071-6c76-5867-24995a1b7928',	'products',	'Water-repellent parka',	'4.jpg',	'image/jpeg',	'public',	NULL,	1252069,	'[]',	'[]',	'[]',	'[]',	4,	'2021-11-01 11:23:10',	'2021-11-01 11:23:10'),
(249,	'App\Models\Product',	25,	'fdab1e37-87c0-84cc-1dff-38427c363fe0',	'products',	'Water-repellent parka',	'5.jpg',	'image/jpeg',	'public',	NULL,	139688,	'[]',	'[]',	'[]',	'[]',	5,	'2021-11-01 11:23:10',	'2021-11-01 11:23:10'),
(250,	'App\Models\Product',	25,	'9fd3da29-c1c7-8c3e-7b9a-76f78fb1c077',	'products',	'Water-repellent parka',	'6.jpg',	'image/jpeg',	'public',	NULL,	57796,	'[]',	'[]',	'[]',	'[]',	6,	'2021-11-01 11:23:10',	'2021-11-01 11:23:10'),
(251,	'App\Models\Product',	25,	'c10e3c81-642e-4128-401a-ede04cb44ba3',	'products',	'Water-repellent parka',	'0.jpg',	'image/jpeg',	'public',	NULL,	196816,	'[]',	'[]',	'[]',	'[]',	0,	'2021-11-01 11:23:10',	'2021-11-01 11:23:10'),
(252,	'App\Models\Product',	25,	'204a2c4b-e1ae-a1cd-f77b-3cd4276e3f9f',	'products',	'Water-repellent parka',	'1.jpg',	'image/jpeg',	'public',	NULL,	180533,	'[]',	'[]',	'[]',	'[]',	1,	'2021-11-01 11:23:10',	'2021-11-01 11:23:10'),
(253,	'App\Models\Product',	25,	'fdaec2c0-8377-52ed-b15d-322bf6261c4e',	'products',	'Water-repellent parka',	'2.jpg',	'image/jpeg',	'public',	NULL,	185765,	'[]',	'[]',	'[]',	'[]',	2,	'2021-11-01 11:23:10',	'2021-11-01 11:23:10'),
(254,	'App\Models\Product',	25,	'de31798e-7cc1-185f-2f0b-e9d8d656de7d',	'products',	'Water-repellent parka',	'3.jpg',	'image/jpeg',	'public',	NULL,	295247,	'[]',	'[]',	'[]',	'[]',	3,	'2021-11-01 11:23:10',	'2021-11-01 11:23:10'),
(255,	'App\Models\Product',	25,	'ab30ceb0-8415-1a10-b35b-061639882a57',	'products',	'Water-repellent parka',	'4.jpg',	'image/jpeg',	'public',	NULL,	1033827,	'[]',	'[]',	'[]',	'[]',	4,	'2021-11-01 11:23:10',	'2021-11-01 11:23:10'),
(256,	'App\Models\Product',	25,	'96d726b7-f8ae-bb5a-6f1c-0843b35f4c3b',	'products',	'Water-repellent parka',	'5.jpg',	'image/jpeg',	'public',	NULL,	101572,	'[]',	'[]',	'[]',	'[]',	5,	'2021-11-01 11:23:10',	'2021-11-01 11:23:10'),
(257,	'App\Models\Product',	26,	'eb5441be-7f9f-831d-d1fb-e16a40cacad4',	'products',	'Bomber jacket with print',	'0.jpg',	'image/jpeg',	'public',	NULL,	139504,	'[]',	'[]',	'[]',	'[]',	0,	'2021-11-01 17:42:24',	'2021-11-01 17:42:24'),
(258,	'App\Models\Product',	26,	'fdaa5d99-5b22-74fa-8bc3-0b2780459914',	'products',	'Bomber jacket with print',	'1.jpg',	'image/jpeg',	'public',	NULL,	142203,	'[]',	'[]',	'[]',	'[]',	1,	'2021-11-01 17:42:24',	'2021-11-01 17:42:24'),
(259,	'App\Models\Product',	26,	'7901fd1a-43ba-a380-5f92-1e138cca56ff',	'products',	'Bomber jacket with print',	'2.jpg',	'image/jpeg',	'public',	NULL,	258716,	'[]',	'[]',	'[]',	'[]',	2,	'2021-11-01 17:42:24',	'2021-11-01 17:42:24'),
(260,	'App\Models\Product',	26,	'a95a220d-35fa-2a03-05b8-f94c39e2a8e5',	'products',	'Bomber jacket with print',	'3.jpg',	'image/jpeg',	'public',	NULL,	88091,	'[]',	'[]',	'[]',	'[]',	3,	'2021-11-01 17:42:24',	'2021-11-01 17:42:24'),
(261,	'App\Models\Product',	26,	'c2a4245d-2894-8d9d-7781-da0502b9b108',	'products',	'Bomber jacket with print',	'4.jpg',	'image/jpeg',	'public',	NULL,	71954,	'[]',	'[]',	'[]',	'[]',	4,	'2021-11-01 17:42:24',	'2021-11-01 17:42:24'),
(262,	'App\Models\Product',	26,	'983e4a29-0f0a-d9d7-54f4-103c4508f28c',	'products',	'Bomber jacket with print',	'5.jpg',	'image/jpeg',	'public',	NULL,	494271,	'[]',	'[]',	'[]',	'[]',	5,	'2021-11-01 17:42:24',	'2021-11-01 17:42:24'),
(263,	'App\Models\Product',	26,	'56be8136-aede-4b9b-34bc-23f953f60efa',	'products',	'Bomber jacket with print',	'0.jpg',	'image/jpeg',	'public',	NULL,	144175,	'[]',	'[]',	'[]',	'[]',	0,	'2021-11-01 17:42:24',	'2021-11-01 17:42:24'),
(264,	'App\Models\Product',	26,	'a2a48ef5-97c7-15e7-1419-ee66b3c23631',	'products',	'Bomber jacket with print',	'1.jpg',	'image/jpeg',	'public',	NULL,	177875,	'[]',	'[]',	'[]',	'[]',	1,	'2021-11-01 17:42:24',	'2021-11-01 17:42:24'),
(265,	'App\Models\Product',	26,	'6954b30d-c13b-b66e-dfe7-ee92898b734e',	'products',	'Bomber jacket with print',	'2.jpg',	'image/jpeg',	'public',	NULL,	179716,	'[]',	'[]',	'[]',	'[]',	2,	'2021-11-01 17:42:24',	'2021-11-01 17:42:24'),
(266,	'App\Models\Product',	26,	'420c3695-fff2-28fa-9517-111675a0eacf',	'products',	'Bomber jacket with print',	'3.jpg',	'image/jpeg',	'public',	NULL,	117744,	'[]',	'[]',	'[]',	'[]',	3,	'2021-11-01 17:42:24',	'2021-11-01 17:42:24'),
(267,	'App\Models\Product',	26,	'a6342bb7-9963-7f10-3859-cf875b04a91b',	'products',	'Bomber jacket with print',	'4.jpg',	'image/jpeg',	'public',	NULL,	60609,	'[]',	'[]',	'[]',	'[]',	4,	'2021-11-01 17:42:24',	'2021-11-01 17:42:24'),
(268,	'App\Models\Product',	26,	'3629ac38-41fc-1fc0-87d1-aa1c65c22506',	'products',	'Bomber jacket with print',	'5.jpg',	'image/jpeg',	'public',	NULL,	432782,	'[]',	'[]',	'[]',	'[]',	5,	'2021-11-01 17:42:24',	'2021-11-01 17:42:24'),
(330,	'App\Models\Product',	33,	'c6a79fc1-f9ac-f3f1-d93e-86568e35535f',	'products',	'Slim fit 100% wool trousers',	'0.jpg',	'image/jpeg',	'public',	NULL,	356625,	'[]',	'[]',	'[]',	'[]',	0,	'2021-11-02 10:57:01',	'2021-11-02 10:57:01'),
(331,	'App\Models\Product',	33,	'a9d7ef2a-0ea0-6c33-2768-ac5980748fdc',	'products',	'Slim fit 100% wool trousers',	'1.jpg',	'image/jpeg',	'public',	NULL,	233443,	'[]',	'[]',	'[]',	'[]',	1,	'2021-11-02 10:57:01',	'2021-11-02 10:57:01'),
(332,	'App\Models\Product',	33,	'a9062b01-82df-1b8d-7b86-bc0a35ff9a77',	'products',	'Slim fit 100% wool trousers',	'2.jpg',	'image/jpeg',	'public',	NULL,	231648,	'[]',	'[]',	'[]',	'[]',	2,	'2021-11-02 10:57:01',	'2021-11-02 10:57:01'),
(333,	'App\Models\Product',	33,	'ecf9087d-427c-085d-bc1a-a8aa08e43dd6',	'products',	'Slim fit 100% wool trousers',	'3.jpg',	'image/jpeg',	'public',	NULL,	2017187,	'[]',	'[]',	'[]',	'[]',	3,	'2021-11-02 10:57:01',	'2021-11-02 10:57:01'),
(375,	'App\Models\Product',	34,	'59c15df8-8b0e-4f68-7478-bdb0b36099ed',	'products',	'Seamless crop top with straps',	'1.jpg',	'image/jpeg',	'public',	NULL,	124621,	'[]',	'[]',	'[]',	'[]',	1,	'2021-11-02 11:11:59',	'2021-11-02 11:11:59'),
(376,	'App\Models\Product',	34,	'01c7c78e-7e12-a767-8043-b2979e587c4f',	'products',	'Seamless crop top with straps',	'2.jpg',	'image/jpeg',	'public',	NULL,	712251,	'[]',	'[]',	'[]',	'[]',	2,	'2021-11-02 11:11:59',	'2021-11-02 11:11:59'),
(377,	'App\Models\Product',	34,	'b57c1f0f-ea1e-c85b-556f-e6770df9b4bc',	'products',	'Seamless crop top with straps',	'3.jpg',	'image/jpeg',	'public',	NULL,	120402,	'[]',	'[]',	'[]',	'[]',	3,	'2021-11-02 11:11:59',	'2021-11-02 11:11:59'),
(378,	'App\Models\Product',	34,	'd1633e0c-2bb3-4edb-e6c7-96c57cccfcdc',	'products',	'Seamless crop top with straps',	'4.jpg',	'image/jpeg',	'public',	NULL,	34519,	'[]',	'[]',	'[]',	'[]',	4,	'2021-11-02 11:11:59',	'2021-11-02 11:11:59'),
(379,	'App\Models\Product',	35,	'485297bd-ae34-547d-1c66-97e426857a82',	'products',	'Warm leggings',	'0.jpg',	'image/jpeg',	'public',	NULL,	168399,	'[]',	'[]',	'[]',	'[]',	0,	'2021-11-02 12:02:40',	'2021-11-02 12:02:40'),
(380,	'App\Models\Product',	35,	'6e83f534-9b3a-1263-5721-d5a88c73eb2c',	'products',	'Warm leggings',	'1.jpg',	'image/jpeg',	'public',	NULL,	3150408,	'[]',	'[]',	'[]',	'[]',	1,	'2021-11-02 12:02:40',	'2021-11-02 12:02:40'),
(381,	'App\Models\Product',	35,	'79c0d9cb-e9db-383a-786c-347ce4b7ede8',	'products',	'Warm leggings',	'2.jpg',	'image/jpeg',	'public',	NULL,	322099,	'[]',	'[]',	'[]',	'[]',	2,	'2021-11-02 12:02:40',	'2021-11-02 12:02:40'),
(382,	'App\Models\Product',	35,	'714bbddc-a406-bd64-574d-498f321fb100',	'products',	'Warm leggings',	'3.jpg',	'image/jpeg',	'public',	NULL,	107688,	'[]',	'[]',	'[]',	'[]',	3,	'2021-11-02 12:02:40',	'2021-11-02 12:02:40'),
(383,	'App\Models\Product',	35,	'380b9ab6-ae06-64c2-d7de-a51b5283b7c1',	'products',	'Warm leggings',	'4.jpg',	'image/jpeg',	'public',	NULL,	67340,	'[]',	'[]',	'[]',	'[]',	4,	'2021-11-02 12:02:40',	'2021-11-02 12:02:40'),
(384,	'App\Models\Product',	35,	'e1e88880-22b2-89eb-035e-2a62d75bf57b',	'products',	'Warm leggings',	'5.jpg',	'image/jpeg',	'public',	NULL,	224086,	'[]',	'[]',	'[]',	'[]',	5,	'2021-11-02 12:02:40',	'2021-11-02 12:02:40'),
(385,	'App\Models\Product',	36,	'dbe734f9-53c0-04c1-7e80-b19c9dc6e31b',	'products',	'Belted faux leather biker jacket',	'0.jpg',	'image/jpeg',	'public',	NULL,	229524,	'[]',	'[]',	'[]',	'[]',	0,	'2021-11-02 12:24:33',	'2021-11-02 12:24:33'),
(386,	'App\Models\Product',	36,	'cada2bfd-7d4e-4a92-6dab-b1236b577f92',	'products',	'Belted faux leather biker jacket',	'1.jpg',	'image/jpeg',	'public',	NULL,	129141,	'[]',	'[]',	'[]',	'[]',	1,	'2021-11-02 12:24:33',	'2021-11-02 12:24:33'),
(387,	'App\Models\Product',	36,	'e31b85cb-dd6d-44f0-2bb0-10c62bb0bafb',	'products',	'Belted faux leather biker jacket',	'2.jpg',	'image/jpeg',	'public',	NULL,	277262,	'[]',	'[]',	'[]',	'[]',	2,	'2021-11-02 12:24:33',	'2021-11-02 12:24:33'),
(388,	'App\Models\Product',	36,	'f7e52450-94da-23ce-4542-58fadd03b1b4',	'products',	'Belted faux leather biker jacket',	'3.jpg',	'image/jpeg',	'public',	NULL,	168231,	'[]',	'[]',	'[]',	'[]',	3,	'2021-11-02 12:24:33',	'2021-11-02 12:24:33'),
(389,	'App\Models\Product',	36,	'cfb6a7a2-1c3a-4388-4dd6-c9db3f1fe626',	'products',	'Belted faux leather biker jacket',	'4.jpg',	'image/jpeg',	'public',	NULL,	122719,	'[]',	'[]',	'[]',	'[]',	4,	'2021-11-02 12:24:33',	'2021-11-02 12:24:33'),
(390,	'App\Models\Product',	36,	'4781d9e2-884f-5ad6-9a6d-0e37bafcdcbc',	'products',	'Belted faux leather biker jacket',	'5.jpg',	'image/jpeg',	'public',	NULL,	123618,	'[]',	'[]',	'[]',	'[]',	5,	'2021-11-02 12:24:33',	'2021-11-02 12:24:33'),
(391,	'App\Models\Product',	36,	'9f16074b-ef44-be3f-c3ad-28dd98cac19d',	'products',	'Belted faux leather biker jacket',	'0.jpg',	'image/jpeg',	'public',	NULL,	403490,	'[]',	'[]',	'[]',	'[]',	0,	'2021-11-02 12:24:33',	'2021-11-02 12:24:33'),
(392,	'App\Models\Product',	36,	'abda5541-6b8c-65b1-bb77-5f5a47e1d072',	'products',	'Belted faux leather biker jacket',	'1.jpg',	'image/jpeg',	'public',	NULL,	253850,	'[]',	'[]',	'[]',	'[]',	1,	'2021-11-02 12:24:33',	'2021-11-02 12:24:33'),
(393,	'App\Models\Product',	36,	'6b2e04fb-2288-8a09-eb0d-2adef6d4811a',	'products',	'Belted faux leather biker jacket',	'2.jpg',	'image/jpeg',	'public',	NULL,	331774,	'[]',	'[]',	'[]',	'[]',	2,	'2021-11-02 12:24:33',	'2021-11-02 12:24:33'),
(394,	'App\Models\Product',	36,	'ceac5d2b-3ba2-3615-5146-f56d88c94449',	'products',	'Belted faux leather biker jacket',	'3.jpg',	'image/jpeg',	'public',	NULL,	219749,	'[]',	'[]',	'[]',	'[]',	3,	'2021-11-02 12:24:33',	'2021-11-02 12:24:33'),
(395,	'App\Models\Product',	36,	'fa3335e6-73d9-61ef-ae1c-a03552f6f9d3',	'products',	'Belted faux leather biker jacket',	'4.jpg',	'image/jpeg',	'public',	NULL,	150850,	'[]',	'[]',	'[]',	'[]',	4,	'2021-11-02 12:24:33',	'2021-11-02 12:24:33'),
(396,	'App\Models\Product',	36,	'68ad6740-3414-aa0c-edff-2d2a159ae57e',	'products',	'Belted faux leather biker jacket',	'5.jpg',	'image/jpeg',	'public',	NULL,	434060,	'[]',	'[]',	'[]',	'[]',	5,	'2021-11-02 12:24:33',	'2021-11-02 12:24:33'),
(397,	'App\Models\Product',	36,	'c03ee6c3-fc79-e82e-127f-abc874ed717e',	'products',	'Belted faux leather biker jacket',	'6.jpg',	'image/jpeg',	'public',	NULL,	307814,	'[]',	'[]',	'[]',	'[]',	6,	'2021-11-02 12:24:33',	'2021-11-02 12:24:33'),
(398,	'App\Models\Product',	36,	'9a4525d0-994f-0179-5710-58c81ce27100',	'products',	'Belted faux leather biker jacket',	'7.jpg',	'image/jpeg',	'public',	NULL,	571973,	'[]',	'[]',	'[]',	'[]',	7,	'2021-11-02 12:24:33',	'2021-11-02 12:24:33'),
(399,	'App\Models\WidgetItem',	1,	'3eb56d5d-a9b4-4ca1-9dbb-bae8cd15e54e',	'widget_items',	'w1500_q80 (3) — копия',	'w1500_q80-(3) —-копия.jpg',	'image/jpeg',	'public',	'public',	306673,	'[]',	'[]',	'[]',	'[]',	1,	'2021-11-05 21:08:12',	'2021-11-05 21:08:12'),
(400,	'App\Models\WidgetItem',	3,	'866b3270-21d7-4476-98b6-479ec74d8a27',	'widget_items',	'w1500_q80 (3) — копия',	'w1500_q80-(3) —-копия.jpg',	'image/jpeg',	'public',	'public',	306673,	'[]',	'[]',	'[]',	'[]',	1,	'2021-11-08 16:18:53',	'2021-11-08 16:18:53'),
(401,	'App\Models\WidgetItem',	4,	'130f9262-9045-4d0a-9729-f0bd1e07f6f6',	'widget_items',	'Newin_man',	'Newin_man.jpg',	'image/jpeg',	'public',	'public',	498454,	'[]',	'[]',	'[]',	'[]',	1,	'2021-11-08 16:20:39',	'2021-11-08 16:20:39'),
(402,	'App\Models\WidgetItem',	5,	'42d75781-ad2a-41d0-9a90-9a282c91e7db',	'widget_items',	'Sudaderas_man',	'Sudaderas_man.jpg',	'image/jpeg',	'public',	'public',	361787,	'[]',	'[]',	'[]',	'[]',	1,	'2021-11-08 16:21:41',	'2021-11-08 16:21:41'),
(403,	'App\Models\WidgetItem',	6,	'98085b46-41f0-47d7-89ad-387998ad4a9d',	'widget_items',	'ррр',	'ррр.jpg',	'image/jpeg',	'public',	'public',	911553,	'[]',	'[]',	'[]',	'[]',	1,	'2021-11-08 16:23:37',	'2021-11-08 16:23:37'),
(404,	'App\Models\WidgetItem',	7,	'65875c02-a19a-406b-b69e-0010e0ccba99',	'widget_items',	'2',	'2.jpg',	'image/jpeg',	'public',	'public',	287308,	'[]',	'[]',	'[]',	'[]',	1,	'2021-11-08 16:53:27',	'2021-11-08 16:53:27'),
(334,	'App\Models\Product',	34,	'f3e6d7d3-6093-4984-48b8-69f69ea4d982',	'products',	'Seamless crop top with straps',	'0.jpg',	'image/jpeg',	'public',	NULL,	300556,	'[]',	'[]',	'[]',	'[]',	0,	'2021-11-02 11:11:58',	'2021-11-02 11:11:58'),
(335,	'App\Models\Product',	34,	'5113a64f-9475-2abd-1144-6f565f6027a2',	'products',	'Seamless crop top with straps',	'1.jpg',	'image/jpeg',	'public',	NULL,	106387,	'[]',	'[]',	'[]',	'[]',	1,	'2021-11-02 11:11:58',	'2021-11-02 11:11:58'),
(336,	'App\Models\Product',	34,	'f45a217d-6e5b-33b3-4f5a-b0d76bd5e6cc',	'products',	'Seamless crop top with straps',	'2.jpg',	'image/jpeg',	'public',	NULL,	192071,	'[]',	'[]',	'[]',	'[]',	2,	'2021-11-02 11:11:58',	'2021-11-02 11:11:58'),
(337,	'App\Models\Product',	34,	'b1871bfb-9da9-ba7a-4821-d57783a91237',	'products',	'Seamless crop top with straps',	'3.jpg',	'image/jpeg',	'public',	NULL,	259688,	'[]',	'[]',	'[]',	'[]',	3,	'2021-11-02 11:11:58',	'2021-11-02 11:11:58'),
(338,	'App\Models\Product',	34,	'0e651f47-abd9-14cd-88db-9e0d31b4aab5',	'products',	'Seamless crop top with straps',	'4.jpg',	'image/jpeg',	'public',	NULL,	19592,	'[]',	'[]',	'[]',	'[]',	4,	'2021-11-02 11:11:58',	'2021-11-02 11:11:58'),
(339,	'App\Models\Product',	34,	'629d7538-b774-c36e-67d3-e3b030bbe63e',	'products',	'Seamless crop top with straps',	'0.jpg',	'image/jpeg',	'public',	NULL,	294653,	'[]',	'[]',	'[]',	'[]',	0,	'2021-11-02 11:11:58',	'2021-11-02 11:11:58'),
(340,	'App\Models\Product',	34,	'65d16f88-f17e-a5fc-4eee-d14d00406bd7',	'products',	'Seamless crop top with straps',	'1.jpg',	'image/jpeg',	'public',	NULL,	102619,	'[]',	'[]',	'[]',	'[]',	1,	'2021-11-02 11:11:58',	'2021-11-02 11:11:58'),
(341,	'App\Models\Product',	34,	'96962077-e541-4c6d-873e-e43da9b14d62',	'products',	'Seamless crop top with straps',	'2.jpg',	'image/jpeg',	'public',	NULL,	486147,	'[]',	'[]',	'[]',	'[]',	2,	'2021-11-02 11:11:58',	'2021-11-02 11:11:58'),
(342,	'App\Models\Product',	34,	'fb128954-5f20-99d4-053c-062318ce743c',	'products',	'Seamless crop top with straps',	'3.jpg',	'image/jpeg',	'public',	NULL,	285187,	'[]',	'[]',	'[]',	'[]',	3,	'2021-11-02 11:11:58',	'2021-11-02 11:11:58'),
(343,	'App\Models\Product',	34,	'0c3904e3-7d0c-9aa4-e331-6a58d3e0f381',	'products',	'Seamless crop top with straps',	'4.jpg',	'image/jpeg',	'public',	NULL,	31547,	'[]',	'[]',	'[]',	'[]',	4,	'2021-11-02 11:11:58',	'2021-11-02 11:11:58'),
(344,	'App\Models\Product',	34,	'238a8588-da61-6326-447b-53fa700bfc1e',	'products',	'Seamless crop top with straps',	'0.jpg',	'image/jpeg',	'public',	NULL,	161551,	'[]',	'[]',	'[]',	'[]',	0,	'2021-11-02 11:11:58',	'2021-11-02 11:11:58'),
(345,	'App\Models\Product',	34,	'864cc997-b7e8-c5e6-6461-892013443a66',	'products',	'Seamless crop top with straps',	'1.jpg',	'image/jpeg',	'public',	NULL,	230844,	'[]',	'[]',	'[]',	'[]',	1,	'2021-11-02 11:11:58',	'2021-11-02 11:11:58'),
(346,	'App\Models\Product',	34,	'c5299d0e-1ebf-68a6-be5d-38e77d95a229',	'products',	'Seamless crop top with straps',	'2.jpg',	'image/jpeg',	'public',	NULL,	185916,	'[]',	'[]',	'[]',	'[]',	2,	'2021-11-02 11:11:58',	'2021-11-02 11:11:58'),
(347,	'App\Models\Product',	34,	'1b08eb51-9bf2-81f4-0d6c-a5261cbb0add',	'products',	'Seamless crop top with straps',	'3.jpg',	'image/jpeg',	'public',	NULL,	196469,	'[]',	'[]',	'[]',	'[]',	3,	'2021-11-02 11:11:58',	'2021-11-02 11:11:58'),
(348,	'App\Models\Product',	34,	'73bc68a5-593c-384a-ca82-4dd322a8c8d5',	'products',	'Seamless crop top with straps',	'4.jpg',	'image/jpeg',	'public',	NULL,	71442,	'[]',	'[]',	'[]',	'[]',	4,	'2021-11-02 11:11:58',	'2021-11-02 11:11:58'),
(349,	'App\Models\Product',	34,	'1bc37259-88ed-fe1c-13fc-9eb1a9d56a47',	'products',	'Seamless crop top with straps',	'0.jpg',	'image/jpeg',	'public',	NULL,	323732,	'[]',	'[]',	'[]',	'[]',	0,	'2021-11-02 11:11:58',	'2021-11-02 11:11:58'),
(350,	'App\Models\Product',	34,	'86a7a82d-69a1-a7b8-ff05-e6eadb09247d',	'products',	'Seamless crop top with straps',	'1.jpg',	'image/jpeg',	'public',	NULL,	256012,	'[]',	'[]',	'[]',	'[]',	1,	'2021-11-02 11:11:58',	'2021-11-02 11:11:58'),
(351,	'App\Models\Product',	34,	'049854ca-4441-9e0e-9003-a3a0f144414f',	'products',	'Seamless crop top with straps',	'2.jpg',	'image/jpeg',	'public',	NULL,	100951,	'[]',	'[]',	'[]',	'[]',	2,	'2021-11-02 11:11:58',	'2021-11-02 11:11:58'),
(352,	'App\Models\Product',	34,	'8d3437bd-d4c6-b3cf-667a-25ffd3368a7f',	'products',	'Seamless crop top with straps',	'3.jpg',	'image/jpeg',	'public',	NULL,	317249,	'[]',	'[]',	'[]',	'[]',	3,	'2021-11-02 11:11:58',	'2021-11-02 11:11:58'),
(353,	'App\Models\Product',	34,	'edd74461-70e0-8d09-f823-b5856d0dd635',	'products',	'Seamless crop top with straps',	'4.jpg',	'image/jpeg',	'public',	NULL,	34757,	'[]',	'[]',	'[]',	'[]',	4,	'2021-11-02 11:11:58',	'2021-11-02 11:11:58'),
(354,	'App\Models\Product',	34,	'cbda746d-3e2b-e710-f414-ce9b59aec63b',	'products',	'Seamless crop top with straps',	'0.jpg',	'image/jpeg',	'public',	NULL,	398941,	'[]',	'[]',	'[]',	'[]',	0,	'2021-11-02 11:11:59',	'2021-11-02 11:11:59'),
(355,	'App\Models\Product',	34,	'fbc29013-ec60-048e-895f-8ee03bd64059',	'products',	'Seamless crop top with straps',	'1.jpg',	'image/jpeg',	'public',	NULL,	103162,	'[]',	'[]',	'[]',	'[]',	1,	'2021-11-02 11:11:59',	'2021-11-02 11:11:59'),
(356,	'App\Models\Product',	34,	'6b53195a-361e-dd6a-f18e-1112f2ab8197',	'products',	'Seamless crop top with straps',	'2.jpg',	'image/jpeg',	'public',	NULL,	275110,	'[]',	'[]',	'[]',	'[]',	2,	'2021-11-02 11:11:59',	'2021-11-02 11:11:59'),
(357,	'App\Models\Product',	34,	'46cb8522-52df-616c-96ef-c37b05e5898f',	'products',	'Seamless crop top with straps',	'3.jpg',	'image/jpeg',	'public',	NULL,	202927,	'[]',	'[]',	'[]',	'[]',	3,	'2021-11-02 11:11:59',	'2021-11-02 11:11:59'),
(358,	'App\Models\Product',	34,	'14a6c0ea-f70d-6880-4410-d2d3900285a5',	'products',	'Seamless crop top with straps',	'4.jpg',	'image/jpeg',	'public',	NULL,	30170,	'[]',	'[]',	'[]',	'[]',	4,	'2021-11-02 11:11:59',	'2021-11-02 11:11:59'),
(359,	'App\Models\Product',	34,	'be6ff817-674e-b657-8499-8e8d2c784dfd',	'products',	'Seamless crop top with straps',	'0.jpg',	'image/jpeg',	'public',	NULL,	248866,	'[]',	'[]',	'[]',	'[]',	0,	'2021-11-02 11:11:59',	'2021-11-02 11:11:59'),
(360,	'App\Models\Product',	34,	'5a3f0bd5-2d68-f3ed-e9f3-27e4c2d59826',	'products',	'Seamless crop top with straps',	'1.jpg',	'image/jpeg',	'public',	NULL,	103503,	'[]',	'[]',	'[]',	'[]',	1,	'2021-11-02 11:11:59',	'2021-11-02 11:11:59'),
(361,	'App\Models\Product',	34,	'b47450c5-2b62-66cc-a8d8-0a11915c001f',	'products',	'Seamless crop top with straps',	'2.jpg',	'image/jpeg',	'public',	NULL,	238139,	'[]',	'[]',	'[]',	'[]',	2,	'2021-11-02 11:11:59',	'2021-11-02 11:11:59'),
(362,	'App\Models\Product',	34,	'5059ef0d-4fd8-1392-e937-a8d4a22697e1',	'products',	'Seamless crop top with straps',	'3.jpg',	'image/jpeg',	'public',	NULL,	172014,	'[]',	'[]',	'[]',	'[]',	3,	'2021-11-02 11:11:59',	'2021-11-02 11:11:59'),
(363,	'App\Models\Product',	34,	'20836e10-65af-a1ab-19d7-c90abd6dbaf7',	'products',	'Seamless crop top with straps',	'4.jpg',	'image/jpeg',	'public',	NULL,	33355,	'[]',	'[]',	'[]',	'[]',	4,	'2021-11-02 11:11:59',	'2021-11-02 11:11:59'),
(364,	'App\Models\Product',	34,	'e3cfb678-e6d4-e5f5-008f-46929f9628ae',	'products',	'Seamless crop top with straps',	'0.jpg',	'image/jpeg',	'public',	NULL,	756174,	'[]',	'[]',	'[]',	'[]',	0,	'2021-11-02 11:11:59',	'2021-11-02 11:11:59'),
(365,	'App\Models\Product',	34,	'fd8eee75-5bb1-3cfa-fea1-4c907e21adf0',	'products',	'Seamless crop top with straps',	'1.jpg',	'image/jpeg',	'public',	NULL,	142080,	'[]',	'[]',	'[]',	'[]',	1,	'2021-11-02 11:11:59',	'2021-11-02 11:11:59'),
(366,	'App\Models\Product',	34,	'1ea55231-8fa6-5cd8-71cd-8a1b2afdd8a1',	'products',	'Seamless crop top with straps',	'2.jpg',	'image/jpeg',	'public',	NULL,	167374,	'[]',	'[]',	'[]',	'[]',	2,	'2021-11-02 11:11:59',	'2021-11-02 11:11:59'),
(367,	'App\Models\Product',	34,	'80cdd2a0-6cf9-0d00-a08b-b978662d8b69',	'products',	'Seamless crop top with straps',	'3.jpg',	'image/jpeg',	'public',	NULL,	187374,	'[]',	'[]',	'[]',	'[]',	3,	'2021-11-02 11:11:59',	'2021-11-02 11:11:59'),
(368,	'App\Models\Product',	34,	'f802e63e-c456-16c2-10bc-6e25cfc9fba0',	'products',	'Seamless crop top with straps',	'4.jpg',	'image/jpeg',	'public',	NULL,	19877,	'[]',	'[]',	'[]',	'[]',	4,	'2021-11-02 11:11:59',	'2021-11-02 11:11:59'),
(369,	'App\Models\Product',	34,	'359715d6-2592-f40d-7166-983b0757f12c',	'products',	'Seamless crop top with straps',	'0.jpg',	'image/jpeg',	'public',	NULL,	274472,	'[]',	'[]',	'[]',	'[]',	0,	'2021-11-02 11:11:59',	'2021-11-02 11:11:59'),
(370,	'App\Models\Product',	34,	'366763f2-c3d6-38bc-1302-65cffb5b0220',	'products',	'Seamless crop top with straps',	'1.jpg',	'image/jpeg',	'public',	NULL,	173853,	'[]',	'[]',	'[]',	'[]',	1,	'2021-11-02 11:11:59',	'2021-11-02 11:11:59'),
(371,	'App\Models\Product',	34,	'df79f440-f4b3-56d6-870a-bf6bb50cd665',	'products',	'Seamless crop top with straps',	'2.jpg',	'image/jpeg',	'public',	NULL,	224110,	'[]',	'[]',	'[]',	'[]',	2,	'2021-11-02 11:11:59',	'2021-11-02 11:11:59'),
(372,	'App\Models\Product',	34,	'eb9ec3bb-209f-f3cf-cdc2-64f305e635b0',	'products',	'Seamless crop top with straps',	'3.jpg',	'image/jpeg',	'public',	NULL,	607739,	'[]',	'[]',	'[]',	'[]',	3,	'2021-11-02 11:11:59',	'2021-11-02 11:11:59'),
(373,	'App\Models\Product',	34,	'5d085712-3013-5d46-eec2-ca88379e5fa9',	'products',	'Seamless crop top with straps',	'4.jpg',	'image/jpeg',	'public',	NULL,	21741,	'[]',	'[]',	'[]',	'[]',	4,	'2021-11-02 11:11:59',	'2021-11-02 11:11:59'),
(374,	'App\Models\Product',	34,	'bea4876f-3759-11c4-d411-c397da555a65',	'products',	'Seamless crop top with straps',	'0.jpg',	'image/jpeg',	'public',	NULL,	343475,	'[]',	'[]',	'[]',	'[]',	0,	'2021-11-02 11:11:59',	'2021-11-02 11:11:59');

DROP TABLE IF EXISTS "migrations";
DROP SEQUENCE IF EXISTS migrations_id_seq;
CREATE SEQUENCE migrations_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "mod"."migrations" (
    "id" integer DEFAULT nextval('migrations_id_seq') NOT NULL,
    "migration" character varying(255) NOT NULL,
    "batch" integer NOT NULL,
    CONSTRAINT "migrations_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
INSERT INTO "migrations" ("id", "migration", "batch") VALUES
(1,	'2014_10_12_000001_create_confirmations_table',	1),
(2,	'2018_01_01_000000_create_action_events_table',	1),
(3,	'2019_05_10_000000_add_fields_to_action_events_table',	1),
(4,	'2019_08_19_000000_create_failed_jobs_table',	1),
(5,	'2019_12_14_000001_create_personal_access_tokens_table',	1),
(6,	'2020_01_01_000001_create_notifications_table',	1),
(7,	'2020_01_01_000010_create_configuration_table',	1),
(8,	'2020_01_01_000011_create_attributes_table',	1),
(9,	'2020_01_01_000012_create_attribute_values_table',	1),
(10,	'2020_01_01_000015_create_categories_table',	1),
(11,	'2020_01_01_000015_create_category_attribute_table',	1),
(12,	'2020_01_01_000016_create_brands_table',	1),
(13,	'2020_01_01_000017_create_home_pages_table',	1),
(14,	'2020_01_01_000017_create_products_table',	1),
(15,	'2020_01_01_000017_create_welcome_pages_table',	1),
(16,	'2020_01_01_000018_create_product_feature_table',	1),
(17,	'2020_01_01_000019_create_product_feature_value_table',	1),
(18,	'2020_01_01_000019_create_product_variations_table',	1),
(19,	'2020_01_01_000022_create_catalogs_table',	1),
(20,	'2020_01_01_000022_create_category_pivot_table',	1),
(21,	'2020_01_01_000025_create_addresses_table',	1),
(22,	'2020_01_01_000026_create_carriers_table',	1),
(23,	'2020_01_01_000026_create_payments_table',	1),
(24,	'2020_01_01_000027_create_orders_table',	1),
(25,	'2020_01_01_000028_create_order_product_table',	1),
(26,	'2020_01_01_000028_create_widgets_table',	1),
(27,	'2020_01_01_000029_create_widget_items_table',	1),
(28,	'2020_01_01_000030_create_favorites_table',	1),
(29,	'2020_01_01_000035_create_states_table',	1),
(30,	'2020_01_01_000036_create_order_state_table',	1),
(31,	'2020_01_01_000037_create_callbacks_table',	1),
(32,	'2020_01_01_000039_create_size_charts_table',	1),
(33,	'2021_05_06_181355_create_media_table',	1),
(34,	'2021_05_21_181813_create_external_images_table',	1),
(35,	'2021_05_27_120752_create_cards_table',	1);

DROP TABLE IF EXISTS "notifications";
CREATE TABLE "mod"."notifications" (
    "id" uuid NOT NULL,
    "type" character varying(255) NOT NULL,
    "notifiable_type" character varying(255) NOT NULL,
    "notifiable_id" bigint NOT NULL,
    "data" text NOT NULL,
    "read_at" timestamp(0),
    "created_at" timestamp(0),
    "updated_at" timestamp(0),
    CONSTRAINT "notifications_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "notifications_notifiable_type_notifiable_id_index" ON "mod"."notifications" USING btree ("notifiable_type", "notifiable_id");


DROP TABLE IF EXISTS "order_product";
CREATE TABLE "mod"."order_product" (
    "order_id" bigint NOT NULL,
    "product_id" bigint NOT NULL,
    "variation_id" bigint NOT NULL,
    "price" integer DEFAULT '0' NOT NULL,
    "old_price" integer DEFAULT '0' NOT NULL,
    "quantity" integer DEFAULT '1' NOT NULL,
    "created_at" timestamp(0),
    "updated_at" timestamp(0),
    CONSTRAINT "order_product_pkey" PRIMARY KEY ("order_id", "product_id", "variation_id")
) WITH (oids = false);

<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
INSERT INTO "order_product" ("order_id", "product_id", "variation_id", "price", "old_price", "quantity", "created_at", "updated_at") VALUES
(2,	36,	498,	260,	0,	1,	'2021-11-13 23:22:08',	'2021-11-13 23:22:08'),
(3,	36,	497,	260,	0,	1,	'2021-11-15 23:55:41',	'2021-11-15 23:55:41'),
(5,	36,	498,	260,	0,	1,	'2021-11-16 00:10:03',	'2021-11-16 00:10:03'),
(6,	36,	498,	260,	0,	1,	'2021-11-16 00:42:49',	'2021-11-16 00:42:49'),
(7,	36,	497,	260,	0,	1,	'2021-11-16 01:02:45',	'2021-11-16 01:02:45'),
(4,	36,	497,	260,	0,	1,	'2021-11-15 23:56:56',	'2021-11-16 01:11:23'),
(8,	36,	496,	260,	0,	1,	'2021-11-16 01:30:11',	'2021-11-16 01:30:11'),
(8,	34,	507,	60,	0,	1,	'2021-11-16 01:30:46',	'2021-11-16 01:30:46'),
(9,	36,	499,	260,	0,	1,	'2021-11-17 22:26:41',	'2021-11-17 22:26:41'),
(10,	33,	556,	699,	0,	1,	'2021-11-18 22:33:55',	'2021-11-18 22:33:55'),
(1,	33,	558,	699,	0,	1,	'2021-11-19 21:17:57',	'2021-11-19 21:17:57'),
(11,	36,	497,	260,	0,	1,	'2021-11-23 16:08:17',	'2021-11-23 16:08:17'),
(12,	34,	513,	60,	0,	1,	'2021-11-23 16:33:47',	'2021-11-23 16:33:47'),
(13,	34,	512,	60,	0,	1,	'2021-11-23 16:42:24',	'2021-11-23 16:42:24');

DROP TABLE IF EXISTS "order_state";
CREATE TABLE "mod"."order_state" (
    "order_id" bigint NOT NULL,
    "state_id" bigint NOT NULL,
    "message" character varying(255),
    "created_at" timestamp(0),
    "updated_at" timestamp(0),
    CONSTRAINT "order_state_pkey" PRIMARY KEY ("order_id", "state_id")
) WITH (oids = false);

<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
INSERT INTO "order_state" ("order_id", "state_id", "message", "created_at", "updated_at") VALUES
(1,	1,	NULL,	'2021-11-19 21:18:00',	'2021-11-19 21:18:00'),
(1,	4,	NULL,	'2021-11-19 21:18:35',	'2021-11-19 21:18:35');

DROP TABLE IF EXISTS "orders";
DROP SEQUENCE IF EXISTS orders_id_seq;
CREATE SEQUENCE orders_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "mod"."orders" (
    "id" bigint DEFAULT nextval('orders_id_seq') NOT NULL,
    "uid" character varying(255) NOT NULL,
    "step" character varying(255) DEFAULT 'cart' NOT NULL,
    "payment_type" character varying(255),
    "payment_provider_id" bigint,
    "user_id" bigint,
    "carrier_id" bigint,
    "address_id" bigint,
    "additional_info" text,
    "is_finished" boolean DEFAULT false NOT NULL,
    "meta" json,
    "created_at" timestamp(0),
    "updated_at" timestamp(0),
    CONSTRAINT "orders_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "orders_uid_step_is_finished_index" ON "mod"."orders" USING btree ("uid", "step", "is_finished");

CREATE INDEX "orders_user_id_index" ON "mod"."orders" USING btree ("user_id");

<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
INSERT INTO "orders" ("id", "uid", "step", "payment_type", "payment_provider_id", "user_id", "carrier_id", "address_id", "additional_info", "is_finished", "meta", "created_at", "updated_at") VALUES
(2,	'7c8d1728-f537-488a-9c34-2a1aff89909b',	'cart',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'0',	NULL,	'2021-11-13 23:22:08',	'2021-11-13 23:22:08'),
(3,	'3fab3f37-51e7-4894-84e1-a2dda2754329',	'cart',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'0',	NULL,	'2021-11-15 23:55:41',	'2021-11-15 23:55:41'),
(5,	'5a26318e-25b5-4bb5-87fe-e16562b2d492',	'order',	'cash',	NULL,	NULL,	1,	1,	NULL,	'1',	NULL,	'2021-11-16 00:10:03',	'2021-11-16 00:10:34'),
(6,	'9b0552b6-d271-47a1-83ae-bda053a4d8fb',	'order',	'cash',	NULL,	NULL,	1,	2,	NULL,	'1',	NULL,	'2021-11-16 00:42:49',	'2021-11-16 00:43:33'),
(7,	'4a628dea-3712-441a-8421-079a0c8687ad',	'order',	'cash',	NULL,	NULL,	1,	3,	NULL,	'1',	NULL,	'2021-11-16 01:02:45',	'2021-11-16 01:13:20'),
(4,	'ea776fe6-fe63-4f00-89ac-8e9f539fb49b',	'order',	'cash',	NULL,	NULL,	1,	4,	NULL,	'1',	NULL,	'2021-11-15 23:56:56',	'2021-11-16 01:28:21'),
(8,	'ea776fe6-fe63-4f00-89ac-8e9f539fb49b',	'order',	'cash',	NULL,	5,	1,	5,	NULL,	'1',	NULL,	'2021-11-16 01:30:11',	'2021-11-16 01:31:00'),
(9,	'22cb43c0-2260-491d-af66-d06c1bf1f29b',	'order',	'cash',	NULL,	NULL,	1,	6,	NULL,	'1',	NULL,	'2021-11-17 22:26:41',	'2021-11-18 22:27:20'),
(10,	'22cb43c0-2260-491d-af66-d06c1bf1f29b',	'order',	NULL,	NULL,	6,	1,	7,	NULL,	'0',	NULL,	'2021-11-18 22:33:55',	'2021-11-18 22:38:14'),
(1,	'DA9B741E-6ABE-4146-B880-04E0F85F16CA',	'order',	NULL,	NULL,	7,	NULL,	NULL,	NULL,	'1',	'{"app_uid":"DA9B741E-6ABE-4146-B880-04E0F85F16CA","app_platform":"iOS","app_version":"15.0.2","device_brand":"Apple","device_name":"iPhone14,3","device_firmware":"iOS"}',	'2021-11-02 11:55:04',	'2021-11-19 21:18:35'),
(11,	'85824d10-71bb-47b1-84c2-f64d9c8710f7',	'cart',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'0',	NULL,	'2021-11-23 16:08:17',	'2021-11-23 16:08:17'),
(12,	'8b567bcd-4483-4108-b999-3919b864ee24',	'cart',	NULL,	NULL,	6,	NULL,	NULL,	NULL,	'0',	NULL,	'2021-11-23 16:33:47',	'2021-11-23 16:33:47'),
(13,	'5965e093-7be6-44f1-8b50-267a48b21c0b',	'order',	'cash',	NULL,	NULL,	1,	8,	NULL,	'1',	NULL,	'2021-11-23 16:42:24',	'2021-11-23 16:51:27');

DROP TABLE IF EXISTS "payments";
DROP SEQUENCE IF EXISTS payments_id_seq;
CREATE SEQUENCE payments_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "mod"."payments" (
    "id" bigint DEFAULT nextval('payments_id_seq') NOT NULL,
    "name" character varying(255) NOT NULL,
    "slug" character varying(255) NOT NULL,
    "handler" character varying(255) NOT NULL,
    "is_active" boolean DEFAULT false NOT NULL,
    "sort_order" bigint DEFAULT '0' NOT NULL,
    "created_at" timestamp(0),
    "updated_at" timestamp(0),
    CONSTRAINT "payments_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "payments_slug_is_active_index" ON "mod"."payments" USING btree ("slug", "is_active");

<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
INSERT INTO "payments" ("id", "name", "slug", "handler", "is_active", "sort_order", "created_at", "updated_at") VALUES
(1,	'Payme',	'payme',	'App\Payment\PaycomPayment',	'1',	0,	'2021-10-22 16:57:05',	'2021-10-22 16:57:05');

DROP TABLE IF EXISTS "personal_access_tokens";
DROP SEQUENCE IF EXISTS personal_access_tokens_id_seq;
CREATE SEQUENCE personal_access_tokens_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "mod"."personal_access_tokens" (
    "id" bigint DEFAULT nextval('personal_access_tokens_id_seq') NOT NULL,
    "tokenable_type" character varying(255) NOT NULL,
    "tokenable_id" bigint NOT NULL,
    "name" character varying(255) NOT NULL,
    "token" character varying(64) NOT NULL,
    "abilities" text,
    "last_used_at" timestamp(0),
    "created_at" timestamp(0),
    "updated_at" timestamp(0),
    CONSTRAINT "personal_access_tokens_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "personal_access_tokens_token_unique" UNIQUE ("token")
) WITH (oids = false);

CREATE INDEX "personal_access_tokens_tokenable_type_tokenable_id_index" ON "mod"."personal_access_tokens" USING btree ("tokenable_type", "tokenable_id");

<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
INSERT INTO "personal_access_tokens" ("id", "tokenable_type", "tokenable_id", "name", "token", "abilities", "last_used_at", "created_at", "updated_at") VALUES
(1,	'App\Models\User',	7,	'iPhone14,3',	'e014b781caef255f1f829360e73837848306f3c59e01c7b33f57222af47993c7',	'["*"]',	'2021-12-01 00:44:17',	'2021-11-19 21:18:03',	'2021-12-01 00:44:17'),
(2,	'App\Models\User',	9,	'iPhone14,2',	'cf06aad7e9d6047b07e9b45e77e5354ff078467b9a0564421bed7429b643cfde',	'["*"]',	NULL,	'2021-12-01 12:15:16',	'2021-12-01 12:15:16');

DROP TABLE IF EXISTS "product_feature";
DROP SEQUENCE IF EXISTS product_feature_id_seq;
CREATE SEQUENCE product_feature_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "mod"."product_feature" (
    "id" bigint DEFAULT nextval('product_feature_id_seq') NOT NULL,
    "product_id" bigint NOT NULL,
    "attribute_id" bigint NOT NULL,
    CONSTRAINT "product_feature_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "product_feature_product_id_attribute_id_index" ON "mod"."product_feature" USING btree ("product_id", "attribute_id");

<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
INSERT INTO "product_feature" ("id", "product_id", "attribute_id") VALUES
(1,	36,	5),
(2,	36,	6),
(3,	36,	1),
(4,	36,	2),
(5,	34,	5),
(6,	34,	6),
(7,	34,	1),
(8,	35,	5),
(9,	35,	6),
(10,	35,	1),
(11,	35,	2),
(12,	33,	5),
(13,	33,	6),
(14,	33,	1),
(15,	33,	2),
(16,	33,	7),
(17,	26,	5),
(18,	26,	6),
(19,	26,	1),
(20,	37,	5),
(21,	37,	6),
(22,	37,	1),
(23,	37,	2),
(24,	38,	5),
(25,	38,	6),
(26,	38,	1),
(27,	38,	2),
(28,	39,	5),
(29,	39,	6),
(30,	39,	1),
(31,	39,	2),
(32,	40,	5),
(33,	40,	6),
(34,	40,	1),
(35,	40,	2),
(36,	41,	5),
(37,	41,	6),
(38,	41,	1),
(39,	41,	2),
(40,	42,	5),
(41,	42,	6),
(42,	42,	1),
(43,	42,	2),
(44,	43,	5),
(45,	43,	6),
(46,	43,	1),
(47,	43,	2),
(48,	44,	5),
(49,	44,	6),
(50,	44,	1),
(51,	44,	2),
(52,	45,	5),
(53,	45,	6),
(54,	45,	1),
(55,	45,	2),
(56,	46,	5),
(57,	46,	6),
(58,	46,	1),
(59,	46,	2),
(60,	47,	5),
(61,	47,	6),
(62,	47,	1),
(63,	47,	2),
(64,	48,	5),
(65,	48,	6),
(66,	48,	1),
(67,	48,	2),
(68,	49,	5),
(69,	49,	6),
(70,	49,	1),
(71,	49,	2),
(72,	50,	5),
(73,	50,	6),
(74,	50,	1),
(75,	50,	2),
(76,	51,	5),
(77,	51,	6),
(78,	51,	1),
(79,	51,	2),
(80,	52,	5),
(81,	52,	6),
(82,	52,	1),
(83,	52,	2),
(84,	53,	5),
(85,	53,	6),
(86,	53,	1),
(87,	53,	2),
(88,	54,	5),
(89,	54,	6),
(90,	54,	1),
(91,	54,	2),
(92,	55,	5),
(93,	55,	6),
(94,	55,	1),
(95,	55,	2),
(96,	56,	5),
(97,	56,	6),
(98,	56,	1),
(99,	56,	2),
(100,	57,	5),
(101,	57,	6),
(102,	57,	1),
(103,	57,	2),
(104,	58,	5),
(105,	58,	6),
(106,	58,	1),
(107,	58,	2),
(108,	59,	5),
(109,	59,	6),
(110,	59,	1),
(111,	59,	2),
(112,	60,	5),
(113,	60,	6),
(114,	60,	1),
(115,	60,	2),
(116,	61,	5),
(117,	61,	6),
(118,	61,	1),
(119,	61,	2),
(120,	62,	5),
(121,	62,	6),
(122,	62,	1),
(123,	62,	2),
(124,	63,	5),
(125,	63,	6),
(126,	63,	1),
(127,	63,	2),
(128,	64,	5),
(129,	64,	6),
(130,	64,	1),
(131,	64,	2),
(132,	65,	5),
(133,	65,	6),
(134,	65,	1),
(135,	65,	2),
(136,	66,	5),
(137,	66,	6),
(138,	66,	1),
(139,	66,	2),
(140,	67,	5),
(141,	67,	6),
(142,	67,	1),
(143,	67,	2),
(144,	68,	5),
(145,	68,	6),
(146,	68,	1),
(147,	68,	2),
(148,	69,	5),
(149,	69,	6),
(150,	69,	1),
(151,	69,	2),
(152,	70,	5),
(153,	70,	6),
(154,	70,	1),
(155,	70,	2),
(156,	71,	5),
(157,	71,	6),
(158,	71,	1),
(159,	71,	2),
(160,	72,	5),
(161,	72,	6),
(162,	72,	1),
(163,	72,	2),
(164,	73,	5),
(165,	73,	6),
(166,	73,	1),
(167,	73,	2),
(168,	74,	5),
(169,	74,	6),
(170,	74,	1),
(171,	74,	2),
(172,	75,	5),
(173,	75,	6),
(174,	75,	1),
(175,	75,	2),
(176,	76,	5),
(177,	76,	6),
(178,	76,	1),
(179,	76,	2),
(180,	77,	5),
(181,	77,	6),
(182,	77,	1),
(183,	77,	2),
(184,	78,	5),
(185,	78,	6),
(186,	78,	1),
(187,	78,	2),
(188,	79,	5),
(189,	79,	6),
(190,	79,	1),
(191,	79,	2),
(192,	80,	5),
(193,	80,	6),
(194,	80,	1),
(195,	80,	2),
(196,	81,	5),
(197,	81,	6),
(198,	81,	1),
(199,	81,	2),
(200,	82,	5),
(201,	82,	6),
(202,	82,	1),
(203,	82,	2),
(204,	83,	5),
(205,	83,	6),
(206,	83,	1),
(207,	83,	2),
(208,	84,	5),
(209,	84,	6),
(210,	84,	1),
(211,	84,	2),
(212,	85,	5),
(213,	85,	6),
(214,	85,	1),
(215,	85,	2),
(216,	86,	5),
(217,	86,	6),
(218,	86,	1),
(219,	86,	2),
(220,	87,	5),
(221,	87,	6),
(222,	87,	1),
(223,	87,	2),
(224,	88,	5),
(225,	88,	6),
(226,	88,	1),
(227,	88,	2),
(228,	89,	5),
(229,	89,	6),
(230,	89,	1),
(231,	89,	2),
(232,	90,	5),
(233,	90,	6),
(234,	90,	1),
(235,	90,	2),
(236,	91,	5),
(237,	91,	6),
(238,	91,	1),
(239,	91,	2),
(240,	92,	5),
(241,	92,	6),
(242,	92,	1),
(243,	92,	2),
(244,	93,	5),
(245,	93,	6),
(246,	93,	1),
(247,	93,	2),
(248,	94,	5),
(249,	94,	6),
(250,	94,	1),
(251,	94,	2),
(252,	95,	5),
(253,	95,	6),
(254,	95,	1),
(255,	95,	2),
(256,	96,	5),
(257,	96,	6),
(258,	96,	1),
(259,	96,	2),
(260,	97,	5),
(261,	97,	6),
(262,	97,	1),
(263,	97,	2),
(264,	98,	5),
(265,	98,	6),
(266,	98,	1),
(267,	98,	2),
(268,	99,	5),
(269,	99,	6),
(270,	99,	1),
(271,	99,	2),
(272,	100,	5),
(273,	100,	6),
(274,	100,	1),
(275,	100,	2),
(276,	101,	5),
(277,	101,	6),
(278,	101,	1),
(279,	101,	2),
(280,	102,	5),
(281,	102,	6),
(282,	102,	1),
(283,	102,	2),
(284,	103,	5),
(285,	103,	6),
(286,	103,	1),
(287,	103,	2),
(288,	104,	5),
(289,	104,	6),
(290,	104,	1),
(291,	104,	2),
(292,	105,	5),
(293,	105,	6),
(294,	105,	1),
(295,	105,	2),
(296,	106,	5),
(297,	106,	6),
(298,	106,	1);

DROP TABLE IF EXISTS "product_feature_value";
DROP SEQUENCE IF EXISTS product_feature_value_id_seq;
CREATE SEQUENCE product_feature_value_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "mod"."product_feature_value" (
    "id" bigint DEFAULT nextval('product_feature_value_id_seq') NOT NULL,
    "product_feature_id" bigint NOT NULL,
    "value_id" bigint NOT NULL,
    CONSTRAINT "product_feature_value_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "product_feature_value_product_feature_id_value_id_index" ON "mod"."product_feature_value" USING btree ("product_feature_id", "value_id");

<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
INSERT INTO "product_feature_value" ("id", "product_feature_id", "value_id") VALUES
(1,	1,	254),
(2,	1,	226),
(3,	1,	227),
(4,	1,	255),
(5,	1,	228),
(6,	2,	288),
(7,	2,	289),
(8,	3,	261),
(9,	3,	290),
(10,	4,	284),
(11,	4,	285),
(12,	4,	286),
(13,	4,	287),
(14,	4,	291),
(15,	5,	254),
(16,	5,	226),
(17,	5,	227),
(18,	5,	255),
(19,	5,	228),
(20,	6,	256),
(21,	7,	257),
(22,	7,	258),
(23,	7,	259),
(24,	7,	260),
(25,	7,	261),
(26,	7,	262),
(27,	7,	263),
(28,	7,	264),
(29,	7,	265),
(30,	8,	254),
(31,	8,	226),
(32,	8,	280),
(33,	8,	255),
(34,	8,	228),
(35,	8,	281),
(36,	9,	282),
(37,	9,	283),
(38,	10,	261),
(39,	11,	284),
(40,	11,	285),
(41,	11,	286),
(42,	11,	287),
(43,	12,	225),
(44,	12,	226),
(45,	12,	227),
(46,	12,	228),
(47,	12,	229),
(48,	13,	230),
(49,	13,	231),
(50,	14,	232),
(51,	15,	233),
(52,	15,	234),
(53,	15,	235),
(54,	15,	236),
(55,	15,	237),
(56,	15,	238),
(57,	15,	239),
(58,	16,	240),
(59,	16,	241),
(60,	16,	242),
(61,	16,	243),
(62,	16,	244),
(63,	16,	245),
(64,	17,	254),
(65,	17,	226),
(66,	17,	227),
(67,	17,	255),
(68,	17,	293),
(69,	18,	294),
(70,	19,	265),
(71,	19,	261),
(72,	20,	254),
(73,	20,	226),
(74,	20,	227),
(75,	20,	255),
(76,	20,	228),
(77,	20,	281),
(78,	21,	295),
(79,	22,	265),
(80,	22,	261),
(81,	23,	284),
(82,	23,	285),
(83,	23,	286),
(84,	23,	287),
(85,	24,	254),
(86,	24,	226),
(87,	24,	227),
(88,	24,	255),
(89,	24,	228),
(90,	25,	296),
(91,	26,	261),
(92,	26,	297),
(93,	27,	284),
(94,	27,	285),
(95,	27,	286),
(96,	27,	287),
(97,	28,	254),
(98,	28,	226),
(99,	28,	227),
(100,	28,	255),
(101,	28,	228),
(102,	29,	298),
(103,	29,	299),
(104,	30,	265),
(105,	31,	284),
(106,	31,	285),
(107,	31,	286),
(108,	31,	287),
(109,	32,	254),
(110,	32,	226),
(111,	32,	280),
(112,	32,	255),
(113,	32,	228),
(114,	33,	300),
(115,	34,	301),
(116,	35,	284),
(117,	35,	285),
(118,	35,	286),
(119,	35,	287),
(120,	36,	254),
(121,	36,	226),
(122,	36,	227),
(123,	36,	255),
(124,	36,	228),
(125,	37,	303),
(126,	38,	265),
(127,	39,	284),
(128,	39,	285),
(129,	39,	286),
(130,	39,	287),
(131,	40,	254),
(132,	40,	226),
(133,	40,	227),
(134,	40,	255),
(135,	40,	228),
(136,	41,	304),
(137,	42,	305),
(138,	43,	284),
(139,	43,	285),
(140,	43,	286),
(141,	43,	287),
(142,	44,	254),
(143,	44,	226),
(144,	44,	227),
(145,	44,	255),
(146,	44,	228),
(147,	44,	307),
(148,	44,	308),
(149,	45,	309),
(150,	46,	310),
(151,	46,	305),
(152,	47,	284),
(153,	47,	285),
(154,	47,	286),
(155,	47,	287),
(156,	48,	254),
(157,	48,	226),
(158,	48,	227),
(159,	48,	255),
(160,	48,	228),
(161,	48,	307),
(162,	49,	312),
(163,	49,	313),
(164,	50,	314),
(165,	51,	284),
(166,	51,	285),
(167,	51,	286),
(168,	51,	287),
(169,	52,	254),
(170,	52,	226),
(171,	52,	227),
(172,	52,	255),
(173,	52,	228),
(174,	53,	316),
(175,	54,	297),
(176,	55,	284),
(177,	55,	285),
(178,	55,	286),
(179,	55,	287),
(180,	56,	254),
(181,	56,	226),
(182,	56,	227),
(183,	56,	255),
(184,	56,	228),
(185,	56,	307),
(186,	56,	281),
(187,	57,	318),
(188,	58,	261),
(189,	59,	284),
(190,	59,	285),
(191,	59,	286),
(192,	59,	287),
(193,	60,	254),
(194,	60,	226),
(195,	60,	227),
(196,	60,	228),
(197,	60,	229),
(198,	61,	319),
(199,	61,	320),
(200,	62,	265),
(201,	62,	290),
(202,	62,	261),
(203,	62,	314),
(204,	63,	284),
(205,	63,	285),
(206,	63,	286),
(207,	63,	287),
(208,	63,	291),
(209,	64,	254),
(210,	64,	226),
(211,	64,	227),
(212,	64,	255),
(213,	64,	228),
(214,	65,	321),
(215,	66,	322),
(216,	67,	284),
(217,	67,	285),
(218,	67,	286),
(219,	67,	287),
(220,	67,	291),
(221,	68,	324),
(222,	68,	226),
(223,	68,	227),
(224,	68,	255),
(225,	68,	228),
(226,	69,	288),
(227,	69,	325),
(228,	70,	261),
(229,	70,	265),
(230,	71,	284),
(231,	71,	285),
(232,	71,	286),
(233,	71,	287),
(234,	72,	324),
(235,	72,	226),
(236,	72,	227),
(237,	72,	255),
(238,	72,	228),
(239,	73,	288),
(240,	73,	325),
(241,	74,	261),
(242,	75,	284),
(243,	75,	285),
(244,	75,	286),
(245,	75,	287),
(246,	75,	291),
(247,	76,	254),
(248,	76,	226),
(249,	76,	227),
(250,	76,	255),
(251,	76,	228),
(252,	77,	326),
(253,	78,	314),
(254,	79,	284),
(255,	79,	285),
(256,	79,	286),
(257,	79,	287),
(258,	79,	291),
(259,	80,	254),
(260,	80,	226),
(261,	80,	227),
(262,	80,	255),
(263,	80,	228),
(264,	81,	327),
(265,	82,	314),
(266,	82,	301),
(267,	83,	284),
(268,	83,	285),
(269,	83,	286),
(270,	83,	287),
(271,	83,	291),
(272,	84,	254),
(273,	84,	226),
(274,	84,	227),
(275,	84,	255),
(276,	84,	228),
(277,	85,	328),
(278,	85,	288),
(279,	85,	325),
(280,	86,	261),
(281,	87,	284),
(282,	87,	285),
(283,	87,	286),
(284,	87,	287),
(285,	88,	254),
(286,	88,	226),
(287,	88,	227),
(288,	88,	255),
(289,	88,	228),
(290,	89,	329),
(291,	90,	330),
(292,	90,	260),
(293,	91,	284),
(294,	91,	285),
(295,	91,	286),
(296,	91,	287),
(297,	91,	291),
(298,	92,	254),
(299,	92,	226),
(300,	92,	227),
(301,	92,	255),
(302,	92,	228),
(303,	93,	332),
(304,	94,	265),
(305,	94,	333),
(306,	94,	334),
(307,	94,	330),
(308,	94,	261),
(309,	95,	284),
(310,	95,	285),
(311,	95,	286),
(312,	95,	287),
(313,	96,	254),
(314,	96,	226),
(315,	96,	227),
(316,	96,	255),
(317,	96,	228),
(318,	97,	335),
(319,	98,	330),
(320,	98,	265),
(321,	99,	284),
(322,	99,	285),
(323,	99,	286),
(324,	99,	287),
(325,	99,	291),
(326,	100,	254),
(327,	100,	226),
(328,	100,	227),
(329,	100,	255),
(330,	100,	228),
(331,	101,	336),
(332,	102,	265),
(333,	102,	261),
(334,	103,	284),
(335,	103,	285),
(336,	103,	286),
(337,	103,	287),
(338,	103,	291),
(339,	104,	254),
(340,	104,	226),
(341,	104,	227),
(342,	104,	293),
(343,	104,	229),
(344,	105,	337),
(345,	106,	305),
(346,	106,	290),
(347,	106,	330),
(348,	106,	261),
(349,	107,	338),
(350,	107,	339),
(351,	107,	340),
(352,	107,	233),
(353,	107,	234),
(354,	107,	235),
(355,	107,	236),
(356,	108,	225),
(357,	108,	226),
(358,	108,	280),
(359,	108,	255),
(360,	108,	228),
(361,	109,	341),
(362,	110,	261),
(363,	111,	286),
(364,	112,	254),
(365,	112,	226),
(366,	112,	227),
(367,	112,	228),
(368,	112,	229),
(369,	113,	342),
(370,	114,	297),
(371,	115,	285),
(372,	115,	286),
(373,	115,	287),
(374,	115,	291),
(375,	116,	254),
(376,	116,	226),
(377,	116,	227),
(378,	116,	228),
(379,	116,	307),
(380,	116,	343),
(381,	116,	229),
(382,	117,	344),
(383,	118,	314),
(384,	118,	297),
(385,	119,	284),
(386,	119,	285),
(387,	119,	286),
(388,	119,	287),
(389,	119,	291),
(390,	120,	254),
(391,	120,	226),
(392,	120,	227),
(393,	120,	255),
(394,	120,	228),
(395,	120,	307),
(396,	120,	308),
(397,	121,	345),
(398,	122,	330),
(399,	122,	346),
(400,	122,	305),
(401,	122,	347),
(402,	123,	284),
(403,	123,	285),
(404,	123,	286),
(405,	123,	287),
(406,	123,	291),
(407,	124,	225),
(408,	124,	226),
(409,	124,	280),
(410,	124,	255),
(411,	124,	228),
(412,	124,	348),
(413,	124,	349),
(414,	124,	350),
(415,	124,	351),
(416,	124,	352),
(417,	125,	353),
(418,	125,	354),
(419,	125,	355),
(420,	126,	356),
(421,	127,	357),
(422,	127,	340),
(423,	127,	358),
(424,	127,	233),
(425,	127,	359),
(426,	127,	234),
(427,	127,	360),
(428,	128,	254),
(429,	128,	226),
(430,	128,	227),
(431,	128,	255),
(432,	128,	228),
(433,	129,	299),
(434,	130,	362),
(435,	131,	284),
(436,	131,	285),
(437,	131,	286),
(438,	131,	287),
(439,	131,	291),
(440,	132,	254),
(441,	132,	226),
(442,	132,	227),
(443,	132,	255),
(444,	132,	228),
(445,	133,	298),
(446,	133,	299),
(447,	134,	364),
(448,	135,	284),
(449,	135,	285),
(450,	135,	286),
(451,	135,	287),
(452,	136,	254),
(453,	136,	226),
(454,	136,	227),
(455,	136,	255),
(456,	136,	228),
(457,	137,	299),
(458,	138,	261),
(459,	138,	333),
(460,	139,	284),
(461,	139,	285),
(462,	139,	286),
(463,	139,	287),
(464,	140,	254),
(465,	140,	226),
(466,	140,	227),
(467,	140,	255),
(468,	140,	228),
(469,	141,	299),
(470,	142,	346),
(471,	142,	364),
(472,	142,	265),
(473,	142,	261),
(474,	143,	284),
(475,	143,	285),
(476,	143,	286),
(477,	143,	287),
(478,	144,	254),
(479,	144,	226),
(480,	144,	227),
(481,	144,	255),
(482,	144,	228),
(483,	145,	299),
(484,	146,	265),
(485,	146,	333),
(486,	147,	284),
(487,	147,	285),
(488,	147,	286),
(489,	147,	287),
(490,	148,	254),
(491,	148,	226),
(492,	148,	227),
(493,	148,	228),
(494,	148,	229),
(495,	149,	367),
(496,	150,	368),
(497,	150,	261),
(498,	150,	265),
(499,	150,	346),
(500,	151,	284),
(501,	151,	285),
(502,	151,	286),
(503,	151,	287),
(504,	152,	254),
(505,	152,	226),
(506,	152,	227),
(507,	152,	255),
(508,	152,	228),
(509,	153,	370),
(510,	154,	322),
(511,	155,	284),
(512,	155,	285),
(513,	155,	286),
(514,	155,	287),
(515,	156,	254),
(516,	156,	226),
(517,	156,	227),
(518,	156,	255),
(519,	156,	228),
(520,	157,	300),
(521,	158,	362),
(522,	159,	284),
(523,	159,	285),
(524,	159,	286),
(525,	159,	287),
(526,	159,	291),
(527,	160,	254),
(528,	160,	226),
(529,	160,	227),
(530,	160,	255),
(531,	160,	228),
(532,	160,	307),
(533,	160,	308),
(534,	161,	371),
(535,	161,	367),
(536,	162,	368),
(537,	162,	346),
(538,	163,	284),
(539,	163,	285),
(540,	163,	286),
(541,	163,	287),
(542,	164,	254),
(543,	164,	226),
(544,	164,	227),
(545,	164,	255),
(546,	164,	228),
(547,	164,	307),
(548,	164,	308),
(549,	165,	337),
(550,	166,	261),
(551,	167,	284),
(552,	167,	285),
(553,	167,	286),
(554,	167,	287),
(555,	168,	324),
(556,	168,	226),
(557,	168,	227),
(558,	168,	255),
(559,	168,	228),
(560,	169,	372),
(561,	170,	373),
(562,	171,	284),
(563,	171,	285),
(564,	171,	286),
(565,	171,	287),
(566,	172,	324),
(567,	172,	226),
(568,	172,	227),
(569,	172,	255),
(570,	172,	228),
(571,	173,	372),
(572,	174,	373),
(573,	175,	284),
(574,	175,	285),
(575,	175,	286),
(576,	175,	287),
(577,	176,	254),
(578,	176,	226),
(579,	176,	227),
(580,	176,	255),
(581,	176,	228),
(582,	177,	375),
(583,	178,	261),
(584,	178,	265),
(585,	178,	305),
(586,	179,	284),
(587,	179,	285),
(588,	179,	286),
(589,	179,	287),
(590,	180,	254),
(591,	180,	226),
(592,	180,	227),
(593,	180,	255),
(594,	180,	228),
(595,	181,	337),
(596,	182,	265),
(597,	182,	314),
(598,	183,	284),
(599,	183,	285),
(600,	183,	286),
(601,	183,	287),
(602,	184,	254),
(603,	184,	226),
(604,	184,	227),
(605,	184,	255),
(606,	184,	228),
(607,	185,	337),
(608,	186,	262),
(609,	186,	376),
(610,	187,	284),
(611,	187,	285),
(612,	187,	286),
(613,	187,	287),
(614,	188,	254),
(615,	188,	226),
(616,	188,	227),
(617,	188,	255),
(618,	188,	228),
(619,	189,	377),
(620,	189,	372),
(621,	190,	261),
(622,	190,	305),
(623,	191,	284),
(624,	191,	285),
(625,	191,	286),
(626,	191,	287),
(627,	192,	254),
(628,	192,	226),
(629,	192,	227),
(630,	192,	255),
(631,	192,	228),
(632,	193,	370),
(633,	194,	322),
(634,	195,	284),
(635,	195,	285),
(636,	195,	286),
(637,	195,	287),
(638,	196,	254),
(639,	196,	226),
(640,	196,	227),
(641,	196,	255),
(642,	196,	228),
(643,	196,	307),
(644,	196,	308),
(645,	197,	337),
(646,	198,	261),
(647,	199,	284),
(648,	199,	285),
(649,	199,	286),
(650,	199,	287),
(651,	200,	254),
(652,	200,	226),
(653,	200,	227),
(654,	200,	255),
(655,	200,	228),
(656,	200,	307),
(657,	200,	308),
(658,	201,	337),
(659,	202,	347),
(660,	203,	284),
(661,	203,	285),
(662,	203,	286),
(663,	203,	287),
(664,	204,	254),
(665,	204,	226),
(666,	204,	227),
(667,	204,	293),
(668,	204,	229),
(669,	205,	379),
(670,	206,	376),
(671,	207,	380),
(672,	207,	338),
(673,	207,	339),
(674,	207,	340),
(675,	207,	233),
(676,	207,	234),
(677,	207,	235),
(678,	208,	254),
(679,	208,	226),
(680,	208,	227),
(681,	208,	255),
(682,	208,	228),
(683,	208,	307),
(684,	208,	308),
(685,	209,	300),
(686,	210,	261),
(687,	210,	265),
(688,	210,	301),
(689,	211,	284),
(690,	211,	285),
(691,	211,	286),
(692,	211,	287),
(693,	212,	254),
(694,	212,	226),
(695,	212,	227),
(696,	212,	255),
(697,	212,	228),
(698,	213,	382),
(699,	214,	261),
(700,	215,	284),
(701,	215,	285),
(702,	215,	286),
(703,	215,	287),
(704,	216,	254),
(705,	216,	226),
(706,	216,	227),
(707,	216,	255),
(708,	216,	228),
(709,	216,	307),
(710,	217,	383),
(711,	218,	261),
(712,	219,	380),
(713,	219,	284),
(714,	219,	285),
(715,	219,	286),
(716,	219,	287),
(717,	219,	291),
(718,	220,	254),
(719,	220,	226),
(720,	220,	227),
(721,	220,	255),
(722,	220,	228),
(723,	221,	382),
(724,	222,	261),
(725,	222,	322),
(726,	223,	284),
(727,	223,	285),
(728,	223,	286),
(729,	223,	287),
(730,	223,	291),
(731,	224,	254),
(732,	224,	226),
(733,	224,	227),
(734,	224,	255),
(735,	224,	293),
(736,	225,	384),
(737,	226,	261),
(738,	226,	314),
(739,	227,	284),
(740,	227,	285),
(741,	227,	286),
(742,	227,	287),
(743,	228,	225),
(744,	228,	226),
(745,	228,	280),
(746,	228,	255),
(747,	228,	228),
(748,	229,	328),
(749,	229,	385),
(750,	230,	261),
(751,	231,	286),
(752,	232,	254),
(753,	232,	226),
(754,	232,	227),
(755,	232,	255),
(756,	232,	228),
(757,	233,	299),
(758,	234,	346),
(759,	235,	284),
(760,	235,	285),
(761,	235,	286),
(762,	235,	287),
(763,	236,	254),
(764,	236,	226),
(765,	236,	280),
(766,	236,	255),
(767,	236,	228),
(768,	237,	386),
(769,	238,	322),
(770,	239,	286),
(771,	240,	225),
(772,	240,	226),
(773,	240,	280),
(774,	240,	255),
(775,	240,	228),
(776,	240,	348),
(777,	240,	349),
(778,	240,	350),
(779,	240,	351),
(780,	240,	352),
(781,	241,	353),
(782,	241,	328),
(783,	241,	387),
(784,	242,	388),
(785,	243,	357),
(786,	243,	340),
(787,	243,	358),
(788,	243,	233),
(789,	243,	359),
(790,	243,	234),
(791,	243,	360),
(792,	244,	254),
(793,	244,	226),
(794,	244,	227),
(795,	244,	255),
(796,	244,	228),
(797,	245,	328),
(798,	245,	288),
(799,	245,	390),
(800,	246,	265),
(801,	247,	284),
(802,	247,	285),
(803,	247,	286),
(804,	247,	287),
(805,	248,	254),
(806,	248,	226),
(807,	248,	227),
(808,	248,	255),
(809,	248,	228),
(810,	249,	337),
(811,	250,	297),
(812,	251,	284),
(813,	251,	285),
(814,	251,	286),
(815,	251,	287),
(816,	252,	254),
(817,	252,	226),
(818,	252,	227),
(819,	252,	255),
(820,	252,	228),
(821,	253,	391),
(822,	254,	347),
(823,	254,	297),
(824,	254,	261),
(825,	254,	265),
(826,	254,	305),
(827,	255,	284),
(828,	255,	285),
(829,	255,	286),
(830,	255,	287),
(831,	255,	291),
(832,	256,	254),
(833,	256,	226),
(834,	256,	227),
(835,	256,	255),
(836,	256,	228),
(837,	257,	392),
(838,	258,	373),
(839,	258,	261),
(840,	258,	393),
(841,	259,	284),
(842,	259,	285),
(843,	259,	286),
(844,	259,	287),
(845,	260,	254),
(846,	260,	226),
(847,	260,	227),
(848,	260,	228),
(849,	260,	229),
(850,	261,	394),
(851,	261,	395),
(852,	262,	297),
(853,	262,	261),
(854,	262,	265),
(855,	263,	284),
(856,	263,	285),
(857,	263,	286),
(858,	263,	287),
(859,	263,	291),
(860,	264,	254),
(861,	264,	226),
(862,	264,	227),
(863,	264,	255),
(864,	264,	228),
(865,	264,	307),
(866,	264,	308),
(867,	265,	337),
(868,	266,	261),
(869,	267,	284),
(870,	267,	285),
(871,	267,	286),
(872,	267,	287),
(873,	268,	225),
(874,	268,	226),
(875,	268,	280),
(876,	268,	255),
(877,	268,	228),
(878,	268,	348),
(879,	268,	349),
(880,	268,	350),
(881,	268,	351),
(882,	268,	352),
(883,	269,	353),
(884,	269,	396),
(885,	269,	355),
(886,	270,	264),
(887,	271,	357),
(888,	271,	340),
(889,	271,	358),
(890,	271,	233),
(891,	271,	359),
(892,	271,	234),
(893,	271,	360),
(894,	272,	225),
(895,	272,	226),
(896,	272,	280),
(897,	272,	255),
(898,	272,	228),
(899,	273,	328),
(900,	273,	397),
(901,	274,	261),
(902,	274,	376),
(903,	274,	305),
(904,	274,	356),
(905,	275,	286),
(906,	276,	254),
(907,	276,	226),
(908,	276,	398),
(909,	276,	228),
(910,	276,	229),
(911,	277,	399),
(912,	278,	265),
(913,	278,	297),
(914,	279,	284),
(915,	279,	285),
(916,	279,	286),
(917,	279,	287),
(918,	280,	225),
(919,	280,	226),
(920,	280,	280),
(921,	280,	255),
(922,	280,	228),
(923,	281,	400),
(924,	281,	385),
(925,	282,	322),
(926,	283,	286),
(927,	284,	254),
(928,	284,	226),
(929,	284,	280),
(930,	284,	255),
(931,	284,	228),
(932,	285,	401),
(933,	286,	261),
(934,	287,	339),
(935,	287,	340),
(936,	287,	233),
(937,	287,	234),
(938,	287,	235),
(939,	287,	236),
(940,	288,	225),
(941,	288,	226),
(942,	288,	227),
(943,	288,	228),
(944,	288,	229),
(945,	289,	402),
(946,	290,	261),
(947,	291,	285),
(948,	291,	286),
(949,	291,	287),
(950,	292,	225),
(951,	292,	226),
(952,	292,	227),
(953,	292,	228),
(954,	292,	229),
(955,	293,	328),
(956,	293,	288),
(957,	293,	403),
(958,	294,	261),
(959,	295,	285),
(960,	295,	286),
(961,	295,	287),
(962,	296,	225),
(963,	296,	226),
(964,	296,	227),
(965,	296,	228),
(966,	296,	229),
(967,	297,	288),
(968,	297,	404),
(969,	298,	261);

DROP TABLE IF EXISTS "product_variations";
DROP SEQUENCE IF EXISTS product_variations_id_seq;
CREATE SEQUENCE product_variations_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "mod"."product_variations" (
    "id" bigint DEFAULT nextval('product_variations_id_seq') NOT NULL,
    "donor_attribute_id" character varying(255),
    "product_id" bigint NOT NULL,
    "attribute_id" bigint NOT NULL,
    "value_id" bigint NOT NULL,
    "parent_id" integer DEFAULT '0' NOT NULL,
    "reference" character varying(128),
    "barcode" character varying(16),
    "price" integer,
    "old_price" integer,
    "description" json,
    "in_stock" boolean DEFAULT false NOT NULL,
    "is_default" boolean DEFAULT false NOT NULL,
    "sort_order" integer DEFAULT '0' NOT NULL,
    "created_at" timestamp(0),
    "updated_at" timestamp(0),
    CONSTRAINT "product_variations_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "product_variations_is_default_index" ON "mod"."product_variations" USING btree ("is_default");

CREATE INDEX "product_variations_product_id_in_stock_parent_id_index" ON "mod"."product_variations" USING btree ("product_id", "in_stock", "parent_id");

<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
INSERT INTO "product_variations" ("id", "donor_attribute_id", "product_id", "attribute_id", "value_id", "parent_id", "reference", "barcode", "price", "old_price", "description", "in_stock", "is_default", "sort_order", "created_at", "updated_at") VALUES
(325,	'1',	34,	1,	266,	0,	NULL,	NULL,	NULL,	NULL,	NULL,	'0',	'0',	0,	NULL,	NULL),
(326,	'267',	34,	2,	267,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'1',	0,	NULL,	NULL),
(327,	'268',	34,	2,	268,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	1,	NULL,	NULL),
(328,	'269',	34,	2,	269,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	2,	NULL,	NULL),
(329,	'270',	34,	2,	270,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	3,	NULL,	NULL),
(330,	'271',	34,	2,	271,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	4,	NULL,	NULL),
(558,	'250',	33,	2,	250,	310,	'0072/117',	NULL,	699,	0,	'[]',	'1',	'0',	3,	NULL,	NULL),
(461,	'1',	26,	1,	279,	0,	NULL,	NULL,	NULL,	NULL,	NULL,	'0',	'0',	0,	NULL,	NULL),
(360,	'271',	34,	2,	271,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	34,	NULL,	NULL),
(361,	'267',	34,	2,	267,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	35,	NULL,	NULL),
(362,	'268',	34,	2,	268,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	36,	NULL,	NULL),
(363,	'269',	34,	2,	269,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	37,	NULL,	NULL),
(364,	'270',	34,	2,	270,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	38,	NULL,	NULL),
(310,	'1',	33,	1,	246,	0,	NULL,	NULL,	NULL,	NULL,	NULL,	'0',	'0',	0,	NULL,	NULL),
(311,	'247',	33,	2,	247,	310,	'0072/117',	NULL,	699,	0,	'[]',	'0',	'1',	0,	NULL,	NULL),
(312,	'248',	33,	2,	248,	310,	'0072/117',	NULL,	699,	0,	'[]',	'0',	'0',	1,	NULL,	NULL),
(313,	'249',	33,	2,	249,	310,	'0072/117',	NULL,	699,	0,	'[]',	'0',	'0',	2,	NULL,	NULL),
(314,	'250',	33,	2,	250,	310,	'0072/117',	NULL,	699,	0,	'[]',	'0',	'0',	3,	NULL,	NULL),
(315,	'251',	33,	2,	251,	310,	'0072/117',	NULL,	699,	0,	'[]',	'0',	'0',	4,	NULL,	NULL),
(316,	'252',	33,	2,	252,	310,	'0072/117',	NULL,	699,	0,	'[]',	'0',	'0',	5,	NULL,	NULL),
(317,	'253',	33,	2,	253,	310,	'0072/117',	NULL,	699,	0,	'[]',	'0',	'0',	6,	NULL,	NULL),
(318,	'247',	33,	2,	247,	310,	'0072/117',	NULL,	699,	0,	'[]',	'0',	'1',	0,	NULL,	NULL),
(319,	'248',	33,	2,	248,	310,	'0072/117',	NULL,	699,	0,	'[]',	'0',	'0',	1,	NULL,	NULL),
(320,	'249',	33,	2,	249,	310,	'0072/117',	NULL,	699,	0,	'[]',	'0',	'0',	2,	NULL,	NULL),
(321,	'250',	33,	2,	250,	310,	'0072/117',	NULL,	699,	0,	'[]',	'0',	'0',	3,	NULL,	NULL),
(322,	'251',	33,	2,	251,	310,	'0072/117',	NULL,	699,	0,	'[]',	'0',	'0',	4,	NULL,	NULL),
(323,	'252',	33,	2,	252,	310,	'0072/117',	NULL,	699,	0,	'[]',	'0',	'0',	5,	NULL,	NULL),
(324,	'253',	33,	2,	253,	310,	'0072/117',	NULL,	699,	0,	'[]',	'0',	'0',	6,	NULL,	NULL),
(559,	'251',	33,	2,	251,	310,	'0072/117',	NULL,	699,	0,	'[]',	'1',	'0',	4,	NULL,	NULL),
(560,	'252',	33,	2,	252,	310,	'0072/117',	NULL,	699,	0,	'[]',	'1',	'0',	5,	NULL,	NULL),
(561,	'253',	33,	2,	253,	310,	'0072/117',	NULL,	699,	0,	'[]',	'1',	'0',	6,	NULL,	NULL),
(462,	'267',	26,	2,	267,	461,	'6956/810',	NULL,	300,	0,	'[]',	'0',	'1',	0,	NULL,	NULL),
(463,	'268',	26,	2,	268,	461,	'6956/810',	NULL,	300,	0,	'[]',	'0',	'0',	1,	NULL,	NULL),
(464,	'269',	26,	2,	269,	461,	'6956/810',	NULL,	300,	0,	'[]',	'0',	'0',	2,	NULL,	NULL),
(465,	'270',	26,	2,	270,	461,	'6956/810',	NULL,	300,	0,	'[]',	'0',	'0',	3,	NULL,	NULL),
(365,	'271',	34,	2,	271,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	39,	NULL,	NULL),
(366,	'267',	34,	2,	267,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	40,	NULL,	NULL),
(367,	'268',	34,	2,	268,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	41,	NULL,	NULL),
(368,	'269',	34,	2,	269,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	42,	NULL,	NULL),
(369,	'270',	34,	2,	270,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	43,	NULL,	NULL),
(370,	'271',	34,	2,	271,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	44,	NULL,	NULL),
(371,	'267',	34,	2,	267,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'1',	0,	NULL,	NULL),
(372,	'268',	34,	2,	268,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	1,	NULL,	NULL),
(373,	'269',	34,	2,	269,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	2,	NULL,	NULL),
(374,	'270',	34,	2,	270,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	3,	NULL,	NULL),
(375,	'271',	34,	2,	271,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	4,	NULL,	NULL),
(376,	'267',	34,	2,	267,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	5,	NULL,	NULL),
(377,	'268',	34,	2,	268,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	6,	NULL,	NULL),
(378,	'269',	34,	2,	269,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	7,	NULL,	NULL),
(379,	'270',	34,	2,	270,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	8,	NULL,	NULL),
(380,	'271',	34,	2,	271,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	9,	NULL,	NULL),
(381,	'267',	34,	2,	267,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	10,	NULL,	NULL),
(470,	'1',	35,	1,	275,	0,	NULL,	NULL,	NULL,	NULL,	NULL,	'0',	'0',	0,	NULL,	NULL),
(466,	'267',	26,	2,	267,	461,	'6956/810',	NULL,	300,	0,	'[]',	'0',	'0',	4,	NULL,	NULL),
(467,	'268',	26,	2,	268,	461,	'6956/810',	NULL,	300,	0,	'[]',	'0',	'0',	5,	NULL,	NULL),
(468,	'269',	26,	2,	269,	461,	'6956/810',	NULL,	300,	0,	'[]',	'0',	'0',	6,	NULL,	NULL),
(469,	'270',	26,	2,	270,	461,	'6956/810',	NULL,	300,	0,	'[]',	'0',	'0',	7,	NULL,	NULL),
(562,	'267',	26,	2,	267,	461,	'6956/810',	NULL,	300,	0,	'[]',	'0',	'1',	0,	NULL,	NULL),
(563,	'268',	26,	2,	268,	461,	'6956/810',	NULL,	300,	0,	'[]',	'0',	'0',	1,	NULL,	NULL),
(564,	'269',	26,	2,	269,	461,	'6956/810',	NULL,	300,	0,	'[]',	'0',	'0',	2,	NULL,	NULL),
(565,	'270',	26,	2,	270,	461,	'6956/810',	NULL,	300,	0,	'[]',	'0',	'0',	3,	NULL,	NULL),
(566,	'267',	26,	2,	267,	461,	'6956/810',	NULL,	300,	0,	'[]',	'0',	'0',	4,	NULL,	NULL),
(567,	'268',	26,	2,	268,	461,	'6956/810',	NULL,	300,	0,	'[]',	'0',	'0',	5,	NULL,	NULL),
(568,	'269',	26,	2,	269,	461,	'6956/810',	NULL,	300,	0,	'[]',	'0',	'0',	6,	NULL,	NULL),
(569,	'270',	26,	2,	270,	461,	'6956/810',	NULL,	300,	0,	'[]',	'0',	'0',	7,	NULL,	NULL),
(475,	'1',	36,	1,	275,	0,	NULL,	NULL,	NULL,	NULL,	NULL,	'0',	'0',	0,	NULL,	NULL),
(476,	'267',	36,	2,	267,	475,	'4711/323',	NULL,	260,	0,	'{"en":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves.","ru":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves."}',	'0',	'1',	0,	NULL,	NULL),
(477,	'268',	36,	2,	268,	475,	'4711/323',	NULL,	260,	0,	'{"en":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves.","ru":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves."}',	'0',	'0',	1,	NULL,	NULL),
(478,	'269',	36,	2,	269,	475,	'4711/323',	NULL,	260,	0,	'{"en":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves.","ru":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves."}',	'0',	'0',	2,	NULL,	NULL),
(479,	'270',	36,	2,	270,	475,	'4711/323',	NULL,	260,	0,	'{"en":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves.","ru":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves."}',	'0',	'0',	3,	NULL,	NULL),
(480,	'271',	36,	2,	271,	475,	'4711/323',	NULL,	260,	0,	'{"en":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves.","ru":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves."}',	'0',	'0',	4,	NULL,	NULL),
(481,	'267',	36,	2,	267,	475,	'4711/323',	NULL,	260,	0,	'{"en":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves.","ru":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves."}',	'0',	'0',	5,	NULL,	NULL),
(482,	'268',	36,	2,	268,	475,	'4711/323',	NULL,	260,	0,	'{"en":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves.","ru":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves."}',	'0',	'0',	6,	NULL,	NULL),
(331,	'267',	34,	2,	267,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	5,	NULL,	NULL),
(332,	'268',	34,	2,	268,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	6,	NULL,	NULL),
(333,	'269',	34,	2,	269,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	7,	NULL,	NULL),
(570,	'1',	37,	1,	279,	0,	NULL,	NULL,	NULL,	NULL,	NULL,	'0',	'0',	0,	NULL,	NULL),
(483,	'269',	36,	2,	269,	475,	'4711/323',	NULL,	260,	0,	'{"en":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves.","ru":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves."}',	'0',	'0',	7,	NULL,	NULL),
(484,	'270',	36,	2,	270,	475,	'4711/323',	NULL,	260,	0,	'{"en":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves.","ru":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves."}',	'0',	'0',	8,	NULL,	NULL),
(485,	'271',	36,	2,	271,	475,	'4711/323',	NULL,	260,	0,	'{"en":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves.","ru":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves."}',	'0',	'0',	9,	NULL,	NULL),
(486,	'267',	36,	2,	267,	475,	'4711/323',	NULL,	260,	0,	'{"en":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves.","ru":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves."}',	'0',	'1',	0,	NULL,	NULL),
(487,	'268',	36,	2,	268,	475,	'4711/323',	NULL,	260,	0,	'{"en":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves.","ru":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves."}',	'0',	'0',	1,	NULL,	NULL),
(488,	'269',	36,	2,	269,	475,	'4711/323',	NULL,	260,	0,	'{"en":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves.","ru":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves."}',	'0',	'0',	2,	NULL,	NULL),
(489,	'270',	36,	2,	270,	475,	'4711/323',	NULL,	260,	0,	'{"en":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves.","ru":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves."}',	'0',	'0',	3,	NULL,	NULL),
(490,	'271',	36,	2,	271,	475,	'4711/323',	NULL,	260,	0,	'{"en":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves.","ru":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves."}',	'0',	'0',	4,	NULL,	NULL),
(491,	'267',	36,	2,	267,	475,	'4711/323',	NULL,	260,	0,	'{"en":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves.","ru":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves."}',	'0',	'0',	5,	NULL,	NULL),
(492,	'268',	36,	2,	268,	475,	'4711/323',	NULL,	260,	0,	'{"en":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves.","ru":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves."}',	'0',	'0',	6,	NULL,	NULL),
(382,	'268',	34,	2,	268,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	11,	NULL,	NULL),
(383,	'269',	34,	2,	269,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	12,	NULL,	NULL),
(384,	'270',	34,	2,	270,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	13,	NULL,	NULL),
(385,	'271',	34,	2,	271,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	14,	NULL,	NULL),
(386,	'267',	34,	2,	267,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	15,	NULL,	NULL),
(387,	'268',	34,	2,	268,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	16,	NULL,	NULL),
(388,	'269',	34,	2,	269,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	17,	NULL,	NULL),
(389,	'270',	34,	2,	270,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	18,	NULL,	NULL),
(390,	'271',	34,	2,	271,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	19,	NULL,	NULL),
(391,	'267',	34,	2,	267,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	20,	NULL,	NULL),
(392,	'268',	34,	2,	268,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	21,	NULL,	NULL),
(393,	'269',	34,	2,	269,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	22,	NULL,	NULL),
(394,	'270',	34,	2,	270,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	23,	NULL,	NULL),
(395,	'271',	34,	2,	271,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	24,	NULL,	NULL),
(493,	'269',	36,	2,	269,	475,	'4711/323',	NULL,	260,	0,	'{"en":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves.","ru":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves."}',	'0',	'0',	7,	NULL,	NULL),
(494,	'270',	36,	2,	270,	475,	'4711/323',	NULL,	260,	0,	'{"en":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves.","ru":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves."}',	'0',	'0',	8,	NULL,	NULL),
(495,	'271',	36,	2,	271,	475,	'4711/323',	NULL,	260,	0,	'{"en":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves.","ru":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves."}',	'0',	'0',	9,	NULL,	NULL),
(496,	'267',	36,	2,	267,	475,	'4711/323',	NULL,	260,	0,	'{"en":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves.","ru":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves."}',	'1',	'1',	0,	NULL,	NULL),
(497,	'268',	36,	2,	268,	475,	'4711/323',	NULL,	260,	0,	'{"en":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves.","ru":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves."}',	'1',	'0',	1,	NULL,	NULL),
(498,	'269',	36,	2,	269,	475,	'4711/323',	NULL,	260,	0,	'{"en":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves.","ru":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves."}',	'1',	'0',	2,	NULL,	NULL),
(499,	'270',	36,	2,	270,	475,	'4711/323',	NULL,	260,	0,	'{"en":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves.","ru":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves."}',	'1',	'0',	3,	NULL,	NULL),
(500,	'271',	36,	2,	271,	475,	'4711/323',	NULL,	260,	0,	'{"en":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves.","ru":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves."}',	'1',	'0',	4,	NULL,	NULL),
(501,	'267',	36,	2,	267,	475,	'4711/323',	NULL,	260,	0,	'{"en":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves.","ru":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves."}',	'1',	'0',	5,	NULL,	NULL),
(502,	'268',	36,	2,	268,	475,	'4711/323',	NULL,	260,	0,	'{"en":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves.","ru":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves."}',	'1',	'0',	6,	NULL,	NULL),
(503,	'269',	36,	2,	269,	475,	'4711/323',	NULL,	260,	0,	'{"en":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves.","ru":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves."}',	'1',	'0',	7,	NULL,	NULL),
(504,	'270',	36,	2,	270,	475,	'4711/323',	NULL,	260,	0,	'{"en":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves.","ru":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves."}',	'1',	'0',	8,	NULL,	NULL),
(505,	'271',	36,	2,	271,	475,	'4711/323',	NULL,	260,	0,	'{"en":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves.","ru":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves."}',	'1',	'0',	9,	NULL,	NULL),
(396,	'267',	34,	2,	267,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	25,	NULL,	NULL),
(397,	'268',	34,	2,	268,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	26,	NULL,	NULL),
(398,	'269',	34,	2,	269,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	27,	NULL,	NULL),
(399,	'270',	34,	2,	270,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	28,	NULL,	NULL),
(400,	'271',	34,	2,	271,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	29,	NULL,	NULL),
(401,	'267',	34,	2,	267,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	30,	NULL,	NULL),
(402,	'268',	34,	2,	268,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	31,	NULL,	NULL),
(403,	'269',	34,	2,	269,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	32,	NULL,	NULL),
(404,	'270',	34,	2,	270,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	33,	NULL,	NULL),
(405,	'271',	34,	2,	271,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	34,	NULL,	NULL),
(406,	'267',	34,	2,	267,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	35,	NULL,	NULL),
(334,	'270',	34,	2,	270,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	8,	NULL,	NULL),
(335,	'271',	34,	2,	271,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	9,	NULL,	NULL),
(336,	'267',	34,	2,	267,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	10,	NULL,	NULL),
(337,	'268',	34,	2,	268,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	11,	NULL,	NULL),
(338,	'269',	34,	2,	269,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	12,	NULL,	NULL),
(339,	'270',	34,	2,	270,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	13,	NULL,	NULL),
(340,	'271',	34,	2,	271,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	14,	NULL,	NULL),
(341,	'267',	34,	2,	267,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	15,	NULL,	NULL),
(342,	'268',	34,	2,	268,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	16,	NULL,	NULL),
(343,	'269',	34,	2,	269,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	17,	NULL,	NULL),
(344,	'270',	34,	2,	270,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	18,	NULL,	NULL),
(345,	'271',	34,	2,	271,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	19,	NULL,	NULL),
(346,	'267',	34,	2,	267,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	20,	NULL,	NULL),
(347,	'268',	34,	2,	268,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	21,	NULL,	NULL),
(348,	'269',	34,	2,	269,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	22,	NULL,	NULL),
(349,	'270',	34,	2,	270,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	23,	NULL,	NULL),
(571,	'267',	37,	2,	267,	570,	'5579/813',	NULL,	300,	0,	'[]',	'1',	'1',	0,	NULL,	NULL),
(572,	'268',	37,	2,	268,	570,	'5579/813',	NULL,	300,	0,	'[]',	'1',	'0',	1,	NULL,	NULL),
(573,	'269',	37,	2,	269,	570,	'5579/813',	NULL,	300,	0,	'[]',	'1',	'0',	2,	NULL,	NULL),
(574,	'270',	37,	2,	270,	570,	'5579/813',	NULL,	300,	0,	'[]',	'1',	'0',	3,	NULL,	NULL),
(575,	'267',	37,	2,	267,	570,	'5579/813',	NULL,	300,	0,	'[]',	'1',	'0',	4,	NULL,	NULL),
(576,	'268',	37,	2,	268,	570,	'5579/813',	NULL,	300,	0,	'[]',	'1',	'0',	5,	NULL,	NULL),
(577,	'269',	37,	2,	269,	570,	'5579/813',	NULL,	300,	0,	'[]',	'1',	'0',	6,	NULL,	NULL),
(578,	'270',	37,	2,	270,	570,	'5579/813',	NULL,	300,	0,	'[]',	'1',	'0',	7,	NULL,	NULL),
(579,	'1',	38,	1,	275,	0,	NULL,	NULL,	NULL,	NULL,	NULL,	'0',	'0',	0,	NULL,	NULL),
(580,	'267',	38,	2,	267,	579,	'5867/187',	NULL,	250,	0,	'[]',	'1',	'1',	0,	NULL,	NULL),
(581,	'268',	38,	2,	268,	579,	'5867/187',	NULL,	250,	0,	'[]',	'1',	'0',	1,	NULL,	NULL),
(582,	'269',	38,	2,	269,	579,	'5867/187',	NULL,	250,	0,	'[]',	'1',	'0',	2,	NULL,	NULL),
(583,	'270',	38,	2,	270,	579,	'5867/187',	NULL,	250,	0,	'[]',	'1',	'0',	3,	NULL,	NULL),
(350,	'271',	34,	2,	271,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	24,	NULL,	NULL),
(351,	'267',	34,	2,	267,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	25,	NULL,	NULL),
(352,	'268',	34,	2,	268,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	26,	NULL,	NULL),
(353,	'269',	34,	2,	269,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	27,	NULL,	NULL),
(354,	'270',	34,	2,	270,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	28,	NULL,	NULL),
(355,	'271',	34,	2,	271,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	29,	NULL,	NULL),
(356,	'267',	34,	2,	267,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	30,	NULL,	NULL),
(357,	'268',	34,	2,	268,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	31,	NULL,	NULL),
(358,	'269',	34,	2,	269,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	32,	NULL,	NULL),
(359,	'270',	34,	2,	270,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	33,	NULL,	NULL),
(407,	'268',	34,	2,	268,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	36,	NULL,	NULL),
(408,	'269',	34,	2,	269,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	37,	NULL,	NULL),
(409,	'270',	34,	2,	270,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	38,	NULL,	NULL),
(410,	'271',	34,	2,	271,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	39,	NULL,	NULL),
(411,	'267',	34,	2,	267,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	40,	NULL,	NULL),
(412,	'268',	34,	2,	268,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	41,	NULL,	NULL),
(413,	'269',	34,	2,	269,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	42,	NULL,	NULL),
(414,	'270',	34,	2,	270,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	43,	NULL,	NULL),
(415,	'271',	34,	2,	271,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	44,	NULL,	NULL),
(416,	'267',	34,	2,	267,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'1',	0,	NULL,	NULL),
(417,	'268',	34,	2,	268,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	1,	NULL,	NULL),
(418,	'269',	34,	2,	269,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	2,	NULL,	NULL),
(419,	'270',	34,	2,	270,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	3,	NULL,	NULL),
(420,	'271',	34,	2,	271,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	4,	NULL,	NULL),
(421,	'267',	34,	2,	267,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	5,	NULL,	NULL),
(422,	'268',	34,	2,	268,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	6,	NULL,	NULL),
(423,	'269',	34,	2,	269,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	7,	NULL,	NULL),
(424,	'270',	34,	2,	270,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	8,	NULL,	NULL),
(425,	'271',	34,	2,	271,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	9,	NULL,	NULL),
(426,	'267',	34,	2,	267,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	10,	NULL,	NULL),
(427,	'268',	34,	2,	268,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	11,	NULL,	NULL),
(428,	'269',	34,	2,	269,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	12,	NULL,	NULL),
(429,	'270',	34,	2,	270,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	13,	NULL,	NULL),
(430,	'271',	34,	2,	271,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	14,	NULL,	NULL),
(431,	'267',	34,	2,	267,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	15,	NULL,	NULL),
(432,	'268',	34,	2,	268,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	16,	NULL,	NULL),
(433,	'269',	34,	2,	269,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	17,	NULL,	NULL),
(434,	'270',	34,	2,	270,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	18,	NULL,	NULL),
(435,	'271',	34,	2,	271,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	19,	NULL,	NULL),
(436,	'267',	34,	2,	267,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	20,	NULL,	NULL),
(437,	'268',	34,	2,	268,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	21,	NULL,	NULL),
(438,	'269',	34,	2,	269,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	22,	NULL,	NULL),
(439,	'270',	34,	2,	270,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	23,	NULL,	NULL),
(440,	'271',	34,	2,	271,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	24,	NULL,	NULL),
(441,	'267',	34,	2,	267,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	25,	NULL,	NULL),
(442,	'268',	34,	2,	268,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	26,	NULL,	NULL),
(443,	'269',	34,	2,	269,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	27,	NULL,	NULL),
(444,	'270',	34,	2,	270,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	28,	NULL,	NULL),
(445,	'271',	34,	2,	271,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	29,	NULL,	NULL),
(446,	'267',	34,	2,	267,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	30,	NULL,	NULL),
(447,	'268',	34,	2,	268,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	31,	NULL,	NULL),
(448,	'269',	34,	2,	269,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	32,	NULL,	NULL),
(449,	'270',	34,	2,	270,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	33,	NULL,	NULL),
(450,	'271',	34,	2,	271,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	34,	NULL,	NULL),
(451,	'267',	34,	2,	267,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	35,	NULL,	NULL),
(452,	'268',	34,	2,	268,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	36,	NULL,	NULL),
(453,	'269',	34,	2,	269,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	37,	NULL,	NULL),
(454,	'270',	34,	2,	270,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	38,	NULL,	NULL),
(455,	'271',	34,	2,	271,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	39,	NULL,	NULL),
(456,	'267',	34,	2,	267,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	40,	NULL,	NULL),
(457,	'268',	34,	2,	268,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	41,	NULL,	NULL),
(458,	'269',	34,	2,	269,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	42,	NULL,	NULL),
(459,	'270',	34,	2,	270,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	43,	NULL,	NULL),
(460,	'271',	34,	2,	271,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'0',	'0',	44,	NULL,	NULL),
(506,	'267',	34,	2,	267,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'1',	0,	NULL,	NULL),
(507,	'268',	34,	2,	268,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	1,	NULL,	NULL),
(508,	'269',	34,	2,	269,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	2,	NULL,	NULL),
(509,	'270',	34,	2,	270,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	3,	NULL,	NULL),
(510,	'271',	34,	2,	271,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	4,	NULL,	NULL),
(511,	'267',	34,	2,	267,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	5,	NULL,	NULL),
(512,	'268',	34,	2,	268,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	6,	NULL,	NULL),
(513,	'269',	34,	2,	269,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	7,	NULL,	NULL),
(514,	'270',	34,	2,	270,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	8,	NULL,	NULL),
(515,	'271',	34,	2,	271,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	9,	NULL,	NULL),
(516,	'267',	34,	2,	267,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	10,	NULL,	NULL),
(517,	'268',	34,	2,	268,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	11,	NULL,	NULL),
(518,	'269',	34,	2,	269,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	12,	NULL,	NULL),
(519,	'270',	34,	2,	270,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	13,	NULL,	NULL),
(520,	'271',	34,	2,	271,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	14,	NULL,	NULL),
(521,	'267',	34,	2,	267,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	15,	NULL,	NULL),
(522,	'268',	34,	2,	268,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	16,	NULL,	NULL),
(523,	'269',	34,	2,	269,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	17,	NULL,	NULL),
(524,	'270',	34,	2,	270,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	18,	NULL,	NULL),
(525,	'271',	34,	2,	271,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	19,	NULL,	NULL),
(526,	'267',	34,	2,	267,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	20,	NULL,	NULL),
(527,	'268',	34,	2,	268,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	21,	NULL,	NULL),
(528,	'269',	34,	2,	269,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	22,	NULL,	NULL),
(529,	'270',	34,	2,	270,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	23,	NULL,	NULL),
(530,	'271',	34,	2,	271,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	24,	NULL,	NULL),
(531,	'267',	34,	2,	267,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	25,	NULL,	NULL),
(532,	'268',	34,	2,	268,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	26,	NULL,	NULL),
(533,	'269',	34,	2,	269,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	27,	NULL,	NULL),
(534,	'270',	34,	2,	270,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	28,	NULL,	NULL),
(535,	'271',	34,	2,	271,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	29,	NULL,	NULL),
(536,	'267',	34,	2,	267,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	30,	NULL,	NULL),
(537,	'268',	34,	2,	268,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	31,	NULL,	NULL),
(538,	'269',	34,	2,	269,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	32,	NULL,	NULL),
(539,	'270',	34,	2,	270,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	33,	NULL,	NULL),
(540,	'271',	34,	2,	271,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	34,	NULL,	NULL),
(541,	'267',	34,	2,	267,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	35,	NULL,	NULL),
(542,	'268',	34,	2,	268,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	36,	NULL,	NULL),
(543,	'269',	34,	2,	269,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	37,	NULL,	NULL),
(544,	'270',	34,	2,	270,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	38,	NULL,	NULL),
(545,	'271',	34,	2,	271,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	39,	NULL,	NULL),
(546,	'267',	34,	2,	267,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	40,	NULL,	NULL),
(547,	'268',	34,	2,	268,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	41,	NULL,	NULL),
(548,	'269',	34,	2,	269,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	42,	NULL,	NULL),
(549,	'270',	34,	2,	270,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	43,	NULL,	NULL),
(550,	'271',	34,	2,	271,	325,	'2532/688',	NULL,	60,	0,	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	'1',	'0',	44,	NULL,	NULL),
(555,	'247',	33,	2,	247,	310,	'0072/117',	NULL,	699,	0,	'[]',	'1',	'1',	0,	NULL,	NULL),
(556,	'248',	33,	2,	248,	310,	'0072/117',	NULL,	699,	0,	'[]',	'1',	'0',	1,	NULL,	NULL),
(557,	'249',	33,	2,	249,	310,	'0072/117',	NULL,	699,	0,	'[]',	'1',	'0',	2,	NULL,	NULL),
(471,	'267',	35,	2,	267,	470,	'1217/230',	NULL,	430,	0,	'{"en":"Warm leggings with warm-touch interior. With high waist and front zipped pockets. The structure of the fabric allows air and moisture to pass through it to keep the wearer dry and comfortable. High-strength fabric with UPF+40 protection.","ru":"Warm leggings with warm-touch interior. With high waist and front zipped pockets. The structure of the fabric allows air and moisture to pass through it to keep the wearer dry and comfortable. High-strength fabric with UPF+40 protection."}',	'0',	'1',	0,	NULL,	NULL),
(472,	'268',	35,	2,	268,	470,	'1217/230',	NULL,	430,	0,	'{"en":"Warm leggings with warm-touch interior. With high waist and front zipped pockets. The structure of the fabric allows air and moisture to pass through it to keep the wearer dry and comfortable. High-strength fabric with UPF+40 protection.","ru":"Warm leggings with warm-touch interior. With high waist and front zipped pockets. The structure of the fabric allows air and moisture to pass through it to keep the wearer dry and comfortable. High-strength fabric with UPF+40 protection."}',	'0',	'0',	1,	NULL,	NULL),
(473,	'269',	35,	2,	269,	470,	'1217/230',	NULL,	430,	0,	'{"en":"Warm leggings with warm-touch interior. With high waist and front zipped pockets. The structure of the fabric allows air and moisture to pass through it to keep the wearer dry and comfortable. High-strength fabric with UPF+40 protection.","ru":"Warm leggings with warm-touch interior. With high waist and front zipped pockets. The structure of the fabric allows air and moisture to pass through it to keep the wearer dry and comfortable. High-strength fabric with UPF+40 protection."}',	'0',	'0',	2,	NULL,	NULL),
(474,	'270',	35,	2,	270,	470,	'1217/230',	NULL,	430,	0,	'{"en":"Warm leggings with warm-touch interior. With high waist and front zipped pockets. The structure of the fabric allows air and moisture to pass through it to keep the wearer dry and comfortable. High-strength fabric with UPF+40 protection.","ru":"Warm leggings with warm-touch interior. With high waist and front zipped pockets. The structure of the fabric allows air and moisture to pass through it to keep the wearer dry and comfortable. High-strength fabric with UPF+40 protection."}',	'0',	'0',	3,	NULL,	NULL),
(551,	'267',	35,	2,	267,	470,	'1217/230',	NULL,	430,	0,	'{"en":"Warm leggings with warm-touch interior. With high waist and front zipped pockets. The structure of the fabric allows air and moisture to pass through it to keep the wearer dry and comfortable. High-strength fabric with UPF+40 protection.","ru":"Warm leggings with warm-touch interior. With high waist and front zipped pockets. The structure of the fabric allows air and moisture to pass through it to keep the wearer dry and comfortable. High-strength fabric with UPF+40 protection."}',	'1',	'1',	0,	NULL,	NULL),
(552,	'268',	35,	2,	268,	470,	'1217/230',	NULL,	430,	0,	'{"en":"Warm leggings with warm-touch interior. With high waist and front zipped pockets. The structure of the fabric allows air and moisture to pass through it to keep the wearer dry and comfortable. High-strength fabric with UPF+40 protection.","ru":"Warm leggings with warm-touch interior. With high waist and front zipped pockets. The structure of the fabric allows air and moisture to pass through it to keep the wearer dry and comfortable. High-strength fabric with UPF+40 protection."}',	'1',	'0',	1,	NULL,	NULL),
(553,	'269',	35,	2,	269,	470,	'1217/230',	NULL,	430,	0,	'{"en":"Warm leggings with warm-touch interior. With high waist and front zipped pockets. The structure of the fabric allows air and moisture to pass through it to keep the wearer dry and comfortable. High-strength fabric with UPF+40 protection.","ru":"Warm leggings with warm-touch interior. With high waist and front zipped pockets. The structure of the fabric allows air and moisture to pass through it to keep the wearer dry and comfortable. High-strength fabric with UPF+40 protection."}',	'1',	'0',	2,	NULL,	NULL),
(554,	'270',	35,	2,	270,	470,	'1217/230',	NULL,	430,	0,	'{"en":"Warm leggings with warm-touch interior. With high waist and front zipped pockets. The structure of the fabric allows air and moisture to pass through it to keep the wearer dry and comfortable. High-strength fabric with UPF+40 protection.","ru":"Warm leggings with warm-touch interior. With high waist and front zipped pockets. The structure of the fabric allows air and moisture to pass through it to keep the wearer dry and comfortable. High-strength fabric with UPF+40 protection."}',	'1',	'0',	3,	NULL,	NULL);

DROP TABLE IF EXISTS "products";
DROP SEQUENCE IF EXISTS products_id_seq;
CREATE SEQUENCE products_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "mod"."products" (
    "id" bigint DEFAULT nextval('products_id_seq') NOT NULL,
    "donor_id" character varying(128),
    "donor_category_id" character varying(128),
    "donor_product_id" character varying(128),
    "meta_title" json,
    "meta_description" json,
    "meta_keywords" json,
    "name" json,
    "slug" character varying(255),
    "description" json,
    "employee_id" bigint,
    "brand_id" bigint,
    "category_id" bigint,
    "is_active" boolean DEFAULT false NOT NULL,
    "is_draft" boolean DEFAULT true NOT NULL,
    "is_prepaid" boolean DEFAULT false NOT NULL,
    "created_at" timestamp(0),
    "updated_at" timestamp(0),
    CONSTRAINT "products_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "products_employee_id_index" ON "mod"."products" USING btree ("employee_id");

CREATE INDEX "products_is_active_is_draft_index" ON "mod"."products" USING btree ("is_active", "is_draft");

CREATE INDEX "products_slug_index" ON "mod"."products" USING btree ("slug");

<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
INSERT INTO "products" ("id", "donor_id", "donor_category_id", "donor_product_id", "meta_title", "meta_description", "meta_keywords", "name", "slug", "description", "employee_id", "brand_id", "category_id", "is_active", "is_draft", "is_prepaid", "created_at", "updated_at") VALUES
(6,	'3',	'9',	'102978196',	'{"en":"Comfortlux super high rise ankle-length leggings","ru":"Comfortlux super high rise ankle-length leggings"}',	'{"en":"Comfortlux super high rise ankle-length leggings","ru":"Comfortlux super high rise ankle-length leggings"}',	NULL,	'{"en":"Comfortlux super high rise ankle-length leggings","ru":"Comfortlux super high rise ankle-length leggings"}',	'102978196-comfortlux-super-high-rise-ankle-length-leggings',	'{"en":"Comfortlux leggings in lightweight, soft-touch, high-stretch fabric, which provides comfort without restricting movement. 65cm ankle length with super high rise. High-strength fabric with UPF+40 protection. Inside pocket at the back of the waist.","ru":"Comfortlux leggings in lightweight, soft-touch, high-stretch fabric, which provides comfort without restricting movement. 65cm ankle length with super high rise. High-strength fabric with UPF+40 protection. Inside pocket at the back of the waist."}',	NULL,	9,	15,	'0',	'0',	'0',	'2021-10-22 12:52:24',	'2021-10-22 12:52:24'),
(3,	'3',	'9',	'102915365',	'{"en":"Comfortlux high rise ankle-length leggings","ru":"Comfortlux high rise ankle-length leggings"}',	'{"en":"Comfortlux high rise ankle-length leggings","ru":"Comfortlux high rise ankle-length leggings"}',	NULL,	'{"en":"Comfortlux high rise ankle-length leggings","ru":"Comfortlux high rise ankle-length leggings"}',	'102915365-comfortlux-high-rise-ankle-length-leggings',	'{"en":"Comfortlux leggings in lightweight, soft-touch, high-stretch fabric, which provides comfort without restricting movement. Ankle length with high waist. High-strength fabric with UPF+40 protection. Inside pocket at the back of the waist.","ru":"Comfortlux leggings in lightweight, soft-touch, high-stretch fabric, which provides comfort without restricting movement. Ankle length with high waist. High-strength fabric with UPF+40 protection. Inside pocket at the back of the waist."}',	NULL,	9,	15,	'1',	'0',	'0',	'2021-10-22 12:47:44',	'2021-10-22 12:47:44'),
(4,	'3',	'9',	'103098567',	'{"en":"Comfortlux low rise ankle-length leggings","ru":"Comfortlux low rise ankle-length leggings"}',	'{"en":"Comfortlux low rise ankle-length leggings","ru":"Comfortlux low rise ankle-length leggings"}',	NULL,	'{"en":"Comfortlux low rise ankle-length leggings","ru":"Comfortlux low rise ankle-length leggings"}',	'103098567-comfortlux-low-rise-ankle-length-leggings',	'{"en":"Comfortlux leggings in lightweight, soft-touch, high-stretch fabric, which provides comfort without restricting movement. 65cm ankle length with low rise. High-strength fabric with UPF+40 protection. Inside pocket at the back of the waist.","ru":"Comfortlux leggings in lightweight, soft-touch, high-stretch fabric, which provides comfort without restricting movement. 65cm ankle length with low rise. High-strength fabric with UPF+40 protection. Inside pocket at the back of the waist."}',	NULL,	9,	15,	'1',	'0',	'0',	'2021-10-22 12:52:20',	'2021-10-22 12:52:20'),
(5,	'3',	'9',	'102978205',	'{"en":"Comfortlux medium rise ankle-length leggings","ru":"Comfortlux medium rise ankle-length leggings"}',	'{"en":"Comfortlux medium rise ankle-length leggings","ru":"Comfortlux medium rise ankle-length leggings"}',	NULL,	'{"en":"Comfortlux medium rise ankle-length leggings","ru":"Comfortlux medium rise ankle-length leggings"}',	'102978205-comfortlux-medium-rise-ankle-length-leggings',	'{"en":"Comfortlux leggings in lightweight, soft-touch, high-stretch fabric, which provides comfort without restricting movement. 65cm ankle length with medium rise. High-strength fabric with UPF+40 protection. Inside pocket at the back of the waist.","ru":"Comfortlux leggings in lightweight, soft-touch, high-stretch fabric, which provides comfort without restricting movement. 65cm ankle length with medium rise. High-strength fabric with UPF+40 protection. Inside pocket at the back of the waist."}',	NULL,	9,	15,	'1',	'0',	'0',	'2021-10-22 12:52:22',	'2021-10-22 12:52:22'),
(10,	'3',	'9',	'102916208',	'{"en":"Comfortlux hot pants","ru":"Comfortlux hot pants"}',	'{"en":"Comfortlux hot pants","ru":"Comfortlux hot pants"}',	NULL,	'{"en":"Comfortlux hot pants","ru":"Comfortlux hot pants"}',	'102916208-comfortlux-hot-pants',	'{"en":"Comfortlux hot pants in lightweight, soft, high stretch fabric which provides comfort without restricting movement. High-resistance quick drying fabric with UPF+40 protection. The structure of the fabric allows air and moisture to pass through it to keep the wearer dry and comfortable.","ru":"Comfortlux hot pants in lightweight, soft, high stretch fabric which provides comfort without restricting movement. High-resistance quick drying fabric with UPF+40 protection. The structure of the fabric allows air and moisture to pass through it to keep the wearer dry and comfortable."}',	NULL,	9,	15,	'1',	'0',	'0',	'2021-10-22 12:52:32',	'2021-10-22 12:52:32'),
(12,	'3',	'9',	'102916234',	'{"en":"Comfortlux hot pants","ru":"Comfortlux hot pants"}',	'{"en":"Comfortlux hot pants","ru":"Comfortlux hot pants"}',	NULL,	'{"en":"Comfortlux hot pants","ru":"Comfortlux hot pants"}',	'102916234-comfortlux-hot-pants',	'{"en":"Comfortlux hot pants in lightweight, soft, high stretch fabric which provides comfort without restricting movement. High-resistance quick drying fabric with UPF+40 protection. The structure of the fabric allows air and moisture to pass through it to keep the wearer dry and comfortable.","ru":"Comfortlux hot pants in lightweight, soft, high stretch fabric which provides comfort without restricting movement. High-resistance quick drying fabric with UPF+40 protection. The structure of the fabric allows air and moisture to pass through it to keep the wearer dry and comfortable."}',	NULL,	9,	15,	'1',	'0',	'0',	'2021-10-22 12:52:37',	'2021-10-22 12:52:37'),
(13,	'3',	'9',	'102918628',	'{"en":"Comfortlux ankle-length leggings","ru":"Comfortlux ankle-length leggings"}',	'{"en":"Comfortlux ankle-length leggings","ru":"Comfortlux ankle-length leggings"}',	NULL,	'{"en":"Comfortlux ankle-length leggings","ru":"Comfortlux ankle-length leggings"}',	'102918628-comfortlux-ankle-length-leggings',	'{"en":"Comfortlux leggings in lightweight, soft-touch, high-stretch fabric, which provides comfort without restricting movement. Ankle-length with high waist. High-strength fabric with UPF+40 protection. Inside pocket at the back of the waist.","ru":"Comfortlux leggings in lightweight, soft-touch, high-stretch fabric, which provides comfort without restricting movement. Ankle-length with high waist. High-strength fabric with UPF+40 protection. Inside pocket at the back of the waist."}',	NULL,	9,	15,	'1',	'0',	'0',	'2021-10-22 12:52:39',	'2021-10-22 12:52:39'),
(7,	'3',	'9',	'103053110',	'{"en":"Comfortlux high rise crop leggings","ru":"Comfortlux high rise crop leggings"}',	'{"en":"Comfortlux high rise crop leggings","ru":"Comfortlux high rise crop leggings"}',	NULL,	'{"en":"Comfortlux high rise crop leggings","ru":"Comfortlux high rise crop leggings"}',	'103053110-comfortlux-high-rise-crop-leggings',	'{"en":"Comfortlux leggings in lightweight, soft-touch, high-stretch fabric, which provides comfort without restricting movement. 55cm crop length with high rise. High-strength fabric with UPF+40 protection. Inside pocket at the back of the waist.","ru":"Comfortlux leggings in lightweight, soft-touch, high-stretch fabric, which provides comfort without restricting movement. 55cm crop length with high rise. High-strength fabric with UPF+40 protection. Inside pocket at the back of the waist."}',	NULL,	9,	15,	'1',	'0',	'0',	'2021-10-22 12:52:26',	'2021-10-22 12:52:26'),
(8,	'3',	'9',	'102961062',	'{"en":"Comfort capri leggings","ru":"Comfort capri leggings"}',	'{"en":"Comfort capri leggings","ru":"Comfort capri leggings"}',	NULL,	'{"en":"Comfort capri leggings","ru":"Comfort capri leggings"}',	'102961062-comfort-capri-leggings',	'{"en":"Comfortlux leggings in lightweight, soft-touch, high-stretch fabric, which provides comfort without restricting movement. Capri length with high waist. High-strength fabric with UPF+40 protection. Inside pocket at the back of the waist.","ru":"Comfortlux leggings in lightweight, soft-touch, high-stretch fabric, which provides comfort without restricting movement. Capri length with high waist. High-strength fabric with UPF+40 protection. Inside pocket at the back of the waist."}',	NULL,	9,	15,	'1',	'0',	'0',	'2021-10-22 12:52:28',	'2021-10-22 12:52:28'),
(9,	'3',	'9',	'102915655',	'{"en":"Comfortlux cycle shorts","ru":"Comfortlux cycle shorts"}',	'{"en":"Comfortlux cycle shorts","ru":"Comfortlux cycle shorts"}',	NULL,	'{"en":"Comfortlux cycle shorts","ru":"Comfortlux cycle shorts"}',	'102915655-comfortlux-cycle-shorts',	'{"en":"Comfortlux cycle short leggings in lightweight, soft touch, high stretch fabric which provides comfort without restricting movement. High-resistance quick drying fabric with UPF+40 protection. The structure of the fabric allows air and moisture to pass through it to keep the wearer dry and comfortable.","ru":"Comfortlux cycle short leggings in lightweight, soft touch, high stretch fabric which provides comfort without restricting movement. High-resistance quick drying fabric with UPF+40 protection. The structure of the fabric allows air and moisture to pass through it to keep the wearer dry and comfortable."}',	NULL,	9,	15,	'1',	'0',	'0',	'2021-10-22 12:52:30',	'2021-10-22 12:52:30'),
(26,	'5',	'24',	'103272711',	'{"en":"Bomber jacket with print","ru":"Bomber jacket with print"}',	'{"en":"Bomber jacket with print","ru":"Bomber jacket with print"}',	NULL,	'{"en":"Bomber jacket with print","ru":"Bomber jacket with print"}',	'103272711-bomber-jacket-with-print',	'[]',	NULL,	2,	3,	'1',	'0',	'0',	'2021-11-01 17:42:24',	'2021-11-01 17:42:24'),
(47,	'5',	'3108',	'103009754',	'{"en":"Oversized plush jersey jacket","ru":"Oversized plush jersey jacket"}',	'{"en":"Oversized plush jersey jacket","ru":"Oversized plush jersey jacket"}',	NULL,	'{"en":"Oversized plush jersey jacket","ru":"Oversized plush jersey jacket"}',	'103009754-oversized-plush-jersey-jacket',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:11:48',	'2021-11-30 19:11:48'),
(48,	'5',	'3108',	'103566090',	'{"en":"Kick flare jacquard trousers","ru":"Kick flare jacquard trousers"}',	'{"en":"Kick flare jacquard trousers","ru":"Kick flare jacquard trousers"}',	NULL,	'{"en":"Kick flare jacquard trousers","ru":"Kick flare jacquard trousers"}',	'103566090-kick-flare-jacquard-trousers',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:12:05',	'2021-11-30 19:12:05'),
(49,	'5',	'3108',	'102953625',	'{"en":"Faux leather blazer","ru":"Faux leather blazer"}',	'{"en":"Faux leather blazer","ru":"Faux leather blazer"}',	NULL,	'{"en":"Faux leather blazer","ru":"Faux leather blazer"}',	'102953625-faux-leather-blazer',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:12:20',	'2021-11-30 19:12:20'),
(50,	'5',	'3108',	'102952339',	'{"en":"Faux leather trench coat","ru":"Faux leather trench coat"}',	'{"en":"Faux leather trench coat","ru":"Faux leather trench coat"}',	NULL,	'{"en":"Faux leather trench coat","ru":"Faux leather trench coat"}',	'102952339-faux-leather-trench-coat',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:12:35',	'2021-11-30 19:12:35'),
(51,	'5',	'3108',	'103036016',	'{"en":"Ribbed dress with arm warmers","ru":"Ribbed dress with arm warmers"}',	'{"en":"Ribbed dress with arm warmers","ru":"Ribbed dress with arm warmers"}',	NULL,	'{"en":"Ribbed dress with arm warmers","ru":"Ribbed dress with arm warmers"}',	'103036016-ribbed-dress-with-arm-warmers',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:12:50',	'2021-11-30 19:12:50'),
(11,	'3',	'9',	'102916543',	'{"en":"Comfortlux cycle shorts","ru":"Comfortlux cycle shorts"}',	'{"en":"Comfortlux cycle shorts","ru":"Comfortlux cycle shorts"}',	NULL,	'{"en":"Comfortlux cycle shorts","ru":"Comfortlux cycle shorts"}',	'102916543-comfortlux-cycle-shorts',	'{"en":"Comfortlux cycle short leggings in lightweight, soft touch, high stretch fabric which provides comfort without restricting movement. High-resistance quick drying fabric with UPF+40 protection. The structure of the fabric allows air and moisture to pass through it to keep the wearer dry and comfortable.","ru":"Comfortlux cycle short leggings in lightweight, soft touch, high stretch fabric which provides comfort without restricting movement. High-resistance quick drying fabric with UPF+40 protection. The structure of the fabric allows air and moisture to pass through it to keep the wearer dry and comfortable."}',	NULL,	9,	15,	'1',	'0',	'0',	'2021-10-22 12:52:35',	'2021-10-22 12:52:35'),
(24,	'8',	'5',	'502878790',	'{"en":"Chunky sole trainers","ru":"Chunky sole trainers"}',	'{"en":"Chunky sole trainers","ru":"Chunky sole trainers"}',	NULL,	'{"en":"Chunky sole trainers","ru":"Chunky sole trainers"}',	'502878790-chunky-sole-trainers',	'{"en":"Beige lace-up trainers. Pieces on the upper and chunky sole. Sole height: 5.5 cm.","ru":"Beige lace-up trainers. Pieces on the upper and chunky sole. Sole height: 5.5 cm."}',	NULL,	12,	3,	'1',	'0',	'0',	'2021-10-29 04:13:07',	'2021-10-29 04:13:07'),
(25,	'3',	'26',	'103027114',	'{"en":"Water-repellent parka","ru":"Water-repellent parka"}',	'{"en":"Water-repellent parka","ru":"Water-repellent parka"}',	NULL,	'{"en":"Water-repellent parka","ru":"Water-repellent parka"}',	'103027114-water-repellent-parka',	'{"en":"Long-sleeved parka with adjustable hood. Front zip fastening and buttons. Side pocket details. Inner fleece lining.","ru":"Long-sleeved parka with adjustable hood. Front zip fastening and buttons. Side pocket details. Inner fleece lining."}',	NULL,	9,	3,	'1',	'0',	'0',	'2021-11-01 11:23:10',	'2021-11-01 11:23:10'),
(36,	'8',	'939',	'502806634',	'{"en":"Belted faux leather biker jacket","ru":"Belted faux leather biker jacket"}',	'{"en":"Belted faux leather biker jacket","ru":"Belted faux leather biker jacket"}',	NULL,	'{"en":"Belted faux leather biker jacket","ru":"Belted faux leather biker jacket"}',	'502806634-belted-faux-leather-biker-jacket',	'{"en":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves.","ru":"Faux leather biker jacket featuring a belt with metallic buckle, side zip fastening, pockets and long sleeves."}',	NULL,	12,	3,	'1',	'0',	'0',	'2021-11-02 12:24:33',	'2021-11-02 12:24:33'),
(34,	'9',	'468',	'302274280',	'{"en":"Seamless crop top with straps","ru":"Seamless crop top with straps"}',	'{"en":"Seamless crop top with straps","ru":"Seamless crop top with straps"}',	NULL,	'{"en":"Seamless crop top with straps","ru":"Seamless crop top with straps"}',	'302274280-seamless-crop-top-with-straps',	'{"en":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours.","ru":"Crop top with a straight neckline and thin straps. Seamless fabric. Available in various colours."}',	NULL,	6,	3,	'1',	'0',	'0',	'2021-11-02 11:11:58',	'2021-11-02 11:11:58'),
(35,	'3',	'719',	'102931538',	'{"en":"Warm leggings","ru":"Warm leggings"}',	'{"en":"Warm leggings","ru":"Warm leggings"}',	NULL,	'{"en":"Warm leggings","ru":"Warm leggings"}',	'102931538-warm-leggings',	'{"en":"Warm leggings with warm-touch interior. With high waist and front zipped pockets. The structure of the fabric allows air and moisture to pass through it to keep the wearer dry and comfortable. High-strength fabric with UPF+40 protection.","ru":"Warm leggings with warm-touch interior. With high waist and front zipped pockets. The structure of the fabric allows air and moisture to pass through it to keep the wearer dry and comfortable. High-strength fabric with UPF+40 protection."}',	NULL,	9,	3,	'1',	'0',	'0',	'2021-11-02 12:02:40',	'2021-11-02 12:02:40'),
(33,	'4',	'425',	'9338671',	'{"en":"Slim fit 100% wool trousers","ru":"Slim fit 100% wool trousers"}',	'{"en":"Slim fit 100% wool trousers","ru":"Slim fit 100% wool trousers"}',	NULL,	'{"en":"Slim fit 100% wool trousers","ru":"Slim fit 100% wool trousers"}',	'9338671-slim-fit-100-wool-trousers',	'[]',	NULL,	10,	3,	'1',	'0',	'0',	'2021-11-02 10:57:01',	'2021-11-02 10:57:01'),
(41,	'5',	'3108',	'103272672',	'{"en":"Long-sleeved jacquard mini dress","ru":"Long-sleeved jacquard mini dress"}',	'{"en":"Long-sleeved jacquard mini dress","ru":"Long-sleeved jacquard mini dress"}',	NULL,	'{"en":"Long-sleeved jacquard mini dress","ru":"Long-sleeved jacquard mini dress"}',	'103272672-long-sleeved-jacquard-mini-dress',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:10:15',	'2021-11-30 19:10:15'),
(42,	'5',	'3108',	'103272666',	'{"en":"Jacquard mini dress","ru":"Jacquard mini dress"}',	'{"en":"Jacquard mini dress","ru":"Jacquard mini dress"}',	NULL,	'{"en":"Jacquard mini dress","ru":"Jacquard mini dress"}',	'103272666-jacquard-mini-dress',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:10:29',	'2021-11-30 19:10:29'),
(40,	'5',	'3108',	'103447759',	'{"en":"Printed velvet mini dress","ru":"Printed velvet mini dress"}',	'{"en":"Printed velvet mini dress","ru":"Printed velvet mini dress"}',	NULL,	'{"en":"Printed velvet mini dress","ru":"Printed velvet mini dress"}',	'103447759-printed-velvet-mini-dress',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:10:01',	'2021-11-30 19:10:01'),
(38,	'5',	'3108',	'103473329',	'{"en":"Ribbed corset-effect mini dress","ru":"Ribbed corset-effect mini dress"}',	'{"en":"Ribbed corset-effect mini dress","ru":"Ribbed corset-effect mini dress"}',	NULL,	'{"en":"Ribbed corset-effect mini dress","ru":"Ribbed corset-effect mini dress"}',	'103473329-ribbed-corset-effect-mini-dress',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:09:32',	'2021-11-30 19:09:32'),
(39,	'5',	'3108',	'103447765',	'{"en":"70s-print mini dress","ru":"70s-print mini dress"}',	'{"en":"70s-print mini dress","ru":"70s-print mini dress"}',	NULL,	'{"en":"70s-print mini dress","ru":"70s-print mini dress"}',	'103447765-70s-print-mini-dress',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:09:47',	'2021-11-30 19:09:47'),
(43,	'5',	'3108',	'103438118',	'{"en":"Manhattan print V-neck sweatshirt","ru":"Manhattan print V-neck sweatshirt"}',	'{"en":"Manhattan print V-neck sweatshirt","ru":"Manhattan print V-neck sweatshirt"}',	NULL,	'{"en":"Manhattan print V-neck sweatshirt","ru":"Manhattan print V-neck sweatshirt"}',	'103438118-manhattan-print-v-neck-sweatshirt',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:10:45',	'2021-11-30 19:10:45'),
(44,	'5',	'3108',	'103428012',	'{"en":"Varsity hoodie","ru":"Varsity hoodie"}',	'{"en":"Varsity hoodie","ru":"Varsity hoodie"}',	NULL,	'{"en":"Varsity hoodie","ru":"Varsity hoodie"}',	'103428012-varsity-hoodie',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:11:01',	'2021-11-30 19:11:01'),
(45,	'5',	'3108',	'103677669',	'{"en":"Printed sweatshirt with polo collar","ru":"Printed sweatshirt with polo collar"}',	'{"en":"Printed sweatshirt with polo collar","ru":"Printed sweatshirt with polo collar"}',	NULL,	'{"en":"Printed sweatshirt with polo collar","ru":"Printed sweatshirt with polo collar"}',	'103677669-printed-sweatshirt-with-polo-collar',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:11:16',	'2021-11-30 19:11:16'),
(56,	'5',	'3108',	'103031001',	'{"en":"Cable knit cardigan with fitted waist","ru":"Cable knit cardigan with fitted waist"}',	'{"en":"Cable knit cardigan with fitted waist","ru":"Cable knit cardigan with fitted waist"}',	NULL,	'{"en":"Cable knit cardigan with fitted waist","ru":"Cable knit cardigan with fitted waist"}',	'103031001-cable-knit-cardigan-with-fitted-waist',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:14:07',	'2021-11-30 19:14:07'),
(57,	'5',	'3108',	'102958660',	'{"en":"Ribbed leggings","ru":"Ribbed leggings"}',	'{"en":"Ribbed leggings","ru":"Ribbed leggings"}',	NULL,	'{"en":"Ribbed leggings","ru":"Ribbed leggings"}',	'102958660-ribbed-leggings',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:14:22',	'2021-11-30 19:14:22'),
(58,	'5',	'3108',	'102950375',	'{"en":"Wide-leg twill cargo trousers","ru":"Wide-leg twill cargo trousers"}',	'{"en":"Wide-leg twill cargo trousers","ru":"Wide-leg twill cargo trousers"}',	NULL,	'{"en":"Wide-leg twill cargo trousers","ru":"Wide-leg twill cargo trousers"}',	'102950375-wide-leg-twill-cargo-trousers',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:14:39',	'2021-11-30 19:14:39'),
(59,	'5',	'3108',	'102973574',	'{"en":"Retro orange mirrored sunglasses","ru":"Retro orange mirrored sunglasses"}',	'{"en":"Retro orange mirrored sunglasses","ru":"Retro orange mirrored sunglasses"}',	NULL,	'{"en":"Retro orange mirrored sunglasses","ru":"Retro orange mirrored sunglasses"}',	'102973574-retro-orange-mirrored-sunglasses',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:14:55',	'2021-11-30 19:14:55'),
(60,	'5',	'3108',	'103113170',	'{"en":"Printed sweatshirt","ru":"Printed sweatshirt"}',	'{"en":"Printed sweatshirt","ru":"Printed sweatshirt"}',	NULL,	'{"en":"Printed sweatshirt","ru":"Printed sweatshirt"}',	'103113170-printed-sweatshirt',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:15:07',	'2021-11-30 19:15:07'),
(61,	'5',	'3108',	'103078175',	'{"en":"Printed sweatshirt with zip","ru":"Printed sweatshirt with zip"}',	'{"en":"Printed sweatshirt with zip","ru":"Printed sweatshirt with zip"}',	NULL,	'{"en":"Printed sweatshirt with zip","ru":"Printed sweatshirt with zip"}',	'103078175-printed-sweatshirt-with-zip',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:15:22',	'2021-11-30 19:15:22'),
(62,	'5',	'3108',	'103111521',	'{"en":"Slogan print sweatshirt","ru":"Slogan print sweatshirt"}',	'{"en":"Slogan print sweatshirt","ru":"Slogan print sweatshirt"}',	NULL,	'{"en":"Slogan print sweatshirt","ru":"Slogan print sweatshirt"}',	'103111521-slogan-print-sweatshirt',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:15:40',	'2021-11-30 19:15:40'),
(63,	'5',	'3108',	'103005022',	'{"en":"Loafers with metallic detail","ru":"Loafers with metallic detail"}',	'{"en":"Loafers with metallic detail","ru":"Loafers with metallic detail"}',	NULL,	'{"en":"Loafers with metallic detail","ru":"Loafers with metallic detail"}',	'103005022-loafers-with-metallic-detail',	'{"en":"White flat loafers. Metal piece details. Track sole.","ru":"White flat loafers. Metal piece details. Track sole."}',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:16:03',	'2021-11-30 19:16:03'),
(64,	'5',	'3108',	'103180263',	'{"en":"Print flared trousers","ru":"Print flared trousers"}',	'{"en":"Print flared trousers","ru":"Print flared trousers"}',	NULL,	'{"en":"Print flared trousers","ru":"Print flared trousers"}',	'103180263-print-flared-trousers',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:16:23',	'2021-11-30 19:16:23'),
(65,	'5',	'3108',	'103251758',	'{"en":"Floral print mini dress","ru":"Floral print mini dress"}',	'{"en":"Floral print mini dress","ru":"Floral print mini dress"}',	NULL,	'{"en":"Floral print mini dress","ru":"Floral print mini dress"}',	'103251758-floral-print-mini-dress',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:16:38',	'2021-11-30 19:16:38'),
(66,	'5',	'3108',	'103180205',	'{"en":"Long sleeve midi dress with gathered neckline and print","ru":"Long sleeve midi dress with gathered neckline and print"}',	'{"en":"Long sleeve midi dress with gathered neckline and print","ru":"Long sleeve midi dress with gathered neckline and print"}',	NULL,	'{"en":"Long sleeve midi dress with gathered neckline and print","ru":"Long sleeve midi dress with gathered neckline and print"}',	'103180205-long-sleeve-midi-dress-with-gathered-neckline-and-print',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:16:52',	'2021-11-30 19:16:52'),
(67,	'5',	'3108',	'103198918',	'{"en":"Long sleeve top with front gathering","ru":"Long sleeve top with front gathering"}',	'{"en":"Long sleeve top with front gathering","ru":"Long sleeve top with front gathering"}',	NULL,	'{"en":"Long sleeve top with front gathering","ru":"Long sleeve top with front gathering"}',	'103198918-long-sleeve-top-with-front-gathering',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:17:07',	'2021-11-30 19:17:07'),
(68,	'5',	'3108',	'103198907',	'{"en":"Long sleeve T-shirt with buttons","ru":"Long sleeve T-shirt with buttons"}',	'{"en":"Long sleeve T-shirt with buttons","ru":"Long sleeve T-shirt with buttons"}',	NULL,	'{"en":"Long sleeve T-shirt with buttons","ru":"Long sleeve T-shirt with buttons"}',	'103198907-long-sleeve-t-shirt-with-buttons',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:17:22',	'2021-11-30 19:17:22'),
(69,	'5',	'3108',	'103080431',	'{"en":"Crop top with ties","ru":"Crop top with ties"}',	'{"en":"Crop top with ties","ru":"Crop top with ties"}',	NULL,	'{"en":"Crop top with ties","ru":"Crop top with ties"}',	'103080431-crop-top-with-ties',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:17:37',	'2021-11-30 19:17:37'),
(70,	'5',	'3108',	'103179959',	'{"en":"Gathered midi skirt","ru":"Gathered midi skirt"}',	'{"en":"Gathered midi skirt","ru":"Gathered midi skirt"}',	NULL,	'{"en":"Gathered midi skirt","ru":"Gathered midi skirt"}',	'103179959-gathered-midi-skirt',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:17:53',	'2021-11-30 19:17:53'),
(71,	'5',	'3108',	'103179867',	'{"en":"Print mini skirt","ru":"Print mini skirt"}',	'{"en":"Print mini skirt","ru":"Print mini skirt"}',	NULL,	'{"en":"Print mini skirt","ru":"Print mini skirt"}',	'103179867-print-mini-skirt',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:18:06',	'2021-11-30 19:18:06'),
(72,	'5',	'3108',	'103101596',	'{"en":"Long sleeve short printed dress","ru":"Long sleeve short printed dress"}',	'{"en":"Long sleeve short printed dress","ru":"Long sleeve short printed dress"}',	NULL,	'{"en":"Long sleeve short printed dress","ru":"Long sleeve short printed dress"}',	'103101596-long-sleeve-short-printed-dress',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:18:22',	'2021-11-30 19:18:22'),
(53,	'5',	'3108',	'102962044',	'{"en":"Puffy faux leather bomber jacket","ru":"Puffy faux leather bomber jacket"}',	'{"en":"Puffy faux leather bomber jacket","ru":"Puffy faux leather bomber jacket"}',	NULL,	'{"en":"Puffy faux leather bomber jacket","ru":"Puffy faux leather bomber jacket"}',	'102962044-puffy-faux-leather-bomber-jacket',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:13:19',	'2021-11-30 19:13:19'),
(54,	'5',	'3108',	'103036287',	'{"en":"High neck asymmetric sweater","ru":"High neck asymmetric sweater"}',	'{"en":"High neck asymmetric sweater","ru":"High neck asymmetric sweater"}',	NULL,	'{"en":"High neck asymmetric sweater","ru":"High neck asymmetric sweater"}',	'103036287-high-neck-asymmetric-sweater',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:13:34',	'2021-11-30 19:13:34'),
(55,	'5',	'3108',	'103084065',	'{"en":"Ribbed long sleeve T-shirt","ru":"Ribbed long sleeve T-shirt"}',	'{"en":"Ribbed long sleeve T-shirt","ru":"Ribbed long sleeve T-shirt"}',	NULL,	'{"en":"Ribbed long sleeve T-shirt","ru":"Ribbed long sleeve T-shirt"}',	'103084065-ribbed-long-sleeve-t-shirt',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:13:51',	'2021-11-30 19:13:51'),
(73,	'5',	'3108',	'103148273',	'{"en":"Short sleeve T-shirt with print","ru":"Short sleeve T-shirt with print"}',	'{"en":"Short sleeve T-shirt with print","ru":"Short sleeve T-shirt with print"}',	NULL,	'{"en":"Short sleeve T-shirt with print","ru":"Short sleeve T-shirt with print"}',	'103148273-short-sleeve-t-shirt-with-print',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:18:38',	'2021-11-30 19:18:38'),
(74,	'5',	'3108',	'103130035',	'{"en":"Retro print flared trousers","ru":"Retro print flared trousers"}',	'{"en":"Retro print flared trousers","ru":"Retro print flared trousers"}',	NULL,	'{"en":"Retro print flared trousers","ru":"Retro print flared trousers"}',	'103130035-retro-print-flared-trousers',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:18:53',	'2021-11-30 19:18:53'),
(75,	'5',	'3108',	'103116873',	'{"en":"Long sleeve shirt with retro print","ru":"Long sleeve shirt with retro print"}',	'{"en":"Long sleeve shirt with retro print","ru":"Long sleeve shirt with retro print"}',	NULL,	'{"en":"Long sleeve shirt with retro print","ru":"Long sleeve shirt with retro print"}',	'103116873-long-sleeve-shirt-with-retro-print',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:19:06',	'2021-11-30 19:19:06'),
(76,	'5',	'3108',	'103086089',	'{"en":"Long sleeve polo-style bodysuit","ru":"Long sleeve polo-style bodysuit"}',	'{"en":"Long sleeve polo-style bodysuit","ru":"Long sleeve polo-style bodysuit"}',	NULL,	'{"en":"Long sleeve polo-style bodysuit","ru":"Long sleeve polo-style bodysuit"}',	'103086089-long-sleeve-polo-style-bodysuit',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:19:20',	'2021-11-30 19:19:20'),
(77,	'5',	'3108',	'103100605',	'{"en":"Short sleeve T-shirt with print","ru":"Short sleeve T-shirt with print"}',	'{"en":"Short sleeve T-shirt with print","ru":"Short sleeve T-shirt with print"}',	NULL,	'{"en":"Short sleeve T-shirt with print","ru":"Short sleeve T-shirt with print"}',	'103100605-short-sleeve-t-shirt-with-print',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:19:35',	'2021-11-30 19:19:35'),
(78,	'5',	'3108',	'103100571',	'{"en":"Short sleeve T-shirt with print","ru":"Short sleeve T-shirt with print"}',	'{"en":"Short sleeve T-shirt with print","ru":"Short sleeve T-shirt with print"}',	NULL,	'{"en":"Short sleeve T-shirt with print","ru":"Short sleeve T-shirt with print"}',	'103100571-short-sleeve-t-shirt-with-print',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:19:50',	'2021-11-30 19:19:50'),
(79,	'5',	'3108',	'103084137',	'{"en":"Long sleeve satiny blouse with blonde lace neckline","ru":"Long sleeve satiny blouse with blonde lace neckline"}',	'{"en":"Long sleeve satiny blouse with blonde lace neckline","ru":"Long sleeve satiny blouse with blonde lace neckline"}',	NULL,	'{"en":"Long sleeve satiny blouse with blonde lace neckline","ru":"Long sleeve satiny blouse with blonde lace neckline"}',	'103084137-long-sleeve-satiny-blouse-with-blonde-lace-neckline',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:20:04',	'2021-11-30 19:20:04'),
(80,	'5',	'3108',	'103070723',	'{"en":"Check shirt dress with gathered waist","ru":"Check shirt dress with gathered waist"}',	'{"en":"Check shirt dress with gathered waist","ru":"Check shirt dress with gathered waist"}',	NULL,	'{"en":"Check shirt dress with gathered waist","ru":"Check shirt dress with gathered waist"}',	'103070723-check-shirt-dress-with-gathered-waist',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:20:19',	'2021-11-30 19:20:19'),
(81,	'5',	'3108',	'103064400',	'{"en":"Short sleeve T-shirt with print","ru":"Short sleeve T-shirt with print"}',	'{"en":"Short sleeve T-shirt with print","ru":"Short sleeve T-shirt with print"}',	NULL,	'{"en":"Short sleeve T-shirt with print","ru":"Short sleeve T-shirt with print"}',	'103064400-short-sleeve-t-shirt-with-print',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:20:33',	'2021-11-30 19:20:33'),
(82,	'5',	'3108',	'103057444',	'{"en":"Rolled-up sleeve T-shirt","ru":"Rolled-up sleeve T-shirt"}',	'{"en":"Rolled-up sleeve T-shirt","ru":"Rolled-up sleeve T-shirt"}',	NULL,	'{"en":"Rolled-up sleeve T-shirt","ru":"Rolled-up sleeve T-shirt"}',	'103057444-rolled-up-sleeve-t-shirt',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:20:48',	'2021-11-30 19:20:48'),
(83,	'5',	'3108',	'103062222',	'{"en":"Mom jeans with varsity patches","ru":"Mom jeans with varsity patches"}',	'{"en":"Mom jeans with varsity patches","ru":"Mom jeans with varsity patches"}',	NULL,	'{"en":"Mom jeans with varsity patches","ru":"Mom jeans with varsity patches"}',	'103062222-mom-jeans-with-varsity-patches',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:21:04',	'2021-11-30 19:21:04'),
(84,	'5',	'3108',	'103070617',	'{"en":"Long sleeve tulle shirt","ru":"Long sleeve tulle shirt"}',	'{"en":"Long sleeve tulle shirt","ru":"Long sleeve tulle shirt"}',	NULL,	'{"en":"Long sleeve tulle shirt","ru":"Long sleeve tulle shirt"}',	'103070617-long-sleeve-tulle-shirt',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:21:21',	'2021-11-30 19:21:21'),
(85,	'5',	'3108',	'103064491',	'{"en":"Short sleeve T-shirt with floral print and open back","ru":"Short sleeve T-shirt with floral print and open back"}',	'{"en":"Short sleeve T-shirt with floral print and open back","ru":"Short sleeve T-shirt with floral print and open back"}',	NULL,	'{"en":"Short sleeve T-shirt with floral print and open back","ru":"Short sleeve T-shirt with floral print and open back"}',	'103064491-short-sleeve-t-shirt-with-floral-print-and-open-back',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:21:37',	'2021-11-30 19:21:37'),
(86,	'5',	'3108',	'103062176',	'{"en":"Joggers with print","ru":"Joggers with print"}',	'{"en":"Joggers with print","ru":"Joggers with print"}',	NULL,	'{"en":"Joggers with print","ru":"Joggers with print"}',	'103062176-joggers-with-print',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:21:51',	'2021-11-30 19:21:51'),
(87,	'5',	'3108',	'103048695',	'{"en":"Flare jacquard psychedelic print trousers with cut-out detail","ru":"Flare jacquard psychedelic print trousers with cut-out detail"}',	'{"en":"Flare jacquard psychedelic print trousers with cut-out detail","ru":"Flare jacquard psychedelic print trousers with cut-out detail"}',	NULL,	'{"en":"Flare jacquard psychedelic print trousers with cut-out detail","ru":"Flare jacquard psychedelic print trousers with cut-out detail"}',	'103048695-flare-jacquard-psychedelic-print-trousers-with-cut-out-detail',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:22:07',	'2021-11-30 19:22:07'),
(88,	'5',	'3108',	'102991585',	'{"en":"Plush jacket with arm warmers","ru":"Plush jacket with arm warmers"}',	'{"en":"Plush jacket with arm warmers","ru":"Plush jacket with arm warmers"}',	NULL,	'{"en":"Plush jacket with arm warmers","ru":"Plush jacket with arm warmers"}',	'102991585-plush-jacket-with-arm-warmers',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:22:22',	'2021-11-30 19:22:22'),
(89,	'5',	'3108',	'102954216',	'{"en":"Recycled fabric backpack with pocket","ru":"Recycled fabric backpack with pocket"}',	'{"en":"Recycled fabric backpack with pocket","ru":"Recycled fabric backpack with pocket"}',	NULL,	'{"en":"Recycled fabric backpack with pocket","ru":"Recycled fabric backpack with pocket"}',	'102954216-recycled-fabric-backpack-with-pocket',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:22:35',	'2021-11-30 19:22:35'),
(90,	'5',	'3108',	'103232888',	'{"en":"Long jumpsuit with open neckline","ru":"Long jumpsuit with open neckline"}',	'{"en":"Long jumpsuit with open neckline","ru":"Long jumpsuit with open neckline"}',	NULL,	'{"en":"Long jumpsuit with open neckline","ru":"Long jumpsuit with open neckline"}',	'103232888-long-jumpsuit-with-open-neckline',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:22:47',	'2021-11-30 19:22:47'),
(91,	'5',	'3108',	'102954179',	'{"en":"Pack of 3 pairs of printed socks.","ru":"Pack of 3 pairs of printed socks."}',	'{"en":"Pack of 3 pairs of printed socks.","ru":"Pack of 3 pairs of printed socks."}',	NULL,	'{"en":"Pack of 3 pairs of printed socks.","ru":"Pack of 3 pairs of printed socks."}',	'102954179-pack-of-3-pairs-of-printed-socks',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:23:00',	'2021-11-30 19:23:00'),
(92,	'5',	'3108',	'102943571',	'{"en":"Contrast embossed trainers","ru":"Contrast embossed trainers"}',	'{"en":"Contrast embossed trainers","ru":"Contrast embossed trainers"}',	NULL,	'{"en":"Contrast embossed trainers","ru":"Contrast embossed trainers"}',	'102943571-contrast-embossed-trainers',	'{"en":"Black and silver trainers. Embossed pieces. Vinyl piece detail.","ru":"Black and silver trainers. Embossed pieces. Vinyl piece detail."}',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:23:15',	'2021-11-30 19:23:15'),
(93,	'5',	'3108',	'102951090',	'{"en":"Varsity jacket with patches","ru":"Varsity jacket with patches"}',	'{"en":"Varsity jacket with patches","ru":"Varsity jacket with patches"}',	NULL,	'{"en":"Varsity jacket with patches","ru":"Varsity jacket with patches"}',	'102951090-varsity-jacket-with-patches',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:23:36',	'2021-11-30 19:23:36'),
(94,	'5',	'3108',	'103222991',	'{"en":"Born short sleeve T-shirt","ru":"Born short sleeve T-shirt"}',	'{"en":"Born short sleeve T-shirt","ru":"Born short sleeve T-shirt"}',	NULL,	'{"en":"Born short sleeve T-shirt","ru":"Born short sleeve T-shirt"}',	'103222991-born-short-sleeve-t-shirt',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:23:50',	'2021-11-30 19:23:50'),
(95,	'5',	'3108',	'103013331',	'{"en":"Asymmetric top","ru":"Asymmetric top"}',	'{"en":"Asymmetric top","ru":"Asymmetric top"}',	NULL,	'{"en":"Asymmetric top","ru":"Asymmetric top"}',	'103013331-asymmetric-top',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:24:05',	'2021-11-30 19:24:05'),
(96,	'5',	'3108',	'103017391',	'{"en":"Button-down ribbed short dress","ru":"Button-down ribbed short dress"}',	'{"en":"Button-down ribbed short dress","ru":"Button-down ribbed short dress"}',	NULL,	'{"en":"Button-down ribbed short dress","ru":"Button-down ribbed short dress"}',	'103017391-button-down-ribbed-short-dress',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:24:23',	'2021-11-30 19:24:23'),
(97,	'5',	'3108',	'103013602',	'{"en":"Halter bodysuit","ru":"Halter bodysuit"}',	'{"en":"Halter bodysuit","ru":"Halter bodysuit"}',	NULL,	'{"en":"Halter bodysuit","ru":"Halter bodysuit"}',	'103013602-halter-bodysuit',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:24:39',	'2021-11-30 19:24:39'),
(98,	'5',	'3108',	'103080258',	'{"en":"Short sleeve T-shirt with print","ru":"Short sleeve T-shirt with print"}',	'{"en":"Short sleeve T-shirt with print","ru":"Short sleeve T-shirt with print"}',	NULL,	'{"en":"Short sleeve T-shirt with print","ru":"Short sleeve T-shirt with print"}',	'103080258-short-sleeve-t-shirt-with-print',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:24:56',	'2021-11-30 19:24:56'),
(99,	'5',	'3108',	'102969777',	'{"en":"Fitted platform ankle boots with translucent soles","ru":"Fitted platform ankle boots with translucent soles"}',	'{"en":"Fitted platform ankle boots with translucent soles","ru":"Fitted platform ankle boots with translucent soles"}',	NULL,	'{"en":"Fitted platform ankle boots with translucent soles","ru":"Fitted platform ankle boots with translucent soles"}',	'102969777-fitted-platform-ankle-boots-with-translucent-soles',	'{"en":"Beige platform ankle boots. Translucent track sole.","ru":"Beige platform ankle boots. Translucent track sole."}',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:25:14',	'2021-11-30 19:25:14'),
(100,	'5',	'3108',	'103011062',	'{"en":"Quilted bag with link chain","ru":"Quilted bag with link chain"}',	'{"en":"Quilted bag with link chain","ru":"Quilted bag with link chain"}',	NULL,	'{"en":"Quilted bag with link chain","ru":"Quilted bag with link chain"}',	'103011062-quilted-bag-with-link-chain',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:25:34',	'2021-11-30 19:25:34'),
(101,	'5',	'3108',	'103056451',	'{"en":"Long jumpsuit","ru":"Long jumpsuit"}',	'{"en":"Long jumpsuit","ru":"Long jumpsuit"}',	NULL,	'{"en":"Long jumpsuit","ru":"Long jumpsuit"}',	'103056451-long-jumpsuit',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:25:48',	'2021-11-30 19:25:48'),
(46,	'5',	'3108',	'103646000',	'{"en":"Varsity sweatshirt with polo collar","ru":"Varsity sweatshirt with polo collar"}',	'{"en":"Varsity sweatshirt with polo collar","ru":"Varsity sweatshirt with polo collar"}',	NULL,	'{"en":"Varsity sweatshirt with polo collar","ru":"Varsity sweatshirt with polo collar"}',	'103646000-varsity-sweatshirt-with-polo-collar',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:11:31',	'2021-11-30 19:11:31'),
(102,	'5',	'3108',	'103052834',	'{"en":"Faux fur bag with chequered print","ru":"Faux fur bag with chequered print"}',	'{"en":"Faux fur bag with chequered print","ru":"Faux fur bag with chequered print"}',	NULL,	'{"en":"Faux fur bag with chequered print","ru":"Faux fur bag with chequered print"}',	'103052834-faux-fur-bag-with-chequered-print',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:26:02',	'2021-11-30 19:26:02'),
(103,	'5',	'3347',	'103992701',	'{"en":"Loose fit faux leather trousers","ru":"Loose fit faux leather trousers"}',	'{"en":"Loose fit faux leather trousers","ru":"Loose fit faux leather trousers"}',	NULL,	'{"en":"Loose fit faux leather trousers","ru":"Loose fit faux leather trousers"}',	'103992701-loose-fit-faux-leather-trousers',	'[]',	NULL,	2,	43,	'1',	'0',	'0',	'2021-11-30 19:26:15',	'2021-11-30 19:26:15'),
(104,	'5',	'3347',	'103992555',	'{"en":"Joggers with snakeskin print taping","ru":"Joggers with snakeskin print taping"}',	'{"en":"Joggers with snakeskin print taping","ru":"Joggers with snakeskin print taping"}',	NULL,	'{"en":"Joggers with snakeskin print taping","ru":"Joggers with snakeskin print taping"}',	'103992555-joggers-with-snakeskin-print-taping',	'[]',	NULL,	2,	43,	'1',	'0',	'0',	'2021-11-30 19:26:29',	'2021-11-30 19:26:29'),
(105,	'5',	'3347',	'103991692',	'{"en":"Animal print coat","ru":"Animal print coat"}',	'{"en":"Animal print coat","ru":"Animal print coat"}',	NULL,	'{"en":"Animal print coat","ru":"Animal print coat"}',	'103991692-animal-print-coat',	'[]',	NULL,	2,	43,	'1',	'0',	'0',	'2021-11-30 19:26:42',	'2021-11-30 19:26:42'),
(106,	'5',	'3347',	'103987448',	'{"en":"Snakeskin print jacquard overshirt","ru":"Snakeskin print jacquard overshirt"}',	'{"en":"Snakeskin print jacquard overshirt","ru":"Snakeskin print jacquard overshirt"}',	NULL,	'{"en":"Snakeskin print jacquard overshirt","ru":"Snakeskin print jacquard overshirt"}',	'103987448-snakeskin-print-jacquard-overshirt',	'[]',	NULL,	2,	43,	'1',	'0',	'0',	'2021-11-30 19:27:12',	'2021-11-30 19:27:12'),
(52,	'5',	'3108',	'103009583',	'{"en":"Wide-fit sweater with polo collar","ru":"Wide-fit sweater with polo collar"}',	'{"en":"Wide-fit sweater with polo collar","ru":"Wide-fit sweater with polo collar"}',	NULL,	'{"en":"Wide-fit sweater with polo collar","ru":"Wide-fit sweater with polo collar"}',	'103009583-wide-fit-sweater-with-polo-collar',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:13:04',	'2021-11-30 19:13:04'),
(37,	'5',	'3108',	'103566012',	'{"en":"Ribbed turtleneck mini dress with long sleeves","ru":"Ribbed turtleneck mini dress with long sleeves"}',	'{"en":"Ribbed turtleneck mini dress with long sleeves","ru":"Ribbed turtleneck mini dress with long sleeves"}',	NULL,	'{"en":"Ribbed turtleneck mini dress with long sleeves","ru":"Ribbed turtleneck mini dress with long sleeves"}',	'103566012-ribbed-turtleneck-mini-dress-with-long-sleeves',	'[]',	NULL,	2,	16,	'1',	'0',	'0',	'2021-11-30 19:09:17',	'2021-11-30 19:09:17');

DROP TABLE IF EXISTS "size_charts";
DROP SEQUENCE IF EXISTS size_charts_id_seq;
CREATE SEQUENCE size_charts_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "mod"."size_charts" (
    "id" bigint DEFAULT nextval('size_charts_id_seq') NOT NULL,
    "category_id" bigint NOT NULL,
    "content" text NOT NULL,
    "is_active" boolean DEFAULT false NOT NULL,
    "created_at" timestamp(0),
    "updated_at" timestamp(0),
    CONSTRAINT "size_charts_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "size_charts_category_id_is_active_index" ON "mod"."size_charts" USING btree ("category_id", "is_active");


DROP TABLE IF EXISTS "states";
DROP SEQUENCE IF EXISTS states_id_seq;
CREATE SEQUENCE states_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "mod"."states" (
    "id" bigint DEFAULT nextval('states_id_seq') NOT NULL,
    "type" character varying(255) NOT NULL,
    "name" json NOT NULL,
    "send_notification" boolean DEFAULT false NOT NULL,
    "show_to_customer" boolean DEFAULT false NOT NULL,
    "created_at" timestamp(0),
    "updated_at" timestamp(0),
    CONSTRAINT "states_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
INSERT INTO "states" ("id", "type", "name", "send_notification", "show_to_customer", "created_at", "updated_at") VALUES
(1,	'info',	'{"ru":"\u041f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430 \u043a \u043e\u0444\u043e\u0440\u043c\u043b\u0435\u043d\u0438\u044e \u0437\u0430\u043a\u0430\u0437\u0430"}',	'0',	'0',	'2021-10-22 16:57:05',	'2021-10-22 16:57:05'),
(3,	'info',	'{"ru":"\u0412\u044b\u0431\u0440\u0430\u043d \u0430\u0434\u0440\u0435\u0441 \u0438 \u0441\u043f\u043e\u0441\u043e\u0431 \u0434\u043e\u0441\u0442\u0430\u0432\u043a\u0438"}',	'0',	'0',	'2021-10-22 16:57:05',	'2021-10-22 16:57:05'),
(2,	'info',	'{"ru":"\u0412\u044b\u0431\u0440\u0430\u043d \u0441\u043f\u043e\u0441\u043e\u0431 \u043e\u043f\u043b\u0430\u0442\u044b"}',	'0',	'0',	'2021-10-22 16:57:05',	'2021-10-22 16:57:05'),
(4,	'success',	'{"ru":"\u0417\u0430\u043a\u0430\u0437 \u043e\u0444\u043e\u0440\u043c\u043b\u0435\u043d"}',	'0',	'0',	'2021-10-22 16:57:05',	'2021-10-22 16:57:05'),
(5,	'info',	'{"ru":"\u0412 \u043e\u0431\u0440\u0430\u0431\u043e\u0442\u043a\u0435"}',	'1',	'1',	'2021-10-22 16:57:05',	'2021-10-22 16:57:05'),
(6,	'success',	'{"ru":"\u041e\u0431\u0440\u0430\u0431\u043e\u0442\u0430\u043d"}',	'1',	'1',	'2021-10-22 16:57:05',	'2021-10-22 16:57:05'),
(7,	'success',	'{"ru":"\u041e\u043f\u043b\u0430\u0447\u0435\u043d"}',	'1',	'1',	'2021-10-22 16:57:05',	'2021-10-22 16:57:05'),
(8,	'success',	'{"ru":"\u0414\u043e\u0441\u0442\u0430\u0432\u043b\u0435\u043d"}',	'1',	'1',	'2021-10-22 16:57:05',	'2021-10-22 16:57:05'),
(9,	'danger',	'{"ru":"\u041e\u0442\u043c\u0435\u043d\u0435\u043d"}',	'1',	'1',	'2021-10-22 16:57:05',	'2021-10-22 16:57:05'),
(10,	'danger',	'{"ru":"\u041e\u0448\u0438\u0431\u043a\u0430"}',	'0',	'0',	'2021-10-22 16:57:05',	'2021-10-22 16:57:05');

DROP TABLE IF EXISTS "welcome_pages";
DROP SEQUENCE IF EXISTS welcome_pages_id_seq;
CREATE SEQUENCE welcome_pages_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "mod"."welcome_pages" (
    "id" bigint DEFAULT nextval('welcome_pages_id_seq') NOT NULL,
    "title" json,
    "description" json,
    "is_active" boolean DEFAULT false NOT NULL,
    "created_at" timestamp(0),
    "updated_at" timestamp(0),
    CONSTRAINT "welcome_pages_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "welcome_pages_is_active_index" ON "mod"."welcome_pages" USING btree ("is_active");

<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
INSERT INTO "welcome_pages" ("id", "title", "description", "is_active", "created_at", "updated_at") VALUES
(1,	'{"ru":"\u0417\u0434\u0440\u0430\u0432\u0441\u0442\u0432\u0443\u0439\u0442\u0435","uz":"Hello","en":"Hello"}',	'{"en":null}',	'1',	'2021-08-15 14:16:40',	'2021-08-15 14:16:40');

DROP TABLE IF EXISTS "widget_items";
DROP SEQUENCE IF EXISTS widget_items_id_seq;
CREATE SEQUENCE widget_items_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "mod"."widget_items" (
    "id" bigint DEFAULT nextval('widget_items_id_seq') NOT NULL,
    "widget_id" bigint NOT NULL,
    "template" character varying(255) NOT NULL,
    "item_type" character varying(255) NOT NULL,
    "item_id" bigint NOT NULL,
    "sort_order" integer DEFAULT '0' NOT NULL,
    CONSTRAINT "widget_items_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "widget_items_item_type_item_id_index" ON "mod"."widget_items" USING btree ("item_type", "item_id");

CREATE INDEX "widget_items_widget_id_index" ON "mod"."widget_items" USING btree ("widget_id");

<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
INSERT INTO "widget_items" ("id", "widget_id", "template", "item_type", "item_id", "sort_order") VALUES
(2,	2,	'App\Widgets\Widget001',	'App\Models\Category',	1,	0),
(3,	4,	'App\Widgets\Widget001',	'App\Models\Category',	54,	0),
(4,	5,	'App\Widgets\Widget002',	'App\Models\Brand',	13,	2),
(5,	6,	'App\Widgets\Widget002',	'App\Models\Category',	24,	3),
(6,	7,	'App\Widgets\Widget001',	'App\Models\Category',	56,	9),
(7,	5,	'App\Widgets\Widget002',	'App\Models\Brand',	2,	0);

DROP TABLE IF EXISTS "widgets";
DROP SEQUENCE IF EXISTS widgets_id_seq;
CREATE SEQUENCE widgets_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "mod"."widgets" (
    "id" bigint DEFAULT nextval('widgets_id_seq') NOT NULL,
    "home_page_id" bigint,
    "template" character varying(255) NOT NULL,
    "model" character varying(255) NOT NULL,
    "title" json,
    "sort_order" smallint DEFAULT '0' NOT NULL,
    "is_active" boolean DEFAULT false NOT NULL,
    CONSTRAINT "widgets_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "widgets_home_page_id_is_active_index" ON "mod"."widgets" USING btree ("home_page_id", "is_active");

<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
<br />
<b>Warning</b>:  Undefined property: stdClass::$flags in <b>/var/www/html/adminer.php</b> on line <b>200</b><br />
INSERT INTO "widgets" ("id", "home_page_id", "template", "model", "title", "sort_order", "is_active") VALUES
(2,	3,	'App\Widgets\Widget001',	'App\Models\Category',	'{"en":null}',	0,	'0'),
(4,	2,	'App\Widgets\Widget001',	'App\Models\Category',	'{"ru":"NEW","uz":"NEW","en":"NEW"}',	0,	'0'),
(5,	2,	'App\Widgets\Widget002',	'App\Models\Catalog',	'{"ru":"WOW","uz":"WOW","en":"WOW"}',	0,	'0'),
(6,	2,	'App\Widgets\Widget001',	'App\Models\Brand',	'{"ru":"TOP","uz":"TOP","en":"TOP"}',	0,	'0'),
(7,	2,	'App\Widgets\Widget002',	'App\Models\Category',	'{"ru":"LOW","uz":"LOW","en":"LOW"}',	0,	'0');

ALTER TABLE ONLY "mod"."addresses" ADD CONSTRAINT "addresses_region_id_foreign" FOREIGN KEY (region_id) REFERENCES public.regions(id) ON DELETE SET NULL NOT DEFERRABLE;
ALTER TABLE ONLY "mod"."addresses" ADD CONSTRAINT "addresses_user_id_foreign" FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "mod"."attribute_values" ADD CONSTRAINT "attribute_values_attribute_id_foreign" FOREIGN KEY (attribute_id) REFERENCES attributes(id) ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "mod"."brands" ADD CONSTRAINT "brands_donor_id_foreign" FOREIGN KEY (donor_id) REFERENCES parser.donors(id) ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "mod"."cards" ADD CONSTRAINT "cards_payment_id_foreign" FOREIGN KEY (payment_id) REFERENCES payments(id) ON DELETE CASCADE NOT DEFERRABLE;
ALTER TABLE ONLY "mod"."cards" ADD CONSTRAINT "cards_user_id_foreign" FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "mod"."category_attribute" ADD CONSTRAINT "category_attribute_attribute_id_foreign" FOREIGN KEY (attribute_id) REFERENCES attributes(id) ON DELETE CASCADE NOT DEFERRABLE;
ALTER TABLE ONLY "mod"."category_attribute" ADD CONSTRAINT "category_attribute_category_id_foreign" FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "mod"."category_pivot" ADD CONSTRAINT "category_pivot_category_id_foreign" FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "mod"."external_images" ADD CONSTRAINT "external_images_product_id_foreign" FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE NOT DEFERRABLE;
ALTER TABLE ONLY "mod"."external_images" ADD CONSTRAINT "external_images_product_variation_id_foreign" FOREIGN KEY (product_variation_id) REFERENCES product_variations(id) ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "mod"."favorites" ADD CONSTRAINT "favorites_product_id_foreign" FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE NOT DEFERRABLE;
ALTER TABLE ONLY "mod"."favorites" ADD CONSTRAINT "favorites_user_id_foreign" FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "mod"."order_product" ADD CONSTRAINT "order_product_order_id_foreign" FOREIGN KEY (order_id) REFERENCES orders(id) ON DELETE CASCADE NOT DEFERRABLE;
ALTER TABLE ONLY "mod"."order_product" ADD CONSTRAINT "order_product_product_id_foreign" FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE NOT DEFERRABLE;
ALTER TABLE ONLY "mod"."order_product" ADD CONSTRAINT "order_product_variation_id_foreign" FOREIGN KEY (variation_id) REFERENCES product_variations(id) ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "mod"."order_state" ADD CONSTRAINT "order_state_order_id_foreign" FOREIGN KEY (order_id) REFERENCES orders(id) ON DELETE CASCADE NOT DEFERRABLE;
ALTER TABLE ONLY "mod"."order_state" ADD CONSTRAINT "order_state_state_id_foreign" FOREIGN KEY (state_id) REFERENCES states(id) ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "mod"."orders" ADD CONSTRAINT "orders_address_id_foreign" FOREIGN KEY (address_id) REFERENCES addresses(id) ON DELETE SET NULL NOT DEFERRABLE;
ALTER TABLE ONLY "mod"."orders" ADD CONSTRAINT "orders_carrier_id_foreign" FOREIGN KEY (carrier_id) REFERENCES carriers(id) ON DELETE SET NULL NOT DEFERRABLE;
ALTER TABLE ONLY "mod"."orders" ADD CONSTRAINT "orders_payment_provider_id_foreign" FOREIGN KEY (payment_provider_id) REFERENCES payments(id) ON DELETE CASCADE NOT DEFERRABLE;
ALTER TABLE ONLY "mod"."orders" ADD CONSTRAINT "orders_user_id_foreign" FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE SET NULL NOT DEFERRABLE;

ALTER TABLE ONLY "mod"."product_feature" ADD CONSTRAINT "product_feature_attribute_id_foreign" FOREIGN KEY (attribute_id) REFERENCES attributes(id) ON DELETE CASCADE NOT DEFERRABLE;
ALTER TABLE ONLY "mod"."product_feature" ADD CONSTRAINT "product_feature_product_id_foreign" FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "mod"."product_feature_value" ADD CONSTRAINT "product_feature_value_product_feature_id_foreign" FOREIGN KEY (product_feature_id) REFERENCES product_feature(id) ON DELETE CASCADE NOT DEFERRABLE;
ALTER TABLE ONLY "mod"."product_feature_value" ADD CONSTRAINT "product_feature_value_value_id_foreign" FOREIGN KEY (value_id) REFERENCES attribute_values(id) ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "mod"."product_variations" ADD CONSTRAINT "product_variations_attribute_id_foreign" FOREIGN KEY (attribute_id) REFERENCES attributes(id) ON DELETE CASCADE NOT DEFERRABLE;
ALTER TABLE ONLY "mod"."product_variations" ADD CONSTRAINT "product_variations_product_id_foreign" FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE NOT DEFERRABLE;
ALTER TABLE ONLY "mod"."product_variations" ADD CONSTRAINT "product_variations_value_id_foreign" FOREIGN KEY (value_id) REFERENCES attribute_values(id) ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "mod"."products" ADD CONSTRAINT "products_brand_id_foreign" FOREIGN KEY (brand_id) REFERENCES brands(id) ON DELETE SET NULL NOT DEFERRABLE;
ALTER TABLE ONLY "mod"."products" ADD CONSTRAINT "products_category_id_foreign" FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE SET NULL NOT DEFERRABLE;
ALTER TABLE ONLY "mod"."products" ADD CONSTRAINT "products_employee_id_foreign" FOREIGN KEY (employee_id) REFERENCES public.employees(id) ON DELETE SET NULL NOT DEFERRABLE;

ALTER TABLE ONLY "mod"."size_charts" ADD CONSTRAINT "size_charts_category_id_foreign" FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "mod"."widget_items" ADD CONSTRAINT "widget_items_widget_id_foreign" FOREIGN KEY (widget_id) REFERENCES widgets(id) ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "mod"."widgets" ADD CONSTRAINT "widgets_home_page_id_foreign" FOREIGN KEY (home_page_id) REFERENCES home_pages(id) ON DELETE SET NULL NOT DEFERRABLE;

-- 2021-12-02 13:51:01.359446+00
