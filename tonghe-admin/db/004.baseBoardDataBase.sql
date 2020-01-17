prompt PL/SQL Developer import file
prompt Created on 2019�~12��12�� by Administrator
set feedback off
set define off
prompt Dropping TH_AUTO_CONFIG...
drop table TH_AUTO_CONFIG cascade constraints;
prompt Dropping TH_BAD_TYPE...
drop table TH_BAD_TYPE cascade constraints;
prompt Dropping TH_BREAK_TIME...
drop table TH_BREAK_TIME cascade constraints;
prompt Dropping TH_ESD_CONFIG...
drop table TH_ESD_CONFIG cascade constraints;
prompt Dropping TH_EUIPMENT_CONFIG...
drop table TH_EUIPMENT_CONFIG cascade constraints;
prompt Dropping TH_HOLIDAY...
drop table TH_HOLIDAY cascade constraints;
prompt Dropping TH_MAINTENANCE_CONFIG...
drop table TH_MAINTENANCE_CONFIG cascade constraints;
prompt Dropping TH_MATEERAL_CONFIG...
drop table TH_MATEERAL_CONFIG cascade constraints;
prompt Dropping TH_ORDER_CONFIG...
drop table TH_ORDER_CONFIG cascade constraints;
prompt Dropping TH_PRODUCT_LINE...
drop table TH_PRODUCT_LINE cascade constraints;
prompt Dropping TH_PRODUCT_STANDARD_OUT...
drop table TH_PRODUCT_STANDARD_OUT cascade constraints;
prompt Dropping TH_QUALITY_CONFIG...
drop table TH_QUALITY_CONFIG cascade constraints;
prompt Dropping TH_QUALITY_YIELD...
drop table TH_QUALITY_YIELD cascade constraints;
prompt Dropping TH_RATE_CONFIG...
drop table TH_RATE_CONFIG cascade constraints;
prompt Dropping TH_RATE_RED_DATA...
drop table TH_RATE_RED_DATA cascade constraints;
prompt Dropping TH_REPAIR_STABDARD_TIME...
drop table TH_REPAIR_STABDARD_TIME cascade constraints;
prompt Dropping TH_SHIFT...
drop table TH_SHIFT cascade constraints;
prompt Dropping TH_STATION...
drop table TH_STATION cascade constraints;
prompt Dropping TH_WIP_RED_DATA...
drop table TH_WIP_RED_DATA cascade constraints;
prompt Creating TH_AUTO_CONFIG...
create table TH_AUTO_CONFIG
(
  id           NUMBER(38) not null,
  email        VARCHAR2(64) not null,
  refresh_time VARCHAR2(64) not null
)
;
comment on table TH_AUTO_CONFIG
  is '�۰ʤƬݪO�t�m';
comment on column TH_AUTO_CONFIG.id
  is '�ƾ�ID';
comment on column TH_AUTO_CONFIG.email
  is '���e�l�c(;���j)';
comment on column TH_AUTO_CONFIG.refresh_time
  is '���';
alter table TH_AUTO_CONFIG
  add primary key (ID);

prompt Creating TH_BAD_TYPE...
create table TH_BAD_TYPE
(
  id            NUMBER(38) not null,
  bad_type_id   VARCHAR2(64) not null,
  bad_type_name VARCHAR2(64) not null,
  category      VARCHAR2(64),
  created_by    VARCHAR2(32),
  created_time  DATE,
  updated_by    VARCHAR2(32),
  updated_time  DATE
)
;
comment on table TH_BAD_TYPE
  is '���}���O�H����';
comment on column TH_BAD_TYPE.id
  is '�ƾ�ID';
comment on column TH_BAD_TYPE.bad_type_id
  is '���}���OID';
comment on column TH_BAD_TYPE.bad_type_name
  is '���}���O�W��';
comment on column TH_BAD_TYPE.category
  is '���O(��{�q)';
comment on column TH_BAD_TYPE.created_by
  is '�ЫؤH';
comment on column TH_BAD_TYPE.created_time
  is '�Ыخɶ�';
comment on column TH_BAD_TYPE.updated_by
  is '��s�H';
comment on column TH_BAD_TYPE.updated_time
  is '��s�ɶ�';
alter table TH_BAD_TYPE
  add primary key (ID);

prompt Creating TH_BREAK_TIME...
create table TH_BREAK_TIME
(
  id           NUMBER(38) not null,
  start_time   DATE not null,
  end_time     DATE not null,
  line_id      VARCHAR2(64) not null,
  shift_name   VARCHAR2(64) not null,
  created_by   VARCHAR2(32),
  created_time DATE,
  updated_by   VARCHAR2(32),
  updated_time DATE
)
;
comment on table TH_BREAK_TIME
  is '�𮧮ɶ���';
comment on column TH_BREAK_TIME.id
  is '�ƾ�ID';
comment on column TH_BREAK_TIME.start_time
  is '�𮧶}�l�ɶ�';
comment on column TH_BREAK_TIME.end_time
  is '�𮧵����ɶ�';
comment on column TH_BREAK_TIME.line_id
  is '�u�O�s��';
comment on column TH_BREAK_TIME.shift_name
  is '�Z�O';
comment on column TH_BREAK_TIME.created_by
  is '�ЫؤH';
comment on column TH_BREAK_TIME.created_time
  is '�Ыخɶ�';
comment on column TH_BREAK_TIME.updated_by
  is '��s�H';
comment on column TH_BREAK_TIME.updated_time
  is '��s�ɶ�';
alter table TH_BREAK_TIME
  add primary key (ID);

prompt Creating TH_ESD_CONFIG...
create table TH_ESD_CONFIG
(
  id           NUMBER(38) not null,
  email        VARCHAR2(64) not null,
  refresh_time VARCHAR2(64) not null,
  temperature  VARCHAR2(64) not null,
  humidity     VARCHAR2(64) not null
)
;
comment on table TH_ESD_CONFIG
  is '�����ESD�ݪO�t�m';
comment on column TH_ESD_CONFIG.id
  is '�ƾ�ID';
comment on column TH_ESD_CONFIG.email
  is '���e�l�c(;���j)';
comment on column TH_ESD_CONFIG.refresh_time
  is '��s���j';
comment on column TH_ESD_CONFIG.temperature
  is '�ū�ĵ�٭�';
comment on column TH_ESD_CONFIG.humidity
  is '���ĵ�٭�';
alter table TH_ESD_CONFIG
  add primary key (ID);

prompt Creating TH_EUIPMENT_CONFIG...
create table TH_EUIPMENT_CONFIG
(
  id           NUMBER(38) not null,
  email        VARCHAR2(64) not null,
  refresh_time VARCHAR2(64) not null
)
;
comment on table TH_EUIPMENT_CONFIG
  is '�u�ǬݪO�t�m';
comment on column TH_EUIPMENT_CONFIG.id
  is '�ƾ�ID';
