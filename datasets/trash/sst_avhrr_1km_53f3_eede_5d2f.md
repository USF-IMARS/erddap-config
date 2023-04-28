This is the AVHRR data recieved by by IMaRS via X-band direct-broadcast.
IMaRS is (theoretically) the only holder of this data.

Unfortunately this data was never successfully loaded into ERDDAP.
For more info see [#5](https://github.com/USF-IMARS/erddap-config/issues/5).

## ERDDAP datasets.xml chunk
```xml
 <!-- sst_avhrr_1km Fullpass Regex==================================================================================================-->
    <dataset
        type="EDDGridFromNcFilesUnpacked"
        datasetID="sst_avhrr_1km_53f3_eede_5d2f"
        active="true"
    >
    <reloadEveryNMinutes>10080</reloadEveryNMinutes>
    <updateEveryNMillis>10000</updateEveryNMillis>
    <fileDir>/srv/imars-objects/gom/sst_avhrr_1km/</fileDir>
    <fileNameRegex>.*\.fullpass\.sst\.hdf</fileNameRegex>
    <recursive>true</recursive>
    <pathRegex>.*</pathRegex>
    <metadataFrom>last</metadataFrom>
    <matchAxisNDigits>20</matchAxisNDigits>
    <fileTableInMemory>false</fileTableInMemory>
    <accessibleViaFiles>false</accessibleViaFiles>
    <!-- sourceAttributes>
        <att name="_History">Direct read of HDF4 file through CDM library</att>
        <att name="attitude" type="doubleList">-0.00127732206985 0.0 -0.00134347042798</att>
        <att name="attitude\\units">radians</att>
        <att name="center_lat" type="double">25.0</att>
        <att name="center_lat\\units">std_latitude</att>
        <att name="center_lon" type="double">-85.0</att>
        <att name="center_lon\\units">std_longitude</att>
        <att name="equator_radius" type="double">6378.137</att>
        <att name="equator_radius\\units">km</att>
        <att name="et_affine" type="doubleList">-0.9881468125314737 0.0 0.0 1.090299373640397 3300.5 4400.5</att>
        <att name="flattening" type="double">0.0</att>
        <att name="HDF4_Version">4.1.3 (NCSA HDF Version 4.1 Release 3, May 1999)</att>
        <att name="interp_points" type="int">4</att>
        <att name="line\\coord">y</att>
        <att name="line\\offset" type="double">0.0</att>
        <att name="line\\scale" type="double">1.0</att>
        <att name="map_angle" type="double">0.0</att>
        <att name="map_angle\\units">radians</att>
        <att name="miss_algn_mat" type="doubleList">1.0 0.0 0.0 0.0 1.0 0.0 0.0 0.0 1.0</att>
        <att name="nutation_mat" type="doubleList">1.0 1.0 1.0 1.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 1.0 1.0 1.0 1.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 1.0 1.0 1.0 1.0</att>
        <att name="orb_elem_date" type="int">20151229</att>
        <att name="orb_elem_date\\units">yyyymmdd</att>
        <att name="orb_elem_time" type="double">0.0</att>
        <att name="orb_elem_time\\units">hhmmss</att>
        <att name="orb_elements" type="doubleList">0.5385499 0.8284776 1.5E-4 0.0013975 0.9521205 0.6012691 0.2750425</att>
        <att name="pass_date" type="int">20151231</att>
        <att name="pass_date\\units">yyyymmdd</att>
        <att name="proj_param" type="double">0.0</att>
        <att name="proj_param\\units">std_latitude</att>
        <att name="projection" type="int">2</att>
        <att name="projection_name">rectangular</att>
        <att name="sample\\coord">x</att>
        <att name="sample\\offset" type="double">0.0</att>
        <att name="sample\\scale" type="double">1.0</att>
        <att name="satellite">noaa-19</att>
        <att name="satellite_pitch" type="doubleList">0.0 0.0 0.0 0.0</att>
        <att name="satellite_pitch\\units">radians</att>
        <att name="satellite_roll" type="doubleList">-0.00127732206985 -0.00127732206985 -0.00127732206985 -0.00127732206985</att>
        <att name="satellite_roll\\units">radians</att>
        <att name="satellite_yaw" type="doubleList">-0.00134347042798 -0.00134347042798 -0.00134347042798 -0.00134347042798</att>
        <att name="satellite_yaw\\units">radians</att>
        <att name="scan_rates" type="doubleList">6.0 40000.0 37.76892501315729</att>
        <att name="scan_samples" type="int">2048</att>
        <att name="scan_time" type="doubleList">-600.0 1800.0 4200.0 6600.0</att>
        <att name="scan_time\\units">seconds</att>
        <att name="sensor" type="int">0</att>
        <att name="sensor_name">avhrr</att>
        <att name="sensor_tilt" type="double">-0.00174533</att>
        <att name="sensor_tilt\\units">radians</att>
        <att name="sensor_tilt_arr" type="doubleList">-8.7266E-4 -8.7266E-4 -8.7266E-4 -8.7266E-4</att>
        <att name="sensor_tilt_arr\\units">radians</att>
        <att name="sensor_twist" type="doubleList">0.0 0.0 0.0 0.0</att>
        <att name="sensor_twist\\units">radians</att>
        <att name="sensorient" type="doubleList">0.0 0.7853981633974483 0.0 0.9663888068292602 -0.9663888068292602</att>
        <att name="sensorient\\units">radians</att>
        <att name="start_time" type="double">191255.30800000002</att>
        <att name="start_time\\units">hhmmss</att>
        <att name="time_adjust" type="double">-0.126</att>
        <att name="time_adjust\\units">hhmmss</att>
        <att name="use_orbele" type="int">1</att>
        <att name="use_orbele\\units">boolean</att>
    </sourceAttributes -->
    <addAttributes>
        <att name="_History">null</att>
        <att name="attitude\\units">null</att>
        <att name="attitude_units">radians</att>
        <att name="cdm_data_type">Grid</att>
        <att name="center_lat\\units">null</att>
        <att name="center_lat_units">std_latitude</att>
        <att name="center_lon\\units">null</att>
        <att name="center_lon_units">std_longitude</att>
        <att name="Conventions">COARDS, CF-1.6, ACDD-1.3</att>
        <att name="equator_radius\\units">null</att>
        <att name="equator_radius_units">km</att>
        <att name="et_affine">null</att>
        <att name="history">Direct read of HDF4 file through CDM library</att>
        <att name="infoUrl">???</att>
        <att name="institution">USF IMaRS</att>
        <att name="keywords">advanced, avhrr, avhrr_ch1, avhrr_ch2, azimuth, ch1, ch2, data, high, line, local, mcsst, optical, optical properties, properties, radiometer, rel, rel_azimuth, resolution, sample, sat, sat_zenith, source, temperature, very, zenith</att>
        <att name="license">[standard]</att>
        <att name="line\\coord">null</att>
        <att name="line\\offset">null</att>
        <att name="line\\scale">null</att>
        <att name="line_coord">y</att>
        <att name="line_offset" type="double">0.0</att>
        <att name="line_scale" type="double">1.0</att>
        <att name="map_angle\\units">null</att>
        <att name="map_angle_units">radians</att>
        <att name="orb_elem_date\\units">null</att>
        <att name="orb_elem_date_units">yyyymmdd</att>
        <att name="orb_elem_time\\units">null</att>
        <att name="orb_elem_time_units">hhmmss</att>
        <att name="pass_date">null</att>
        <att name="pass_date\\units">null</att>
        <att name="pass_date_units">yyyymmdd</att>
        <att name="proj_param\\units">null</att>
        <att name="proj_param_units">std_latitude</att>
        <att name="sample\\coord">null</att>
        <att name="sample\\offset">null</att>
        <att name="sample\\scale">null</att>
        <att name="sample_coord">x</att>
        <att name="sample_offset" type="double">0.0</att>
        <att name="sample_scale" type="double">1.0</att>
        <att name="satellite_pitch\\units">null</att>
        <att name="satellite_pitch_units">radians</att>
        <att name="satellite_roll\\units">null</att>
        <att name="satellite_roll_units">radians</att>
        <att name="satellite_yaw\\units">null</att>
        <att name="satellite_yaw_units">radians</att>
        <att name="scan_time\\units">null</att>
        <att name="scan_time_units">seconds</att>
        <att name="sensor_tilt\\units">null</att>
        <att name="sensor_tilt_arr\\units">null</att>
        <att name="sensor_tilt_arr_units">radians</att>
        <att name="sensor_tilt_units">radians</att>
        <att name="sensor_twist\\units">null</att>
        <att name="sensor_twist_units">radians</att>
        <att name="sensorient\\units">null</att>
        <att name="sensorient_units">radians</att>
        <att name="standard_name_vocabulary">CF Standard Name Table v29</att>
        <att name="start_time">null</att>
        <att name="start_time\\units">null</att>
        <att name="start_time_units">hhmmss</att>
        <att name="summary">AVHRR MC SST 1km.</att>
        <att name="time_adjust\\units">null</att>
        <att name="time_adjust_units">hhmmss</att>
        <att name="title">AVHRR 1km SST fullpass.</att>
        <att name="use_orbele\\units">null</att>
        <att name="use_orbele_units">boolean</att>
    </addAttributes>
    <axisVariable>
        <sourceName>***fileName,timeFormat=yyyyMMdd.HHmm,n(\d+?).(\d{8}\.\d{4})*\.fullpass\.sst\.hdf,2</sourceName>
        <!-- n(\d+?).(\d{8}\.\d{4}).fullpass.sst.hdf,2 -->
        <destinationName>time</destinationName>
        <!-- sourceAttributes>
            <att name="long_name">line</att>
        </sourceAttributes -->
        <addAttributes>
            <att name="ioos_category">Unknown</att>
            <att name="units">seconds since 1970-01-01T00:00:00Z</att>
        </addAttributes>
    </axisVariable>
    <axisVariable>
        <sourceName>line</sourceName>
        <destinationName>line</destinationName>
        <!-- sourceAttributes>
            <att name="long_name">line</att>
        </sourceAttributes -->
        <addAttributes>
            <att name="ioos_category">Unknown</att>
        </addAttributes>
    </axisVariable>
    <axisVariable>
        <sourceName>sample</sourceName>
        <destinationName>sample</destinationName>
        <!-- sourceAttributes>
            <att name="long_name">sample</att>
        </sourceAttributes -->
        <addAttributes>
            <att name="ioos_category">Unknown</att>
        </addAttributes>
    </axisVariable>
    <dataVariable>
        <sourceName>avhrr_ch1</sourceName>
        <destinationName>avhrr_ch1</destinationName>
        <dataType>double</dataType>
        <!-- sourceAttributes>
            <att name="_FillValue" type="double">NaN</att>
            <att name="add_offset_err" type="double">0.0</att>
            <att name="calibrated_nt" type="int">22</att>
            <att name="long_name">avhrr_ch1</att>
            <att name="scale_factor_err" type="double">0.0</att>
            <att name="units">albedo*100&#37;</att>
            <att name="valid_range" type="doubleList">NaN 327.67</att>
        </sourceAttributes -->
        <addAttributes>
            <att name="add_offset_err">null</att>
            <att name="colorBarMaximum" type="double">100.0</att>
            <att name="colorBarMinimum" type="double">0.0</att>
            <att name="ioos_category">Optical Properties</att>
            <att name="long_name">Avhrr Ch1</att>
            <att name="scale_factor_err">null</att>
            <att name="units">albedo00percent</att>
        </addAttributes>
    </dataVariable>
    <dataVariable>
        <sourceName>avhrr_ch2</sourceName>
        <destinationName>avhrr_ch2</destinationName>
        <dataType>double</dataType>
        <!-- sourceAttributes>
            <att name="_FillValue" type="double">NaN</att>
            <att name="add_offset_err" type="double">0.0</att>
            <att name="calibrated_nt" type="int">22</att>
            <att name="long_name">avhrr_ch2</att>
            <att name="scale_factor_err" type="double">0.0</att>
            <att name="units">albedo*100&#37;</att>
            <att name="valid_range" type="doubleList">NaN 327.67</att>
        </sourceAttributes -->
        <addAttributes>
            <att name="add_offset_err">null</att>
            <att name="colorBarMaximum" type="double">100.0</att>
            <att name="colorBarMinimum" type="double">0.0</att>
            <att name="ioos_category">Optical Properties</att>
            <att name="long_name">Avhrr Ch2</att>
            <att name="scale_factor_err">null</att>
            <att name="units">albedo00percent</att>
        </addAttributes>
    </dataVariable>
    <dataVariable>
        <sourceName>mcsst</sourceName>
        <destinationName>mcsst</destinationName>
        <dataType>double</dataType>
        <!-- sourceAttributes>
            <att name="_FillValue" type="double">NaN</att>
            <att name="add_offset_err" type="double">0.0</att>
            <att name="calibrated_nt" type="int">21</att>
            <att name="long_name">mcsst</att>
            <att name="scale_factor_err" type="double">0.0</att>
            <att name="units">temp_deg_c</att>
            <att name="valid_range" type="doubleList">NaN 10.342968674698797</att>
        </sourceAttributes -->
        <addAttributes>
            <att name="add_offset_err">null</att>
            <att name="colorBarMaximum" type="double">10.342968674698797</att>
            <att name="ioos_category">Temperature</att>
            <att name="scale_factor_err">null</att>
        </addAttributes>
    </dataVariable>
    <dataVariable>
        <sourceName>rel_azimuth</sourceName>
        <destinationName>rel_azimuth</destinationName>
        <dataType>double</dataType>
        <!-- sourceAttributes>
            <att name="_FillValue" type="double">NaN</att>
            <att name="add_offset_err" type="double">0.0</att>
            <att name="calibrated_nt" type="int">22</att>
            <att name="long_name">rel_azimuth</att>
            <att name="scale_factor_err" type="double">0.0</att>
            <att name="units">degrees</att>
            <att name="valid_range" type="doubleList">NaN 327.67</att>
        </sourceAttributes -->
        <addAttributes>
            <att name="add_offset_err">null</att>
            <att name="colorBarMaximum" type="double">327.67</att>
            <att name="ioos_category">Unknown</att>
            <att name="long_name">Rel Azimuth</att>
            <att name="scale_factor_err">null</att>
        </addAttributes>
    </dataVariable>
    <dataVariable>
        <sourceName>sat_zenith</sourceName>
        <destinationName>sat_zenith</destinationName>
        <dataType>double</dataType>
        <!-- sourceAttributes>
            <att name="_FillValue" type="double">NaN</att>
            <att name="add_offset_err" type="double">0.0</att>
            <att name="calibrated_nt" type="int">22</att>
            <att name="long_name">sat_zenith</att>
            <att name="scale_factor_err" type="double">0.0</att>
            <att name="units">degrees</att>
            <att name="valid_range" type="doubleList">NaN 327.67</att>
        </sourceAttributes -->
        <addAttributes>
            <att name="add_offset_err">null</att>
            <att name="colorBarMaximum" type="double">327.67</att>
            <att name="ioos_category">Unknown</att>
            <att name="long_name">Sat Zenith</att>
            <att name="scale_factor_err">null</att>
        </addAttributes>
    </dataVariable>
</dataset>
```
