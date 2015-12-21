[[ -z $MASTERDB_ROOT ]] && export MASTERDB_ROOT=/data/master
[[ -z $MASTERDB_VAR_LIB_MYSQL ]] && export MASTERDB_VAR_LIB_MYSQL=${MASTERDB_ROOT}/var/lib/mysql
#[[ -z $MASTERDB_VAR_LOG_MYSQL ]] && export MASTERDB_VAR_LOG_MYSQL=${MASTERDB_ROOT}/var/log/mysql
#-Migrated to args# [[ -z $MASTERBD_ETC_MYSQL ]] && export MASTERDB_ETC_MYSQL=${MASTERDB_ROOT}/etc/mysql
[[ -z $MASTERBD_ROOT_PASSWORD ]] && export MASTERDB_ROOT_PASSWORD='masterdb_root_password'

docker run -d --name=master_db -p 3306:3306 -e MYSQL_ROOT_PASSWORD=$MASTERDB_ROOT_PASSWORD -v $MASTERDB_VAR_LIB_MYSQL:/var/lib/mysql -v $MASTERDB_ETC_MYSQL:/etc/mysql mariadb #-v $MASTERDB_VAR_LOG_MYSQL:/var/log/mysql 
