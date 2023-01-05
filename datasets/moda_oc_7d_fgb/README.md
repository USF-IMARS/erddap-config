More details in [this spreadsheet](https://docs.google.com/spreadsheets/d/18fJk0qeZiis7UMdJ0QjfMAcVJGco2TpqtRMaDSt9rWA/edit?usp=sharing).

This dataset is being used by the FGB NMS Early-Alert Dashboard.

```
possible additional attributes:
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
        <att name="CreationDate">12/05/2018 00:40:09</att>
        <att name="Composite_start_date">12/03/2018</att>
        <att name="Composite_end_date">12/03/2018</att>
    </sourceAttributes>

example `sourceFile` name:
    MODA_2002225_2002231_7D_FGB_OC.nc
-->
```

```xml
<!-- FGBNMS Mean 7 Day OC ===============================================================================================-->
<dataset type="EDDGridFromNcFilesUnpacked" datasetID="OC_e122_8547_dab0" active="true">
    <reloadEveryNMinutes>1440</reloadEveryNMinutes>
    <updateEveryNMillis>10000</updateEveryNMillis>
    <fileDir>/srv/imars-objects/fgb/MEAN_7D_MODA/OC/</fileDir>
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
        <att name="keywords">anomaly, chemistry, chlor, chlor_a_anom, chlor_a_median, chlorophyll, color, concentration, concentration_of_chlorophyll_in_sea_water, data, earth, Earth Science &gt; Oceans &gt; Ocean Chemistry &gt; Chlorophyll, florida, local, mail.usf, median, nflh, nflh_anom, nflh_median, ocean, ocean color, oceans, optical, optical properties, properties, rrs, Rrs_667_anom, Rrs_667_median, science, sea, seawater, source, south, university, usf, water</att>
        <att name="keywords_vocabulary">GCMD Science Keywords</att>
        <att name="Lat-Lon_Limits">null</att>
        <att name="Lat_Lon_Limits">24.0111N to 31N -98W to -88.012W</att>
        <att name="license">[standard]</att>
        <att name="standard_name_vocabulary">CF Standard Name Table v29</att>
        <att name="summary">FGBNMS Mean 7 Day OC</att>
        <att name="title">Flower Gardens Banks National Marine Sanctuary Mean 7 Day Ocean Color</att>
    </addAttributes>
     <axisVariable>
        <sourceName>***fileName,timeFormat=yyyyDDD,MODA_(\d{7})_(\d{7})_7D_FGB_OC\.nc,2</sourceName>
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
        <sourceName>chlor_a_median</sourceName>
        <destinationName>chlor_a_median</destinationName>
        <dataType>double</dataType>
        <addAttributes>
            <att name="colorBarMaximum" type="double">30.0</att>
            <att name="colorBarMinimum" type="double">0.03</att>
            <att name="colorBarScale">Log</att>
            <att name="ioos_category">Ocean Color</att>
            <att name="long_name">Concentration Of Chlorophyll In Sea Water</att>
            <att name="standard_name">concentration_of_chlorophyll_in_sea_water</att>
            <att name="Units">null</att>
            <att name="units">mg m^-3</att>
        </addAttributes>
    </dataVariable>
    <dataVariable>
        <sourceName>chlor_a_anom</sourceName>
        <destinationName>chlor_a_anom</destinationName>
        <dataType>double</dataType>
        <addAttributes>
            <att name="colorBarMaximum" type="double">10.0</att>
            <att name="colorBarMinimum" type="double">-10.0</att>
            <att name="ioos_category">Ocean Color</att>
            <att name="long_name">Chlor A Anom</att>
            <att name="Units">null</att>
            <att name="units">mg m^-3</att>
        </addAttributes>
    </dataVariable>
    <dataVariable>
        <sourceName>nflh_median</sourceName>
        <destinationName>nflh_median</destinationName>
        <dataType>double</dataType>
        <addAttributes>
            <att name="ioos_category">Unknown</att>
            <att name="long_name">Nflh Median</att>
            <att name="Units">null</att>
            <att name="units">W m^-2 um^-1 sr^-1</att>
        </addAttributes>
    </dataVariable>
    <dataVariable>
        <sourceName>nflh_anom</sourceName>
        <destinationName>nflh_anom</destinationName>
        <dataType>double</dataType>
        <addAttributes>
            <att name="colorBarMaximum" type="double">10.0</att>
            <att name="colorBarMinimum" type="double">-10.0</att>
            <att name="ioos_category">Unknown</att>
            <att name="long_name">Nflh Anom</att>
            <att name="Units">null</att>
            <att name="units">W m^-2 um^-1 sr^-1</att>
        </addAttributes>
    </dataVariable>
    <dataVariable>
        <sourceName>Rrs_667_median</sourceName>
        <destinationName>Rrs_667_median</destinationName>
        <dataType>double</dataType>
        <addAttributes>
            <att name="colorBarMaximum" type="double">-25000.035</att>
            <att name="colorBarMinimum" type="double">-25000.055</att>
            <att name="ioos_category">Optical Properties</att>
            <att name="long_name">Rrs 667 Median</att>
            <att name="Units">null</att>
            <att name="units">sr^-1</att>
        </addAttributes>
    </dataVariable>
    <dataVariable>
        <sourceName>Rrs_667_anom</sourceName>
        <destinationName>Rrs_667_anom</destinationName>
        <dataType>double</dataType>
        <addAttributes>
            <att name="colorBarMaximum" type="double">0.01</att>
            <att name="colorBarMinimum" type="double">-0.01</att>
            <att name="ioos_category">Optical Properties</att>
            <att name="long_name">Rrs 667 Anom</att>
            <att name="Units">null</att>
            <att name="units">sr^-1</att>
        </addAttributes>
    </dataVariable>
    <dataVariable>
        <sourceName>ABI_median</sourceName>
        <destinationName>ABI_median</destinationName>
        <dataType>double</dataType>
        <addAttributes>
            <att name="ioos_category">Unknown</att>
            <att name="long_name">ABI Median</att>
            <att name="Units">null</att>
            <att name="units">W m^-2 um^-1 sr^-1</att>
        </addAttributes>
    </dataVariable>
    <dataVariable>
        <sourceName>ABI_anom</sourceName>
        <destinationName>ABI_anom</destinationName>
        <dataType>double</dataType>
        <addAttributes>
            <att name="colorBarMaximum" type="double">10.0</att>
            <att name="colorBarMinimum" type="double">-10.0</att>
            <att name="ioos_category">Unknown</att>
            <att name="long_name">ABI Anom</att>
            <att name="Units">null</att>
            <att name="units">W m^-2 um^-1 sr^-1</att>
        </addAttributes>
    </dataVariable>
</dataset>
```
