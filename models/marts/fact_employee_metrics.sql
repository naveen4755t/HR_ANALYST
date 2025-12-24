
select
  p.employee_id,
  avg(p.performance_score) as avg_performance_score,
  avg(p.manager_rating) as avg_manager_rating,
  max(p.review_date) as last_review_date,
  count(*) as review_count
from {{ ref('stg_performance_reviews') }} p
group by p.employee_id
