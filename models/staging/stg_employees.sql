select
  employee_id,
  full_name,
  department,
  role,
  location,
  hire_date,
  salary
from {{ source('raw','employees_raw') }}
