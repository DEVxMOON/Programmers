-- 코드를 입력하세요
SELECT AI.ANIMAL_ID, AI.NAME FROM ANIMAL_INS AI JOIN ANIMAL_OUTS AO ON AI.ANIMAL_ID=AO.ANIMAL_ID
ORDER BY AI.DATETIME-AO.DATETIME
LIMIT 2;