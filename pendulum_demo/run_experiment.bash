#!/user/bin/bash

# run the demo
# TODO: parametrize some settings
pendulum_demo -d 200mb -t 90 -s fifo -u 1ms -i 60000 -f pendulum_demo_results

# Generate the plots
rttest_plot pendulum_demo_results

# Generate analysis file
wget https://raw.githubusercontent.com/ros2/realtime_support/master/rttest/scripts/analyze.py
python3 analyze.py pendulum_demo_results | tee pendulum_demo_results_statistics.txt
mv pendulum_demo_results pendulum_demo_results.txt

# Generate html 
mkdir plots experiments
mv pendulum_demo_results*.svg plots
mv pendulum_demo_results*.txt experiments
cp ~/ros_realtime_benchmarks_config/pendulum_demo/pendulum_results.html .

# Clean up
rm analyze.py
