/************************************ COMPARE PART A *********************/
PROC SORT DATA=SDW_S110101_PARTA_VW ; 
BY _ALL_;
RUN ;
PROC SORT DATA=ARS_S110101_PARTA_VW ; 
BY _ALL_;
RUN ;
PROC COMPARE BASE=SDW_S110101_PARTA_VW COMPARE=ARS_S110101_PARTA_VW;
ID C0040 C0060 ;
RUN;

/************************************ COMPARE PART B *********************/
PROC SORT DATA=SDW_S110101_PARTB_VW ; 
BY _ALL_;
RUN ;
PROC SORT DATA=ARS_S110101_PARTB_VW ; 
BY _ALL_;
RUN ;
PROC COMPARE BASE=SDW_S110101_PARTB_VW COMPARE=ARS_S110101_PARTB_VW 
CRITERION=0.0001 METHOD=ABSOLUTE;
ID C0040;
RUN;