# Global logging configuration
#log4j.rootLogger=INFO,daily
log4j.rootLogger=info, stdout

# Console output...
log4j.appender.stdout=org.apache.log4j.ConsoleAppender
log4j.appender.stdout.layout=org.apache.log4j.PatternLayout
log4j.appender.stdout.layout.ConversionPattern=%5p [%t] %c - %m%n

#
log4j.logger.org.springframework=INFO

log4j.logger.org.hibernate=info
#log4j.logger.org.hibernate.hql.ast.AST=info
log4j.logger.org.hibernate.SQL=info
#log4j.logger.org.hibernate.type= trace
#log4j.logger.org.hibernate.tool.hbm2ddl=warn
#log4j.logger.org.hibernate.hql=debug
#log4j.logger.org.hibernate.cache=info
#log4j.logger.org.hibernate.jdbc=info

# daily Appender
log4j.appender.daily=org.apache.log4j.DailyRollingFileAppender
log4j.appender.daily.File=<#noparse>${catalina.home}${file.separator}logs${file.separator}</#noparse>${bcData.name}.log
log4j.appender.daily.DatePattern='.'yyyy-MM-dd
log4j.appender.daily.layout=org.apache.log4j.PatternLayout
log4j.appender.daily.layout.ConversionPattern=%d %-5p [%t] %c - %m%n
