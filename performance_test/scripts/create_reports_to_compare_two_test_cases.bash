#!/user/bin/bash

# usage: create_reports_to_compare_two_test_cases.bash perf_logs test_case1_name test_case2_name

log_dir=${1:-perf_logs}
test_case1_name=${2:-test_case1_name}
test_case2_name=${3:-test_case2_name}

# Create a temporary directory with the report yaml files
cp -r ~/ros_realtime_benchmarks_config/performance_test/reporter/compare_two_test_cases /tmp

# Replace the placeholder names with the specifyied test cases names
sed -i "s/test_case1_name/$test_case1_name/" /tmp/compare_two_test_cases/*.yaml
sed -i "s/test_case2_name/$test_case2_name/" /tmp/compare_two_test_cases/*.yaml

# Create reports
ros2 run performance_report reporter \
--log-dir $log_dir \
--configs /tmp/compare_two_test_cases/*.yaml

# Clean up temp files
rm -rf /tmp/compare_two_test_cases/