SET SESSION group_concat_max_len = 4096;
INSERT INTO tbl_metering_group_data_5_min
SELECT
	FLOOR(created_ts/ (1000000000 * 60 * 5 )) * 1000000000 * 60 * 5,
  NOW(),
	serial_id,
	group_id,
    min(phase_voltage) as phase_voltage_min,
    max(phase_voltage) as phase_voltage_max,
    avg(phase_voltage) as phase_voltage_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts), ',', 1 ) AS phase_voltage_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_voltage AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS phase_voltage_last,

    min(line_voltage) as line_voltage_min,
    max(line_voltage) as line_voltage_max,
    avg(line_voltage) as line_voltage_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(line_voltage AS CHAR) ORDER BY created_ts), ',', 1 ) AS line_voltage_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(line_voltage AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS line_voltage_last,

    min(voltage_crest_factor) as voltage_crest_factor_min,
    max(voltage_crest_factor) as voltage_crest_factor_max,
    avg(voltage_crest_factor) as voltage_crest_factor_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(voltage_crest_factor AS CHAR) ORDER BY created_ts), ',', 1 ) AS voltage_crest_factor_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(voltage_crest_factor AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS voltage_crest_factor_last,

    min(phase_current) as phase_current_min,
    max(phase_current) as phase_current_max,
    avg(phase_current) as phase_current_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_current AS CHAR) ORDER BY created_ts), ',', 1 ) AS phase_current_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(phase_current AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS phase_current_last,

    min(current_crest_factor) as current_crest_factor_min,
    max(current_crest_factor) as current_crest_factor_max,
    avg(current_crest_factor) as current_crest_factor_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(current_crest_factor AS CHAR) ORDER BY created_ts), ',', 1 ) AS current_crest_factor_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(current_crest_factor AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS current_crest_factor_last,

    min(active_power) as active_power_min,
    max(active_power) as active_power_max,
    avg(active_power) as active_power_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(active_power AS CHAR) ORDER BY created_ts), ',', 1 ) AS active_power_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(active_power AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS active_power_last,

    min(reactive_power) as reactive_power_min,
    max(reactive_power) as reactive_power_max,
    avg(reactive_power) as reactive_power_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(reactive_power AS CHAR) ORDER BY created_ts), ',', 1 ) AS reactive_power_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(reactive_power AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS reactive_power_last,

    min(power_factor) as power_factor_min,
    max(power_factor) as power_factor_max,
    avg(power_factor) as power_factor_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(power_factor AS CHAR) ORDER BY created_ts), ',', 1 ) AS power_factor_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(power_factor AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS frequency_last,

    min(frequency) as frequency_min,
    max(frequency) as frequency_max,
    avg(frequency) as frequency_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(frequency AS CHAR) ORDER BY created_ts), ',', 1 ) AS frequency_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(frequency AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS frequency_last,

    min(thd_phase_voltage) as thd_phase_voltage_min,
    max(thd_phase_voltage) as thd_phase_voltage_max,
    avg(thd_phase_voltage) as thd_phase_voltage_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(thd_phase_voltage AS CHAR) ORDER BY created_ts), ',', 1 ) AS thd_phase_voltage_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(thd_phase_voltage AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS thd_phase_voltage_last,

    min(thd_phase_current) as thd_phase_current_min,
    max(thd_phase_current) as thd_phase_current_max,
    avg(thd_phase_current) as thd_phase_current_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(thd_phase_current AS CHAR) ORDER BY created_ts), ',', 1 ) AS thd_phase_current_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(thd_phase_current AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS thd_phase_current_last,

    min(temperature) as temperature_min,
    max(temperature) as temperature_max,
    avg(temperature) as temperature_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(temperature AS CHAR) ORDER BY created_ts), ',', 1 ) AS temperature_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(temperature AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS temperature_last,

    min(voltage_harmonics) as voltage_harmonics_min,
    max(voltage_harmonics) as voltage_harmonics_max,
    avg(voltage_harmonics) as voltage_harmonics_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(voltage_harmonics AS CHAR) ORDER BY created_ts), ',', 1 ) AS voltage_harmonics_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(voltage_harmonics AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS voltage_harmonics_last,

    min(current_harmonics) as current_harmonics_min,
    max(current_harmonics) as current_harmonics_max,
    avg(current_harmonics) as current_harmonics_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(current_harmonics AS CHAR) ORDER BY created_ts), ',', 1 ) AS current_harmonics_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(current_harmonics AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS current_harmonics_last,

    min(apparent_power) as apparent_power_min,
    max(apparent_power) as apparent_power_max,
    avg(apparent_power) as apparent_power_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(apparent_power AS CHAR) ORDER BY created_ts), ',', 1 ) AS apparent_power_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(apparent_power AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS apparent_power_last,

    min(inverter_conversion_efficiency) as inverter_conversion_efficiency_min,
    max(inverter_conversion_efficiency) as inverter_conversion_efficiency_max,
    avg(inverter_conversion_efficiency) as inverter_conversion_efficiency_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(inverter_conversion_efficiency AS CHAR) ORDER BY created_ts), ',', 1 ) AS inverter_conversion_efficiency_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(inverter_conversion_efficiency AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS inverter_conversion_efficiency_last,

    min(electric_charge) as electric_charge_min,
    max(electric_charge) as electric_charge_max,
    avg(electric_charge) as electric_charge_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(electric_charge AS CHAR) ORDER BY created_ts), ',', 1 ) AS electric_charge_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(electric_charge AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS electric_charge_last,

    min(line_voltage_R_S) as line_voltage_R_S_min,
    max(line_voltage_R_S) as line_voltage_R_S_max,
    avg(line_voltage_R_S) as line_voltage_R_S_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(line_voltage_R_S AS CHAR) ORDER BY created_ts), ',', 1 ) AS line_voltage_R_S_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(line_voltage_R_S AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS line_voltage_R_S_last,

    min(line_voltage_S_T) as line_voltage_S_T_min,
    max(line_voltage_S_T) as line_voltage_S_T_max,
    avg(line_voltage_S_T) as line_voltage_S_T_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(line_voltage_S_T AS CHAR) ORDER BY created_ts), ',', 1 ) AS line_voltage_S_T_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(line_voltage_S_T AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS line_voltage_S_T_last,

    min(line_voltage_T_R) as line_voltage_T_R_min,
    max(line_voltage_T_R) as line_voltage_T_R_max,
    avg(line_voltage_T_R) as line_voltage_T_R_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(line_voltage_T_R AS CHAR) ORDER BY created_ts), ',', 1 ) AS line_voltage_T_R_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(line_voltage_T_R AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS line_voltage_T_R_last,

    min(accumulate_power_consumption) as accumulate_power_consumption_min,
    max(accumulate_power_consumption) as accumulate_power_consumption_max,
    avg(accumulate_power_consumption) as accumulate_power_consumption_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(accumulate_power_consumption AS CHAR) ORDER BY created_ts), ',', 1 ) AS accumulate_power_consumption_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(accumulate_power_consumption AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS accumulate_power_consumption_last,

    min(dc_voltage) as dc_voltage_min,
    max(dc_voltage) as dc_voltage_max,
    avg(dc_voltage) as dc_voltage_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(dc_voltage AS CHAR) ORDER BY created_ts), ',', 1 ) AS dc_voltage_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(dc_voltage AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS dc_voltage_last,

    min(dc_current) as dc_current_min,
    max(dc_current) as dc_current_max,
    avg(dc_current) as dc_current_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(dc_current AS CHAR) ORDER BY created_ts), ',', 1 ) AS dc_current_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(dc_current AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS dc_current_last,

    min(dc_electric_power) as dc_electric_power_min,
    max(dc_electric_power) as dc_electric_power_max,
    avg(dc_electric_power) as dc_electric_power_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(dc_electric_power AS CHAR) ORDER BY created_ts), ',', 1 ) AS dc_electric_power_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(dc_electric_power AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS dc_electric_power_last,

    min(dc_ampere) as dc_ampere_min,
    max(dc_ampere) as dc_ampere_max,
    avg(dc_ampere) as dc_ampere_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(dc_ampere AS CHAR) ORDER BY created_ts), ',', 1 ) AS dc_ampere_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(dc_ampere AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS dc_ampere_last,

    min(accumulate_dc_power_consumption) as accumulate_dc_power_consumption_min,
    max(accumulate_dc_power_consumption) as accumulate_dc_power_consumption_max,
    avg(accumulate_dc_power_consumption) as accumulate_dc_power_consumption_avg,
   	SUBSTRING_INDEX( GROUP_CONCAT(CAST(accumulate_dc_power_consumption AS CHAR) ORDER BY created_ts), ',', 1 ) AS accumulate_dc_power_consumption_first,
    SUBSTRING_INDEX( GROUP_CONCAT(CAST(accumulate_dc_power_consumption AS CHAR) ORDER BY created_ts DESC), ',', 1 ) AS accumulate_dc_power_consumption_last

FROM    
    tbl_metering_group_data 
WHERE
    serial_id='506583E5EE8A' AND
    created_ts >= UNIX_TIMESTAMP(DATE_SUB(now(), INTERVAL 10 MINUTE )) * 1000000000
GROUP BY
    serial_id,
		group_id,
    FLOOR(created_ts/ (1000000000 * 60 * 5 )) 

