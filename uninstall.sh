source ./conf
source ./functions

# uninstall fdb grafana
uninstall_fdb_grafana
# uninstall grafana operator
uninstall_grafana_operator
# uninstall grafana thanos rbac
remove_grafana_thanos_rbac
# remove grafana project
remove_grafana_ns

# uninstall fdb exporter
uninstall_fdb_exporter
# uninstall fdb cluster
uninstall_fdb_cluster
# uninstall fdb operator
uninstall_fdb_operator
# remove fdb project
remove_fdb_ns

# revert openshift monitoring changes
revert_openshift_monitoring

rm -rf fdb-kubernetes-operator