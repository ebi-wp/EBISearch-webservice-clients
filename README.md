# EBISearch-webservice-clients

This repository provides a collection of Sample Web Service Clients to consume
EBI's EBI Search Web Service tools via REST APIs.

The RESTful API interface for the EBI Search Web Services is available at
[https://www.ebi.ac.uk/ebisearch/apidoc.ebi](https://www.ebi.ac.uk/ebisearch/apidoc.ebi)

EBI Search application is available at
[https://www.ebi.ac.uk/ebisearch](https://www.ebi.ac.uk/ebisearch)

EBI Search Help & Documentation is available at
[Help & Documentation](https://www.ebi.ac.uk/ebisearch/documentation.ebi)

A collection of REST sample clients for the EBI Search Web Services in Python, Perl and Java.


## Running the clients

[Download the clients](https://github.com/ebi-wp/EBISearch-webservice-clients/archive/master.zip)
or clone the repository:

```bash
git clone https://github.com/ebi-wp/EBISearch-webservice-clients.git
```

### Perl clients [![perl](https://img.shields.io/badge/perl-blue.svg?style=flat)]()

In order to run Perl clients, Perl needs to installed as well as Perl dependencies.

Install dependencies with:
```bash
# To install Perl dependencies run (you might need sudo)
cpan LWP
cpan XML::Simple
cpan LWP::Protocol::https
```

An example test for getting domain details for chebi domain using Perl client:

```bash
perl ./perl/ebeye_lwp.pl  getDomainDetails chebi
```

### Python clients [![python](https://img.shields.io/badge/python-blue.svg?style=flat)]()

In order to run Python clients, Python needs to installed as well as Python dependencies.

Install dependencies with:
```bash
pip install requests
```

An example test for getting domain details for chebi domain using Python client:

```bash
python python/ebeye_requests.py getDomainDetails chebi
```

### Java clients [![java](https://img.shields.io/badge/java-openJDK8-blue.svg?style=flat)]()

In order to run Java clients, OpenJDK 8 needs to installed. *Note Java 9 and above are currently not supported.

The clients are provided here as self-contained JAR files. (The source code is available in the [EBeye_JAXRS-source](https://github.com/ebi-wp/webservice-clients/blob/master/java/jar/EBeye_JAXRS-source.jar))
An example test for getting domain details for chebi domain using Python client:

```bash
java -Djava.ext.dirs=java/lib/ -jar java/jar/EBeye_JAXRS.jar --getDomainDetails chebi
```

## Contact and Support

If you have any problems, suggestions or comments for our services please
contact us via [EBI Support](https://www.ebi.ac.uk/support/index.php?query=WebServices).