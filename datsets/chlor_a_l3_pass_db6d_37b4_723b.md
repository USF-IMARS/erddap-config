This was an experimental product being produced by an airflow cluster.
It was a duplicate of other products and went defunct when the airflow cluster was decommissioned.

Removed 2022-10-14.

## ERDDAP datset.xml chunk
```xml
<!-- chlor_a_l3_pass (from airflow) =========================================================================================-->
<dataset type="EDDGridFromNcFiles" datasetID="chlor_a_l3_pass_db6d_37b4_723b" active="true">
    <reloadEveryNMinutes>10080</reloadEveryNMinutes>
    <updateEveryNMillis>10000</updateEveryNMillis>
    <fileDir>/srv/imars-objects/gom/chlor_a_l3_pass</fileDir>
    <fileNameRegex>.*\.hdf</fileNameRegex>
    <recursive>true</recursive>
    <pathRegex>.*</pathRegex>
    <metadataFrom>last</metadataFrom>
    <matchAxisNDigits>20</matchAxisNDigits>
    <fileTableInMemory>false</fileTableInMemory>
    <accessibleViaFiles>false</accessibleViaFiles>
    <!-- sourceAttributes>
        <att name="Conventions">CF-1.4</att>
        <att name="metadata_profile">beam</att>
        <att name="metadata_version">0.5</att>
        <att name="product_type">BandMath</att>
        <att name="TileSize">286:418</att>
    </sourceAttributes -->
    <addAttributes>
        <att name="cdm_data_type">Grid</att>
        <att name="Conventions">CF-1.6, COARDS, ACDD-1.3</att>
        <att name="infoUrl">http://imars.marine.usf.edu</att>
        <att name="institution">IMaRS</att>
        <att name="keywords">absorption, active, adg_443_giop, algorithm, aph_443_giop, available, backscatter, bbp_s_giop, cdom, chemistry, chlor_a, chlorophyll, chlorophyll-a, color, colored, concentration, concentration_of_chlorophyll_in_sea_water, coordinate, data, detritus, dissolved, downwelling, downwelling_photosynthetic_photon_radiance_in_sea_water, due, earth, Earth Science &gt; Oceans &gt; Ocean Chemistry &gt; Chlorophyll, Earth Science &gt; Oceans &gt; Ocean Optics &gt; Photosynthetically Active Radiation, Earth Science &gt; Oceans &gt; Ocean Optics &gt; Radiance, fluorescent, giop, height, latitude, line, local, longitude, matter, nflh, normalized, ocean, ocean color, oceans, oci, optical, optical properties, optics, organic, par, photon, photosynthetic, photosynthetically, phytoplankton, phytoplankton species, properties, radiance, radiation, reflectance, remote, Rrs_412, Rrs_443, Rrs_488, Rrs_531, Rrs_547, Rrs_667, Rrs_678, science, sea, seawater, sensing, slope, source, species, spectral, water</att>
        <att name="keywords_vocabulary">GCMD Science Keywords</att>
        <att name="license">[standard]</att>
        <att name="standard_name_vocabulary">CF Standard Name Table v29</att>
        <att name="summary">IMaRS OC Products</att>
        <att name="title">IMaRS OC Product</att>
    </addAttributes>
    <axisVariable>
        <!-- example filename : chlor_a_l3_pass_A2018251202000.hdf -->
        <sourceName>***fileName,timeFormat=yyyyDDDHHmmss,chlor_a_l3_pass_A(\d{13})\.hdf,1</sourceName>
        <destinationName>time</destinationName>
        <addAttributes>
            <att name="units">seconds since 1970-01-01T00:00:00Z</att>
        </addAttributes>
    </axisVariable>
    <axisVariable>
        <sourceName>lat</sourceName>
        <destinationName>latitude</destinationName>
    </axisVariable>
    <axisVariable>
        <sourceName>lon</sourceName>
        <destinationName>longitude</destinationName>
    </axisVariable>
    <dataVariable>
        <sourceName>Rrs_412</sourceName>
        <destinationName>Rrs_412</destinationName>
        <dataType>float</dataType>
        <!-- sourceAttributes>
            <att name="_FillValue" type="float">NaN</att>
            <att name="coordinates">lat lon</att>
            <att name="long_name">Remote sensing reflectance at 412 nm</att>
            <att name="units">sr^-1</att>
            <att name="valid_pixel_expression">(Rrs_412 &gt; -0.01 and Rrs_412 &lt; 0.1 and Rrs_412 != 0)</att>
            <att name="wavelength" type="float">412.0</att>
        </sourceAttributes -->
        <addAttributes>
            <att name="coordinates">null</att>
            <att name="ioos_category">Optical Properties</att>
        </addAttributes>
    </dataVariable>
    <dataVariable>
        <sourceName>Rrs_443</sourceName>
        <destinationName>Rrs_443</destinationName>
        <dataType>float</dataType>
        <!-- sourceAttributes>
            <att name="_FillValue" type="float">NaN</att>
            <att name="coordinates">lat lon</att>
            <att name="long_name">Remote sensing reflectance at 443 nm</att>
            <att name="units">sr^-1</att>
            <att name="valid_pixel_expression">(Rrs_443 &gt; -0.01 and Rrs_443 &lt; 0.1 and Rrs_443 != 0</att>
            <att name="wavelength" type="float">443.0</att>
        </sourceAttributes -->
        <addAttributes>
            <att name="coordinates">null</att>
            <att name="ioos_category">Optical Properties</att>
        </addAttributes>
    </dataVariable>
    <dataVariable>
        <sourceName>Rrs_488</sourceName>
        <destinationName>Rrs_488</destinationName>
        <dataType>float</dataType>
        <!-- sourceAttributes>
            <att name="_FillValue" type="float">NaN</att>
            <att name="coordinates">lat lon</att>
            <att name="long_name">Remote sensing reflectance at 488 nm</att>
            <att name="units">sr^-1</att>
            <att name="valid_pixel_expression">(Rrs_488 &gt; -0.01 and Rrs_488 &lt; 0.1 and Rrs_488 !=0)</att>
            <att name="wavelength" type="float">488.0</att>
        </sourceAttributes -->
        <addAttributes>
            <att name="coordinates">null</att>
            <att name="ioos_category">Optical Properties</att>
        </addAttributes>
    </dataVariable>
    <dataVariable>
        <sourceName>Rrs_531</sourceName>
        <destinationName>Rrs_531</destinationName>
        <dataType>float</dataType>
        <!-- sourceAttributes>
            <att name="_FillValue" type="float">NaN</att>
            <att name="coordinates">lat lon</att>
            <att name="long_name">Remote sensing reflectance at 531 nm</att>
            <att name="units">sr^-1</att>
            <att name="valid_pixel_expression">(Rrs_531 &gt; -0.01 and Rrs_531 &lt; 0.01 and Rrs_531 !=0)</att>
            <att name="wavelength" type="float">531.0</att>
        </sourceAttributes -->
        <addAttributes>
            <att name="coordinates">null</att>
            <att name="ioos_category">Optical Properties</att>
        </addAttributes>
    </dataVariable>
    <dataVariable>
        <sourceName>Rrs_547</sourceName>
        <destinationName>Rrs_547</destinationName>
        <dataType>float</dataType>
        <!-- sourceAttributes>
            <att name="_FillValue" type="float">NaN</att>
            <att name="coordinates">lat lon</att>
            <att name="long_name">Remote sensing reflectance at 547 nm</att>
            <att name="units">sr^-1</att>
            <att name="valid_pixel_expression">(Rrs_547 &gt; -0.01 and Rrs_547 &lt; 0.01 and Rrs_547 !=0)</att>
            <att name="wavelength" type="float">547.0</att>
        </sourceAttributes -->
        <addAttributes>
            <att name="coordinates">null</att>
            <att name="ioos_category">Optical Properties</att>
        </addAttributes>
    </dataVariable>
    <dataVariable>
        <sourceName>Rrs_667</sourceName>
        <destinationName>Rrs_667</destinationName>
        <dataType>float</dataType>
        <!-- sourceAttributes>
            <att name="_FillValue" type="float">NaN</att>
            <att name="coordinates">lat lon</att>
            <att name="long_name">Remote sensing reflectance at 667 nm</att>
            <att name="units">sr^-1</att>
            <att name="valid_pixel_expression">(Rrs_667 &gt; -0.01 and Rrs_667 &lt; 0.01 and Rrs_667 !=0)</att>
            <att name="wavelength" type="float">667.0</att>
        </sourceAttributes -->
        <addAttributes>
            <att name="colorBarMaximum" type="double">-25000.035</att>
            <att name="colorBarMinimum" type="double">-25000.055</att>
            <att name="coordinates">null</att>
            <att name="ioos_category">Optical Properties</att>
        </addAttributes>
    </dataVariable>
    <dataVariable>
        <sourceName>Rrs_678</sourceName>
        <destinationName>Rrs_678</destinationName>
        <dataType>float</dataType>
        <!-- sourceAttributes>
            <att name="_FillValue" type="float">NaN</att>
            <att name="coordinates">lat lon</att>
            <att name="long_name">Remote sensing reflectance at 678 nm</att>
            <att name="units">sr^-1</att>
            <att name="valid_pixel_expression">(Rrs_678 &gt; -0.01 and Rrs_678 &lt; 0.01 and Rrs_678 !=0)</att>
            <att name="wavelength" type="float">678.0</att>
        </sourceAttributes -->
        <addAttributes>
            <att name="coordinates">null</att>
            <att name="ioos_category">Optical Properties</att>
        </addAttributes>
    </dataVariable>
    <dataVariable>
        <sourceName>chlor_a</sourceName>
        <destinationName>chlor_a</destinationName>
        <dataType>float</dataType>
        <!-- sourceAttributes>
            <att name="_FillValue" type="float">NaN</att>
            <att name="coordinates">lat lon</att>
            <att name="long_name">Chlorophyll-a concentration, OCI Algorithm</att>
            <att name="units">mg m^-3</att>
            <att name="valid_pixel_expression">(chlor_a &gt; 0.001 and chlor_a &lt; 100)</att>
        </sourceAttributes -->
        <addAttributes>
            <att name="colorBarMaximum" type="double">30.0</att>
            <att name="colorBarMinimum" type="double">0.03</att>
            <att name="colorBarScale">Log</att>
            <att name="coordinates">null</att>
            <att name="ioos_category">Ocean Color</att>
            <att name="standard_name">concentration_of_chlorophyll_in_sea_water</att>
        </addAttributes>
    </dataVariable>
    <dataVariable>
        <sourceName>nflh</sourceName>
        <destinationName>nflh</destinationName>
        <dataType>float</dataType>
        <!-- sourceAttributes>
            <att name="_FillValue" type="float">NaN</att>
            <att name="coordinates">lat lon</att>
            <att name="long_name">Fluorescent Line Height (normalized)</att>
            <att name="units">W m^-2 um^-1 sr^-1</att>
            <att name="valid_pixel_expression">(nflh &gt; -0.5 and nflh &lt; 5 and nflh !=0)</att>
        </sourceAttributes -->
        <addAttributes>
            <att name="coordinates">null</att>
            <att name="ioos_category">Optical Properties</att>
        </addAttributes>
    </dataVariable>
    <dataVariable>
        <sourceName>par</sourceName>
        <destinationName>par</destinationName>
        <dataType>float</dataType>
        <!-- sourceAttributes>
            <att name="_FillValue" type="float">NaN</att>
            <att name="coordinates">lat lon</att>
            <att name="long_name">Photosynthetically available radiation</att>
            <att name="units">einst m^-2 day^-1</att>
            <att name="valid_pixel_expression">(par &gt; 0 and par &lt; 130)</att>
        </sourceAttributes -->
        <addAttributes>
            <att name="colorBarMaximum" type="double">70.0</att>
            <att name="colorBarMinimum" type="double">0.0</att>
            <att name="coordinates">null</att>
            <att name="ioos_category">Optical Properties</att>
            <att name="standard_name">downwelling_photosynthetic_photon_radiance_in_sea_water</att>
        </addAttributes>
    </dataVariable>
    <dataVariable>
        <sourceName>adg_443_giop</sourceName>
        <destinationName>adg_443_giop</destinationName>
        <dataType>float</dataType>
        <!-- sourceAttributes>
            <att name="_FillValue" type="float">NaN</att>
            <att name="coordinates">lat lon</att>
            <att name="long_name">Absorption due to detritus and CDOM, GIOP Algorithm</att>
            <att name="units">m^-1</att>
            <att name="valid_pixel_expression">(adg_443_giop &gt; -0.5 and adg_443_giop &lt; 5 and adg_443_giop != 0)</att>
        </sourceAttributes -->
        <addAttributes>
            <att name="coordinates">null</att>
            <att name="ioos_category">Unknown</att>
        </addAttributes>
    </dataVariable>
    <dataVariable>
        <sourceName>aph_443_giop</sourceName>
        <destinationName>aph_443_giop</destinationName>
        <dataType>float</dataType>
        <!-- sourceAttributes>
            <att name="_FillValue" type="float">NaN</att>
            <att name="coordinates">lat lon</att>
            <att name="long_name">Absorption due to phytoplankton, GIOP Algorithm</att>
            <att name="units">m^-1</att>
            <att name="valid_pixel_expression">(aph_443_giop &gt; -0.5 and aph_443_giop &lt; 5 and aph_443_giop != 0)</att>
        </sourceAttributes -->
        <addAttributes>
            <att name="coordinates">null</att>
            <att name="ioos_category">Phytoplankton Species</att>
        </addAttributes>
    </dataVariable>
    <dataVariable>
        <sourceName>bbp_s_giop</sourceName>
        <destinationName>bbp_s_giop</destinationName>
        <dataType>float</dataType>
        <!-- sourceAttributes>
            <att name="_FillValue" type="float">NaN</att>
            <att name="coordinates">lat lon</att>
            <att name="long_name">Spectral slope of backscatter, GIOP Algorithm</att>
            <att name="units">m^-1 nm^-1</att>
            <att name="valid_pixel_expression">(bbp_s_giop &gt; -3 and bbp_s_giop &lt; 3 and bbp_s_giop != 0)</att>
        </sourceAttributes -->
        <addAttributes>
            <att name="coordinates">null</att>
            <att name="ioos_category">Unknown</att>
        </addAttributes>
    </dataVariable>
</dataset>
```
