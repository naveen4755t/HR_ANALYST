select
  employee_id,
  date as attendance_date,
  hours_worked,
  leave_type
from {{ source('raw','attendance_raw') }}
