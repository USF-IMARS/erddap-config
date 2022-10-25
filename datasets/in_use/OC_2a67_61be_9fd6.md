More details in [this spreadsheet](https://docs.google.com/spreadsheets/d/18fJk0qeZiis7UMdJ0QjfMAcVJGco2TpqtRMaDSt9rWA/edit?usp=sharing).

This dataset is being used by the FK NMS Early-Alert Dashboard.

```
    
<!-- VIIRS kd490, chlor a, Rrs 671 for FWC coral disease dashboard 

NOTE! The source for OC_2a67_61be_9fd6 has nGridVariables=8,
  but this dataset will only serve 6 because the others use different dimensions. 

    <sourceAttributes>
        <att name="Composite_end_date">05/26/2020</att>
        <att name="Composite_start_date">05/20/2020</att>
        <att name="Contact">Dan Otis - dotis@usf.edu</att>
        <att name="CreationDate">05/27/2020 05:01:53</att>
        <att name="Image_size">653 pixels(N-S) x 890 pixels(E-W)</att>
        <att name="Lat-Lon_Limits">23.0072N to 27.4N -85W to -79.0105W</att>
        <att name="Ocean_color_masks_based_on_L2_flags">LAND,CLDICE,HIGLINT</att>
        <att name="Original_Image_Format">Level-2(NetCDF)</att>
        <att name="Original_Image_Source">NASA Ocean Biology Processing Group</att>
        <att name="Processing_and_binning">USF IMaRS</att>
        <att name="Projection">Equidistant Cylindrical</att>
        <att name="Region">Florida Keys (FK)</att>
        <att name="Sensor">VIIRS-SNPP</att>
        <att name="Time_interval">7-Day Composite (median)</att>
    </sourceAttributes>

example filename : VSNPP_2020141_2020147_7D_FK_OC.nc
-->
```

```xml
<dataset type="EDDGridFromNcFiles" datasetID="OC_2a67_61be_9fd6" active="true">
    <reloadEveryNMinutes>90</reloadEveryNMinutes>
    <updateEveryNMillis>10000</updateEveryNMillis>
    <fileDir>/srv/imars-objects/fk/MEAN_7D_VSNPP/OC/</fileDir>
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
        <att name="keywords">anomaly, chemistry, chlor, chlor_a_anom, chlor_a_median, chlorophyll, color, concentration, concentration_of_chlorophyll_in_sea_water, data, earth, Earth Science &gt; Oceans &gt; Ocean Chemistry &gt; Chlorophyll, florida, img_x, img_y, Kd_490_anom, Kd_490_median, local, median, ocean, ocean color, oceans, optical, optical properties, properties, rrs, Rrs_671_anom, Rrs_671_median, science, sea, seawater, source, south, university, usf, water</att>
        <att name="keywords_vocabulary">GCMD Science Keywords</att>
        <att name="Lat-Lon_Limits">null</att>
        <att name="Lat_Lon_Limits">23.0072N to 27.4N -85W to -79.0105W</att>
        <att name="license">[standard]</att>
        <att name="standard_name_vocabulary">CF Standard Name Table v55</att>
        <att name="summary">University of South Florida (USF) data from a local source.</att>
        <att name="title">VIIRS Ocean Color.</att>
    </addAttributes>
    <axisVariable>
        <sourceName>***fileName,timeFormat=yyyyDDD,VSNPP_(\d{7})_(\d{7})_7D_FK_OC\.nc,2</sourceName>
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
        <sourceName>Rrs_671_median</sourceName>
        <destinationName>Rrs_671_median</destinationName>
        <dataType>double</dataType>
        <addAttributes>
            <att name="ioos_category">Optical Properties</att>
            <att name="long_name">Rrs 671 Median</att>
            <att name="Units">null</att>
            <att name="units">sr^-1</att>
        </addAttributes>
    </dataVariable>
    <dataVariable>
        <sourceName>Rrs_671_anom</sourceName>
        <destinationName>Rrs_671_anom</destinationName>
        <dataType>double</dataType>
        <addAttributes>
            <att name="colorBarMaximum" type="double">10.0</att>
            <att name="colorBarMinimum" type="double">-10.0</att>
            <att name="ioos_category">Optical Properties</att>
            <att name="long_name">Rrs 671 Anom</att>
            <att name="Units">null</att>
            <att name="units">sr^-1</att>
        </addAttributes>
    </dataVariable>
    <dataVariable>
        <sourceName>Kd_490_median</sourceName>
        <destinationName>Kd_490_median</destinationName>
        <dataType>double</dataType>
        <addAttributes>
            <att name="ioos_category">Unknown</att>
            <att name="long_name">Kd 490 Median</att>
            <att name="Units">null</att>
            <att name="units">m^-1</att>
        </addAttributes>
    </dataVariable>
    <dataVariable>
        <sourceName>Kd_490_anom</sourceName>
        <destinationName>Kd_490_anom</destinationName>
        <dataType>double</dataType>
        <addAttributes>
            <att name="colorBarMaximum" type="double">10.0</att>
            <att name="colorBarMinimum" type="double">-10.0</att>
            <att name="ioos_category">Unknown</att>
            <att name="long_name">Kd 490 Anom</att>
            <att name="Units">null</att>
            <att name="units">m^-1</att>
        </addAttributes>
    </dataVariable>
</dataset>
```
