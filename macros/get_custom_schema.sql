-- This is a macro file that is used to generate the database and schema names for the resources that are being created.
-- This is used to ensure that the resources are created in the correct location.

-- generate_database_name: used to generate the database name
{% macro generate_database_name(custom_database_name=none, node=none) -%}

    {%- set default_database = target.database -%}
    {%- if custom_database_name is none -%}
        {{ return(default_database) }}
    {%- else -%}
        {{ return(custom_database_name | trim) }}
    {%- endif -%}
{%- endmacro %}

-- generate_schema_name: used to generate the schema name
{% macro generate_schema_name(custom_schema_name, node) -%}

    {%- set default_schema = target.schema -%}
    {%- if custom_schema_name is none -%}
        {{ return(default_schema) }}
     {%- else -%}
        {{ return(custom_schema_name | trim) }}
    {%- endif -%}

{%- endmacro %}