CREATE DATABASE fars; 

 CREATE TABLE accidents (
    ST_CASE text PRIMARY KEY, 
    VE_FORMS int, 
    PVH_INVL int, 
    COUNTY text, 
    CITY text, 
    MONTH int, 
    DAY int, 
    DAY_WEEK int, 
    HOUR int,  
    RUR_URB text,  
    SP_JUR text,
    LATITUDE numeric, 
    LONGITUD numeric,
    HARM_EV text, 
    MAN_COLL text,  
    RELJCT2 text, 
    TYP_INT text, 
    REL_ROAD text, 
    WRK_ZONE text, 
    LGT_COND text,  
    WEATHER text, 
    FATALS int
 );

create table accidents2 (
 STATE text,
 STATENAME text,
 ST_CASE text,
 VE_TOTAL text,
 VE_FORMS text,
 PVH_INVL text,PEDS text,
 PERNOTMVIT text,PERMVIT text,PERSONS text,COUNTY text,COUNTYNAME text,CITY text,CITYNAME text,
 DAY text,DAYNAME text,MONTH text,MONTHNAME text,YEAR text,DAY_WEEK text,DAY_WEEKNAME text,
 HOUR text,HOURNAME text,MINUTE text,MINUTENAME text,NHS text,NHSNAME text,ROUTE text,ROUTENAME text,
 TWAY_ID text,TWAY_ID2 text,RUR_URB text,RUR_URBNAME text,FUNC_SYS text,FUNC_SYSNAME text,RD_OWNER text,
 RD_OWNERNAME text,MILEPT text,MILEPTNAME text,LATITUDE text,LATITUDENAME text,LONGITUD text,LONGITUDNAME text,
 SP_JUR text,SP_JURNAME text,HARM_EV text,HARM_EVNAME text,MAN_COLL text,MAN_COLLNAME text,RELJCT1 text,
 RELJCT1NAME text,RELJCT2 text,RELJCT2NAME text,TYP_INT text,TYP_INTNAME text,WRK_ZONE text,WRK_ZONENAME text,
 REL_ROAD text,REL_ROADNAME text,LGT_COND text,LGT_CONDNAME text,WEATHER text,WEATHERNAME text,SCH_BUS text,
 SCH_BUSNAME text,RAIL text,RAILNAME text,NOT_HOUR text,NOT_HOURNAME text,NOT_MIN text,NOT_MINNAME text,
 ARR_HOUR text,ARR_HOURNAME text,ARR_MIN text,ARR_MINNAME text,HOSP_HR text,HOSP_HRNAME text,HOSP_MN text,
 HOSP_MNNAME text,FATALS text,DRUNK_DR text); 


 COPY accidents2 from '/Users/charleshanks/Desktop/MSDS/SPRING_23/ML/FARS2020NationalCSV/accident.csv'
 WITH (FORMAT CSV, HEADER); 

drop table accidents; 

alter table accidents2 rename to accidents; 

drop table vehicles; 

