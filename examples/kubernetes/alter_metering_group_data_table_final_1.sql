ALTER TABLE tbl_metering_group_data DROP PRIMARY KEY, ADD PRIMARY KEY (created_ts, serial_id, id)

