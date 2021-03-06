# erddap-config
Content dir for [docker-erddap](https://hub.docker.com/r/axiom/docker-erddap/) incl setup.xml & dataset.xml

* [setup.xml spec](https://coastwatch.pfeg.noaa.gov/erddap/download/setup.html#setup.xml)
* [datasets.xml spec](https://coastwatch.pfeg.noaa.gov/erddap/download/setupDatasetsXml.html)
* [example content directory](https://github.com/BobSimons/erddapContent)
* [updates to ERDDAP code](https://coastwatch.pfeg.noaa.gov/erddap/download/changes.html)
* [IOOS "Gold Standard" Example configs](https://github.com/ioos/erddap-gold-standard)

## Adding a DataSet Checklist:
NOTE: `${HOSTNAME}` is the name of the dockerhost system.
Examples: imars-physalis, imars-dockerhost-dune.
Instead of typing `${HOSTNAME}` use the name of the host you are working with.
0. connect to docker host:
    * `ssh imars-admin@${HOSTNAME}
1. use tool to auto-generate dataset xml:
    * `sudo docker exec -it erddap  bash -c "cd webapps/erddap/WEB-INF/ && bash GenerateDatasetsXml.sh -verbose"`
2. copy xml & add it to `datasets.xml` here
3. update `datasets.xml` on the docker host via puppet:
    * `sudo /opt/puppetlabs/bin/puppet agent -t`
4. run `DasDds` to find errors
    * `sudo docker exec -it erddap  bash -c "cd webapps/erddap/WEB-INF/ && bash DasDds.sh -verbose"`
5. fix xml on github
6. repeat 3-5 as needed
7. once DasDds has no errors, restart the ERDDAP container to make the data reload:
    * `sudo docker restart erddap`
8. watch [${HOSTNAME}/erddap/status.hml](http://${HOSTNAME}.marine.usf.edu:8080/erddap/status.html) for `LoadDatasets` to finish & ensure your new one did not fail.
