## 1.0.0

- Initial version, created by Stagehand

## 第三次作业

- feature 1 实现基本随机点名
- feature 2 打印班级列表
- feature 3 增加回答评分功能
- feature 4 增加学生

##第四次作业

端口号：8002
- feature 1 实现随机点名方法
- feature 2 localhost:8002/random 指向随机点名
- feature 3 localhost:8002/users 指向班级全部人员列表
- feature 4 localhost:8002/users/[:id] 指向列表中第id个人


##第五次作业

执行bin目录下main.dart文件，端口号：8002

```
数据库插入语句：

CREATE DATABASE test;

CREATE TABLE  `student`(
   `id` INT NOT NULL AUTO_INCREMENT,
   `student_id` VARCHAR(255) NOT NULL,
   `studnet_name` VARCHAR(255) NOT NULL,
   PRIMARY KEY ( `id` )
);

INSERT INTO student
	(student_id,student_name)
    VALUES
    ("10164507121","戚晓颖"),
    ("10164507101","蔡心蕊"),
    ("10164507103","李典康"),
    ("10164507104","周嘉翔"),
    ("10164507105","唐丽雯"),
    ("10164507106","龙晶毅"),
    ("10164507107","郑可欣"),
    ("10164507108","张静雅"),
    ("10164507109","吴松二"),
    ("10164507110","陈瑶"),
    ("10164507111","朱子恒"),
    ("10164507112","赵世宇");
```

- feature 1 连接数据库获取数据
- feature 2 /users/[:id] 通过数据库查询id号返回对象