create or replace PROCEDURE WRITE_NEWS_LOG 
(
  TABLE_NAME IN VARCHAR2 
, INSERT_CONTENT IN VARCHAR2 
) AS 
BEGIN
  INSERT INTO LOGGING_NEWS(referenced_table, inserted_content)
VALUES(TABLE_NAME, INSERT_CONTENT); 

END WRITE_NEWS_LOG;