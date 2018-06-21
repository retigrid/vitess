ALTER TABLE tbl_metering_dc_module_data PARTITION BY RANGE (created_ts) (
PARTITION `20180516` VALUES LESS THAN ((TO_DAYS('2018-05-17 00:00:00') - TO_DAYS('1970-01-01 00:00:00'))*60*60*24*1000000000),
PARTITION `20180517` VALUES LESS THAN ((TO_DAYS('2018-05-18 00:00:00') - TO_DAYS('1970-01-01 00:00:00'))*60*60*24*1000000000),
PARTITION `20180518` VALUES LESS THAN ((TO_DAYS('2018-05-19 00:00:00') - TO_DAYS('1970-01-01 00:00:00'))*60*60*24*1000000000),
PARTITION `20180519` VALUES LESS THAN ((TO_DAYS('2018-05-20 00:00:00') - TO_DAYS('1970-01-01 00:00:00'))*60*60*24*1000000000),
PARTITION `20180520` VALUES LESS THAN ((TO_DAYS('2018-05-21 00:00:00') - TO_DAYS('1970-01-01 00:00:00'))*60*60*24*1000000000),
PARTITION `20180521` VALUES LESS THAN ((TO_DAYS('2018-05-22 00:00:00') - TO_DAYS('1970-01-01 00:00:00'))*60*60*24*1000000000),
PARTITION `20180522` VALUES LESS THAN ((TO_DAYS('2018-05-23 00:00:00') - TO_DAYS('1970-01-01 00:00:00'))*60*60*24*1000000000),
PARTITION `20180523` VALUES LESS THAN ((TO_DAYS('2018-05-24 00:00:00') - TO_DAYS('1970-01-01 00:00:00'))*60*60*24*1000000000),
PARTITION `20180524` VALUES LESS THAN ((TO_DAYS('2018-05-25 00:00:00') - TO_DAYS('1970-01-01 00:00:00'))*60*60*24*1000000000),
PARTITION `20180525` VALUES LESS THAN ((TO_DAYS('2018-05-26 00:00:00') - TO_DAYS('1970-01-01 00:00:00'))*60*60*24*1000000000),
PARTITION `20180526` VALUES LESS THAN ((TO_DAYS('2018-05-27 00:00:00') - TO_DAYS('1970-01-01 00:00:00'))*60*60*24*1000000000),
PARTITION `20180527` VALUES LESS THAN ((TO_DAYS('2018-05-28 00:00:00') - TO_DAYS('1970-01-01 00:00:00'))*60*60*24*1000000000),
PARTITION `20180528` VALUES LESS THAN ((TO_DAYS('2018-05-29 00:00:00') - TO_DAYS('1970-01-01 00:00:00'))*60*60*24*1000000000),
PARTITION `20180529` VALUES LESS THAN ((TO_DAYS('2018-05-30 00:00:00') - TO_DAYS('1970-01-01 00:00:00'))*60*60*24*1000000000),
PARTITION `20180530` VALUES LESS THAN ((TO_DAYS('2018-05-31 00:00:00') - TO_DAYS('1970-01-01 00:00:00'))*60*60*24*1000000000),
PARTITION `20180531` VALUES LESS THAN ((TO_DAYS('2018-06-01 00:00:00') - TO_DAYS('1970-01-01 00:00:00'))*60*60*24*1000000000),
PARTITION `20180601` VALUES LESS THAN ((TO_DAYS('2018-06-02 00:00:00') - TO_DAYS('1970-01-01 00:00:00'))*60*60*24*1000000000),
PARTITION `20180602` VALUES LESS THAN ((TO_DAYS('2018-06-03 00:00:00') - TO_DAYS('1970-01-01 00:00:00'))*60*60*24*1000000000),
PARTITION `20180603` VALUES LESS THAN ((TO_DAYS('2018-06-04 00:00:00') - TO_DAYS('1970-01-01 00:00:00'))*60*60*24*1000000000),
PARTITION `20180604` VALUES LESS THAN ((TO_DAYS('2018-06-05 00:00:00') - TO_DAYS('1970-01-01 00:00:00'))*60*60*24*1000000000),
PARTITION `20180605` VALUES LESS THAN ((TO_DAYS('2018-06-06 00:00:00') - TO_DAYS('1970-01-01 00:00:00'))*60*60*24*1000000000),
PARTITION `20180606` VALUES LESS THAN ((TO_DAYS('2018-06-07 00:00:00') - TO_DAYS('1970-01-01 00:00:00'))*60*60*24*1000000000),
PARTITION `20180607` VALUES LESS THAN ((TO_DAYS('2018-06-08 00:00:00') - TO_DAYS('1970-01-01 00:00:00'))*60*60*24*1000000000),
PARTITION `20180608` VALUES LESS THAN ((TO_DAYS('2018-06-09 00:00:00') - TO_DAYS('1970-01-01 00:00:00'))*60*60*24*1000000000),
PARTITION `20180609` VALUES LESS THAN ((TO_DAYS('2018-06-10 00:00:00') - TO_DAYS('1970-01-01 00:00:00'))*60*60*24*1000000000),
PARTITION `20180610` VALUES LESS THAN ((TO_DAYS('2018-06-11 00:00:00') - TO_DAYS('1970-01-01 00:00:00'))*60*60*24*1000000000),
PARTITION `20180611` VALUES LESS THAN ((TO_DAYS('2018-06-12 00:00:00') - TO_DAYS('1970-01-01 00:00:00'))*60*60*24*1000000000),
PARTITION `20180612` VALUES LESS THAN ((TO_DAYS('2018-06-13 00:00:00') - TO_DAYS('1970-01-01 00:00:00'))*60*60*24*1000000000),
PARTITION `20180613` VALUES LESS THAN ((TO_DAYS('2018-06-14 00:00:00') - TO_DAYS('1970-01-01 00:00:00'))*60*60*24*1000000000),
PARTITION `20180614` VALUES LESS THAN ((TO_DAYS('2018-06-15 00:00:00') - TO_DAYS('1970-01-01 00:00:00'))*60*60*24*1000000000),
PARTITION `20180615` VALUES LESS THAN ((TO_DAYS('2018-06-16 00:00:00') - TO_DAYS('1970-01-01 00:00:00'))*60*60*24*1000000000),
PARTITION `20180616` VALUES LESS THAN MAXVALUE );
