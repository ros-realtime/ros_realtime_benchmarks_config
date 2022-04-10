#!/user/bin/bash

# usage: bash run_compare_rmw.bash my_experiment
# description: runs experiments to compare different rmw implementations

log_dir=${1:-perf_logs}

# Run all the experiments for rmw_cyclonedds_cpp
export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp
ros2 run performance_report runner \
--log-dir $log_dir \
--test-name $RMW_IMPLEMENTATION \
--configs ~/ros_realtime_benchmarks_config/performance_test/runner/run_compare_all.yaml

# Run all the experiments for rmw_fastrtps_cpp
export RMW_IMPLEMENTATION=rmw_fastrtps_cpp 
ros2 run performance_report runner \
--log-dir $log_dir \
--test-name $RMW_IMPLEMENTATION \
--configs ~/ros_realtime_benchmarks_config/performance_test/runner/run_compare_all.yaml

# Restore original rmw implementation
export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp

# Generate reports comparing rmw implementations
bash ~/ros_realtime_benchmarks_config/performance_test/scripts/create_reports_to_compare_two_test_cases.bash $log_dir rmw_cyclonedds_cpp rmw_fastrtps_cpp