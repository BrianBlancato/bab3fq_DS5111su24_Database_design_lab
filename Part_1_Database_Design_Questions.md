# Database Design and Build - Part 1

## Design Questions

### 1) What tables should you build? 
I will be creating 4 different tables:  
- **Courses_db**: Contains course information such as name, description active status, and mnemonic.  
- **Instructors_db**: Contains instructor information such as name and active status.  
- **Learning_Outcomes_db**: Contains learning outcomes for each course.  
- **Course_Assignment_db**: Contains what courses are being offered for different terms and who the instructor is.  
      
### 2) For each table, what field(s) will you use for primary keys?  
Primary Keys for each table:  
- **Courses_db**: course_id
- **Instructors_db**: instructor_id
- **Learning_Outcomes_db**: outcome_id
- **Course_Assignment_db**: assignment_id

### 3) For each table, what foreign keys will you use?  
Foreign Keys for each table:  
- **Courses_db**: No foreign keys  
- **Instructors_db**: No forgein keys  
- **Learning_Outcomes_db**: course_id  
- **Course_Assignment_db**: course_id, instructor_id  

### 4) Learning outcomes, courses, and instructors need a flag to indicate if they are currently active or not. How will your database support this feature? In particular:  
#### If a course will be taught again, it will be flagged as active. If the course won't be taught again, it will be flagged as inactive.  
#### It is important to track if an instructor is a current employee or not.  
#### Leanring outcomes for a course can change. You'll want to track if a learning outcome is currently active or not.  

There are specific tables for learning outcomes, courses and instructors that contain infromation for each.  In those three tables thre is a boolean column titled active that is either TRUE or FALSE. Active LOs, courses and instructors have TRUE while not active have FALSE.