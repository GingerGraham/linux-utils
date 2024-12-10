# File: /usr/local/bin/log_time.sh
LOG_FILE="/var/log/time_log.log"
LOG_MESSAGE="$(date '+%Y-%m-%d %H:%M:%S') - Script executed"
echo "$LOG_MESSAGE" | tee -a $LOG_FILE | logger -t log_time_script
