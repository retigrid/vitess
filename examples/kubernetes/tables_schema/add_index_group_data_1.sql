ALTER TABLE tbl_metering_ac_group_data ADD INDEX index_1(created_ts, logical_id, group_id);
ALTER TABLE tbl_metering_dc_group_data ADD INDEX index_1(created_ts, logical_id, group_id);
