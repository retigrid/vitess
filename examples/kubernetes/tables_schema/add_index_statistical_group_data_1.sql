ALTER TABLE tbl_metering_ac_group_data_5_min ADD INDEX (created_ts, logical_id, group_id);
ALTER TABLE tbl_metering_ac_group_data_15_min ADD INDEX (created_ts, logical_id, group_id);
ALTER TABLE tbl_metering_ac_group_data_30_min ADD INDEX (created_ts, logical_id, group_id);
ALTER TABLE tbl_metering_ac_group_data_1_hour ADD INDEX (created_ts, logical_id, group_id);
ALTER TABLE tbl_metering_ac_group_data_1_day ADD INDEX (created_ts, logical_id, group_id);
ALTER TABLE tbl_metering_ac_group_data_1_month ADD INDEX (created_ts, logical_id, group_id);
ALTER TABLE tbl_metering_ac_group_data_1_year ADD INDEX (created_ts, logical_id, group_id);

ALTER TABLE tbl_metering_dc_group_data_5_min ADD INDEX (created_ts, logical_id, group_id);
ALTER TABLE tbl_metering_dc_group_data_15_min ADD INDEX (created_ts, logical_id, group_id);
ALTER TABLE tbl_metering_dc_group_data_30_min ADD INDEX (created_ts, logical_id, group_id);
ALTER TABLE tbl_metering_dc_group_data_1_hour ADD INDEX (created_ts, logical_id, group_id);
ALTER TABLE tbl_metering_dc_group_data_1_day ADD INDEX (created_ts, logical_id, group_id);
ALTER TABLE tbl_metering_dc_group_data_1_month ADD INDEX (created_ts, logical_id, group_id);
ALTER TABLE tbl_metering_dc_group_data_1_year ADD INDEX (created_ts, logical_id, group_id);


