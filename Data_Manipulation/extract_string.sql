/* Use a string of 12 characters for experimenting with string extraction */
select
   'abcdefghijkl' test_string;

/* Extract the first 3 characters of a string */
select
    substring('abcdefgh', 1, 3);

/* Select the first three characters of the string */
select
   substring('abcdefghijkl', 1, 3) test_string;

/* Select a subset from the middle of the string */
select
   substring('abcdefghijkl', 5 ,3) test_string;

/* Select a substring starting in the middle and going for the length of the string */
select
   substring('abcdefghijkl',5, len('abcdefghijkl')) test_string;


/* Select Assistant job titles, and extract the main job category */
select
   job_title, substring(job_title, 10, len(job_title)) asst_category
from
   staff
where
   job_title like 'Assistant%';


/* Change Assistant to Asst in job title */
select
   job_title, replace(job_title,'Assistant','Assit.')
from
   staff
where
   job_title like 'Assistant%';


/* Select staff with job titles that start with Assistant */
select
    job_title, charindex('Assistant',job_title)
from
    staff
where
    job_title like '%Assistant%';
