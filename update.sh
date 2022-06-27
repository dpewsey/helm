[ -z $1 ] && echo please state the chart you want to package && exit

helm lint stable/$1
helm package stable/$1 -d charts/
helm repo index charts
