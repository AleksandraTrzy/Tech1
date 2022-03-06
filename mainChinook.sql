-- 1
SELECT COUNT(Grunge Songs) from track JOIN playlisttrack p on track.TrackId = p.PlaylistId JOIN playlist ON p.PlaylistId='Grunge';
-- 2
SELECT name FROM artist WHERE name LIKE 'Jack' OR 'John' AND name!='Martin';
-- 3
SELECT COUNT(*) total FROM invoice WHERE total>'100.00' ORDER BY DESC;
-- 4
SELECT phone FROM employee JOIN customer c on employee.EmployeeId = c.SupportRepId...
-- 5
SELECT DISTINCT AlbumId,Title,ArtistId FROM album JOIN track ON album.AlbumId = track.GenreId JOIN genre WHERE genre.GenreId='11';
-- 6
-- -
-- 7
SELECT COUNT(*) FROM customer WHERE Company!=null AND State=null;
-- 8
-- -
-- 9
SELECT FirstName, LastName, Fax FROM customer WHERE Country='USA' ORDER BY LastName;
-- 10
SELECT FirstName,LastName,HireDate FROM employee WHERE HireDate-employee.BirthDate;