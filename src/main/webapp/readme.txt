create database db_examsystem;
use db_examsystem;
#tb_del删除标记表
create table tb_del(
  del_tb_id  int  primary key,
  del_id  varchar(40),
  del_flag  varchar(10),
  col1  varchar(50),
  col2  varchar(50),
  col3  varchar(50)
);

#tb_student_type(学生类型表)
create table tb_student_type(
  stu_type_id  int primary key,
  stype_id  varchar(40) unique,
  stype_name  varchar(30),
  del_tb_id  int not null,  #外键
  col1  varchar(50),
  col2  varchar(50),
  col3  varchar(50)
);
 #设置外键约束 
alter table tb_student_type
add constraint FK_student_del foreign key (del_tb_id) references tb_del(del_tb_id);

#用户表tb_user
create table tb_user(
  user_id    int  primary key,
  user_account  varchar(30) unique,
  user_password  varchar(40),
  user_name  varchar(30),
  user_mail  varchar(30),
  user_sex  varchar(4),
  user_type  varchar(4),
  user_indate  varchar(40),
  user_lasttime  varchar(40),
  del_tb_id  int  not null,  #外键
  col1    varchar(50),
  col2    varchar(50),
  col3    varchar(50)
);

 #设置外键约束 
alter table tb_user
add constraint FK_user_del foreign key (del_tb_id) references tb_del(del_tb_id);

#班级类型tb_class_type
create table tb_class_type(
  class_type_id  int  primary key,
  clatype_id  varchar(40),
  clatype_name  varchar(30),
  del_tb_id  int  not null,  #外键
  col1    varchar(50),
  col2    varchar(50),
  col3    varchar(50)
);

 #设置外键约束 
alter table tb_class_type
add constraint FK_class_type_del foreign key (del_tb_id) references tb_del(del_tb_id);

#班级表tb_class
create table tb_class(
  class_id int primary key,
  user_id int not null,#外键
  class_type_id int not null,#外键
  cla_id    varchar(40) unique,
  cla_name  varchar(30),
  cla_desc  varchar(255),
  cla_state  varchar(4),
  cla_indate  varchar(40),
  cla_outdate  varchar(40),
  del_tb_id  int  not null,#外键
  col1    varchar(50),
  col2    varchar(50),
  col3    varchar(50)
);

 #设置外键约束 
alter table tb_class
add constraint FK_class_del foreign key (del_tb_id) references tb_del(del_tb_id);

#tb_student(学生表)
create table tb_student(
  stu_id    int   primary key,
  stu_type_id  int  not null,    #外键
  class_id  int  not null,  #外键
  stu_account  varchar(40) unique,
  stu_password  varchar(40),
  stu_name  varchar(40),
  stu_sex    varchar(4),
  stu_indate  varchar(40),
  stu_examtime  varchar(40),
  stu_lasttime  varchar(40),
  stu_state  varchar(2),
  del_tb_id  int not null,  #外键
  col1    varchar(50),
  col2    varchar(50),
  col3    varchar(50)
);

 #设置外键约束 
alter table tb_student
add constraint FK_student_type_id foreign key (stu_type_id) references tb_student_type(stu_type_id);
 #设置外键约束 
alter table tb_student
add constraint FK_student_class_id foreign key (class_id) references tb_class(class_id);
 #设置外键约束 
alter table tb_student
add constraint FK_student_del foreign key (del_tb_id) references tb_del(del_tb_id);

#tb_theme_key 题目答案表
create table tb_theme_key(
  theme_key_id  int  primary key,
  theme_id  int  not null,   #外键
  thekey_id  varchar(40),
  the_allkey  varchar(80),
  del_tb_id  int  not null,  #外键
  col1    varchar(50),
  col2    varchar(50),
  col3    varchar(50)
);
 #设置外键约束 
alter table tb_theme_key
add constraint FK_theme_key_id foreign key (theme_id) references tb_theme(theme_id);
 #设置外键约束 
alter table tb_theme_key
add constraint FK_theme_key_del foreign key (del_tb_id) references tb_del(del_tb_id);

#tb_theme_auditing题目审核表
create table tb_theme_auditing(
  the_aud_id  int  primary key,
  theme_id  int  not null,  #外键
  user_id  int  not null,  #外键
  aud_id  varchar(40),
  aud_idea  varchar(255),
  aud_result  varchar(255),
  aut_date  varchar(40),
  del_tb_id  int  not null,  #外键
  col1  varchar(50),
  col2  varchar(50),
  col3  varchar(50)
);

 #设置外键约束 
alter table tb_theme_auditing
add constraint FK_theme_auditing_id foreign key (theme_id) references tb_theme(theme_id);
 #设置外键约束 
