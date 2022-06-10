<script type="text/javascript" src="https://cdn.bokeh.org/bokeh/release/bokeh-{{ bokeh_version|safe }}.min.js"></script>


# {{ title }}

## Latency metrics

<table>
<thead>
  <tr>
    <th>{{ latency_mean_ms|safe }}</th>
    <th>{{ latency_max_ms|safe }}</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>{{ latency_min_ms|safe }}</td>
    <td>{{ latency_variance_ms|safe }}</td>
  </tr>
</tbody>
</table>

## Sample metrics

{{ num_samples_lost|safe }}

## System metrics

<table>
<thead>
  <tr>
    <th>{{ minor_page_faults|safe }}}</th>
    <th>{{ major_page_faults|safe }}</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>{{ cpu_usage|safe }}</td>
    <td>{{ memory_usage|safe }}</td>
  </tr>
</tbody>
</table>