create table vehicles (
STATE text, STATENAME text, ST_CASE text, VEH_NO text, VE_FORMS text, NUMOCCS text, NUMOCCSNAME text, DAY text, DAYNAME text, MONTH text, MONTHNAME text, HOUR text, HOURNAME text, MINUTE text, MINUTENAME text, HARM_EV text, HARM_EVNAME text, MAN_COLL text, MAN_COLLNAME text, UNITTYPE text, UNITTYPENAME text, HIT_RUN text, HIT_RUNNAME text, REG_STAT text, REG_STATNAME text, OWNER text, OWNERNAME text, MAKE text, MAKENAME text, MODEL text, MAK_MOD text, MAK_MODNAME text, BODY_TYP text, BODY_TYPNAME text, MOD_YEAR text, MOD_YEARNAME text, VIN text, VINNAME text, VIN_1 text, VIN_2 text, VIN_3 text, VIN_4 text, VIN_5 text, VIN_6 text, VIN_7 text, VIN_8 text, VIN_9 text, VIN_10 text, VIN_11 text, VIN_12 text, TOW_VEH text, TOW_VEHNAME text, J_KNIFE text, J_KNIFENAME text, MCARR_I1 text, MCARR_I1NAME text, MCARR_I2 text, MCARR_I2NAME text, MCARR_ID text, MCARR_IDNAME text, V_CONFIG text, V_CONFIGNAME text, CARGO_BT text, CARGO_BTNAME text, HAZ_INV text, HAZ_INVNAME text, HAZ_PLAC text, HAZ_PLACNAME text, HAZ_ID text, HAZ_IDNAME text, HAZ_CNO text, HAZ_CNONAME text, HAZ_REL text, HAZ_RELNAME text, BUS_USE text, BUS_USENAME text, SPEC_USE text, SPEC_USENAME text, EMER_USE text, EMER_USENAME text, TRAV_SP text, TRAV_SPNAME text, UNDERIDE text, UNDERIDENAME text, ROLLOVER text, ROLLOVERNAME text, ROLINLOC text, ROLINLOCNAME text, IMPACT1 text, IMPACT1NAME text, DEFORMED text, DEFORMEDNAME text, TOWED text, TOWEDNAME text, M_HARM text, M_HARMNAME text, FIRE_EXP text, FIRE_EXPNAME text, DR_PRES text, DR_PRESNAME text, L_STATE text, L_STATENAME text, DR_ZIP text, DR_ZIPNAME text, L_STATUS text, L_STATUSNAME text, L_TYPE text, L_TYPENAME text, CDL_STAT text, CDL_STATNAME text, L_ENDORS text, L_ENDORSNAME text, L_COMPL text, L_COMPLNAME text, L_RESTRI text, L_RESTRINAME text, DR_HGT text, DR_HGTNAME text, DR_WGT text, DR_WGTNAME text, PREV_ACC text, PREV_ACCNAME text, PREV_SUS1 text, PREV_SUS1NAME text, PREV_SUS2 text, PREV_SUS2NAME text, PREV_SUS3 text, PREV_SUS3NAME text, PREV_DWI text, PREV_DWINAME text, PREV_SPD text, PREV_SPDNAME text, PREV_OTH text, PREV_OTHNAME text, FIRST_MO text, FIRST_MONAME text, FIRST_YR text, FIRST_YRNAME text, LAST_MO text, LAST_MONAME text, LAST_YR text, LAST_YRNAME text, SPEEDREL text, SPEEDRELNAME text, VTRAFWAY text, VTRAFWAYNAME text, VNUM_LAN text, VNUM_LANNAME text, VSPD_LIM text, VSPD_LIMNAME text, VALIGN text, VALIGNNAME text, VPROFILE text, VPROFILENAME text, VPAVETYP text, VPAVETYPNAME text, VSURCOND text, VSURCONDNAME text, VTRAFCON text, VTRAFCONNAME text, VTCONT_F text, VTCONT_FNAME text, P_CRASH1 text, P_CRASH1NAME text, P_CRASH2 text, P_CRASH2NAME text, P_CRASH3 text, P_CRASH3NAME text, PCRASH4 text, PCRASH4NAME text, PCRASH5 text, PCRASH5NAME text, ACC_TYPE text, ACC_TYPENAME text, TRLR1VIN text, TRLR1VINNAME text, TRLR2VIN text, TRLR2VINNAME text, TRLR3VIN text, TRLR3VINNAME text, DEATHS text, DR_DRINK text, DR_DRINKNAME text, VPICMAKE text, VPICMAKENAME text, VPICMODEL text, VPICMODELNAME text, VPICBODYCLASS text, VPICBODYCLASSNAME text, ICFINALBODY text, ICFINALBODYNAME text, GVWR_FROM text, GVWR_FROMNAME text, GVWR_TO text, GVWR_TONAME text, TRLR1GVWR text, TRLR1GVWRNAME text, TRLR2GVWR text, TRLR2GVWRNAME text, TRLR3GVWR text, TRLR3GVWRNAME text);  

 COPY vehicles from '/Users/charleshanks/Desktop/MSDS/SPRING_23/ML/FARS2020NationalCSV/vehicle.csv'
 WITH (FORMAT CSV, HEADER); 

