CREATE VIEW paysr_only_Marksmanship_Bonus AS
SELECT PAYSR_EID, JOB_PROFILE, DEPARTMENT_NBR, DEPARTMENT_TITLE, LEGACY_STATUS, PAYSR_PAY_LEVEL, PAYSR_BONUS_CODE
FROM hrp_al_wd_paysr_bonus_analysis
WHERE PAYSR_EID IS NOT NULL
  AND JOB_PROFILE IS NOT NULL
  AND DEPARTMENT_NBR IS NOT NULL
  AND DEPARTMENT_TITLE IS NOT NULL
  AND LEGACY_STATUS IS NOT NULL
  AND PAYSR_PAY_LEVEL IS NOT NULL
  AND PAYSR_BONUS_CODE = 'Marksman';

select * from paysr_only_Marksmanship_Bonus;