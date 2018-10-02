# erddap-config
Content dir for [docker-erddap](https://hub.docker.com/r/axiom/docker-erddap/) incl setup.xml & dataset.xml

* [setup.xml spec](https://coastwatch.pfeg.noaa.gov/erddap/download/setup.html#setup.xml)
* [datasets.xml spec](https://coastwatch.pfeg.noaa.gov/erddap/download/setupDatasetsXml.html)
* [example content directory](https://github.com/BobSimons/erddapContent)

## Adding a DataSet Checklist:
1. use tool to auto-generate dataset xml: `user@dockerhost:~$ sudo docker exec -it erddap  bash -c "cd webapps/erddap/WEB-INF/ && bash GenerateDatasetsXml.sh -verbose"`
2. make manual edits to xml & add it to datasets.xml
3. check /erddap/status.html to see if it worked
4. run `DasDds` to identify errors & fix your xml `user@dockerhost:~$ sudo docker exec -it erddap  bash -c "cd webapps/erddap/WEB-INF/ && bash DasDds.sh -verbose"`
