ALTER TABLE tbl_metering_module_data_5_min ADD INDEX (created_ts, serial_id, module_id);
ALTER TABLE tbl_metering_module_data_15_min ADD INDEX (created_ts, serial_id, module_id);
ALTER TABLE tbl_metering_module_data_30_min ADD INDEX (created_ts, serial_id, module_id);
ALTER TABLE tbl_metering_module_data_1_hour ADD INDEX (created_ts, serial_id, module_id);
ALTER TABLE tbl_metering_module_data_1_day ADD INDEX (created_ts, serial_id, module_id);
ALTER TABLE tbl_metering_module_data_1_month ADD INDEX (created_ts, serial_id, module_id);
ALTER TABLE tbl_metering_module_data_1_year ADD INDEX (created_ts, serial_id, module_id);