comment on column TH_EUIPMENT_CONFIG.email
  is '���e�l�c(;���j)';
comment on column TH_EUIPMENT_CONFIG.refresh_time
  is '��s���j';
alter table TH_EUIPMENT_CONFIG
  add primary key (ID);

prompt Creating TH_HOLIDAY...
create table TH_HOLIDAY
(
  id           NUMBER(38) not null,
  holiday_time DATE not null,
  created_by   VARCHAR2(32),
  created_time DATE,
  updated_by   VARCHAR2(32),
  updated_time DATE
)
;
comment on table TH_HOLIDAY
  is '�`�����';
comment on column TH_HOLIDAY.id
  is '�ƾ�ID';
comment on column TH_HOLIDAY.holiday_time
  is '�`����';
comment on column TH_HOLIDAY.created_by
  is '�ЫؤH';
comment on column TH_HOLIDAY.created_time
  is '�Ыخɶ�';
comment on column TH_HOLIDAY.updated_by
  is '��s�H';
comment on column TH_HOLIDAY.updated_time
  is '��s�ɶ�';
alter table TH_HOLIDAY
  add primary key (ID);

prompt Creating TH_MAINTENANCE_CONFIG...
create table TH_MAINTENANCE_CONFIG
(
  id                       NUMBER(38) not null,
  email                    VARCHAR2(64) not null,
  refresh_time             VARCHAR2(64) not null,
  standard_data            VARCHAR2(64),
  two_reflux_standard_data VARCHAR2(64),
  wip_standard_data        VARCHAR2(64)
)
;
comment on table TH_MAINTENANCE_CONFIG
  is '���׬ݪO�t�m';
comment on column TH_MAINTENANCE_CONFIG.id
  is '�ƾ�ID';
comment on column TH_MAINTENANCE_CONFIG.email
  is '���e�l�c(;���j)';
comment on column TH_MAINTENANCE_CONFIG.refresh_time
  is '��s���j';
comment on column TH_MAINTENANCE_CONFIG.standard_data
  is '���׶W�ɼзǭ�(H)';
comment on column TH_MAINTENANCE_CONFIG.two_reflux_standard_data
  is '�L���^�y�зǭ�';
comment on column TH_MAINTENANCE_CONFIG.wip_standard_data
  is '��OWIP�зǭ�';
alter table TH_MAINTENANCE_CONFIG
  add primary key (ID);

prompt Creating TH_MATEERAL_CONFIG...
create table TH_MATEERAL_CONFIG
(
  id           VARCHAR2(64) not null,
  email        VARCHAR2(64) not null,
  refresh_time VARCHAR2(64) not null,
  rate_down    VARCHAR2(64) not null,
  rate_up      VARCHAR2(64) not null
)
;
comment on table TH_MATEERAL_CONFIG
  is '�߮ƬݪO�t�m';
comment on column TH_MATEERAL_CONFIG.id
  is '�ƾ�ID';
comment on column TH_MATEERAL_CONFIG.email
  is '���e�l�c(;���j)';
comment on column TH_MATEERAL_CONFIG.refresh_time
  is '��s���j';
comment on column TH_MATEERAL_CONFIG.rate_down
  is '1000�H�U���ƶq';
comment on column TH_MATEERAL_CONFIG.rate_up
  is '1000�H�W���ʤ���';
alter table TH_MATEERAL_CONFIG
  add primary key (ID);

prompt Creating TH_ORDER_CONFIG...
create table TH_ORDER_CONFIG
(
  id              NUMBER(38) not null,
  red_result      VARCHAR2(64) not null,
  compliance_rate VARCHAR2(64) not null,
  compliance_day  VARCHAR2(64),
  email           VARCHAR2(64) not null,
  refresh_time    VARCHAR2(64) not null,
  timeout_color   VARCHAR2(64) not null
)
;
comment on table TH_ORDER_CONFIG
  is '�q��ݪO�t�m��';
comment on column TH_ORDER_CONFIG.id
  is '�ƾ�ID';
comment on column TH_ORDER_CONFIG.red_result
  is '�Ͳ��P��ĵ�٭Ȯɪ�';
comment on column TH_ORDER_CONFIG.compliance_rate
  is '��I�P���F�вv(%)';
comment on column TH_ORDER_CONFIG.compliance_day
  is '��I�P���F�P��(��)';
comment on column TH_ORDER_CONFIG.email
  is '���e�l�c(;���j)';
comment on column TH_ORDER_CONFIG.refresh_time
  is '��s���j';
comment on column TH_ORDER_CONFIG.timeout_color
  is '�W�ɮɬq���?��';
alter table TH_ORDER_CONFIG
  add primary key (ID);

prompt Creating TH_PRODUCT_LINE...
create table TH_PRODUCT_LINE
(
  id           NUMBER(38) not null,
  line_id      VARCHAR2(64) not null,
  line_name    VARCHAR2(64) not null,
  created_by   VARCHAR2(32),
  created_time DATE,
  updated_by   VARCHAR2(32),
  updated_time DATE
)
;
comment on table TH_PRODUCT_LINE
  is '���u��¦�H����';
comment on column TH_PRODUCT_LINE.id
  is '�ƾ�ID';
comment on column TH_PRODUCT_LINE.line_id
  is '���u�s��';
comment on column TH_PRODUCT_LINE.line_name
  is '���u�W��';
comment on column TH_PRODUCT_LINE.created_by
  is '�ЫؤH';
comment on column TH_PRODUCT_LINE.created_time
  is '�Ыخɶ�';
comment on column TH_PRODUCT_LINE.updated_by
  is '��s�H';
comment on column TH_PRODUCT_LINE.updated_time
  is '��s�ɶ�';
alter table TH_PRODUCT_LINE
  add primary key (ID);

prompt Creating TH_PRODUCT_STANDARD_OUT...
create table TH_PRODUCT_STANDARD_OUT
(
  id         NUMBER(38) not null,
  line_id    VARCHAR2(64) not null,
  num        VARCHAR2(64) not null,
  start_time DATE not null,
  end_time   DATE not null
)
;
comment on table TH_PRODUCT_STANDARD_OUT
  is '���u�зǲ��q��';
comment on column TH_PRODUCT_STANDARD_OUT.id
  is '�ƾ�ID';
comment on column TH_PRODUCT_STANDARD_OUT.line_id
  is '���u�s��';
comment on column TH_PRODUCT_STANDARD_OUT.num
  is '�зǲ��X�ƶq';
comment on column TH_PRODUCT_STANDARD_OUT.start_time
  is '�}�l�ɶ�';
comment on column TH_PRODUCT_STANDARD_OUT.end_time
  is '�����ɶ�';
alter table TH_PRODUCT_STANDARD_OUT
  add primary key (ID);

