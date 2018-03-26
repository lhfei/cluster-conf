# /etc/profile

# System wide environment and startup programs, for login setup
# Functions and aliases go in /etc/bashrc

# It's NOT a good idea to change this file unless you know what you
# are doing. It's much better to create a custom.sh shell script in
# /etc/profile.d/ to make custom changes to your environment, as this
# will prevent the need for merging in future updates.

pathmunge () {
    case ":${PATH}:" in
        *:"$1":*)
            ;;
        *)
            if [ "$2" = "after" ] ; then
                PATH=$PATH:$1
            else
                PATH=$1:$PATH
            fi
    esac
}


if [ -x /usr/bin/id ]; then
    if [ -z "$EUID" ]; then
        # ksh workaround
        EUID=`id -u`
        UID=`id -ru`
    fi
    USER="`id -un`"
    LOGNAME=$USER
    MAIL="/var/spool/mail/$USER"
fi

# Path manipulation
if [ "$EUID" = "0" ]; then
    pathmunge /sbin
    pathmunge /usr/sbin
    pathmunge /usr/local/sbin
else
    pathmunge /usr/local/sbin after
    pathmunge /usr/sbin after
    pathmunge /sbin after
fi

HOSTNAME=`/bin/hostname 2>/dev/null`
HISTSIZE=1000
if [ "$HISTCONTROL" = "ignorespace" ] ; then
    export HISTCONTROL=ignoreboth
else
    export HISTCONTROL=ignoredups
fi

export PATH USER LOGNAME MAIL HOSTNAME HISTSIZE HISTCONTROL

# By default, we want umask to get set. This sets it for login shell
# Current threshold for system reserved uid/gids is 200
# You could check uidgid reservation validity in
# /usr/share/doc/setup-*/uidgid file
if [ $UID -gt 199 ] && [ "`id -gn`" = "`id -un`" ]; then
    umask 002
else
    umask 022
fi

for i in /etc/profile.d/*.sh ; do
    if [ -r "$i" ]; then
        if [ "${-#*i}" != "$-" ]; then
            . "$i"
        else
            . "$i" >/dev/null 2>&1
        fi
    fi
done

unset i
unset -f pathmunge


#####################################################
#
#####################################################

umask 0022

JAVA_HOME=/usr/java/jdk1.8.0_73
JRE_HOME=$JAVA_HOME/jre

SCALA_HOME=/usr/local/cloud/scala-2.11.8
#####################################################
# HDP Suites
#####################################################
HDP_ROOT=/usr/hdp/2.4.0.0-169

HADOOP_HOME=$HDP_ROOT/hadoop
SPARK_HOME=$HDP_ROOT/spark
HIVE_HOME=$HDP_ROOT/hive
HBASE_HOME=$HDP_ROOT/hbase
ZOOKEEPER_HOME=$HDP_ROOT/zookeeper
SQOOP_HOME=$HDP_ROOT/sqoop
STORM_HOME=$HDP_ROOT/storm
KAFKA_HOME=$HDP_ROOT/kafka
OOZIE_HOME=$HDP_ROOT/oozie
FLUME_HOME=$HDP_ROOT/flume

HDP_SUITES_HOME=$HADOOP_HOME/bin:$SPARK_HOME/bin:$HIVE_HOME/bin:$HBASE_HOME/bin:$ZOOKEEPER_HOME/bin:$SQOOP_HOME/bin:$STORM_HOME/bin:$KAFKA_HOME/bin:$OOZIE_HOME/bin:$FLUME_HOME/bin 

#### HDP_SUITES_HOME End ############################


# Builts Home 
MAVEN_HOME=/usr/local/cloud/apache-maven-3.3.9 
ANT_HOME="/usr/local/cloud/ant" 
GRADLE_HOME=/usr/local/cloud/gradle-2.11
SBT_HOME=/usr/local/cloud/sbt-0.13.11
BUILTS_HOME=$MAVEN_HOME/bin:$ANT_HOME/bin:$GRADLE_HOME/bin:$SBT_HOME/bin

#### BUILTS_HOME END ####

NUTCH_HOME=/usr/local/cloud/nutch/apache-nutch-1.11
SOLR_HOME=/usr/local/cloud/solr-6.0.0/

PATH=$PATH:$JAVA_HOME/bin:$JRE_HOME/bin:$HDP_SUITES_HOME:$BUILTS_HOME:$NUTCH_HOME/bin:$SCALA_HOME/bin:$SOLR_HOME/bin


export MAVEN_HOME
export ANT_HOME
export GRADLE_HOME
export SBT_HOME
export SCALA_HOME

export JAVA_HOME
export JRE_HOME

export HADOOP_HOME
export SPARK_HOME
export HIVE_HOME
export HBASE_HOME
export ZOOKEEPER_HOME
export SQOOP_HOME
export STORM_HOME
export KAFKA_HOME
export OOZIE_HOME
export FLUME_HOME

export NUTCH_HOME
export SOLR_HOME


export PATH
