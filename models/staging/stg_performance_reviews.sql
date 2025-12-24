select
  employee_id,
  review_date,
  performance_score,
  manager_rating
from {{ source('raw','performance_reviews_raw') }}
