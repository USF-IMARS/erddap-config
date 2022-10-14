This was an older MBON datset.
It was originally connected MBON Explorer app and accesible through RStudio Server interface that Ben Best set up.
It died.

Removed 2022-10-14.

## dataset.xml chunk
```xml
<dataset type="EDDGridFromNcFilesUnpacked" datasetID="anom_9km_2b83_52f7_ef91" active="true">
    <reloadEveryNMinutes>1440</reloadEveryNMinutes>
    <updateEveryNMillis>10000</updateEveryNMillis>
    <fileDir>/srv/imars-objects/mbon/data_big/satellite/chlor_a/anom_9km/</fileDir>
    <fileNameRegex>.*\.nc</fileNameRegex>
    <recursive>true</recursive>
    <pathRegex>.*</pathRegex>
    <metadataFrom>last</metadataFrom>
    <matchAxisNDigits>20</matchAxisNDigits>
    <fileTableInMemory>false</fileTableInMemory>
    <accessibleViaFiles>false</accessibleViaFiles>
    <!-- sourceAttributes>
        <att name="Composite_end_date">07/31/2018</att>
        <att name="Composite_start_date">07/01/2018</att>
        <att name="Contact">Dan Otis - dotis@mail.usf.edu</att>
        <att name="CreationDate">09/06/2018 14:47:47</att>
        <att name="Original_Image_Format">Level-3(NetCDF)</att>
        <att name="Original_Image_Source">NASA OBPG</att>
        <att name="Processing_and_binning">USF IMaRS</att>
        <att name="Product">chlor_a</att>
        <att name="Project">SDG14</att>
        <att name="Region">Global (GLOB)</att>
        <att name="Spatial_resolution">9km</att>
        <att name="Units">mg m^-3</att>
    </sourceAttributes -->
    <addAttributes>
        <att name="cdm_data_type">Grid</att>
        <att name="Contact">null</att>
        <att name="contact">Dan Otis - dotis@mail.usf.edu</att>
        <att name="Conventions">COARDS, CF-1.6, ACDD-1.3</att>
        <att name="creator_email">dotis@mail.usf.edu</att>
        <att name="creator_name">DOTIS</att>
        <att name="creator_type">institution</att>
        <att name="infoUrl">???</att>
        <att name="institution">USF IMaRS</att>
        <att name="keywords">anomaly, data, florida, latitude, local, longitude, mail.usf, mean, score, source, south, statistics, university, usf, z-score</att>
        <att name="license">[standard]</att>
        <att name="Project">null</att>
        <att name="project">SDG14</att>
        <att name="standard_name_vocabulary">CF Standard Name Table v29</att>
        <att name="summary">Global 9km Chlorophyll a Anomalies.</att>
        <att name="title">Global 9km Chlorophyll a Anomalies.</att>
        <att name="Units">null</att>
    </addAttributes>
    <axisVariable>
        <!-- example filename : A20181822018212_chlor_a_MO_ANOM_GLOB_9km.nc -->
        <sourceName>***fileName,timeFormat=yyyyDDD,A(\d{7})(\d{7})_chlor_a_MO_ANOM_GLOB_9km\.nc,2</sourceName>
        <destinationName>time</destinationName>
        <addAttributes>
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
        <sourceName>mean</sourceName>
        <destinationName>mean</destinationName>
        <dataType>float</dataType>
        <!-- sourceAttributes>
        </sourceAttributes -->
        <addAttributes>
            <att name="ioos_category">Statistics</att>
            <att name="long_name">Mean</att>
        </addAttributes>
    </dataVariable>
    <dataVariable>
        <sourceName>anomaly</sourceName>
        <destinationName>anomaly</destinationName>
        <dataType>float</dataType>
        <!-- sourceAttributes>
        </sourceAttributes -->
        <addAttributes>
            <att name="colorBarMaximum" type="double">10.0</att>
            <att name="colorBarMinimum" type="double">-10.0</att>
            <att name="ioos_category">Unknown</att>
            <att name="long_name">Anomaly</att>
        </addAttributes>
    </dataVariable>
    <dataVariable>
        <sourceName>z-score</sourceName>
        <destinationName>z_score</destinationName>
        <dataType>float</dataType>
        <!-- sourceAttributes>
        </sourceAttributes -->
        <addAttributes>
            <att name="ioos_category">Location</att>
            <att name="long_name">Z-score</att>
        </addAttributes>
    </dataVariable>
</dataset>
```
