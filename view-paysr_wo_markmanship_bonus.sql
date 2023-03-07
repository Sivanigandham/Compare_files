CREATE VIEW Paysr_without_Marksmanship_Bonus AS
SELECT PAYSR_EID, JOB_PROFILE, DEPARTMENT_NBR, DEPARTMENT_TITLE, LEGACY_STATUS, PAYSR_PAY_LEVEL, PAYSR_BONUS_CODE
FROM hrp_al_wd_paysr_bonus_analysis
WHERE PAYSR_EID IS NOT NULL
  AND JOB_PROFILE IS NOT NULL
  AND DEPARTMENT_NBR IS NOT NULL
  AND DEPARTMENT_TITLE IS NOT NULL
  AND LEGACY_STATUS IS NOT NULL
  AND PAYSR_PAY_LEVEL IS NOT NULL
  AND PAYSR_BONUS_CODE NOT IN ('Marksman');
  
select * from PAYSR_WITHOUT_MARKSMANSHIP_BONUS;

CREATE VIEW WD_without_Marksmanship_Bonus AS
SELECT WD_EID, JOB_PROFILE, DEPARTMENT_NBR, DEPARTMENT_TITLE, LEGACY_STATUS, WD_PAY_LEVEL, WD_BONUS_CODE
FROM hrp_al_wd_paysr_bonus_analysis
WHERE WD_EID IS NOT NULL
  AND JOB_PROFILE IS NOT NULL
  AND DEPARTMENT_NBR IS NOT NULL
  AND DEPARTMENT_TITLE IS NOT NULL
  AND LEGACY_STATUS IS NOT NULL
  AND WD_PAY_LEVEL IS NOT NULL
  AND WD_BONUS_CODE NOT IN ('Marksman');
  
select * from WD_WITHOUT_MARKSMANSHIP_BONUS;


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

CREATE VIEW wd_only_Marksmanship_Bonus AS
SELECT wd_EID, JOB_PROFILE, DEPARTMENT_NBR, DEPARTMENT_TITLE, LEGACY_STATUS, wd_PAY_LEVEL, wd_BONUS_CODE
FROM hrp_al_wd_paysr_bonus_analysis
WHERE wd_EID IS NOT NULL
  AND JOB_PROFILE IS NOT NULL
  AND DEPARTMENT_NBR IS NOT NULL
  AND DEPARTMENT_TITLE IS NOT NULL
  AND LEGACY_STATUS IS NOT NULL
  AND wd_PAY_LEVEL IS NOT NULL
  AND wd_BONUS_CODE = 'Marksman';
  
select * from wd_only_Marksmanship_Bonus;