alter table tb_theme_auditing
add constraint FK_theme_auditing_user foreign key (user_id) references tb_user(user_id);
 #设置外键约束 
alter table tb_theme_auditing
add constraint FK_theme_auditing_del foreign key (del_tb_id) references tb_del(del_tb_id);

#tb_theme_area题目范围表
create table tb_theme_area(
  theme_area_id  int  primary key,
  thearea_id  varchar(40),
  thearea_name  varchar(40),
  del_tb_id  int  not null, #外键
  col1    varchar(50),
  col2    varchar(50),
  col3    varchar(50)
);

 #设置外键约束 
alter table tb_theme_area
add constraint FK_theme_area_del foreign key (del_tb_id) references tb_del(del_tb_id);

#tb_theme_type题目类型表
create table tb_theme_type(
  theme_type_id  int  primary key,
  thetype_id  varchar(40),
  thetype_name  varchar(40),
  del_tb_id  int  not null, #外键
  col1    varchar(50),
  col2    varchar(50),
  col3    varchar(50)
);

 #设置外键约束 
alter table tb_theme_type
add constraint FK_theme_type_del foreign key (del_tb_id) references tb_del(del_tb_id);

#tb_theme_difficulty题目难度表
create table tb_theme_difficulty(
  theme_dif_id  int  primary key,
  thedif_id  varchar(40),
  thedif_name  varchar(40),
  del_tb_id  int  not null, #外键
  col1    varchar(50),
  col2    varchar(50),
  col3    varchar(50)
);

 #设置外键约束 
alter table tb_theme_difficulty
add constraint FK_theme_difficulty_del foreign key (del_tb_id) references tb_del(del_tb_id);

#题目表tb_theme
create table tb_theme(
  theme_id  int  primary key,
  theme_type_id  int  not null,  #外键
  theme_area_id  int  not null,  #外键
  theme_dif_id  int  not null,  #外键
  sta_id    int  not null,  #外键
  user_id    int  not null,  #外键
  the_id    varchar(40),
  the_content  varchar(255),
  the_rightkey  varchar(100),
  the_indate  varchar(40),
  del_tb_id  int  not null ,#外键
  col1    varchar(50),
  col2    varchar(50),
  col3    varchar(50)
);

 #设置外键约束 
alter table tb_theme
add constraint FK_theme_theme_type foreign key (theme_type_id) references tb_theme_type(theme_type_id);
 #设置外键约束 
alter table tb_theme
add constraint FK_theme_theme_area foreign key (theme_area_id) references tb_theme_area(theme_area_id);
 #设置外键约束 
alter table tb_theme
add constraint FK_theme_theme_dif foreign key (theme_dif_id) references tb_theme_difficulty(theme_dif_id);
 #设置外键约束 
alter table tb_theme
add constraint FK_theme_sta_id foreign key (sta_id) references tb_stateflag(sta_id);
 #设置外键约束 
alter table tb_theme
add constraint FK_theme_user_id foreign key (user_id) references tb_user(user_id);
 #设置外键约束 
alter table tb_theme
add constraint FK_theme_del foreign key (del_tb_id) references tb_del(del_tb_id);

#tb_theme_remove题目撤销表
create table tb_theme_remove(
  the_rem_id  int  primary key,
  theme_id  int(40),
  del_tb_id  int  not null, #外键
  col1  varchar(50),
  col2  varchar(50),
  col3  varchar(50)
);

 #设置外键约束 
alter table tb_theme_remove
add constraint FK_theme_remove_del foreign key (del_tb_id) references tb_del(del_tb_id);

#tb_policy考试策略表
create table tb_policy(
  policy_id  int  primary key,
  theme_dif_id  int  not null, #外键
  theme_type_id  int  not null, #外键
  theme_area_id  int  not null, #外键
  exam_mode  varchar(20),
  pol_id    varchar(40) unique,
  pol_onescore  varchar(10),
  pol_themecount  varchar(20),
  pol_reworkmode  varchar(30),
  del_tb_id  int  not null, #外键
  col1    varchar(50),
  col2    varchar(50),
  col3    varchar(50)
);
 #设置外键约束 
alter table tb_policy
add constraint FK_policy_remove_dif_id foreign key (theme_dif_id) references tb_theme_difficulty(theme_dif_id);
 #设置外键约束 
alter table tb_policy
add constraint FK_policy_remove_theme_type foreign key (theme_type_id) references tb_theme_type(theme_type_id);
 #设置外键约束 
alter table tb_policy
add constraint FK_policy_remove_theme_area foreign key (theme_area_id) references tb_theme_area(theme_area_id);
 #设置外键约束 
