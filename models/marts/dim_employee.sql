select
  e.employee_id,
  e.full_name,
  e.department,
  e.role,
  e.location,
  e.hire_date,
  e.salary,
  a.exit_date,
  a.exit_reason
from {{ ref('stg_employees') }} e
left join {{ ref('stg_attrition') }} a
  on e.employee_id = a.employee_id
