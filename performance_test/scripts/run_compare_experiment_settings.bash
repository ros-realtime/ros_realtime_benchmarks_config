#!/user/bin/bash

# usage: run_compare_experiment_settings.bash my_log_dir
# description: runs experiments to compare different experiments
# settings: communication means, transport, message size, priority, etc

log_dir=${1:-perf_logs}

# Run experiments
ros2 run performance_report runner \
--log-dir $log_dir \
--test-name experiments \
--configs ~/ros_realtime_benchmarks_config/performance_test/runner/run_compare_all.yaml

# Create reports
ros2 run performance_report reporter \
--log-dir $log_dir \
--configs ~/ros_realtime_benchmarks_config/performance_test/reporter/compare_experiment_settings/*.yaml