alter table tb_policy
add constraint FK_policy_del foreign key (del_tb_id) references tb_del(del_tb_id);

#tb_policy_themes策略题目
create table tb_policy_themes(
  pol_the_id  int  primary key,
  policy_id  int  not null, #外键
  theme_id  int  not null, #外键
  del_tb_id  int  not null, #外键
  col1  varchar(50),
  col2  varchar(50),
  col3  varchar(50)
);

 #设置外键约束 
alter table tb_policy_themes
add constraint FK_policy_policy_id foreign key (policy_id) references tb_policy(policy_id);
 #设置外键约束 
alter table tb_policy_themes
add constraint FK_policy_themes_id foreign key (theme_id) references tb_theme(theme_id);
 #设置外键约束 
alter table tb_policy_themes
add constraint FK_policy_themes_del foreign key (del_tb_id) references tb_del(del_tb_id);

#考试方案表tb_precept
create table tb_precept(
  precept_id  int  primary key,
  sta_id  int  not null, #外键
  user_id  int  not null, #外键
  pre_id  varchar(40),
  pre_name  varchar(40),
  pre_desc  varchar(255),
  pre_intime  varchar(40),
  del_tb_id  int  not null, #外键
  col1  varchar(50),
  col2  varchar(50),
  col3  varchar(50)
);

 #设置外键约束 
alter table tb_precept
add constraint FK_precept_sta_id foreign key (sta_id) references tb_stateflag(sta_id);
 #设置外键约束 
alter table tb_precept
add constraint FK_precept_user_id foreign key (user_id) references tb_user(user_id);
 #设置外键约束 
alter table tb_precept
add constraint FK_precept_del foreign key (del_tb_id) references tb_del(del_tb_id);

#tb_precept_policy方案策略表
create table tb_precept_policy(
  pre_pol_id  int  primary key,
  precept_id  int  not null, #外键
  policy_id  int  not null, #外键
  del_tb_id  int  not null, #外键
  col1  varchar(50),
  col2  varchar(50),
  col3  varchar(50)
);

 #设置外键约束 
alter table tb_precept_policy
add constraint FK_precept_precept_id foreign key (precept_id) references tb_precept(precept_id);
 #设置外键约束 
alter table tb_precept_policy
add constraint FK_precept_policy_id foreign key (policy_id) references tb_policy(policy_id);
 #设置外键约束 
alter table tb_precept_policy
add constraint FK_precept_policy_del foreign key (del_tb_id) references tb_del(del_tb_id);

#tb_precept_auditing方案审核表
create table tb_precept_auditing(
  pre_aud_id  int  primary key,
  precept_id  int  not null, #外键
  user_id  int  not null, #外键
  aud_id  varchar(40),
  aud_idea  varchar(255),
  aud_result  varchar(100),
  aut_date  varchar(40),
  del_tb_id  int  not null, #外键
  col1  varchar(50),
  col2  varchar(50),
  col3  varchar(50)
);

 #设置外键约束 
alter table tb_precept_auditing
add constraint FK_precept_auditing_id foreign key (precept_id) references tb_precept(precept_id);
 #设置外键约束 
alter table tb_precept_auditing
add constraint FK_precept_auditing_user_id foreign key (user_id) references tb_user(user_id);
 #设置外键约束 
alter table tb_precept_auditing
add constraint FK_precept_auditing_del foreign key (del_tb_id) references tb_del(del_tb_id);

#tb_precept_remove方案撤销表
create table tb_precept_remove(
  pre_rem_id  int  primary key,
  precept_id  int  not null, #外键
  rem_idea  varchar(255),
  del_tb_id  int  not null, #外键
  col1  varchar(50),
  col2  varchar(50),
  col3  varchar(50)
);

 #设置外键约束 
alter table tb_precept_remove
add constraint FK_precept_remove_user_id foreign key (precept_id) references tb_precept(precept_id);
 #设置外键约束 
alter table tb_precept_remove
add constraint FK_precept_remove_del foreign key (del_tb_id) references tb_del(del_tb_id);

#tb_plan考试计划表
create table tb_plan(
  plan_tb_id  int  primary key,
  class_id  int  not null, #外键
  user_id  int  not null, #外键
  precept_id  int  not null, #外键
  sta_id  int  not null, #外键
  plan_id  varchar(40),
  plan_name  varchar(40),
  plan_desc  varchar(255),
  plan_starttime  varchar(40),
  plan_endtime  varchar(40),
  paln_enddate  varchar(40),
  mod_type  varchar(2),
  mod_state  varchar(2),
  del_tb_id  int  not null, #外键
  col1  varchar(50),
  col2  varchar(50),
  col3  varchar(50)
);
#tb_plan_putout计划发布表
create table tb_plan_putout(
  pla_put_id  int  primary key,
  plan_tb_id  int not null, #外键
  del_tb_id  int  not null, #外键
  col1  varchar(50),
  col2  varchar(50),
  col3  varchar(50)
);

 #设置外键约束 
