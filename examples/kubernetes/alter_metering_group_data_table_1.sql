ALTER TABLE tbl_metering_group_data DROP PRIMARY KEY, ADD PRIMARY KEY (serial_id, created_ts, group_id)