prompt Creating TH_QUALITY_CONFIG...
create table TH_QUALITY_CONFIG
(
  id                 NUMBER(38) not null,
  refresh_time       VARCHAR2(64) not null,
  pcba_standard_data VARCHAR2(64),
  cto_standard_data  VARCHAR2(64)
)
;
comment on table TH_QUALITY_CONFIG
  is '��q�ݪO�t�m';
comment on column TH_QUALITY_CONFIG.id
  is '�ƾ�ID';
comment on column TH_QUALITY_CONFIG.refresh_time
  is '��s���j';
comment on column TH_QUALITY_CONFIG.pcba_standard_data
  is 'PCBA���q�v�зǭ�';
comment on column TH_QUALITY_CONFIG.cto_standard_data
  is 'CTO���q�v�зǭ�';
alter table TH_QUALITY_CONFIG
  add primary key (ID);

prompt Creating TH_QUALITY_YIELD...
create table TH_QUALITY_YIELD
(
  id           NUMBER(38) not null,
  line_id      VARCHAR2(64) not null,
  station_id   VARCHAR2(64) not null,
  yield_num    VARCHAR2(64) not null,
  created_by   VARCHAR2(32),
  created_time DATE,
  updated_by   VARCHAR2(32),
  updated_time DATE
)
;
comment on table TH_QUALITY_YIELD
  is '�U?�u�}�v�Э��';
comment on column TH_QUALITY_YIELD.id
  is '�ƾ�ID';
comment on column TH_QUALITY_YIELD.line_id
  is '?�u�s��';
comment on column TH_QUALITY_YIELD.station_id
  is '���I�s��';
comment on column TH_QUALITY_YIELD.yield_num
  is '�}�v';
comment on column TH_QUALITY_YIELD.created_by
  is '�ЫؤH';
comment on column TH_QUALITY_YIELD.created_time
  is '�Ыخɶ�';
comment on column TH_QUALITY_YIELD.updated_by
  is '��s�H';
comment on column TH_QUALITY_YIELD.updated_time
  is '��s�ɶ�';
alter table TH_QUALITY_YIELD
  add primary key (ID);

prompt Creating TH_RATE_CONFIG...
create table TH_RATE_CONFIG
(
  id           NUMBER(38) not null,
  email        VARCHAR2(64) not null,
  refresh_time VARCHAR2(64) not null
)
;
comment on table TH_RATE_CONFIG
  is '�F���v�ݪO�t�m';
comment on column TH_RATE_CONFIG.id
  is '�ƾ�ID';
comment on column TH_RATE_CONFIG.email
  is '���e�l�c(;���j)';
comment on column TH_RATE_CONFIG.refresh_time
  is '��s���j';
alter table TH_RATE_CONFIG
  add primary key (ID);

prompt Creating TH_RATE_RED_DATA...
create table TH_RATE_RED_DATA
(
  id       NUMBER(38) not null,
  line_id  VARCHAR2(64) not null,
  rate_num VARCHAR2(64) not null,
  wip_num  VARCHAR2(64) not null
)
;
comment on table TH_RATE_RED_DATA
  is '�F���vĵ�٭Ȱt�m';
comment on column TH_RATE_RED_DATA.id
  is '�ƾ�ID';
comment on column TH_RATE_RED_DATA.line_id
  is '���u�s��';
comment on column TH_RATE_RED_DATA.rate_num
  is '�F���vĵ�٭�(���%)';
comment on column TH_RATE_RED_DATA.wip_num
  is 'WIPĵ�٭�';
alter table TH_RATE_RED_DATA
  add primary key (ID);

prompt Creating TH_REPAIR_STABDARD_TIME...
create table TH_REPAIR_STABDARD_TIME
(
  id        NUMBER(38) not null,
  user_id   VARCHAR2(64) not null,
  user_name VARCHAR2(64) not null,
  num       VARCHAR2(64) not null
)
;
comment on table TH_REPAIR_STABDARD_TIME
  is '���u���׼Э�u�ɪ�';
comment on column TH_REPAIR_STABDARD_TIME.id
  is '�ƾ�ID';
comment on column TH_REPAIR_STABDARD_TIME.user_id
  is '���u�s��';
comment on column TH_REPAIR_STABDARD_TIME.user_name
  is '���u�m�W';
comment on column TH_REPAIR_STABDARD_TIME.num
  is '�ƶq';
alter table TH_REPAIR_STABDARD_TIME
  add primary key (ID);

prompt Creating TH_SHIFT...
create table TH_SHIFT
(
  id           NUMBER(38) not null,
  factory_id   VARCHAR2(64) not null,
  shift_name   VARCHAR2(64) not null,
  seqno        VARCHAR2(64) not null,
  hourperiod   VARCHAR2(64) not null,
  uphratio     VARCHAR2(64) default 0.00 not null,
  fitsr_hour   VARCHAR2(64),
  last_hour    VARCHAR2(64),
  from_time    VARCHAR2(64) not null,
  to_time      VARCHAR2(64) not null,
  note         VARCHAR2(64),
  created_by   VARCHAR2(32),
  created_time DATE,
  updated_by   VARCHAR2(32),
  updated_time DATE
)
;
comment on table TH_SHIFT
  is '�Z�O�H����';
comment on column TH_SHIFT.id
  is '�ƾ�ID';
comment on column TH_SHIFT.factory_id
  is '�u�tID';
comment on column TH_SHIFT.shift_name
  is '�Z�O';
comment on column TH_SHIFT.seqno
  is '�Ǹ�';
comment on column TH_SHIFT.hourperiod
  is '�ɶ��q';
comment on column TH_SHIFT.uphratio
  is 'UPH���';
comment on column TH_SHIFT.fitsr_hour
  is '�}�lHOUR';
comment on column TH_SHIFT.last_hour
  is '����HOUR';
comment on column TH_SHIFT.from_time
  is '�}�l�ɶ�';
comment on column TH_SHIFT.to_time
  is '�����ɶ�';
comment on column TH_SHIFT.note
  is '�ƪ`';
comment on column TH_SHIFT.created_by
  is '�ЫؤH';
comment on column TH_SHIFT.created_time
  is '�Ыخɶ�';
comment on column TH_SHIFT.updated_by
  is '��s�H';
comment on column TH_SHIFT.updated_time
  is '��s�ɶ�';
alter table TH_SHIFT
  add primary key (ID);

prompt Creating TH_STATION...
create table TH_STATION
(
  id           NUMBER(38) not null,
  station_id   VARCHAR2(64) not null,
  station_name VARCHAR2(64) not null,
  created_by   VARCHAR2(32),
  created_time DATE,
  updated_by   VARCHAR2(32),
  updated_time DATE
)
;
comment on table TH_STATION
  is '���I��¦�H����';
comment on column TH_STATION.id
  is '�ƾ�ID';
comment on column TH_STATION.station_id
  is '���I�s��';
comment on column TH_STATION.station_name
  is '���I�W��';
comment on column TH_STATION.created_by
  is '�ЫؤH';
