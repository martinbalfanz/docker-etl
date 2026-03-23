SELECT number, title, cast(score as int) as `Impact Score`, webcompat_priority, net.host(url) as host, ARRAY_TO_STRING(next_action_teams, ",") as team
FROM `moz-fx-dev-dschubert-wckb.webcompat_knowledge_base.scored_site_reports` AS bugs
JOIN `moz-fx-dev-dschubert-wckb.webcompat_knowledge_base.site_reports_next_action` USING(number)
WHERE bugs.resolution = "" AND bugs.is_japan_1000 AND 
  CASE "{{ platforms }}"
    WHEN "All" THEN TRUE
    WHEN "Mobile" THEN is_mobile
    WHEN "Desktop" THEN is_desktop
  END
ORDER BY score DESC
