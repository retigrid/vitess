ALTER TABLE tbl_metering_ac_module_data_5_min ADD INDEX index_1(created_ts, logical_id, module_id);
ALTER TABLE tbl_metering_ac_module_data_15_min ADD INDEX index_1(created_ts, logical_id, module_id);
ALTER TABLE tbl_metering_ac_module_data_30_min ADD INDEX index_1(created_ts, logical_id, module_id);
ALTER TABLE tbl_metering_ac_module_data_1_hour ADD INDEX index_1(created_ts, logical_id, module_id);
ALTER TABLE tbl_metering_ac_module_data_1_day ADD INDEX index_1(created_ts, logical_id, module_id);
ALTER TABLE tbl_metering_ac_module_data_1_month ADD INDEX index_1(created_ts, logical_id, module_id);
ALTER TABLE tbl_metering_ac_module_data_1_year ADD INDEX index_1(created_ts, logical_id, module_id);

ALTER TABLE tbl_metering_dc_module_data_5_min ADD INDEX index_1(created_ts, logical_id, module_id);
ALTER TABLE tbl_metering_dc_module_data_15_min ADD INDEX index_1(created_ts, logical_id, module_id);
ALTER TABLE tbl_metering_dc_module_data_30_min ADD INDEX index_1(created_ts, logical_id, module_id);
ALTER TABLE tbl_metering_dc_module_data_1_hour ADD INDEX index_1(created_ts, logical_id, module_id);
ALTER TABLE tbl_metering_dc_module_data_1_day ADD INDEX index_1(created_ts, logical_id, module_id);
ALTER TABLE tbl_metering_dc_module_data_1_month ADD INDEX index_1(created_ts, logical_id, module_id);
ALTER TABLE tbl_metering_dc_module_data_1_year ADD INDEX index_1(created_ts, logical_id, module_id);


