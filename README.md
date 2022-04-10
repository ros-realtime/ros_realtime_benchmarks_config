# performance_test_rt_cfg
Configuration files for performance_test real-time benchmarks


## pendulum_demo

```bash
cd my_experiments
bash ~/ros_realtime_benchmarks_config/pendulum_demo/run_experiment.bash
```

## performance_test

Run all the experiments for one test case:

```
bash ~/ros_realtime_benchmarks_config/performance_test/scripts/run_compare_experiment_settings.bash my_experiment
```

Compare RMW implementations:

```bash
bash ~/ros_realtime_benchmarks_config/performance_test/scripts/run_compare_rmw.bash rmw_compare 
```

Add a new test rolling test case:

```bash
bash ~/ros_realtime_benchmarks_config/performance_test/scripts/run_new_test_case.bash rolling_experiments galactic 
# one month later...
bash ~/ros_realtime_benchmarks_config/performance_test/scripts/run_new_test_case.bash rolling_experiments galactic 
```