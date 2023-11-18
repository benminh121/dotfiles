# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/bash_profile.pre.bash" ]] && builtin source "$HOME/.fig/shell/bash_profile.pre.bash"
source ~/.profile

## Java
export JAVA_HOME=$(/usr/libexec/java_home -v 11)

## Gcloud
export GCLOUD=/Users/benminh1201/google-cloud-sdk
export PATH=$PATH:/$GCLOUD/bin
export GOOGLE_APPLICATION_CREDENTIALS=/Users/benminh1201/.google/credentials/google_credentials.json

## terraform
export PATH=$PATH:/Users/benminh1201

## NIFI
export NIFI_HOME=/Users/benminh1201/nifi/nifi-1.16.0
export PATH=$PATH:/$NIFI_HOME/bin

## HIVE
export HIVE_HOME=/Users/benminh1201/hive/apache-hive-3.1.3-bin
export PATH=$PATH:/$HIVE_HOME/bin

## HBASE
export HBASE_HOME=/Users/benminh1201/hbase/hbase-2.4.11
export PATH=$PATH:$HBASE_HOME/bin

## CASSANDRA
export CASSANDRA_HOME=/Users/benminh1201/cassandra/apache-cassandra-3.11.12
export PATH=$PATH:$CASSANDRA_HOME/bin

## HADOOP
export HADOOP_HOME=/Users/benminh1201/hadoop-3.3.4
export PATH=$PATH:$HADOOP_HOME/bin

## Scala
export SCALA_HOME=/Users/benminh1201/scala/scala3-3.2.2
export PATH="$SCALA_HOME/bin/:$PATH"

## Spark
## export SPARK_HOME=/Users/benminh1201/spark/spark-3.3.2-bin-hadoop3
## export PATH="$SPARK_HOME/bin/:$PATH"
## export PYSPARK_PYTHON=python


##sbt
export SBT_HOME=/Users/benminh1201/sbt
export PATH="$SBT_HOME/bin/:$PATH"

#node
export NODE_HOME=/Users/benminh1201/node
export PATH="$NODE_HOME/bin/:$PATH"

export KUBECONFIG=/Users/benminh1201/.kube/config:/Users/benminh1201/.kube/eks004

## GO
export GO_HOME=/Users/benminh1201/go
export PATH=$PATH:$GO_HOME/bin

alias vi="nvim"
alias kbs="kubectl"

export LOCALSTACK_API_KEY=

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/bash_profile.post.bash" ]] && builtin source "$HOME/.fig/shell/bash_profile.post.bash"
