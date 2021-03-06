create or replace FUNCTION LOG_CONTENT_CHECK 
(
  INSERT_VAL IN VARCHAR2 
, LOG_CONTENT IN VARCHAR2
, COLUMN_NAME IN VARCHAR2
) RETURN VARCHAR2 AS 
  v_result VARCHAR2(4000);
BEGIN
  v_result := LOG_CONTENT;
  
  IF INSERT_VAL IS NOT NULL THEN
  v_result := v_result || COLUMN_NAME || ':' || INSERT_VAL || ';';
  END IF;
  
  return v_result;
END LOG_CONTENT_CHECK;