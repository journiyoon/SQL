# 고양이와 개가 각각 몇 마리 있는지 조회(고양이 => 개 순서)
# 동물 타입 | 개수
-- 코드를 입력하세요
SELECT ANIMAL_TYPE, COUNT(*) count
FROM ANIMAL_INS
WHERE ANIMAL_TYPE='CAT'
OR ANIMAL_TYPE='DOG'
GROUP BY ANIMAL_TYPE
ORDER BY ANIMAL_TYPE;
-- 왜 오답일까...?
-- 정렬이 없어서 오답이었다.


-- 참고할만한 풀이
SELECT ANIMAL_TYPE, COUNT(*) 
FROM ANIMAL_INS 
WHERE ANIMAL_TYPE IN ('Cat', 'Dog') 
GROUP BY 1 
ORDER BY 1