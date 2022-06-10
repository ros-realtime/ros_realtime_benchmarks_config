<script type="text/javascript" src="https://cdn.bokeh.org/bokeh/release/bokeh-{{ bokeh_version|safe }}.min.js"></script>


# {{ title }}

## Latency metrics

{{ latency_mean_ms|safe }}

{{ latency_max_ms|safe }}

{{ latency_min_ms|safe }}

{{ latency_variance_ms|safe }}

## Sample metrics

{{ num_samples_lost|safe }}

## System metrics

{{ minor_page_faults|safe }}

{{ major_page_faults|safe }}

{{ cpu_usage|safe }}

{{ memory_usage|safe }}