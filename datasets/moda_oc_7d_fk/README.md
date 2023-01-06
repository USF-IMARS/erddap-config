# moda_oc_7d_fk
## provenance
* modis aqua l2 data is downloaded from NASA obdaac
* Dan Otis processes L2 into L3 data using MATLAB-orchestrated SeaDAS and GPT scripts
* data is `rsync`d onto the ERDDAP server

## usages
* FK NMS Early-Alert Dashboard

## aliases
* previously named OC_c7fe_e1ee_913c
* `/srv/imars_objects/fk/MEAN_7D_MODA/OC/`
* `/srv/imars_objects/moda_oc_7d_fk`

More details in [this spreadsheet](https://docs.google.com/spreadsheets/d/18fJk0qeZiis7UMdJ0QjfMAcVJGco2TpqtRMaDSt9rWA/edit?usp=sharing).

--------------------------------------------

```
<!-- Modis Ocean Color ================================================================
includes chlor a and ABI 
    <!-- sourceAttributes>
        <att name="Composite_end_date">10/21/2022</att>
        <att name="Composite_start_date">10/15/2022</att>
        <att name="Contact">Dan Otis - dotis@usf.edu</att>
        <att name="CreationDate">10/22/2022 05:01:20</att>
        <att name="Image_size">484 pixels(N-S) x 715 pixels(E-W)</att>
        <att name="Lat-Lon_Limits">23.0104N to 27.4N -85W to -78.511W</att>
        <att name="Ocean_color_masks_based_on_L2_flags">LAND,CLDICE,HIGLINT</att>
        <att name="Original_Image_Format">Level-2(NetCDF)</att>
        <att name="Original_Image_Source">NASA Ocean Biology Processing Group</att>
        <att name="Processing_and_binning">USF IMaRS</att>
        <att name="Projection">Equidistant Cylindrical</att>
        <att name="Region">Florida Keys (FK)</att>
        <att name="Sensor">MODIS-Aqua</att>
        <att name="Time_interval">7-Day Composite (median)</att>
    </sourceAttributes -->

example filename : MODA_2015316_2015322_7D_FK_OC.nc
-->
```

