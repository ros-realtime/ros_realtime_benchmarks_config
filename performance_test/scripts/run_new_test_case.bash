#!/user/bin/bash

# usage: bash run_new_test_case.bash rolling_experiments galactic [rolling-tag]
# description: runs the experiments to compare with an existing reference test case

timestamp=$(date -d "today" +"%Y-%m-%d-%H-%M")

log_dir=${1:-perf_logs}
test_case1=${2:-galactic}
test_case2=${3:-rolling-${timestamp}}

# Run all the experiments for the reference test case
# The results should already be there so the experiments are expected to be skipped
# Todo: check the experiments exits in the directory instead of running the experiment
ros2 run performance_report runner \
--log-dir $log_dir \
--test-name ${test_case1}  \
--configs ~/ros_realtime_benchmarks_config/performance_test/runner/run_compare_all.yaml

# Run all the experiments for the new test case
ros2 run performance_report runner \
--log-dir $log_dir \
--test-name ${test_case2} \
--configs ~/ros_realtime_benchmarks_config/performance_test/runner/run_compare_all.yaml

# Generate reports comparing the new test case and with a reference
bash ~/ros_realtime_benchmarks_config/performance_test/scripts/create_reports_to_compare_two_test_cases.bash \
$log_dir galactic ${test_case2}