create table persons (STATE text,STATENAME text,ST_CASE text,VE_FORMS text,VEH_NO text,PER_NO text,STR_VEH text,COUNTY text,DAY text,DAYNAME text,MONTH text,MONTHNAME text,HOUR text,HOURNAME text,MINUTE text,MINUTENAME text,RUR_URB text,RUR_URBNAME text,FUNC_SYS text,FUNC_SYSNAME text,HARM_EV text,HARM_EVNAME text,MAN_COLL text,MAN_COLLNAME text,SCH_BUS text,SCH_BUSNAME text,MAKE text,MAKENAME text,MAK_MOD text,MAK_MODNAME text,BODY_TYP text,BODY_TYPNAME text,MOD_YEAR text,MOD_YEARNAME text,TOW_VEH text,TOW_VEHNAME text,SPEC_USE text,SPEC_USENAME text,EMER_USE text,EMER_USENAME text,ROLLOVER text,ROLLOVERNAME text,IMPACT1 text,IMPACT1NAME text,FIRE_EXP text,FIRE_EXPNAME text,AGE text,AGENAME text,SEX text,SEXNAME text,PER_TYP text,PER_TYPNAME text,INJ_SEV text,INJ_SEVNAME text,SEAT_POS text,SEAT_POSNAME text,REST_USE text,REST_USENAME text,REST_MIS text,REST_MISNAME text,AIR_BAG text,AIR_BAGNAME text,EJECTION text,EJECTIONNAME text,EJ_PATH text,EJ_PATHNAME text,EXTRICAT text,EXTRICATNAME text,DRINKING text,DRINKINGNAME text,ALC_DET text,ALC_DETNAME text,ALC_STATUS text,ALC_STATUSNAME text,ATST_TYP text,ATST_TYPNAME text,ALC_RES text,ALC_RESNAME text,DRUGS text,DRUGSNAME text,DRUG_DET text,DRUG_DETNAME text,DSTATUS text,DSTATUSNAME text,HOSPITAL text,HOSPITALNAME text,DOA text,DOANAME text,DEATH_DA text,DEATH_DANAME text,DEATH_MO text,DEATH_MONAME text,DEATH_YR text,DEATH_YRNAME text,DEATH_HR text,DEATH_HRNAME text,DEATH_MN text,DEATH_MNNAME text,DEATH_TM text,DEATH_TMNAME text,LAG_HRS text,LAG_HRSNAME text,LAG_MINS text,LAG_MINSNAME text,WORK_INJ text,WORK_INJNAME text,HISPANIC text,HISPANICNAME text,LOCATION text,LOCATIONNAME text,HELM_USE text,HELM_USENAME text,HELM_MIS text,HELM_MISNAME text,VPICMAKE text,VPICMAKENAME text,VPICMODEL text,VPICMODELNAME text,VPICBODYCLASS text,VPICBODYCLASSNAME text,ICFINALBODY text,ICFINALBODYNAME text,GVWR_FROM text,GVWR_FROMNAME text,GVWR_TO text,GVWR_TONAME text);

 COPY persons from '/Users/charleshanks/Desktop/MSDS/SPRING_23/ML/FARS2020NationalCSV/person.csv'
 WITH (FORMAT CSV, HEADER); 

 /* ALL THE DATA IS INSERTED INTO TABLES */

SELECT drinkingname, count(*) FROM persons
WHERE per_typ = '1'
GROUP BY drinkingname;

*****

drop table drivers; 

create table drivers (
    st_case text, 
    statename text, 
    ve_forms text ,
    veh_no text, 
    per_no text, 
    county text, 
    day text, 
    monthname text,
    hour text, 
    rur_urbname text,
    func_sysname text, 
    harm_evname text,   
    makename text, 
    rollovername text, 
    impact1name text,    
    age text,    
    sexname text, 
    inj_sevname text, 
    rest_usename text,      
    rest_misname text,      
    air_bagname text,   
    ejectionname text,      
    extricatname text,
    drinkingname text, 
    alc_detname text, 
    drugsname text,
    doaname text
);  

insert into drivers (
    select st_case , 
    statename , 
    ve_forms ,
    veh_no , 
    per_no , 
    county , 
    day , 
    monthname ,
    hour , 
    rur_urbname ,
    func_sysname , 
    harm_evname ,   
    makename , 
    rollovername , 
    impact1name ,    
    age ,    
    sexname , 
    inj_sevname , 
    rest_usename ,      
    rest_misname ,      
    air_bagname ,   
    ejectionname ,      
    extricatname ,
    drinkingname , 
    drugsname ,
    doaname FROM persons  WHERE per_typ = '1');

drop table acc2;

create table acc2 (
    st_case text,
    sp_jurname text, 
    LATITUDE text, 
    LONGITUD text, 
    RELJCT2NAME text,
    TYP_INTNAME text,
    REL_ROADNAME text,
    WRK_ZONENAME text,
    LGT_CONDNAME text,
    WEATHERNAME text,
    FATALS text); 

insert into acc2 (
    select  st_case ,
    sp_jurname , 
    LATITUDE , 
    LONGITUD , 
    RELJCT2NAME ,
    TYP_INTNAME ,
    REL_ROADNAME ,
    WRK_ZONENAME ,
    LGT_CONDNAME ,
    WEATHERNAME ,
    FATALS FROM accidents);

create table veh2 (
    st_case text, 
    veh_no text, 
    hit_runname text,
    impact1name text, 
    deformedname text, 
    m_harmname text,
    dr_hgt text, 
    dr_wgt text, 
    PREV_ACC text, 
    PREV_DWI text, 
    prev_spd text, 
    PREV_OTH text, 
    p_crash1name text, 
    acc_typename text
);

insert into veh2 (
    select   st_case , 
    veh_no , 
    hit_runname ,
    impact1name , 
    deformedname , 
    m_harmname ,
    dr_hgt , 
    dr_wgt , 
    PREV_ACC , 
    PREV_DWI , 
    prev_spd , 
    PREV_OTH , 
    p_crash1name , 
    acc_typename from vehicles
);

select drinking, drinkingname from vehicles; 

/* note that there are more vehicles than drivers...perhaps some drivers got away but their vehicles stayed put */