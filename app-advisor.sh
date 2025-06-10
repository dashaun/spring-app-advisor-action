VERSION=1.3.1
curl -L -H "Authorization: Bearer $ARTIFACTORY_TOKEN" -o /tmp/advisor-cli.tar -X GET https://packages.broadcom.com/artifactory/spring-enterprise/com/vmware/tanzu/spring/application-advisor-cli-linux/$VERSION/application-advisor-cli-linux-$VERSION.tar
tar -xf /tmp/advisor-cli.tar --strip-components=1 -C /tmp
install /tmp/advisor /usr/local/bin/advisor

advisor build-config get
#advisor build-config publish --url=${APP_ADVISOR_SERVER}
advisor upgrade-plan get
advisor upgrade-plan apply --push