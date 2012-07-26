#创建数据库
drop database if exists elearning;
create database elearning;
use elearning;

#创建表
/*
 * 创建教师表
 */
drop table if exists el_teachers;
create table el_teachers(
	tid integer not null auto_increment,
	taccount varchar(20),
	tname varchar(20),
	tpassword varchar(20),
	tdesc varchar(255),
	primary key (tid)
)engine=innodb default charset=utf8;

/*
 * 创建学生表
 */
drop table if exists el_students;
create table el_students(
	sid integer not null auto_increment,
	saccount varchar(20),
	sname varchar(20),
	tpassword varchar(20),
	tdesc varchar(255),
	primary key (sid)
)engine=innodb default charset=utf8;

/*
 * 创建题库类别表
 */
drop table if exists el_question_types;
create table el_question_types(
	type_id integer not null auto_increment,
	type_name varchar(20),
	type_desc varchar(255),
	primary key (type_id)
)engine=innodb default charset=utf8;

/*
 * 创建听力题库
 */
drop table if exists el_listen_questions;
create table el_listen_questions(
	l_id integer not null auto_increment,
	l_mp3 varchar(255),
	l_answera varchar(255),
	l_answerb varchar(255),
	l_answerc varchar(255),
	l_answerd varchar(255),
	l_answer varchar(2),
	primary key (l_id)
)engine=innodb default charset=utf8;

/*
 * 创建选择题库
 */
drop table if exists el_choice_questions;
create table el_choice_questions(
	q_id integer not null auto_increment,
	q_title varchar(1000),
	q_answera varchar(255),
	q_answerb varchar(255),
	q_answerc varchar(255),
	q_answerd varchar(255),
	q_answer varchar(2),
	primary key (q_id)
)engine=innodb default charset=utf8;

/*
 * 创建阅读题库
 */
drop table if exists el_read;
create table el_read(
	r_id integer not null auto_increment,
	r_article varchar(20000),
	primary key (r_id)
)engine=innodb default charset=utf8;

drop table if exists el_read_questions;
create table el_read_questions(
	r_q_id integer not null auto_increment,
	r_a_id integer not null,
	r_title varchar(255),
	r_answera varchar(255),
	r_answerb varchar(255),
	r_answerc varchar(255),
	r_answerd varchar(255),
	r_answer varchar(2),
	primary key (r_q_id)
)engine=innodb default charset=utf8;

/*
 * 创建写作题
 */
drop table if exists el_write_questions;
create table el_write_questions(
	w_id integer not null auto_increment,
	w_title varchar(1000),
	primary key (w_id)
)engine=innodb default charset=utf8;

/*
 * 创建试卷库
 */
drop table if exists el_questions_lib;
create table el_questions_lib(
	lib_id integer not null auto_increment,
	lib_title varchar(1000),
	primary key (lib_id)
)engine=innodb default charset=utf8;

