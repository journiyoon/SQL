# 보호소 in 중성화 x => 보호소 out 중성화o
# 아이디 | 생물 종 | 이름 (아이디 순 조회)
-- 코드를 입력하세요
SELECT AI.ANIMAL_ID, AI.ANIMAL_TYPE, AI.NAME
FROM ANIMAL_INS AI
LEFT JOIN ANIMAL_OUTS AO ON AI.ANIMAL_ID=AO.ANIMAL_ID
WHERE SUBSTRING(AI.SEX_UPON_INTAKE,1,6) ='Intact'
AND (SUBSTRING(AO.SEX_UPON_OUTCOME, 1, 6)='Spayed'OR
SUBSTRING(AO.SEX_UPON_OUTCOME,1,8)='Neutered')
ORDER BY AI.ANIMAL_ID ASC;