comment on column TH_STATION.created_time
  is '�Ыخɶ�';
comment on column TH_STATION.updated_by
  is '��s�H';
comment on column TH_STATION.updated_time
  is '��s�ɶ�';
alter table TH_STATION
  add primary key (ID);

prompt Creating TH_WIP_RED_DATA...
create table TH_WIP_RED_DATA
(
  id         NUMBER(38) not null,
  station_id VARCHAR2(64) not null,
  wip_num    VARCHAR2(64) not null
)
;
comment on column TH_WIP_RED_DATA.id
  is '�ƾ�ID';
comment on column TH_WIP_RED_DATA.station_id
  is '���IID';
comment on column TH_WIP_RED_DATA.wip_num
  is 'WIPĵ�٭�';
alter table TH_WIP_RED_DATA
  add primary key (ID);

prompt Disabling triggers for TH_AUTO_CONFIG...
alter table TH_AUTO_CONFIG disable all triggers;
prompt Disabling triggers for TH_BAD_TYPE...
alter table TH_BAD_TYPE disable all triggers;
prompt Disabling triggers for TH_BREAK_TIME...
alter table TH_BREAK_TIME disable all triggers;
prompt Disabling triggers for TH_ESD_CONFIG...
alter table TH_ESD_CONFIG disable all triggers;
prompt Disabling triggers for TH_EUIPMENT_CONFIG...
alter table TH_EUIPMENT_CONFIG disable all triggers;
prompt Disabling triggers for TH_HOLIDAY...
alter table TH_HOLIDAY disable all triggers;
prompt Disabling triggers for TH_MAINTENANCE_CONFIG...
alter table TH_MAINTENANCE_CONFIG disable all triggers;
prompt Disabling triggers for TH_MATEERAL_CONFIG...
alter table TH_MATEERAL_CONFIG disable all triggers;
prompt Disabling triggers for TH_ORDER_CONFIG...
alter table TH_ORDER_CONFIG disable all triggers;
prompt Disabling triggers for TH_PRODUCT_LINE...
alter table TH_PRODUCT_LINE disable all triggers;
prompt Disabling triggers for TH_PRODUCT_STANDARD_OUT...
alter table TH_PRODUCT_STANDARD_OUT disable all triggers;
prompt Disabling triggers for TH_QUALITY_CONFIG...
alter table TH_QUALITY_CONFIG disable all triggers;
prompt Disabling triggers for TH_QUALITY_YIELD...
alter table TH_QUALITY_YIELD disable all triggers;
prompt Disabling triggers for TH_RATE_CONFIG...
alter table TH_RATE_CONFIG disable all triggers;
prompt Disabling triggers for TH_RATE_RED_DATA...
alter table TH_RATE_RED_DATA disable all triggers;
prompt Disabling triggers for TH_REPAIR_STABDARD_TIME...
alter table TH_REPAIR_STABDARD_TIME disable all triggers;
prompt Disabling triggers for TH_SHIFT...
alter table TH_SHIFT disable all triggers;
prompt Disabling triggers for TH_STATION...
alter table TH_STATION disable all triggers;
prompt Disabling triggers for TH_WIP_RED_DATA...
alter table TH_WIP_RED_DATA disable all triggers;
prompt Loading TH_AUTO_CONFIG...
insert into TH_AUTO_CONFIG (id, email, refresh_time)
values (1199498129333997569, 'lanccj@163.com', '3600');
commit;
prompt 1 records loaded
prompt Loading TH_BAD_TYPE...
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (1192306533219880000, 'BL001', '�߸O', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (1192306618259390000, 'BL002', '�ާ@��]�ɭP�~��', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (1, 'I32C', 'SMT��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (2, 'P02B', 'SMT��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (3, 'P08B', 'SMT��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (4, 'P09B', 'SMT��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (5, 'P27B', 'SMT��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (6, 'P26B', 'SMT��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (7, 'P14B', 'SMT��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (8, 'P18B', 'SMT��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (9, 'P25B', 'SMT��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (10, 'P28B', 'SMT��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (11, 'P31B', 'SMT��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (12, 'T01B', 'SMT��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (13, 'T05B', 'SMT��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (14, 'T05B', 'SMT��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (15, 'T22C', 'SMT��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (16, 'P03B', 'SMT��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (17, 'P04B', 'SMT��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (18, 'P05B', 'SMT��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (19, 'P06B', 'SMT��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (20, 'P29B', 'SMT��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (21, 'P33B', 'SMT��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (22, 'T01B', 'SMT��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (23, 'T02B', 'SMT��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (24, 'T03B', 'SMT��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (25, 'T04B', 'SMT��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (26, 'T05B', 'SMT��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (27, 'T06B', 'SMT��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (28, 'T07B', 'SMT��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (29, 'T08B', 'SMT��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (30, 'T09B', 'SMT��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (31, 'T19C', 'SMT��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (32, 'T20C', 'SMT��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (33, 'T21C', 'SMT��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (34, 'T22C', 'SMT��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (35, 'W127B', 'SMT��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (36, 'P63B', '����', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (37, 'P76B', '����', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (38, 'W01B', '����', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (39, 'W02B', '����', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (40, 'W03B', '����', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (41, 'W04B', '����', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (42, 'W05B', '����', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (43, 'P11B', 'DIP��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (44, 'P13B', 'DIP��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (45, 'P16B', 'DIP��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (46, 'P20C', 'DIP��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (47, 'P29B', 'DIP��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (48, 'T11B', 'DIP��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (49, 'T17C', 'DIP��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (50, 'T20C', 'DIP��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (51, 'P29B', 'DIP��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (52, 'P12B', 'DIP��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (53, 'P35B', 'DIP��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (54, 'T17C', 'DIP��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (55, 'P15B', 'DIP��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (56, 'P16B', 'DIP��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (57, 'P17B', 'DIP��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (58, 'P18B', 'DIP��{', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (59, 'C01B', '���󤣨}', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (60, 'C02B', '���󤣨}', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (61, 'C29B', '���󤣨}', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (62, 'C03B', '���󤣨}', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (63, 'C21B', '���󤣨}', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (64, 'C23B', '���󤣨}', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (65, 'C28B', '���󤣨}', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (66, 'C26B', '���󤣨}', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (67, 'F16B', '���󤣨}', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (68, 'F17B', '���󤣨}', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (69, 'C21B', '���󤣨}', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (70, 'E51B', 'NTF', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (71, 'E11C', 'NTF', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (72, 'E12C', 'NTF', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (73, 'E13C', 'NTF', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (74, 'E14C', 'NTF', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (75, 'P99C', 'NTF', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (76, 'E21C', 'NTF', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (77, 'E22C', 'NTF', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (78, 'E23C', 'NTF', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (79, 'E24C', 'NTF', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (80, 'E48B', 'NTF', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (81, 'F06B', '�n��[��', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (82, 'E14C', '�n��[��', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (83, 'E24C', '�n��[��', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (84, 'F05B', '�n��[��', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (85, 'F06B', '�n��[��', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (86, 'S15B', '�n��[��', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (87, 'S07B', '�n��[��', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (88, 'S01B', '�n��[��', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (89, 'S02B', '�n��[��', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (90, 'S10B', '�n��[��', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (91, 'F37B', '�n��[��', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (92, 'F24B', '�n��[��', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (93, 'F38B', '�n��[��', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (94, 'F02B', '�n��[��', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (95, 'F20B', '�n��[��', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (96, 'F23B', '�n��[��', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (97, 'F24B', '�n��[��', '��O', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (98, 'F37B', '�n��[��', '��O', null, null, null, null);
commit;
prompt 100 records committed...
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (99, 'I32C', 'SMT��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (100, 'P02B', 'SMT��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (101, 'P08B', 'SMT��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (102, 'P09B', 'SMT��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (103, 'P27B', 'SMT��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (104, 'P26B', 'SMT��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (105, 'P14B', 'SMT��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (106, 'P18B', 'SMT��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (107, 'P25B', 'SMT��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (108, 'P28B', 'SMT��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (109, 'P31B', 'SMT��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (110, 'T01B', 'SMT��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (111, 'T05B', 'SMT��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (112, 'T05B', 'SMT��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (113, 'T10B', 'SMT��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (114, 'T22C', 'SMT��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (115, 'P03B', 'SMT��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (116, 'P04B', 'SMT��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (117, 'P05B', 'SMT��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (118, 'P06B', 'SMT��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (119, 'P29B', 'SMT��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (120, 'P33B', 'SMT��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (121, 'T01B', 'SMT��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (122, 'T02B', 'SMT��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (123, 'T03B', 'SMT��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (124, 'T04B', 'SMT��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (125, 'T05B', 'SMT��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (126, 'T06B', 'SMT��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (127, 'T07B', 'SMT��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (128, 'T08B', 'SMT��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (129, 'T09B', 'SMT��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (130, 'T10B', 'SMT��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (131, 'T19C', 'SMT��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (132, 'T20C', 'SMT��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (133, 'T21C', 'SMT��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (134, 'T22C', 'SMT��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (135, 'W127B', 'SMT��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (136, 'P63B', '����', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (137, 'P76B', '����', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (138, 'W01B', '����', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (139, 'W02B', '����', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (140, 'W03B', '����', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (141, 'W04B', '����', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (142, 'W05B', '����', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (143, 'P11B', 'DIP��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (144, 'P13B', 'DIP��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (145, 'P16B', 'DIP��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (146, 'P20C', 'DIP��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (147, 'P29B', 'DIP��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (148, 'T11B', 'DIP��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (149, 'T17C', 'DIP��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (150, 'T20C', 'DIP��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (151, 'P29B', 'DIP��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (152, 'P12B', 'DIP��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (153, 'P35B', 'DIP��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (154, 'T17C', 'DIP��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (155, 'P15B', 'DIP��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (156, 'P16B', 'DIP��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (157, 'P17B', 'DIP��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (158, 'P18B', 'DIP��{', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (159, 'C01B', '���󤣨}', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (160, 'C02B', '���󤣨}', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (161, 'C29B', '���󤣨}', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (162, 'C03B', '���󤣨}', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (163, 'C21B', '���󤣨}', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (164, 'C23B', '���󤣨}', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (165, 'C28B', '���󤣨}', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (166, 'C26B', '���󤣨}', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (167, 'F16B', '���󤣨}', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (168, 'F17B', '���󤣨}', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (169, 'C21B', '���󤣨}', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (170, 'E51B', 'NTF', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (171, 'E11C', 'NTF', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (172, 'E12C', 'NTF', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (173, 'E13C', 'NTF', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (174, 'E14C', 'NTF', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (175, 'P99C', 'NTF', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (176, 'E21C', 'NTF', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (177, 'E22C', 'NTF', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (178, 'E23C', 'NTF', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (179, 'E24C', 'NTF', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (180, 'E48B', 'NTF', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (181, 'F06B', '�n��[��', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (182, 'E14C', '�n��[��', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (183, 'E24C', '�n��[��', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (184, 'F05B', '�n��[��', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (185, 'F06B', '�n��[��', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (186, 'S15B', '�n��[��', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (187, 'S07B', '�n��[��', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (188, 'S01B', '�n��[��', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (189, 'S02B', '�n��[��', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (190, 'S10B', '�n��[��', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (191, 'F37B', '�n��[��', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (192, 'F24B', '�n��[��', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (193, 'F38B', '�n��[��', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (194, 'F02B', '�n��[��', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (195, 'F20B', '�n��[��', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (196, 'F23B', '�n��[��', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (197, 'F24B', '�n��[��', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (198, 'F37B', '�n��[��', '����', null, null, null, null);
commit;
prompt 200 records committed...
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (199, 'P77B', '��Ĳ���}', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (200, 'p15b', '��Ĳ���}', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (201, 'M23B', '�ոˤ��}', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (202, 'M24B', '�ոˤ��}', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (203, 'M25B', '�ոˤ��}', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (204, 'M26B', '�ոˤ��}', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (205, 'M27B', '�ոˤ��}', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (206, 'M28B', '�ոˤ��}', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (207, 'M29B', '�ոˤ��}', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (208, 'W135B', '�ոˤ��}', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (209, 'F15B', '�t�m���D', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (210, 'W131B', '�t�m���D', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (1192306755278910000, 'BL003', '���K��(�}�u)', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (1192306865069020000, 'BL004', '����(�s��/�u��)', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (1192306918630280000, 'BL005', '������u��', '����', null, null, null, null);
insert into TH_BAD_TYPE (id, bad_type_id, bad_type_name, category, created_by, created_time, updated_by, updated_time)
values (1192307001836880000, 'BL006', '�޸}�ܧ�/�޸}���ѭ�', '����', null, null, null, null);
commit;
prompt 216 records loaded
prompt Loading TH_BREAK_TIME...
insert into TH_BREAK_TIME (id, start_time, end_time, line_id, shift_name, created_by, created_time, updated_by, updated_time)
values (1191898824414800000, to_date('06-11-2019 02:02:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-11-2019 03:03:03', 'dd-mm-yyyy hh24:mi:ss'), 'SMTL8', 'TEST', null, null, null, null);
commit;
prompt 1 records loaded
prompt Loading TH_ESD_CONFIG...
insert into TH_ESD_CONFIG (id, email, refresh_time, temperature, humidity)
values (1199498968752640001, 'lanccj@163.com', '60', '40', '50');
commit;
prompt 1 records loaded
prompt Loading TH_EUIPMENT_CONFIG...
insert into TH_EUIPMENT_CONFIG (id, email, refresh_time)
values (1199498239556112386, 'lanccj@163.com', '3600');
commit;
prompt 1 records loaded
prompt Loading TH_HOLIDAY...
insert into TH_HOLIDAY (id, holiday_time, created_by, created_time, updated_by, updated_time)
values (1191886295458300000, to_date('06-11-2019', 'dd-mm-yyyy'), null, null, null, null);
commit;
prompt 1 records loaded
prompt Loading TH_MAINTENANCE_CONFIG...
insert into TH_MAINTENANCE_CONFIG (id, email, refresh_time, standard_data, two_reflux_standard_data, wip_standard_data)
values (1199498864515796993, 'lanccj@163.com', '7200', '0.35', '50', '60');
commit;
prompt 1 records loaded
prompt Loading TH_MATEERAL_CONFIG...
insert into TH_MATEERAL_CONFIG (id, email, refresh_time, rate_down, rate_up)
values ('1199505968404258817', 'lanccj@163.com', '100', '100', '30');
commit;
prompt 1 records loaded
prompt Loading TH_ORDER_CONFIG...
insert into TH_ORDER_CONFIG (id, red_result, compliance_rate, compliance_day, email, refresh_time, timeout_color)
values (1199505785461301250, '10', '60', '5', 'lanccj@163.com', '43200', '#DC143C');
commit;
prompt 1 records loaded
prompt Loading TH_PRODUCT_LINE...
insert into TH_PRODUCT_LINE (id, line_id, line_name, created_by, created_time, updated_by, updated_time)
values (1191646435631849474, 'S11L7A', 'SMTL7', null, null, null, null);
insert into TH_PRODUCT_LINE (id, line_id, line_name, created_by, created_time, updated_by, updated_time)
values (1191647375072059394, 'S11L8A', 'SMTL8', null, null, null, null);
insert into TH_PRODUCT_LINE (id, line_id, line_name, created_by, created_time, updated_by, updated_time)
values (1191647395162775553, 'B11FD1', 'PTH', null, null, null, null);
insert into TH_PRODUCT_LINE (id, line_id, line_name, created_by, created_time, updated_by, updated_time)
values (1191647420794167298, 'B1ICT', 'ICT', null, null, null, null);
insert into TH_PRODUCT_LINE (id, line_id, line_name, created_by, created_time, updated_by, updated_time)
values (1191647503707168769, 'B11FP1', '�]��1', null, null, null, null);
insert into TH_PRODUCT_LINE (id, line_id, line_name, created_by, created_time, updated_by, updated_time)
values (1191647525404303361, 'B11FP2', '�]��2', null, null, null, null);
insert into TH_PRODUCT_LINE (id, line_id, line_name, created_by, created_time, updated_by, updated_time)
values (1191647543892795393, 'B1SERVERTEST', '����', null, null, null, null);
insert into TH_PRODUCT_LINE (id, line_id, line_name, created_by, created_time, updated_by, updated_time)
values (1191647442294169601, 'FBT', 'FBT', null, null, null, null);
insert into TH_PRODUCT_LINE (id, line_id, line_name, created_by, created_time, updated_by, updated_time)
values (1191647462158393346, 'B11FA1', '�ո�1', null, null, null, null);
insert into TH_PRODUCT_LINE (id, line_id, line_name, created_by, created_time, updated_by, updated_time)
values (1191647482739843074, 'B11FA2', '�ո�2', null, null, null, null);
commit;
prompt 10 records loaded
prompt Loading TH_PRODUCT_STANDARD_OUT...
insert into TH_PRODUCT_STANDARD_OUT (id, line_id, num, start_time, end_time)
values (1202485793519771650, 'S11L7A', '11112', to_date('05-12-2019', 'dd-mm-yyyy'), to_date('06-12-2019', 'dd-mm-yyyy'));
insert into TH_PRODUCT_STANDARD_OUT (id, line_id, num, start_time, end_time)
values (1205306784440524801, 'S11L8A', '222', to_date('03-12-2019', 'dd-mm-yyyy'), to_date('23-12-2020', 'dd-mm-yyyy'));
insert into TH_PRODUCT_STANDARD_OUT (id, line_id, num, start_time, end_time)
values (1205306834176581633, 'B11FD1', '22', to_date('04-12-2019', 'dd-mm-yyyy'), to_date('14-02-2020', 'dd-mm-yyyy'));
insert into TH_PRODUCT_STANDARD_OUT (id, line_id, num, start_time, end_time)
values (1205306881224089601, 'B1ICT', '222', to_date('03-12-2019', 'dd-mm-yyyy'), to_date('21-02-2020', 'dd-mm-yyyy'));
insert into TH_PRODUCT_STANDARD_OUT (id, line_id, num, start_time, end_time)
values (1205306980859781122, 'B11FP1', '32', to_date('02-12-2019', 'dd-mm-yyyy'), to_date('16-12-2021', 'dd-mm-yyyy'));
insert into TH_PRODUCT_STANDARD_OUT (id, line_id, num, start_time, end_time)
values (1205307031707328514, 'B11FP2', '32', to_date('01-12-2019', 'dd-mm-yyyy'), to_date('31-12-2021', 'dd-mm-yyyy'));
insert into TH_PRODUCT_STANDARD_OUT (id, line_id, num, start_time, end_time)
values (1205307076687044610, 'B1SERVERTEST', '32', to_date('01-12-2019', 'dd-mm-yyyy'), to_date('31-12-2021', 'dd-mm-yyyy'));
insert into TH_PRODUCT_STANDARD_OUT (id, line_id, num, start_time, end_time)
values (1205307121658372097, 'FBT', '33', to_date('01-12-2019', 'dd-mm-yyyy'), to_date('31-12-2021', 'dd-mm-yyyy'));
insert into TH_PRODUCT_STANDARD_OUT (id, line_id, num, start_time, end_time)
values (1205307165572734977, 'B11FA1', '34', to_date('01-12-2019', 'dd-mm-yyyy'), to_date('31-12-2021', 'dd-mm-yyyy'));
insert into TH_PRODUCT_STANDARD_OUT (id, line_id, num, start_time, end_time)
values (1205307211177402370, 'B11FA2', '45', to_date('01-12-2019', 'dd-mm-yyyy'), to_date('31-12-2021', 'dd-mm-yyyy'));
commit;
prompt 10 records loaded
prompt Loading TH_QUALITY_CONFIG...
insert into TH_QUALITY_CONFIG (id, refresh_time, pcba_standard_data, cto_standard_data)
values (1199499493426515969, '7200', '60', '87');
commit;
prompt 1 records loaded
prompt Loading TH_QUALITY_YIELD...
insert into TH_QUALITY_YIELD (id, line_id, station_id, yield_num, created_by, created_time, updated_by, updated_time)
values (1192251363714900000, 'S11L7A', 'SMT', '60', null, to_date('11-12-2019 01:59:00', 'dd-mm-yyyy hh24:mi:ss'), null, to_date('11-12-2019 01:59:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into TH_QUALITY_YIELD (id, line_id, station_id, yield_num, created_by, created_time, updated_by, updated_time)
values (1192251405800550000, 'S11L7A', '�i�p�k', '80', null, to_date('11-12-2019 01:59:00', 'dd-mm-yyyy hh24:mi:ss'), null, to_date('11-12-2019 01:59:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into TH_QUALITY_YIELD (id, line_id, station_id, yield_num, created_by, created_time, updated_by, updated_time)
values (1192251454618050000, 'S11L7A', 'ICT', '89', null, to_date('11-12-2019 01:59:00', 'dd-mm-yyyy hh24:mi:ss'), null, to_date('11-12-2019 01:59:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into TH_QUALITY_YIELD (id, line_id, station_id, yield_num, created_by, created_time, updated_by, updated_time)
values (1192251502219210000, 'S11L7A', 'FBT', '98', null, to_date('11-12-2019 01:59:00', 'dd-mm-yyyy hh24:mi:ss'), null, to_date('11-12-2019 01:59:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into TH_QUALITY_YIELD (id, line_id, station_id, yield_num, created_by, created_time, updated_by, updated_time)
values (1192251537782710000, 'S11L7A', 'FT', '87', null, to_date('11-12-2019 01:59:00', 'dd-mm-yyyy hh24:mi:ss'), null, to_date('11-12-2019 01:59:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into TH_QUALITY_YIELD (id, line_id, station_id, yield_num, created_by, created_time, updated_by, updated_time)
values (1192251577993510000, 'S11L7A', 'ST', '68', null, to_date('11-12-2019 01:59:00', 'dd-mm-yyyy hh24:mi:ss'), null, to_date('11-12-2019 01:59:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into TH_QUALITY_YIELD (id, line_id, station_id, yield_num, created_by, created_time, updated_by, updated_time)
values (1192251608620310000, 'SMTL7', 'OBA', '47', null, to_date('11-12-2019 01:59:00', 'dd-mm-yyyy hh24:mi:ss'), null, to_date('11-12-2019 01:59:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into TH_QUALITY_YIELD (id, line_id, station_id, yield_num, created_by, created_time, updated_by, updated_time)
values (1, 'SMTL8', 'IQC', '56', null, to_date('11-12-2019 01:59:00', 'dd-mm-yyyy hh24:mi:ss'), null, to_date('11-12-2019 01:59:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into TH_QUALITY_YIELD (id, line_id, station_id, yield_num, created_by, created_time, updated_by, updated_time)
values (1192250984113610000, 'SMTL7', 'IQC', '60', null, to_date('11-12-2019 01:59:00', 'dd-mm-yyyy hh24:mi:ss'), null, to_date('11-12-2019 01:59:00', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 9 records loaded
prompt Loading TH_RATE_CONFIG...
insert into TH_RATE_CONFIG (id, email, refresh_time)
values (1199505877132009474, 'lanccj@163.com', '7200');
commit;
prompt 1 records loaded
prompt Loading TH_RATE_RED_DATA...
insert into TH_RATE_RED_DATA (id, line_id, rate_num, wip_num)
values (1, 'S11L7A', '80', '1002');
insert into TH_RATE_RED_DATA (id, line_id, rate_num, wip_num)
values (2, 'SMTL8', '90', '222');
insert into TH_RATE_RED_DATA (id, line_id, rate_num, wip_num)
values (3, 'PTH', '54', '33');
insert into TH_RATE_RED_DATA (id, line_id, rate_num, wip_num)
values (4, 'ICT', '45', '22');
insert into TH_RATE_RED_DATA (id, line_id, rate_num, wip_num)
values (5, '�]��1', '44', '33');
insert into TH_RATE_RED_DATA (id, line_id, rate_num, wip_num)
values (6, '�]��2', '54', '442');
insert into TH_RATE_RED_DATA (id, line_id, rate_num, wip_num)
values (7, '����', '76', '32');
insert into TH_RATE_RED_DATA (id, line_id, rate_num, wip_num)
values (8, 'FBT', '65', '23');
insert into TH_RATE_RED_DATA (id, line_id, rate_num, wip_num)
values (9, '�ո�1', '34', '212');
insert into TH_RATE_RED_DATA (id, line_id, rate_num, wip_num)
values (10, '�ո�2', '45', '132');
commit;
prompt 10 records loaded
prompt Loading TH_REPAIR_STABDARD_TIME...
insert into TH_REPAIR_STABDARD_TIME (id, user_id, user_name, num)
values (1199248459428950018, '1', '2', '1');
commit;
prompt 1 records loaded
prompt Loading TH_SHIFT...
insert into TH_SHIFT (id, factory_id, shift_name, seqno, hourperiod, uphratio, fitsr_hour, last_hour, from_time, to_time, note, created_by, created_time, updated_by, updated_time)
values (1202845349982695426, 'AHEZ      ', 'SHIFT 1', '10', '08:00-10:00', '0.000', '08:00:00', '10:00:00', '08:00:00 ', ' 10:00:00', 'MICHAEL', null, null, null, null);
commit;
prompt 1 records loaded
prompt Loading TH_STATION...
insert into TH_STATION (id, station_id, station_name, created_by, created_time, updated_by, updated_time)
values (1191648839462970000, 'IQC', 'IQC', 'AAATKaAAHAAAAF/AAA', null, null, null);
insert into TH_STATION (id, station_id, station_name, created_by, created_time, updated_by, updated_time)
values (1191648858026960000, 'SMT', 'SMT', 'AAATKaAAHAAAAF/AAB', null, null, null);
insert into TH_STATION (id, station_id, station_name, created_by, created_time, updated_by, updated_time)
values (1191648899592510000, '�i�p�k', '�i�p�k', 'AAATKaAAHAAAAF/AAC', null, null, null);
insert into TH_STATION (id, station_id, station_name, created_by, created_time, updated_by, updated_time)
values (1191648920794720000, 'ICT', 'ICT', 'AAATKaAAHAAAAF/AAD', null, null, null);
insert into TH_STATION (id, station_id, station_name, created_by, created_time, updated_by, updated_time)
values (1191648938205270000, 'FBT', 'FBT', 'AAATKaAAHAAAAF/AAE', null, null, null);
insert into TH_STATION (id, station_id, station_name, created_by, created_time, updated_by, updated_time)
values (1191648954806330000, 'FT', 'FT', 'AAATKaAAHAAAAF/AAF', null, null, null);
insert into TH_STATION (id, station_id, station_name, created_by, created_time, updated_by, updated_time)
values (1191648970446890000, 'ST', 'ST', 'AAATKaAAHAAAAF/AAG', null, null, null);
insert into TH_STATION (id, station_id, station_name, created_by, created_time, updated_by, updated_time)
values (1191648985332470000, 'OBA', 'OBA', 'AAATKaAAHAAAAF/AAH', null, null, null);
insert into TH_STATION (id, station_id, station_name, created_by, created_time, updated_by, updated_time)
values (1205299966356168706, 'PTR', 'PTR', null, null, null, null);
insert into TH_STATION (id, station_id, station_name, created_by, created_time, updated_by, updated_time)
values (1205299995431084034, '�˰t', '�˰t', null, null, null, null);
insert into TH_STATION (id, station_id, station_name, created_by, created_time, updated_by, updated_time)
values (1205300014636802049, 'FI', 'FI', null, null, null, null);
insert into TH_STATION (id, station_id, station_name, created_by, created_time, updated_by, updated_time)
values (1205300048061210625, '�ݥ]��', '�ݥ]��', null, null, null, null);
insert into TH_STATION (id, station_id, station_name, created_by, created_time, updated_by, updated_time)
values (1205300062787411970, '�ݴ���', '�ݴ���', null, null, null, null);
insert into TH_STATION (id, station_id, station_name, created_by, created_time, updated_by, updated_time)
values (1205300078885150722, '�ݲո�', '�ݲո�', null, null, null, null);
insert into TH_STATION (id, station_id, station_name, created_by, created_time, updated_by, updated_time)
values (1205300097835016194, '�ݤJ�w', '�ݤJ�w', null, null, null, null);
insert into TH_STATION (id, station_id, station_name, created_by, created_time, updated_by, updated_time)
values (1205300179154182146, '����', '����', null, null, null, null);
insert into TH_STATION (id, station_id, station_name, created_by, created_time, updated_by, updated_time)
values (1205300194761187329, '�˰t', '�˰t', null, null, null, null);
insert into TH_STATION (id, station_id, station_name, created_by, created_time, updated_by, updated_time)
values (1205300250331521026, 'S11L8A', 'SMTL8', null, null, null, null);
insert into TH_STATION (id, station_id, station_name, created_by, created_time, updated_by, updated_time)
values (1205300291318259713, 'S11L7A', 'SMTL7', null, null, null, null);
commit;
prompt 19 records loaded
prompt Loading TH_WIP_RED_DATA...
insert into TH_WIP_RED_DATA (id, station_id, wip_num)
values (1, 'IQC', '1887');
insert into TH_WIP_RED_DATA (id, station_id, wip_num)
values (2, 'SMT', '2323');
insert into TH_WIP_RED_DATA (id, station_id, wip_num)
values (3, '�i�p�k', '22');
insert into TH_WIP_RED_DATA (id, station_id, wip_num)
values (4, 'ICT', '2');
insert into TH_WIP_RED_DATA (id, station_id, wip_num)
values (5, 'FBT', '323');
insert into TH_WIP_RED_DATA (id, station_id, wip_num)
values (6, 'FT', '322');
insert into TH_WIP_RED_DATA (id, station_id, wip_num)
values (7, 'ST', '23');
insert into TH_WIP_RED_DATA (id, station_id, wip_num)
values (8, 'OBA', '23');
insert into TH_WIP_RED_DATA (id, station_id, wip_num)
values (9, '�i�p�k', '23');
insert into TH_WIP_RED_DATA (id, station_id, wip_num)
values (10, 'OBA', '333');
insert into TH_WIP_RED_DATA (id, station_id, wip_num)
values (1205305982745452546, '�˰t', '322');
insert into TH_WIP_RED_DATA (id, station_id, wip_num)
values (1205306025544130562, 'PTR', '433');
insert into TH_WIP_RED_DATA (id, station_id, wip_num)
values (1205306054900064258, '����', '322');
insert into TH_WIP_RED_DATA (id, station_id, wip_num)
values (1205306096910213122, '�ݤJ�w', '20');
insert into TH_WIP_RED_DATA (id, station_id, wip_num)
values (1205306134617006081, '�ݥ]��', '32');
insert into TH_WIP_RED_DATA (id, station_id, wip_num)
values (1205306163993911297, 'S11L7A', '21');
insert into TH_WIP_RED_DATA (id, station_id, wip_num)
values (1205306201721675778, '�ݲո�', '30');
insert into TH_WIP_RED_DATA (id, station_id, wip_num)
values (1205306285641310209, 'S11L8A', '22');
insert into TH_WIP_RED_DATA (id, station_id, wip_num)
values (1205306310807134209, '�ݴ���', '3');
insert into TH_WIP_RED_DATA (id, station_id, wip_num)
values (1205306332957253634, 'FI', '32');
commit;
prompt 20 records loaded
prompt Enabling triggers for TH_AUTO_CONFIG...
alter table TH_AUTO_CONFIG enable all triggers;
prompt Enabling triggers for TH_BAD_TYPE...
alter table TH_BAD_TYPE enable all triggers;
prompt Enabling triggers for TH_BREAK_TIME...
alter table TH_BREAK_TIME enable all triggers;
prompt Enabling triggers for TH_ESD_CONFIG...
alter table TH_ESD_CONFIG enable all triggers;
prompt Enabling triggers for TH_EUIPMENT_CONFIG...
alter table TH_EUIPMENT_CONFIG enable all triggers;
prompt Enabling triggers for TH_HOLIDAY...
alter table TH_HOLIDAY enable all triggers;
prompt Enabling triggers for TH_MAINTENANCE_CONFIG...
alter table TH_MAINTENANCE_CONFIG enable all triggers;
prompt Enabling triggers for TH_MATEERAL_CONFIG...
alter table TH_MATEERAL_CONFIG enable all triggers;
prompt Enabling triggers for TH_ORDER_CONFIG...
alter table TH_ORDER_CONFIG enable all triggers;
prompt Enabling triggers for TH_PRODUCT_LINE...
alter table TH_PRODUCT_LINE enable all triggers;
prompt Enabling triggers for TH_PRODUCT_STANDARD_OUT...
alter table TH_PRODUCT_STANDARD_OUT enable all triggers;
prompt Enabling triggers for TH_QUALITY_CONFIG...
alter table TH_QUALITY_CONFIG enable all triggers;
prompt Enabling triggers for TH_QUALITY_YIELD...
alter table TH_QUALITY_YIELD enable all triggers;
prompt Enabling triggers for TH_RATE_CONFIG...
alter table TH_RATE_CONFIG enable all triggers;
prompt Enabling triggers for TH_RATE_RED_DATA...
alter table TH_RATE_RED_DATA enable all triggers;
prompt Enabling triggers for TH_REPAIR_STABDARD_TIME...
alter table TH_REPAIR_STABDARD_TIME enable all triggers;
prompt Enabling triggers for TH_SHIFT...
alter table TH_SHIFT enable all triggers;
prompt Enabling triggers for TH_STATION...
alter table TH_STATION enable all triggers;
prompt Enabling triggers for TH_WIP_RED_DATA...
alter table TH_WIP_RED_DATA enable all triggers;
set feedback on
set define on
prompt Done.
