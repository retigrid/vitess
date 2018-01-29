SELECT
		FLOOR(created_ts/ (1000000000 * 60 * 5 )) * 1000000000 * 60 * 5 as divisioned_ts,
	  serial_id,
	  group_id,
    min(phase_voltage) as phase_voltage_min,
    max(phase_voltage) as phase_voltage_max,
    avg(phase_voltage) as phase_voltage_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts), ',', 1 ) AS phase_voltage_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS phase_voltage_last,

    min(phase_voltage) as phase_voltage_min,
    max(phase_voltage) as phase_voltage_max,
    avg(phase_voltage) as phase_voltage_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts), ',', 1 ) AS phase_voltage_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS phase_voltage_last,

    min(phase_voltage) as phase_voltage_min,
    max(phase_voltage) as phase_voltage_max,
    avg(phase_voltage) as phase_voltage_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts), ',', 1 ) AS phase_voltage_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS phase_voltage_last,

    min(phase_voltage) as phase_voltage_min,
    max(phase_voltage) as phase_voltage_max,
    avg(phase_voltage) as phase_voltage_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts), ',', 1 ) AS phase_voltage_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS phase_voltage_last,

    min(phase_voltage) as phase_voltage_min,
    max(phase_voltage) as phase_voltage_max,
    avg(phase_voltage) as phase_voltage_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts), ',', 1 ) AS phase_voltage_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS phase_voltage_last,

    min(phase_voltage) as phase_voltage_min,
    max(phase_voltage) as phase_voltage_max,
    avg(phase_voltage) as phase_voltage_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts), ',', 1 ) AS phase_voltage_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS phase_voltage_last,

    min(phase_voltage) as phase_voltage_min,
    max(phase_voltage) as phase_voltage_max,
    avg(phase_voltage) as phase_voltage_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts), ',', 1 ) AS phase_voltage_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS phase_voltage_last,

    min(phase_voltage) as phase_voltage_min,
    max(phase_voltage) as phase_voltage_max,
    avg(phase_voltage) as phase_voltage_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts), ',', 1 ) AS phase_voltage_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS phase_voltage_last,

    min(phase_voltage) as phase_voltage_min,
    max(phase_voltage) as phase_voltage_max,
    avg(phase_voltage) as phase_voltage_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts), ',', 1 ) AS phase_voltage_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS phase_voltage_last,

    min(phase_voltage) as phase_voltage_min,
    max(phase_voltage) as phase_voltage_max,
    avg(phase_voltage) as phase_voltage_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts), ',', 1 ) AS phase_voltage_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS phase_voltage_last,

    min(phase_voltage) as phase_voltage_min,
    max(phase_voltage) as phase_voltage_max,
    avg(phase_voltage) as phase_voltage_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts), ',', 1 ) AS phase_voltage_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS phase_voltage_last,

    min(phase_voltage) as phase_voltage_min,
    max(phase_voltage) as phase_voltage_max,
    avg(phase_voltage) as phase_voltage_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts), ',', 1 ) AS phase_voltage_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS phase_voltage_last,

    min(phase_voltage) as phase_voltage_min,
    max(phase_voltage) as phase_voltage_max,
    avg(phase_voltage) as phase_voltage_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts), ',', 1 ) AS phase_voltage_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS phase_voltage_last,

    min(phase_voltage) as phase_voltage_min,
    max(phase_voltage) as phase_voltage_max,
    avg(phase_voltage) as phase_voltage_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts), ',', 1 ) AS phase_voltage_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS phase_voltage_last,

    min(phase_voltage) as phase_voltage_min,
    max(phase_voltage) as phase_voltage_max,
    avg(phase_voltage) as phase_voltage_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts), ',', 1 ) AS phase_voltage_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS phase_voltage_last,

    min(phase_voltage) as phase_voltage_min,
    max(phase_voltage) as phase_voltage_max,
    avg(phase_voltage) as phase_voltage_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts), ',', 1 ) AS phase_voltage_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS phase_voltage_last,

    min(phase_voltage) as phase_voltage_min,
    max(phase_voltage) as phase_voltage_max,
    avg(phase_voltage) as phase_voltage_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts), ',', 1 ) AS phase_voltage_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS phase_voltage_last,

    min(phase_voltage) as phase_voltage_min,
    max(phase_voltage) as phase_voltage_max,
    avg(phase_voltage) as phase_voltage_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts), ',', 1 ) AS phase_voltage_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS phase_voltage_last,

    min(phase_voltage) as phase_voltage_min,
    max(phase_voltage) as phase_voltage_max,
    avg(phase_voltage) as phase_voltage_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts), ',', 1 ) AS phase_voltage_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS phase_voltage_last,

    min(phase_voltage) as phase_voltage_min,
    max(phase_voltage) as phase_voltage_max,
    avg(phase_voltage) as phase_voltage_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts), ',', 1 ) AS phase_voltage_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS phase_voltage_last,

    min(phase_voltage) as phase_voltage_min,
    max(phase_voltage) as phase_voltage_max,
    avg(phase_voltage) as phase_voltage_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts), ',', 1 ) AS phase_voltage_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS phase_voltage_last,

    min(phase_voltage) as phase_voltage_min,
    max(phase_voltage) as phase_voltage_max,
    avg(phase_voltage) as phase_voltage_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts), ',', 1 ) AS phase_voltage_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS phase_voltage_last,

    min(phase_voltage) as phase_voltage_min,
    max(phase_voltage) as phase_voltage_max,
    avg(phase_voltage) as phase_voltage_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts), ',', 1 ) AS phase_voltage_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS phase_voltage_last,

    min(phase_voltage) as phase_voltage_min,
    max(phase_voltage) as phase_voltage_max,
    avg(phase_voltage) as phase_voltage_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts), ',', 1 ) AS phase_voltage_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS phase_voltage_last,

    min(phase_voltage) as phase_voltage_min,
    max(phase_voltage) as phase_voltage_max,
    avg(phase_voltage) as phase_voltage_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts), ',', 1 ) AS phase_voltage_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS phase_voltage_last,

    min(phase_voltage) as phase_voltage_min,
    max(phase_voltage) as phase_voltage_max,
    avg(phase_voltage) as phase_voltage_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts), ',', 1 ) AS phase_voltage_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS phase_voltage_last,



FROM    
    tbl_metering_group_data 
WHERE
    serial_id='506583E5EE8A' AND
    created_ts >= UNIX_TIMESTAMP(DATE_SUB(now(), INTERVAL 10 MINUTE )) * 1000000000
GROUP BY
    serial_id,
		group_id,
    FLOOR(created_ts/ (1000000000 * 60 * 5 )) 

