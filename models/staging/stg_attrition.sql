select
  employee_id,
  exit_date,
  exit_reason
from {{ source('raw','attrition_raw') }}
