More details in [this spreadsheet](https://docs.google.com/spreadsheets/d/18fJk0qeZiis7UMdJ0QjfMAcVJGco2TpqtRMaDSt9rWA/edit?usp=sharing).

This dataset is being used by the FGB NMS Early-Alert Dashboard.

```
<!--FGBNMS 7 Day Sea Surface Temperature ==================================================================================
additional sourceAttribs:
    <sourceAttributes>
        <att name="Region">NW Gulf of Mexico (FGB)</att>
        <att name="Time_interval">7-Day Composite (median)</att>
        <att name="Sensor">MODIS-Aqua</att>
        <att name="Original_Image_Source">NASA Ocean Biology Processing Group</att>
        <att name="Original_Image_Format">Level-2(NetCDF)</att>
        <att name="Ocean_color_masks_based_on_L2_flags">LAND,CLDICE,HIGLINT</att>
        <att name="Projection">Equidistant Cylindrical</att>
        <att name="Image_size">770 pixels(N-S) x 1100 pixels(E-W)</att>
        <att name="Lat-Lon_Limits">24.0111N to 31N -98W to -88.012W</att>
        <att name="Processing_and_binning">USF IMaRS</att>
        <att name="Contact">Dan Otis - dotis@mail.usf.edu</att>
        <att name="CreationDate">12/05/2018 02:37:07</att>
        <att name="Composite_start_date">12/03/2018</att>
        <att name="Composite_end_date">12/03/2018</att>
    </sourceAttributes>
example filename:
 MODA_2002225_2002231_7D_FGB_SST4.nc
-->
```

```xml
<dataset type="EDDGridFromNcFilesUnpacked" datasetID="SST4_9c29_08ac_eccb" active="true">
    <reloadEveryNMinutes>1440</reloadEveryNMinutes>
    <updateEveryNMillis>10000</updateEveryNMillis>
    <fileDir>/srv/imars-objects/fgb/MEAN_7D_MODA/SST4/</fileDir>
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
        <att name="contact">Dan Otis - dotis@mail.usf.edu</att>
        <att name="Conventions">COARDS, CF-1.6, ACDD-1.3</att>
        <att name="creator_email">dotis@mail.usf.edu</att>
        <att name="creator_name">DOTIS</att>
        <att name="creator_type">institution</att>
        <att name="infoUrl">http://imars.marine.usf.edu</att>
        <att name="institution">USF IMaRS</att>
        <att name="keywords">anomaly, data, earth, Earth Science &gt; Land Surface &gt; Land Temperature &gt; Land Surface Temperature, Earth Science &gt; Oceans &gt; Ocean Temperature &gt; Sea Surface Temperature, florida, land, local, mail.usf, ocean, oceans, science, sea, sea_surface_temperature, source, south, sst4_anom, sst4_median, surface, surface_temperature_anomaly, temperature, university, usf</att>
        <att name="keywords_vocabulary">GCMD Science Keywords</att>
        <att name="Lat-Lon_Limits">null</att>
        <att name="Lat_Lon_Limits">24.0111N to 31N -98W to -88.012W</att>
        <att name="license">[standard]</att>
        <att name="standard_name_vocabulary">CF Standard Name Table v29</att>
        <att name="summary">FGBNMS 7 Day Sea Surface Temperature</att>
        <att name="title">Flower Garden Banks National Marine Sanctuary 7 Day Sea Surface Temperature</att>
    </addAttributes>
    <axisVariable>
        <sourceName>***fileName,timeFormat=yyyyDDD,MODA_(\d{7})_(\d{7})_7D_FGB_SST4\.nc,2</sourceName>
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
        <sourceName>sst4_median</sourceName>
        <destinationName>sst4_median</destinationName>
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
        <sourceName>sst4_anom</sourceName>
        <destinationName>sst4_anom</destinationName>
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
