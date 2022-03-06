-- 1
SELECT * FROM tmember WHERE cName='Jens S.'
AND dBirth<'1970-01-01' AND dNewMember BETWEEN '2013-01-01' AND '2013-12-31';
-- 2
SELECT * FROM tbook WHERE nPublishingCompanyID !='15' OR '32' AND nPublishingYear<'2000-01-01';
-- 3
SELECT cName + cSurname FROM tmember WHERE cAddress=null;
-- 4
SELECT * FROM tauthor WHERE cSurname='Byatt' AND UPPER(tauthor.cName LIKE 'A%' OR 'S');
-- 5
SELECT COUNT(*)  AS "Number of books" FROM tbook WHERE nPublishingCompanyID='32';
-- 6
SELECT COUNT(*) AS "Number of loaned books" FROM tloan WHERE cCPR ='0305393207' GROUP BY YEAR(dLoan), MONTH(dLoan), DAY(dLoan);
-- 7
SELECT COUNT(*)>1 AS "Number of loaned books" FROM tloan WHERE cCPR ='0305393207' GROUP BY YEAR(dLoan), MONTH(dLoan), DAY(dLoan);
-- 8
SELECT * FROM tmember ORDER BY dNewMember ASC;
-- 9
SELECT cTitle FROM tbook WHERE nPublishingCompanyID='32' ;
-- ---
-- 10
SELECT cName, cSurname, Count(*) FROM tauthor
    LEFT JOIN tbook on nBookID=nAuthorID;
-- 11
SELECT cName, cSurname, nAuthorID FROM tauthor
    LEFT JOIN tauthorship t on tauthor.nAuthorID = t.nAuthorID JOIN tbook t2 on t.nBookID = t2.nBookID;
-- 12
SELECT cName,cSurname FROM tmember RIGHT JOIN tloan t on tmember.cCPR = t.cCPR;
-- 13
SELECT cName FROM ttheme
    JOIN tbooktheme t ON nThemeID=nBookID
    JOIN tbook ON nBookID=cTitle WHERE nPublishingCompanyID='32';
SELECT cName,cSurname FROM tmember JOIN tloan t on tmember.cCPR = t.cCPR;
-- 14
SELECT cName FROM ttheme JOIN tbook ON cTitle=cName;
-- 15
SELECT cName, cSurname FROM tmember (WHERE dNewMember BETWEEN '2013-01-01' AND '2013-12-31') JOIN tloan t ON cCPR=t.cCPR;
-- 16
SELECT cName,cSurname FROM tauthor JOIN tnationality t on tauthor.nAuthorID = t.nAuthorID JOIN tcountry t2 on t.nCountryID = t2.nCountryID;
-- 17
SELECT DISTINCT cTitle FROM tbook WHERE nPublishingYear BETWEEN '1970-01-01' AND '1989-12-31';
-- 18
SELECT cName,cSurname FROM tmember WHERE dNewMember BETWEEN '2013-12-01' AND '2013-12-31';
SELECT cName, cSurname FROM tauthor WHERE cName='William';
-- 19
SELECT cName, cSurname FROM tmember WHERE dNewMember ORDER BY date;
-- 20
-- -
-- 21
SELECT cName AS "Name" FROM tpublishingcompany JOIN tcountry t on nCountryID = t.cName;
-- 22
SELECT cTitle FROM tbook WHERE nPublishingYear BETWEEN '1926' AND '1978' AND nPublishingCompanyID!='32';
-- 23
SELECT cName, cSurname FROM tmember WHERE dNewMember>'2016-12-31' AND cAddress IS NULL;
-- 24
SELECT DISTINCT nCountryID FROM tpublishingcompany;
-- 25
SELECT cTitle FROM tbook WHERE cTitle LIKE 'The Tale%';
-- 26
SELECT cName FROM ttheme JOIN tbooktheme t on ttheme.nThemeID = t.nBookID JOIN tpublishingcompany WHERE nPublishingCompanyID='13';
-- 27
SELECT cTitle FROM tbook JOIN tloan ON nBookID=dLoan WHERE dLoan IS NULL;
-- 28
SELECT COUNT(*) AS "No. of books" FROM tpublishingcompany JOIN tbook t on tpublishingcompany.nPublishingCompanyID = t.nPublishingCompanyID;
-- 29
SELECT COUNT(cCPR) FROM tmember JOIN tloan t ON cCPR= t.cCPR WHERE dloan BETWEEN '2013-01-01' AND '2013-12-31';
-- 30
SELECT cTitle FROM tbook
    JOIN tauthorship t on tbook.nBookID = t.nBookID
    JOIN tauthor t2 on t.nAuthorID = t2.nAuthorID WHERE t2.nAuthorID>2;

