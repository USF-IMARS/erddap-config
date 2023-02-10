# erddap-config
Content dir for [docker-erddap](https://hub.docker.com/r/axiom/docker-erddap/) incl setup.xml & dataset.xml

## workflow
1. modify dataset files in `/datasets/` dir
2. run erddap-datasets-xml-builder to generate `datasets.xml` (TODO: see #33)
3. pull new datasets.xml onto erddap server (if using docker a `docker-compose restart` is not needed)

### Adding a new DataSet Checklist:
NOTE: `${HOSTNAME}` is the name of the dockerhost system.
      `${USERNAME}` is your username (must have docker permissions).
      
1. create a file in this repo `/datasets/{dataset_name}/README.md` where `{dataset_name}` is the name you have chosen for your dataset; try to follow the patterns of existing dataset names in `/datasets/`.
1. create a file `/datasets/{dataset_name}/dataset.xml`:
    1. connect to docker host:
        * `ssh ${USERNAME}@${HOSTNAME}
        * for user `alice` accessing the 2023 IMaRS ERDDAP hypervisor this is : `alice@dune.marine.usf.edu`
    1. use tool to auto-generate dataset xml:
        * `docker exec -it erddap  bash -c "cd webapps/erddap/WEB-INF/ && bash GenerateDatasetsXml.sh -verbose"`
    1. copy the xml into your new `/datasets/{dataset_name}/dataset.xml` file
    1. modify the xml
        1. change the name in the xml to match your chosen `dataset_name`  
1. see the `workflow` section above to finish applying the changes

### checking for errors on the ERDDAP server
1. look at `{erddap_server_url/status.html` to see a list of datasets that are failing
1. search the `/erddapdata/logs/log.txt` for errors related to your dataset
1. run `DasDds` to find errors
    * `docker exec -it erddap  bash -c "cd webapps/erddap/WEB-INF/ && bash DasDds.sh -verbose"`
1. once DasDds has no errors, you may need to restart the ERDDAP container to update volumes:
    * `docker-compose restart`
    * in some cases resetting the volumes is needed too:
        * `docker-compose down --rmi all --volumes && docker-compose up -d`
1. watch [${HOSTNAME}/erddap/status.hml](http://${HOSTNAME}.marine.usf.edu:8080/erddap/status.html) for `LoadDatasets` to finish & that all is well.

### puppet
if using the puppet configuration manager, `datasets.xml` on the docker host can be updated via puppet:
    * `sudo /opt/puppetlabs/bin/puppet agent -t`

## additional links
* [setup.xml spec](https://coastwatch.pfeg.noaa.gov/erddap/download/setup.html#setup.xml)
* [datasets.xml spec](https://coastwatch.pfeg.noaa.gov/erddap/download/setupDatasetsXml.html)
* [example content directory](https://github.com/BobSimons/erddapContent)
* [updates to ERDDAP code](https://coastwatch.pfeg.noaa.gov/erddap/download/changes.html)
* [IOOS "Gold Standard" Example configs](https://github.com/ioos/erddap-gold-standard)
