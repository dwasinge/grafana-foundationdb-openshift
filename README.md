# FoundationDB Grafana Dashboard

This repository will install a FoundationDB Grafana Dashboard on OpenShift using FoundationDB exporter and Prometheus.

# Scripts

## Configuration

The [conf](conf) file can be used to setup the scripts for install/uninstall.

## Install

The [install.sh](install.sh) script will perform the following actions:

- configure openshift monitoring
- configure grafana thanos service account, token, role bindings
- install foundationdb operator
- install a simple foundationdb cluster
- install foundationdb exporter to expose metrics
- install grafana operator
- install a grafana instance, datasource, and dashboard for the foundation db metrics

## Uninstall

The [uninstall.sh](uninstall.sh) script will uninstall/revert all changes made by the install script.

NOTE:  The uninstall script currently does not remove the CRDs for the FoundationDB Operator or the Grafana Operator.

### Grafana Operator CRDs

- grafanadashboards.grafana.integreatly.org
- grafanadatasources.grafana.integreatly.org
- grafanafolders.grafana.integreatly.org
- grafanas.grafana.integreatly.org

### FoundationDB Operator CRDs

- foundationdbbackups.apps.foundationdb.org
- foundationdbclusters.apps.foundationdb.org
- foundationdbrestores.apps.foundationdb.org

# Helm Charts

## FoundationDB Kubernetes Operator

[FoundationDB Kubernetes Operator](https://github.com/FoundationDB/fdb-kubernetes-operator) is being used to manage the FoundationDB cluster.

## FoundationDB Exporter

The [FoundationDB Exporter](charts/fdbexporter) chart is being used to install and configure a FoundationDB Exporter deployment.  This is what is exposing FoundationDB metrics to Prometheus.

## Grafana Operator

The - [Grafana Operator](https://github.com/grafana-operator/grafana-operator/tree/master) is being used to manage the Grafana resources.

## Grafana FDB

The [Grafana FDB](charts/grafanafdb) chart is being used to install the grafana instance, the grafana datasource, and the grafana dashboard for FoundationDB.

## References

- [FoundationDB Exporter](https://github.com/aikoven/foundationdb-exporter)
- [FoundationDB Kubernetes Operator](https://github.com/FoundationDB/fdb-kubernetes-operator)
- [Grafana Operator](https://github.com/grafana-operator/grafana-operator/tree/master)
- [Grafana Operator Documentation](https://grafana-operator.github.io/grafana-operator/docs/)