# EBISearch-webservice-clients

This repository provides a collection of Sample Web Service Clients to consume
EBI's EBISearch Web Service tools via REST and SOAP APIs.

The RESTful API interface for the Job Dispatcher Web Services is available at
[https://www.ebi.ac.uk/ebisearch/apidoc.ebi](https://www.ebi.ac.uk/ebisearch/apidoc.ebi)

A collection of REST sample clients for the EBI Job Dispatcher Web Services in Python, Perl and Java.


## Running the clients

[Download the clients](https://github.com/ebi-wp/EBISearch-webservice-clients/archive/master.zip)
or clone the repository:

```bash
git clone https://github.com/ebi-wp/EBISearch-webservice-clients.git
```

### Perl clients [![perl](https://img.shields.io/badge/perl-5.22.0+-blue.svg?style=flat)]()

In order to run Perl clients, Perl (tested version 5.22.0) needs to installed as well as Perl dependencies.

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

### Python clients [![python](https://img.shields.io/badge/python-3.5+-blue.svg?style=flat)]()

This python client is working fine with Python2 and 3 and it requires the installation of requests dependency only
In order to run Python clients, Perl (tested version 3.6.5) needs to installed as well as Python dependencies.

Install dependencies with:
```bash
pip install requests
```

An example test for getting domain details for chebi domain using Python client:

```bash
python python/ebeye_requests.py getDomainDetails chebi
```

### Java clients [![java](https://img.shields.io/badge/java-1.8-blue.svg?style=flat)]()

In order to run Java clients, Java (tested version 1.8.0_161") as well as ant (tested version 1.10.5),
needs to installed. *Note Java 9 and above are currently not supported.

The clients are provided here as self-contained JAR files. (The source code is available in the [EBeye_JAXRS-source](https://github.com/ebi-wp/webservice-clients/blob/master/java/jar/EBeye_JAXRS-source.jar))
An example test for getting domain details for chebi domain using Python client:

```bash
java -Djava.ext.dirs=java/lib/ -jar java/jar/EBeye_JAXRS.jar --getDomainDetails chebi
```