ALTER TABLE tbl_metering_group_data PARTITION BY RANGE (month(created_date)) (
	PARTITION p1 VALUES LESS THAN (2),
	PARTITION p2 VALUES LESS THAN (3),
	PARTITION p3 VALUES LESS THAN (4),
	PARTITION p4 VALUES LESS THAN (5),
	PARTITION p5 VALUES LESS THAN (6),
	PARTITION p6 VALUES LESS THAN (7),
	PARTITION p7 VALUES LESS THAN (8),
	PARTITION p8 VALUES LESS THAN (9),
	PARTITION p9 VALUES LESS THAN (10),
	PARTITION p10 VALUES LESS THAN (11),
	PARTITION p11 VALUES LESS THAN (12),
	PARTITION p12 VALUES LESS THAN (13) )

