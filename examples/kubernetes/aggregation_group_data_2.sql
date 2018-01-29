SELECT
    serial_id,
    created_ts,
    active_power
FROM    
    tbl_metering_group_data
WHERE
    serial_id='506583E5EE8A' AND
    created_ts >= UNIX_TIMESTAMP(DATE_SUB(now(), INTERVAL 10 MINUTE )) * 1000000000

