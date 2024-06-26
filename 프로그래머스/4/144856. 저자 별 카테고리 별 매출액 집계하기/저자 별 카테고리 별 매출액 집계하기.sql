-- 코드를 입력하세요
SELECT A.AUTHOR_ID, AUTHOR_NAME, CATEGORY, SUM((SALES*PRICE)) AS TOTAL_SALES
FROM BOOK B
JOIN AUTHOR A ON B.AUTHOR_ID = A.AUTHOR_ID
JOIN BOOK_SALES S ON S.BOOK_ID = B.BOOK_ID
WHERE YEAR(S.SALES_DATE) = 2022 AND MONTH(S.SALES_DATE) = 1
GROUP BY CATEGORY, AUTHOR_ID
ORDER BY A.AUTHOR_ID, CATEGORY DESC