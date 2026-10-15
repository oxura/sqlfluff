{% macro nested_return_values() %}
    {% do return([1, 2, 3]) %}
    This text is after return and must not render.
{% endmacro %}

{% macro nested_return_sum() %}
    {% set values = nested_return_values() %}
    {{ (values | sum) + 1 }}
{% endmacro %}

{% macro nested_return_select_item() -%}
    {{ nested_return_sum() | trim }} AS total
{%- endmacro %}
