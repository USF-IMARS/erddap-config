More details in [this spreadsheet](https://docs.google.com/spreadsheets/d/18fJk0qeZiis7UMdJ0QjfMAcVJGco2TpqtRMaDSt9rWA/edit?usp=sharing).

This dataset is **NOT** being used by the FK NMS Early-Alert Dashboard.

```
<!-- Modis Aqua Sea Surface Temperature ======================================== 
NOTE! The source for SST_2963_b743_ee2e has nGridVariables=4,
  but this dataset will only serve 2 because the others use different dimensions.

    <sourceAttributes>
        <att name="Composite_end_date">03/31/2020</att>
        <att name="Composite_start_date">03/25/2020</att>
        <att name="Contact">Dan Otis - dotis@usf.edu</att>
        <att name="CreationDate">04/03/2020 01:07:21</att>
        <att name="Image_size">484 pixels(N-S) x 660 pixels(E-W)</att>
        <att name="Lat-Lon_Limits">23.0104N to 27.4N -85W to -79.0108W</att>
        <att name="Ocean_color_masks_based_on_L2_flags">LAND,CLDICE,HIGLINT</att>
        <att name="Original_Image_Format">Level-2(NetCDF)</att>
        <att name="Original_Image_Source">NASA Ocean Biology Processing Group</att>
        <att name="Processing_and_binning">USF IMaRS</att>
        <att name="Projection">Equidistant Cylindrical</att>
        <att name="Region">Florida Keys (FK)</att>
        <att name="Sensor">MODIS-Aqua</att>
        <att name="Time_interval">7-Day Composite (median)</att>
    </sourceAttributes>        

example filename : MODA_2011155_2011161_7D_FK_SST.nc
-->
```

```xml
<dataset type="EDDGridFromNcFiles" datasetID="SST_2963_b743_ee2e" active="true">
    <reloadEveryNMinutes>90</reloadEveryNMinutes>
    <updateEveryNMillis>10000</updateEveryNMillis>
    <fileDir>/srv/imars-objects/fk/MEAN_7D_MODA/SST/</fileDir>
    <fileNameRegex>.*\.nc</fileNameRegex>
    <recursive>true</recursive>
    <pathRegex>.*</pathRegex>
    <metadataFrom>last</metadataFrom>
    <matchAxisNDigits>20</matchAxisNDigits>
    <fileTableInMemory>false</fileTableInMemory>
    <accessibleViaFiles>false</accessibleViaFiles>
    <addAttributes>
        <att name="cdm_data_type">Grid</att>
        <att name="Contact">null</att>
        <att name="contact">Dan Otis - dotis@usf.edu</att>
        <att name="Conventions">COARDS, CF-1.6, ACDD-1.3</att>
        <att name="creator_email">dotis@usf.edu</att>
        <att name="creator_name">DOTIS</att>
        <att name="creator_type">institution</att>
        <att name="infoUrl">???</att>
        <att name="institution">USF IMaRS</att>
        <att name="keywords">anomaly, data, earth, Earth Science &gt; Land Surface &gt; Land Temperature &gt; Land Surface Temperature, Earth Science &gt; Oceans &gt; Ocean Temperature &gt; Sea Surface Temperature, florida, land, local, ocean, oceans, science, sea, sea_surface_temperature, source, south, sst_anom, sst_median, surface, surface_temperature_anomaly, temperature, university, usf</att>
        <att name="keywords_vocabulary">GCMD Science Keywords</att>
        <att name="Lat-Lon_Limits">null</att>
        <att name="Lat_Lon_Limits">23.0104N to 27.4N -85W to -79.0108W</att>
        <att name="license">[standard]</att>
        <att name="standard_name_vocabulary">CF Standard Name Table v55</att>
        <att name="summary">University of South Florida (USF) data from a local source.</att>
        <att name="title">MODIS Aqua Sea Surface Temperature</att>
    </addAttributes>
    <axisVariable>
        <sourceName>***fileName,timeFormat=yyyyDDD,MODA_(\d{7})_(\d{7})_7D_FK_SST\.nc,2</sourceName>
        <destinationName>time</destinationName>
        <addAttributes>
            <att name="ioos_category">Unknown</att>
            <att name="units">seconds since 1970-01-01T00:00:00Z</att>
        </addAttributes>
    </axisVariable>
    <axisVariable>
        <sourceName>latitude</sourceName>
        <destinationName>latitude</destinationName>
    </axisVariable>
    <axisVariable>
        <sourceName>longitude</sourceName>
        <destinationName>longitude</destinationName>
    </axisVariable>
    <dataVariable>
        <sourceName>sst_median</sourceName>
        <destinationName>sst_median</destinationName>
        <dataType>double</dataType>
        <addAttributes>
            <att name="colorBarMaximum" type="double">32.0</att>
            <att name="colorBarMinimum" type="double">0.0</att>
            <att name="ioos_category">Temperature</att>
            <att name="long_name">Sea Surface Temperature</att>
            <att name="standard_name">sea_surface_temperature</att>
            <att name="Units">null</att>
            <att name="units">degree_C</att>
        </addAttributes>
    </dataVariable>
    <dataVariable>
        <sourceName>sst_anom</sourceName>
        <destinationName>sst_anom</destinationName>
        <dataType>double</dataType>
        <addAttributes>
            <att name="colorBarMaximum" type="double">3.0</att>
            <att name="colorBarMinimum" type="double">-3.0</att>
            <att name="ioos_category">Temperature</att>
            <att name="long_name">Surface Temperature Anomaly</att>
            <att name="standard_name">surface_temperature_anomaly</att>
            <att name="Units">null</att>
            <att name="units">degree_C</att>
        </addAttributes>
    </dataVariable>
</dataset>
```
