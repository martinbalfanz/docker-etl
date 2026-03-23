SELECT date, cast(bug_count_japan_1000 as int) as bug_count,
             cast(not_supported_score_japan_1000 as int) as not_supported_score,
             cast(total_score_japan_1000 as int) as total_score,
             cast(needs_diagnosis_score_japan_1000 as int) as needs_diagnosis_score,
             cast(bug_count_japan_1000_mobile as int) as bug_count_mobile,
             cast(not_supported_score_japan_1000_mobile as int) as not_supported_score_mobile,
             cast(total_score_japan_1000_mobile as int) as total_score_mobile,
             cast(needs_diagnosis_score_japan_1000_mobile as int) as needs_diagnosis_score_mobile,
FROM `moz-fx-dev-dschubert-wckb.webcompat_knowledge_base.webcompat_topline_metric_daily`
ORDER BY date DESC;
