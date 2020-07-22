-- SELECT t1.name, ROUND(SUM(t1.receive),1) FROM (   
--     SELECT 
--     doctors.id, doctors.name, work_shifts.id,
--     (SUM(attendances.hours) * 150 * (100+work_shifts.bonus)/100) as receive
--     FROM doctors INNER JOIN attendances
--         ON doctors.id = attendances.id_doctor
--     INNER JOIN work_shifts
--         ON attendances.id_work_shift = work_shifts.id
--     GROUP BY doctors.id, doctors.name, work_shifts.id) t1
-- GROUP BY t1.name
-- ORDER BY ROUND(SUM(t1.receive),1) DESC;

SELECT t1.name, ROUND(SUM(t1.receive),1) FROM (   
    SELECT doctors.id, doctors.name, hours * 150 * (100+bonus)/100 AS receive 
    FROM doctors INNER JOIN attendances
        ON doctors.id = attendances.id_doctor
    INNER JOIN work_shifts
        ON attendances.id_work_shift = work_shifts.id
) t1
GROUP BY t1.name
ORDER BY SUM(t1.receive) DESC;