alter table tb_plan_putout
add constraint FK_putout_plan_tb_id foreign key (pla_put_id) references tb_plan(pla_put_id);
 #设置外键约束 
alter table tb_plan_putout
add constraint FK_plan_putout_del foreign key (del_tb_id) references tb_del(del_tb_id);

#tb_plan_remove计划撤销表
create table tb_plan_reomve(
  plan_rem_id  int  primary key,
  plan_tb_id  int  not null, #外键
  rem_idea  varchar(255),
  del_tb_id  int  not null, #外键
  col1  varchar(50),
  col2  varchar(50),
  col3  varchar(50)
);

 #设置外键约束 
alter table tb_plan_reomve
add constraint FK_remove_plan_tb_id foreign key (pla_put_id) references tb_plan(pla_put_id);
 #设置外键约束 
alter table tb_plan_reomve
add constraint FK_plan_remove_del foreign key (del_tb_id) references tb_del(del_tb_id);

#tb_exam_commit考生考试提交表
create table tb_exam_commit(
  exa_com_id  int  primary key,
  stu_id  int  not null, #外键
  plan_tb_id  int  not null, #外键
  theme_id  int  not null, #外键
  sta_id  int  not null, #外键
  commit_key  varchar(100),
  del_tb_id  int  not null, #外键
  col1  varchar(50),
  col2  varchar(50),
  col3  varchar(50)
);

 #设置外键约束 
alter table tb_exam_commit
add constraint FK_exam_commit_stu_id foreign key (stu_id) references tb_student(stu_id);
 #设置外键约束 
alter table tb_exam_commit
add constraint FK_exam_commit_theme_id foreign key (theme_id) references tb_theme(theme_id);
 #设置外键约束 
alter table tb_exam_commit
add constraint FK_exam_commit_sta_id foreign key (sta_id) references tb_stateflag(sta_id);
 #设置外键约束 
alter table tb_exam_commit
add constraint FK_exam_commit_plan_tb_id foreign key (plan_tb_id) references tb_plan(plan_tb_id);
 #设置外键约束 
alter table tb_exam_commit
add constraint FK_exam_commit_del foreign key (del_tb_id) references tb_del(del_tb_id);


#tb_student_grade学生成绩表
create table tb_student_grade(
  stu_gra_id  int  primary key,
  stu_id  int  not null, #外键
  plan_tb_id  int  not null, #外键
  sta_id  int  not null, #外键
  exam_grade  varchar(20),
  del_tb_id  int  not null, #外键
  col1  varchar(50),
  col2  varchar(50),
  col3  varchar(50)
);

 #设置外键约束 
alter table tb_student_grade
add constraint FK_grade_stu_id foreign key (stu_id) references tb_student(stu_id);
 #设置外键约束 
alter table tb_student_grade
add constraint FK_grade_sta_id foreign key (sta_id) references tb_stateflag(sta_id);
 #设置外键约束 
alter table tb_student_grade
add constraint FK_grade_plan_tb_id foreign key (plan_tb_id) references tb_plan(plan_tb_id);
 #设置外键约束 
alter table tb_student_grade
add constraint FK_student_grade_del foreign key (del_tb_id) references tb_del(del_tb_id);

#tb_grade_putout成绩发布表
create table tb_grade_putout(
  gra_put_id  int  primary key,
  plan_tb_id  int  not null, #外键
  del_tb_id  int  not null, #外键
  col1  varchar(50),
  col2  varchar(50),
  col3  varchar(50)
);
 #设置外键约束 
alter table tb_grade_putout
add constraint FK_grade_putout_id foreign key (plan_tb_id) references tb_plan(plan_tb_id);
 #设置外键约束 
alter table tb_grade_putout
add constraint FK_grade_putout_del foreign key (del_tb_id) references tb_del(del_tb_id);

#tb_stateflag状态标记表
create table tb_stateflag(
  sta_id  int  primary key,
  state_id  varchar(40),
  state_flag  varchar(40),
  del_tb_id  int  not null, #外键
  col1  varchar(50),
  col2  varchar(50),
  col3  varchar(50)
);
 #设置外键约束 
alter table tb_stateflag
add constraint FK_stateflag_del foreign key (del_tb_id) references tb_del(del_tb_id);

