-- MariaDB dump 10.19  Distrib 10.11.6-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: goliat
-- ------------------------------------------------------
-- Server version	10.11.6-MariaDB-0+deb12u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cat_password_parameters`
--

DROP TABLE IF EXISTS `cat_password_parameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_password_parameters` (
  `user_id` int(11) NOT NULL,
  `real_password` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_password_parameters`
--

LOCK TABLES `cat_password_parameters` WRITE;
/*!40000 ALTER TABLE `cat_password_parameters` DISABLE KEYS */;
INSERT INTO `cat_password_parameters` VALUES
(1064,'fd2ce771d92c10d077eb9e3c82d4fce0'),
(1072,'6632d302e12fef4c4ccdeea48b78ba42'),
(1073,'520565df91eecc4dbb846b24229944d2'),
(1074,'1d54acd41851b0fb1f7748e110f17339'),
(1075,'42f669ed578ee9e6c7ad0a4a2ca1a7c1'),
(1076,'9f0e6f08e8c87857305daf5be6b89059');
/*!40000 ALTER TABLE `cat_password_parameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_permissions`
--

DROP TABLE IF EXISTS `cat_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_permissions` (
  `id_user` int(11) NOT NULL,
  `rol` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_permissions`
--

LOCK TABLES `cat_permissions` WRITE;
/*!40000 ALTER TABLE `cat_permissions` DISABLE KEYS */;
INSERT INTO `cat_permissions` VALUES
(1064,'1');
/*!40000 ALTER TABLE `cat_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_users_keys`
--

DROP TABLE IF EXISTS `data_users_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_users_keys` (
  `user_id` int(11) NOT NULL,
  `private_key` varchar(2000) NOT NULL,
  `public_key` varchar(700) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_users_keys`
--

LOCK TABLES `data_users_keys` WRITE;
/*!40000 ALTER TABLE `data_users_keys` DISABLE KEYS */;
INSERT INTO `data_users_keys` VALUES
(1072,'-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCnGdzRHoNYCbWf\ndN9oSF+ov+C7RdaCxVuwz0XviHW3TW9HcpAvFnKPyskU5LESEICEe64If5co9lgu\nUVagRLRgcy31TXiVX+dlfHfg8zVpeFtqUsRVGmO5dvQ4l6ZUhXvjx8EvKDzZe6Zy\n0n39ULNSBMg4olgFGjgviwF/OJ7lXRzK9gYxBgArajso3c5K9LNov3jCsiMz70Qt\n+CpVDVM8ySe1GfKqkCrm+5WEuVfeD/FmfyUMVykcjLP21iTeQD7ly2NktKt8EsJ7\nZ90mVr7d4BTn7Zh+17umzsDb52rt6/K+LoPLcztMqdjjmQkY1MdUDGbEFh4sRWbZ\nC4KrOj49AgMBAAECggEAX+xLw0vF0CL6vMeFe8KYDzHemwJzKmyKvwutNNzb3la4\nO4Z7WFyFdR/OoIzLTPhmHic1dzFvH5eSdTxCAwyNkxRrXHaVcwIzviFeW6ahkaMC\nrx1GESht+MhdV6NOWxSpUs+XiS+LBrmhiiZlJqZN2hZerYwcBQnRGRGt0U86f6Uv\nSD/MRJju4UgcB30l7lxhogFi5CZvnSx3EQ1JaLE/aGjlH50y4/H7J6w8XqTKhbXK\nIQQm7Cux4ZaOmp0GluEvEChd64E7u2TrIZJ4z2yneQuiu7JsN9AsBQpiY8PBnIMT\nF5zcX2r+tuMRISe6n/OqK2fnqd3iV9l7DiSLoeoBwQKBgQDWMKkueGsF7b9VBCcY\noUy+37lgtN9oLFoRAaY2yOcBPV91iH935igw0cbjCNeVf0cHySSF+uzGC4c4EOX5\nr7rEqa/PsSIoFd2ql6guU5jA527YTUfCSi9ZGNL9LqozFGwiRL7P7zVsJROS7rsf\nkMRMPchChERnxoQPE8f7pdaObQKBgQDHuBqwPMyS47WZxuHh9TogkpyL+3EAwNqn\naFzLgHtg5UKj38MwTyC7G4uQ2xldwJ0vxAexWZ96GvXKf4zaQQLm/D/YdQW6oPmq\nCbHMdxmXSBkeA8CWLbbcF5Qo45LhTjPCw9bgLXCGF+Bc4woagBgWcCKur5U0Hca2\nYQa8VTRNEQKBgA0v88qjqVs1Fxmh5tJSZApAdgZpPHQKfwUbB+PJnMdrwuvWmpqE\nNidDUy55ReSzcGkfTjtdhqRu40VlbPNhiWtAU03DRyoWpo4xRi6MARSnayCwKWHh\n9WZT6/GgpOP+NuYpO2JMBQsCgWEDh8vauutCxoip4hhNlaXj/uUUgdBFAoGBAIbA\nRvGF9BlfnhWlRJ6qUI/Nm+Yuvm3dsSmmloWPqK8VwELFJPMhUFouGZqg2ZqR7Pxf\nbTlR2PIP4qrAKI7Rsl2a8JDhU/45wnnhlJ759MBHmvrPWU96hJg3KHX2JhHyK6ZL\ncF1NC1DOJ0lEvnpm1tm8ywnF2guR05MWH+9OJb2hAoGAI/eqk+DFouGq+xA1Y/le\nAJAfMUKEU2d7alHbZutOWgF2qbmsole8J9892Z1kbm3MnmlNWYgrWTJVOqm18mq5\n62NJP+raqdZb7+3B1LvrvfupN/HEL0ka6Cew4D7ec0PPGKuNJATgEHuFROIvhib/\nMymRRYSMZ3wcajXeBzCjXpM=\n-----END PRIVATE KEY-----\n','-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEApxnc0R6DWAm1n3TfaEhf\nqL/gu0XWgsVbsM9F74h1t01vR3KQLxZyj8rJFOSxEhCAhHuuCH+XKPZYLlFWoES0\nYHMt9U14lV/nZXx34PM1aXhbalLEVRpjuXb0OJemVIV748fBLyg82XumctJ9/VCz\nUgTIOKJYBRo4L4sBfzie5V0cyvYGMQYAK2o7KN3OSvSzaL94wrIjM+9ELfgqVQ1T\nPMkntRnyqpAq5vuVhLlX3g/xZn8lDFcpHIyz9tYk3kA+5ctjZLSrfBLCe2fdJla+\n3eAU5+2Yfte7ps7A2+dq7evyvi6Dy3M7TKnY45kJGNTHVAxmxBYeLEVm2QuCqzo+\nPQIDAQAB\n-----END PUBLIC KEY-----\n'),
(1073,'-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDQaAUcVOtY+Sm6\nrohoGQrOZddmGDmmiNlO8eftIbyVHA1MJGU2n8AzgzxgWkZO9dzW1iZNyO/iePcC\ncACTaVTw0JPHbcftQk9RoF0jHljcfHcwC9k6LcqxLtbMylDpkn9dxUQXTIqWRgB7\nOuj8r3QYNvC7OBN2vA1xn7DvAUq6vZOZpRMs6N1JbOZK0h5zKeD0ia17WAkNPkxZ\nNC4sqQZrkH97d1USqX8oMHcRo88wEj94hH/P6UJVjZ7h2jpdyfLw14tCyBN+gz96\n+bwjE84xkj7YnSbaFmA0CRTKvdcWS+4voniZCEleINqYzMegdhQ0V+CMubRQ8+OD\ndfZDsrm3AgMBAAECggEBALCfV6V5OrP/BqSWAjjm8EeX/AMkiMdgt3q2fW505xQf\n4A0l0zmGDigaEvM9ztRgfjb86x2FK/htuDmynmpQHJKy0mtz2Lp1Ni/hjs2SjJDg\nU0q+3+z0nhGntpd85zHs3FCmPFzam6Fb1lCZzpdIQ0W6Wi7xCV3ZZjNjuVn1aFX1\niSV6HW9Zjq7Q8UF+nNKJzQY6Qs/eg3XBsWvkG5rekOzrCShza0e2M43hQlXWn+Vz\nEQbhM4DbzCQfZOj4w+PNExXDz64D2DUg8FYhqSMhMf+kYTP74QVH5BOCJNruj48B\nLKFUZcxN/aH37yTMPSaFEC2fRYxD0BzEipb35MVxEKECgYEA6/nJj5TborLCAfeZ\nFRYXV6FTKF5l2J+1ZLJtHc5l/gDqi2bHrt7yU/pJuinpBHHQGsmuDVcneFw4imOL\n6rXIS8H0KFUQU4T6U3GcGhyvVse+17qoKwt3ButEfahvB3sbq7rlJzW94OJskSSC\n/qEgEQGxGkysKl5nKssy9yywRr8CgYEA4hdUUv9wYVTEnEhPGoXLtvIvWkQbuHEf\n5PYvjhwewDQFZhqL2Mb/c8zgIJ+HJLHM0ghKX8SBrj7uqRleGRmd72d+TTrI1uob\ngP1FfAYReoQdT5JqU8o6+WYXFTKlMWLck/h9wL22o8/jJbrr2fb2/yzwTZEocffW\nhEBzLBZUAwkCgYA8vjHaWfEnsmgqZXfsa6Fal1Z2n8YLuyDQaPWZpJWwir/VXoGs\nTAuI/naYC03GLR3qp1u8Z2DrpKGRTgqoQl7q0WRuNWdceHCPpkEOn6+q4QQJOC0t\n12euSkV5KzBZdqEq1ZNDQpw8FUzpF8L4lLVSa2MRaAcxaNeZtnDKG6DMtQKBgQCm\nHpAVn5vZ1+fSEIsWqMICfLXwM+TOQ0g0+fH9D4pEnLRuzgh80dI2Ko1vSueIPZ+J\nnw/Oh9rkxVakJoBuHtVdZwR1CEEzL7Xfs7gPJYJIK7RBmAnJ4OguASXqrFiWDdaW\nXlk/eeUtPXzfZxUOBJh8627w/zvhaUFT0OsOtKUryQKBgExnpTzBkXLkSkntzaLF\nmoSU7qEsWeOGzfuNgbcBLz9wMZseaX5EyGA9d/iPfODpbScqAE2KKryh4Tb4+TAf\nAW5cePospVPrw33A2jmr/2Y8xhko3/GUSgnnmCSDnbgNevgT6kXAoBJ/wf4jKlY0\nhQnNE0dgyXGwf1uSyqGhMYto\n-----END PRIVATE KEY-----\n','-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA0GgFHFTrWPkpuq6IaBkK\nzmXXZhg5pojZTvHn7SG8lRwNTCRlNp/AM4M8YFpGTvXc1tYmTcjv4nj3AnAAk2lU\n8NCTx23H7UJPUaBdIx5Y3Hx3MAvZOi3KsS7WzMpQ6ZJ/XcVEF0yKlkYAezro/K90\nGDbwuzgTdrwNcZ+w7wFKur2TmaUTLOjdSWzmStIecyng9Imte1gJDT5MWTQuLKkG\na5B/e3dVEql/KDB3EaPPMBI/eIR/z+lCVY2e4do6Xcny8NeLQsgTfoM/evm8IxPO\nMZI+2J0m2hZgNAkUyr3XFkvuL6J4mQhJXiDamMzHoHYUNFfgjLm0UPPjg3X2Q7K5\ntwIDAQAB\n-----END PUBLIC KEY-----\n'),
(1074,'-----BEGIN PRIVATE KEY-----\nMIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQDDwgVvgjBybGIJ\nFrOI2GuCpIwGchuqpFQxX9CXFpWDFuzlKbeUsRqLDQ/xunP36GxD6kNr8TCrecv/\nxPs3WBB6mQF+j2A7Awsrq4h1noNnh1fOyOLdJn9jFkq8qxcPL5xLXtUEbFbTm0ea\nL/NLlaBlI1MNi5EvNFDhd1eONwgGdpa8UNd1trVJZDL6zYRIWyaCR20/Te5LWjTc\nPleylObN8jy1XE7O6Cpg61ba9d8FKiLN2+omZ7C1kkFxXc42uDxh+wadNn7hcyW0\nnqlRCn65OcQ2AVMe+eTdnIsG5lTgnK92IdghvQpipbYPHVCYikLUkcWrKFhmEtHl\nY5LHUjKHAgMBAAECggEBAITKEDXb8lEsBDR2GcMyS3uLcxDMRsgyQIpdnHlg8HrE\nCl5JNia/HGpGqhInkJMSLp7DQojuSz2GmUMes+qO6l6/e6wGRhjBr8onyaE/rZOE\n06OJ0ZqCitcEQB5LUJEUksjtw0IE28EfDCsja75R+UOh+qytiAalTlgjRFlMKz11\n861o3e3twEw/ijnmcDc+sPJjktFzbqPVWmoep3gx1mWaH/WmrG7A5LZ8TgdOpn45\n1/OoCj9hx1tHZ+RBQmFd9hmzNrUbO8755oWXQwWKxqIEk3Z56Rg3fz7vvHGNSdNN\nPhePPpWl6BELtaHfYASC7wwUf3mtTFT4sM0kL92okwECgYEA8SKmCSxVtszFFNYM\nqoR7aMNvpSsbbLsDsxbNbUlXGCFBlqu+Mk0n1hsg7swAanyF3zNKnqFsLkV3ps67\nAWV1vsh7TbrJiyAwphG4sJgtf8xU2B70kOw9Izn/R8hDuqI0qn4eYUVGFY4HAfuj\nvFRGtM/U3fEA9KR7mVMFICSlrlcCgYEAz9NFqtI5zOf2AsVXthNkyNd2mBfYw9wk\nlEsrnsYnMi9KNRR/XzpoRfL0WTQnos3VeaftZaSzPG5z3Zjc5lLwclCcmsEPqL5T\nGPQhBvm9Xn0pKdmEoUsamZ1yci45mBM+9vuHsLHHoneKcOw+AJikvOAX6kV7beDL\nwFjBU7aSn1ECgYEA7ZpnoshV2V8in2pfZrJObCePXmAAkP4iIhjI6PQIZtV2LIIk\nUqpmI3nt1H+dtU/oFcwTrgV/dISs5ufzquePwyMHJMt2Bqn8Zdc2doQs6S2tOJwf\n/qFZiNmAKvoxiriETq8hPlWlPl4Jl7GeYFdmqInVxa/Rcj6VL7p3ZXnW69cCgYAh\nDXHcDBlDPHUE1cvwWj9CLfpfkBNaew2aRCZI1yzur1S3Am6Lf6eL0GsKMOBI5UGZ\nWprH+pzC9LIawTAItZImLCnr9t59sN9YbaM/D8MNXwyH6l9Mo7w0SDUmcbGZPR5b\ne3+GG5Arh6WN9hSaVayFmYJUMP7DZ+gfzD3bCYNiMQKBgQDxF6QaCvqp5JLCc0WV\n22hVmB9wTJvnthN8AqNx+7rG1txAxVyjjRjQ0uqyOEzdD7bUXf2ckeQGcFfZui/k\nCl3wf57NgYI1q28Elt3Dzruq7mraDexLHZ7A0owgc1eZC1FI8BnogCo3SLety0Yq\nekBCVhgoEoW3vgfFaGr4X8cMuQ==\n-----END PRIVATE KEY-----\n','-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAw8IFb4IwcmxiCRaziNhr\ngqSMBnIbqqRUMV/QlxaVgxbs5Sm3lLEaiw0P8bpz9+hsQ+pDa/Ewq3nL/8T7N1gQ\nepkBfo9gOwMLK6uIdZ6DZ4dXzsji3SZ/YxZKvKsXDy+cS17VBGxW05tHmi/zS5Wg\nZSNTDYuRLzRQ4XdXjjcIBnaWvFDXdba1SWQy+s2ESFsmgkdtP03uS1o03D5XspTm\nzfI8tVxOzugqYOtW2vXfBSoizdvqJmewtZJBcV3ONrg8YfsGnTZ+4XMltJ6pUQp+\nuTnENgFTHvnk3ZyLBuZU4JyvdiHYIb0KYqW2Dx1QmIpC1JHFqyhYZhLR5WOSx1Iy\nhwIDAQAB\n-----END PUBLIC KEY-----\n'),
(1075,'-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCfGoCpJFXNsPaB\nmC5u2NvcqZmLqomSLP/29FCFis3Af53zWCpkM9ccDV2K/Mb8UcvJPbx20GIi5EOc\nvjc31/qJ7WNG30s9oqcHQzzp5KcLZPXAySifSrC7VOgHER9FhtM52AcyfQrZbV3w\nK2EeIqN2djmkZeCK/EQ+Z14ky5PfJaJyr3+pGGNOsr2gjJFuZhZbM+/lxsTrwwUK\nWBBcFDAVAjSjZv8RKUR8u/vsrTWdfW/Pq+4SAOlcNYfgJTWLmSlUK8UjGqm1CjLn\nsP+aXaLrv8oJg+6ur952AWjO6aX5B13Y4bJ5TDPFzNukBRsaunp1j13hiCA0TWn6\ncSsTLQPJAgMBAAECggEAPxlsMGisLOUDhpcbxzNzUvriXf1XDSWSqFbxvlyzyCX0\ntydevJnAtKvqTu58XmJ0T04QOhDf8tWTqQzZamjaQKxopJl3Ri0FUECO3nYj98Vl\nH73HwhEFsW31jaPxQoo7qGOwSwpDbMLOsCsMG78CFD/EEZqj6Isu547oS/B/J06t\ndKYmn79Ugq8EsPZx73PC8SfLfz35kvG4Zn9qqpnNoOQ7nJ/O2dnQ6RzJsmEi5yVh\nqFtwr6P/864PBknB8TteMtSJk+qmB9j1iISmLpVBQwf37BSnXqsWWphE5ZsTaJse\nmq4IcwkohvreP4JPzDBNg8s8E10us0EEb9zEXCQcPwKBgQDdFobl8ghWGLbcr7jK\nupLWK4zth+humU1G2MUgtp68DAq6PxyG1FgJepz2LXhf+erOClFmr5aYzl6RFS0v\nuZ4T/CNVhIW+34EbYYrwPAwfpfTQJwXWV5Q6RrTEumVYuRrooBLvR50ZwDIQYD9h\n29+xOTUDRTIbGC7PnsBSzK9GewKBgQC4OkGJT9yFph0i5bI0od9uNoyuLII2f+Rm\n9eS7ygjlaMScaHF1a0j2OxaHfHLv3XRqfSvpTRq2C4/avkt6qJXzYFkyZW2xVWFn\nrvFnP0dazHnSmZs/7TkDD95qq1w4Nu5P+8ADAy3aRTzRojFaw/F8pCIij9Wpi7c6\nGzmB85CNiwKBgQCiMnSlHfufrmH5ZbFciaRQG4M4gAy1lyJqZ323kkLCEtOL7+Et\nyXsM+TdOI+27+82Xe1pcy1TgpgYayj5sVPD0GHaTtrWoYrCFNfqIZIVAcrA4RWiy\n522Hk3frHBReEu762vUJNrC6w5X3DaVyVay2iBGsZIdt+T/ecckG9cNhIQKBgAS/\nc5rvVPaYzl1s4AfdOB3mCAAhI4X2C9PfeHKihVIsPgzt4CaviiTWZwE84tVttqdb\n7HrJwut4Js/zYYyataqdDA9xb79HPQhoCM6pYdRkOquDy+181qBOk2PaYLkOKVwk\nV9F8Dn12lVetv2ngbOPScxLC9DW3ZRR5SSUhOtN7AoGBANm6LPLuJ8tnSemb2ArR\nQJkbMRrWfo6kJZYnZ50Uh4V4kzRQQGcK7pl+8ECHf0JsQFOKYur/83BXNd0VvvSc\ncyXMQ7BCdC3WVi6IpF+oHAEKiv/eNWs/nv2Z1O9U8onOXF3SymO+14qtM1R74qMS\nLyd9VIua3KQy1juoW3+K6VFF\n-----END PRIVATE KEY-----\n','-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnxqAqSRVzbD2gZgubtjb\n3KmZi6qJkiz/9vRQhYrNwH+d81gqZDPXHA1divzG/FHLyT28dtBiIuRDnL43N9f6\nie1jRt9LPaKnB0M86eSnC2T1wMkon0qwu1ToBxEfRYbTOdgHMn0K2W1d8CthHiKj\ndnY5pGXgivxEPmdeJMuT3yWicq9/qRhjTrK9oIyRbmYWWzPv5cbE68MFClgQXBQw\nFQI0o2b/ESlEfLv77K01nX1vz6vuEgDpXDWH4CU1i5kpVCvFIxqptQoy57D/ml2i\n67/KCYPurq/edgFozuml+Qdd2OGyeUwzxczbpAUbGrp6dY9d4YggNE1p+nErEy0D\nyQIDAQAB\n-----END PUBLIC KEY-----\n'),
(1076,'-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCZgH0ll8RlVmi3\nrCgk7j223rNTnYwPs7cKgag6ysEMsXKUdslBkNfbvyk+BM8NnPIE3zykrd6ydlrl\nZ+eeF2oVWTE7I59M8FNTlCcYl5jQAnu2X3xL2pQwHrLaXKnnKtisQgaJeW9KXRM/\nYR8BZpB0bXhEbyYMUfj933mDhFvAcqps1iQcJFOsM6brBBxyS1T+84GOGTsr4ctG\n6gnZi9lnurJ3+hVuprYCgPwQQnnAGnlYJR4p+tZGMThxpD35U2//tkpM8WZZtS1v\nRXXRfEN6qD7vVAc8yGUAB6zbHqHj5qySBYcYRfLxUVfcLevVj1beDBYU53VsKvJ3\nJVHUNZS1AgMBAAECggEAEdC3Su3RJepq7zzu+yZJXwLRcO1n4Yn76Z9rB8kbXF6b\nNpQ4vxV78ALrhZ6nlzlgCg+3U+zisUy04kt2YW3vP84LvYTgtVxubKn/sEYmk/xj\nIPihDj6ulI0jjd3+UW2IGynzOfEFk8MMplOedm+nE/7WhqltvYqlVCBOfo9AhNZm\npiI/t3pVuFMOAnmDmg3Wh18qDqBW3nkZKY6x2XDudMp2BPzozYv+hOuozR/M4roF\nSAObA8icI/9k3FpnCE/CRV4DxooASkbuZEGEzBdCmLusUfu1b2Vj77HeBsba0mT3\nxy8ffwmoYtXeniLrfj2AtYwFzz5eUz+/AapmvZ7CuwKBgQDRMqF/MbWyhutq7aGH\nNjhS6LOSJT9e8mMxh7GCXej+zMYVbeTfVH1SeMyZ8SyRxjU2mSO+wJ2ra4ZrCMAC\n3L+Vi6UrP544Jp+HYyLnv8o3nRTSNSnh/tXzkww9kON9nLSG4jS6dFXulpTabFIg\nm8NAR7Y2xYwIWuYXb3DvYiecuwKBgQC71/4dJEw/dlumE0oRIngPaeFyImkdishc\nWI4k8TOTkg5Zu6AahCdyGl4AQSMnyepJW8hzyfjMqWXfSNGgywuNI6UzhO03jtqX\nh4TCJkTm5MZlc7mx5XDdMTbQnBJf0Hvd6feD/I5+O17kR/CyL2zogPBM9IiaPgZO\njgVti8S1TwKBgQC+Bemgaf0Lv3ZUWKoi8eNTnECQ/fiEPFRSB1n8e2VLHaLIkFwX\naN21bjkblHDRsWNgxtYrTTdrIG6nBvmzH+V+56wOjukfRCYgirKIJDSBM9RX5Sa4\nPA0IBYhW3CdoUFHDO/J9c3MjF/D6Pu6S5CoFV55yPhsm87qRiw7gwx4MRQKBgQCl\nnngfy5wqrDl8QS+h0elXdbxfvHU/pdioiy+w5LXb3AApH+O23WRGF3df9A6CC2Y1\njeY8KQzjrkvyxaqGgd/Kbm4+8WmR/bM/vS3RXJqNlZJTauiEME8Fx1mULreIoTJF\nY/9m8OvV4pT043UWNfhpOx4kS8qRbDR1WITypDQowwKBgGi4nV57y8AvQw8ONPe+\nf9p12TuJypjki9rd8hYJpSZ7JRMCdkuQBen/N83YsKTmj7R6SmRYwmguUrsCXfy1\np6GabXwVGwJipvWtGWWqBcpWbEz4mn+bUz5eohVZLIQ21/CjU5TtC9XNTswKUJff\nK69zaFlHxAIraSNx3jgnG5Ou\n-----END PRIVATE KEY-----\n','-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAmYB9JZfEZVZot6woJO49\ntt6zU52MD7O3CoGoOsrBDLFylHbJQZDX278pPgTPDZzyBN88pK3esnZa5Wfnnhdq\nFVkxOyOfTPBTU5QnGJeY0AJ7tl98S9qUMB6y2lyp5yrYrEIGiXlvSl0TP2EfAWaQ\ndG14RG8mDFH4/d95g4RbwHKqbNYkHCRTrDOm6wQccktU/vOBjhk7K+HLRuoJ2YvZ\nZ7qyd/oVbqa2AoD8EEJ5wBp5WCUeKfrWRjE4caQ9+VNv/7ZKTPFmWbUtb0V10XxD\neqg+71QHPMhlAAes2x6h4+askgWHGEXy8VFX3C3r1Y9W3gwWFOd1bCrydyVR1DWU\ntQIDAQAB\n-----END PUBLIC KEY-----\n');
/*!40000 ALTER TABLE `data_users_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intentos_login`
--

DROP TABLE IF EXISTS `intentos_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intentos_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ip_timestamp` (`ip`,`timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intentos_login`
--

LOCK TABLES `intentos_login` WRITE;
/*!40000 ALTER TABLE `intentos_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `intentos_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logueados`
--

DROP TABLE IF EXISTS `logueados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logueados` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logueados`
--

LOCK TABLES `logueados` WRITE;
/*!40000 ALTER TABLE `logueados` DISABLE KEYS */;
INSERT INTO `logueados` VALUES
(1072,'192.168.100.95','Maria Guadalupe','2024-01-14 03:06:40'),
(1073,'192.168.100.127','Angel Francisco','2024-05-15 19:39:12'),
(1074,'192.168.100.110','Joseph Jonathan','2023-10-02 15:52:57'),
(1075,'::1','','2024-07-13 18:21:14'),
(1076,'::1','Angel Francisco','2024-07-13 18:21:17');
/*!40000 ALTER TABLE `logueados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_data`
--

DROP TABLE IF EXISTS `users_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_data` (
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `first_last_name` varchar(100) DEFAULT NULL,
  `second_last_name` varchar(100) DEFAULT NULL,
  `security_question` varchar(400) DEFAULT NULL,
  `security_response` varchar(400) DEFAULT NULL,
  `recovery_phone` varchar(400) DEFAULT NULL,
  `recovery_email` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_data`
--

LOCK TABLES `users_data` WRITE;
/*!40000 ALTER TABLE `users_data` DISABLE KEYS */;
INSERT INTO `users_data` VALUES
(1064,'Angel Francisco','Zamora','Vazquez',NULL,NULL,NULL,NULL),
(1072,'Maria Guadalupe','Vazquez','Calvillo','d648I/tdtKcuC9DKdxh/c228lB1LwjdSnyahnSVHNAnfs3yWn8n7+WuYP8crWi9wEU+bUTBjqmILu141LPguf5KNKpFdOUldEm5BVwO3BBjpDO3wOMXnx2GEi98VIPk/ygyjCeEXVf4pEoWc+EA7mJRxwif12/Z5JwTdD2potkwLb6q/A6gWQJ5vg7XeYSWE8J2M4Sxdb1U/4t2LHMEUFgCVRUU1thbqILX1NdDmqSWWtMCGc5AbTLNUqcLggfw4Rot8iIFHVstn+LBraCSaOep2LkG8d5gv37yarL+V8gwIW7HNAu5vjVDdEa8HUCraAN1k/ZnO628Zk+xLwHBQKQ==','gHN6MJnzrIHYjNoP6Cejha2qKKN5lVcTJ0mkCB1s1NoaH+12AOAd66P/CC2mrdSpTtST6e9GrAVvB4octzJuxaxqYpUhrsr+1iwma6d63dz4UW8jy7y2rDgL8mKrwa3nxQtwhN2ilku/d4mmxHv8IOH3WbsxKxOjTQGIv2VJoBKmCefJRjtvzNa87Dm3hAV6MgisrzcqsBJlWFHJK5VUqw9fLG1I3LVWRMFeXwXG6bUVURcE/c4pU7J9OPoDsYASHyqnn9E84KsY9HAaSUMSRrEnMIrhWCygcgArFTGlfN0dnELK6mWd0BUqkVysjs06nVYRAydNN4jmA5l+7LtFwA==','ITKrRLEr4hC+Smj1kUOj69FzLlcmGumJONA+MmaCuSt+t1QnXapFT6R9R/+LjAn6hi8aMzHfiy0EiUCEOh5+Nr8HxkXaO7omqPwTBTB3G3LMSrxlXbzuqqF1Ge1nOiQth06zMMvFDMLrUmUSNgopYkNKzZdkltTCIT6KCNo6DtPi6C62xULc+BI/hD9D4RGy/ab27u3A0kLCtnDaShuXsXD+vG5HgI6IfdHQhw0tPn2V/uUCP8gOOST9NhJG4zf42/xRZeiVwb1uGbHcJVOJc9IxedSYgM7MomIoG3gQzd0BTzV/FOP49JDJ570wV+W2CQ49RYvHQah4NllCcfRhqg==','Mcna93Bfo5RWzqn2sRx8T42OegjMimT5I9AQIFE8r30X/JiPoSikyu+HYM2FeyEzyUrdwx8oqrrq6qNwSYZ+b1J0RNA4C0nbBnwnBxuP9bnbwQkE+WNIgBpl4aCB6+NyOVk9QjxlQL7M6uqdjtAGX8Hj3MEelmQ5mVkqkoNZcbggTEwRcnaxORaJS4FyLHrg/c0BtVI6vXB7tRmOZcBCkVOKYigmxkQZzUp2jC3nbkmd6QwPHCmlKn2rI+TmwFNlc5pgEnyufpuhfkxtQViM2o3fuoyU8+Are8LoHgMTxlwDACV5cLOi1wLVI9Nbb5k4pQOaE9cNmIMIi0iNO4zBhQ=='),
(1073,'Angel Francisco','Zamora','Vazquez','Cwb3wq7vkGvxK+VwIb3jQ9pjypm9eFDIbbfsrMvap4ZUgs9vVhLZaTUDqF/MgXXJU6uYRZTi9MNxZmcK6PcuHVgF/tWOfGAa0aktr9CTU2V45OfyRe/keiLGz56tdpwOH+wUBnLYgoXAy8AYzKO2Rq3C1IJGCPicM6V4Y3ssiHVT0ujKhzMwaxExq8FkX2opNbTgiO6Iyb8z/UHG+O+FGCEp/fhi1bQF64O/BOzzFDmuN0gbOEYl8bECSogvDldUkN/CfRf7g0+Lo2VyBq0bYYzZ+0UblKkIcCTu11F59ONquyp4i5DiapHrY9n+a9yjlhxPSVfAkS6szjVjGQS0Gw==','fqq6dzvIS8NviI0DUcJS74q+uhPMkHJ9GTh/7zAoaXHUpV2pcW9UUtB8xuLMzB8AreJHCd9ow4DdJoxstWfNDPAFJTaeeWuS4LcWFu+8zXgVwZMKaVmDP5GInBQrp/MXrDNaL9jcjVzV8Z0AuHBEknkfXnc9sLKOzb99RF56qzBxkzOPGtMpbvTqPeGK3TGRr4IJIA7i40GfKA3F9UpdZNeFNaa738ZiT+yZf9f6Q390C7gBcmpxdKNYMCr6gRE3Hgh4uJV85+J5EDYetGDfIKKSlzTHjJNVeMc+pG5zS70OEWWJvSm7fL3V9s+awiyNGmYRk4Ta3NlAkXcwUQe+/A==','eJHiuUu3niq2a/4LUc81uQXZyuzRIiyMbQBG+J+GXocoaUROBlCFXl4F1HpyiWhhx1eseaWS75tf2300AMhDkvODvR/2QJClhCRm+9gS+BeRaK/p84b81A+amjCz+jf8G0H9XZI9+3yogESUS9eQldBuyRWzSMih7muoWDU1JFq5vQZuucXJ64ciZLUryz5WmL9FZH9zFKDCGB2LjnomOq8/cHMVsAq/HcrR1z3n65SDbT2Qv9mMPflu4JdzKaG/dd8XEi8RCL9vhneukhZstTdEfVzJhPJVOsHb40iROLvfDpZVl72iObRtapy8Ru/kXc1g+3yOkshIVbMfPKdFBA==','l63s6cqcZaizH4mqN2PDWZyU4KadhUsbvLsk+KMt5d70UT1ZtrWTRMfWExPYurIGdMS+4KkFXvtPtjLFccA6z0XKXPXGJ1e3iARyrwjDJaQnohEYJUxE1fhijdYgpltwuVpvynmsA/7KetCIdFLfcp0kPt1QPpFRBbbaWl24wElqr24DejwRh+llOMJNOzwC1kLZ3mttX3kGWNFnQvaInE25pUSOBZXMxjWwV55r/hNlrpvwitljfof0Vkjm7f6V/bK2nJz6UjdYyayd8ezZc/jpNzbKlurWL0zpYJb6/2BPWZava4HhQUxeSfcOkT7cvT+dbCpPl2XoC3INT7ie1A=='),
(1074,'Joseph Jonathan','Zamora','Calderón','Hlb33F6AlW+z2t8yevco/qOmol41wq8XYj/TS1uqsXMrp9/p7y0O2Cw/dT3SFMQiQgD3UNBVPm9JUesoNPMTRu9L6d2jB7Avdk2N+CtQe9Ij26/DP0ra+Kt70KR8LGwqXgwBBJsQ5R0n6SxFvJXADkI8zxi26yCdh+XR7ZoBjfmjwWk/cK5rwK9iuX93xyLdqs3/gFGtfKDqrVSEr1yPsQ5d0UIjsFD6c9YIArQ/acb/o2IQmBclFO9FoDa9vGm2pCNEhBPT8M4Ny13FCrx3jX/cd1xEh2hlZS0kWBAzcu4edNvph9pTEomJznJ+4GkchUx0VdyQo2q2TLBiDYd8oQ==','ujXYkysztC2K1m6g5a+xK7xT84h5NefS9g4fiqq45FfGmCUCt3unPzOZdhNAiZJhulAg3zgjnSELvRJl4fH8Afbd6YSFUhOk9/id/FfOhhpQdm715hlYqV0hzBW7yYQnmAhfgA8i1NSE5YM+pTE/aICynQFpssFheCTiaxFMgqaA2hQHWn8XCY//QyI+55Z5IQg7xHZE5nlB+MAchM32S6ujxgm87EnhU5xx74T6r7RuGuFwGrz2PP0XWx61NkewSvemtTMzvWEtLe+P719+Asz62qV40QG+mg2J731P8fKCDDlo7DEaA6dr/XcJqhYEPEiMq87Eb+FOkZu1SAQQPA==','qXA/5ZF0HC6Kuog/NHwko2r61AI3yljdqp80mRNrMe0im/xvGD2y6daP7ZrCeagTP6z8EoqRjyYA54yabIH7oG5TN8p60/34JyEAqxVB15Dre+jSdSSlhfqlm12tvU/v9O0sgMWpjVvs6EuK9c4PGIPJiSOkNUSh2sDgHHVqWRd9MazH+17tPuwbW7jnlVUVj4wuvegVhxjUdqfimld61IoNtMvQ2zincWsInjM1b0gT4LOgfk6bQwgvsXkBFll1at84Zhil5Yu9dwPgNMRv4r7E8MGNvOzLlwR37Y7toTcizPBYB3YN+BdOuuoaRoksozpTtiAk+1aFqMrhdXOouQ==','HxlyI+4JVPgi1wpr2gfNwfEWWySgBVMNX7buvaV/d32woAEgetFZStCn8laxaRTQBE8XlAs+3q1wHz8DmTbfhhuTnbRJ4r7o/KR+oNQBAoL4lfY4YEpmzyWrl3hTBSkjrJ2XKQZKYfDp+e4BvnvNZFVQS66xtSyBv8dzYUhDak+YKl9L7OhmM+boW0Cp5p4NBrsttVePIMe7QPMBFZUIiIj6N5P5Yx3+w0yZnidDqm+eOzEIDQdoGd1S2MeI/vFm6cMRooeRprhO6Y+uTHdZC19JQZIIGeJxIy5jFZGdS7eLBCtvyQY5BWy5gX7iCuzI3W26mfPTEoi63D6mHkOPbA=='),
(1075,'','','','ZDVTtIvx7Vv97ul1HRA14Xh247KNJC68KUHRxm+NrGm4Gk97fywguVP9tG6N7iSwPkRamXvZ+P4XXnc5c2IprQ8trYoHeJXsmekMzk+8rR7Nff2DvJqCZ44NRazBwc0f842eKikIknzw2Os37qxwzyifIvCzRB7rZnzMCENNk0Kd4u3OhiAkaiEms3WPAPV4KedFsc2kGDGhIavKxuTdvs4wqs85BhfREeuV1uZuBHeP+FyTZ+35HVEZ1pd/34HSpfnVABrLVUBGuMNQl98XDJKSyRN1z0zk7yp2AbIbacTFQ5WKCPBdRgRidL8JNhc7SVT4SCzZUafdVLNRjcdR5g==','B/Ci3A1esgXyWBCBuTw9Z0clgLli8QaykajzA1e8gUzPTGUgsXtwoVQs6ROm2h5WwLfnMsLPzOtmbBXGyxYVV0+MaKTL5jmyOWX+5+x/31FfiEMMxg/gja0WmKL1SriJTT8ZGl2J34UnUnubbDN6vVqkWVa+y4K4Y12PV53AEG/Ovc/oQOcEFIKE4gWREA5TZ4b+zKTZABVFxFhRIItCWfSNuOXByuD6c0OyViScZKlwxAy8WdbYYZvqTYmuEb+miMOOSH/kGzJ3UqvCUCyuOx2I1jpuUt4ntB9K1PSgW8N6cUtT3JCdRsTbQvTU0AuPip1nnIpQXtGYQE+J8xxN5w==','JEMV6gRzDY1Ey+LH9QPJcCrA5OvjWMP7m9sDOQcpU6FAE+PCu27ukYouf3i5pX5hr6lcV4de1ovwtqrhTxJaTnG0QCgPI3zgUWcCVis8EUv7zsZqF2q4ajx2nPByyjERmWTYoISOAH6TVCCOrWvPRf7DFKS0Jaw+/WE7E+DOXYUf4p3Y7296DPyYDcv4qnBn3NZXDM9biIeaf8eSuTzQCJURfQkfkhFpREYtF+0NZ1yLdLcJfxdtOFPW7ZT5WIPc6aWWZMXBQaay8TstDZwkP51KrHdpkek394cjqmvuQTrYtzvqvNZsDh/ITCiz8FxMomjEQ27kXvMzj3coaQN8mA==','g6sbV1eJA2FLHNRmHrPB7N2ld7SQ9VNvl8/JmQnxjMQ4DhOvDoMCUBl7W0/ayFshVIbSbGMKNzwsLriO7RH3IEX6wQMPNbVq5wb6Ewh/xdp7fQ+ohJ1jbgOI2VUdLOv5Onn0thpCSQCt3q9KAmy6hQpawOUmPD5kzjXXaoRQCV/zybSwzZT8YMXzYRsnDCMapVU/h/mSuv34HW68o6fyCP+to5e2D/9FxaM36goSz0MaIdjwUdd+GsnQxC2QFo62weeHrCRMU1wF1t3psueoS6XF4jiBlyrlv/0FZXnowUED2Pu9X6l+q13MZbodjNM5qaakACFuzDIWcuzWbu8pAw=='),
(1076,'Angel Francisco','Zamora','Vazquez','gN4ATWnBhPJKrS2w1tw6QWhLxdt5NUD2PVvTHaY5On78CixSlf2iFwFdAFlOjuIvnqBp0nLdIVfkwVPEJL6WYSfklUQug6E+oc6wis5moH7JflVeUWtzb1mn4LWZ6XXzo281DUY4QJDFkaLOGMSwttDOjKYYDbKTjdqmQ59cJ0wShkAPJR7ECoeCmiuFEHF8l+w5VxB2VgCaxh83rwZg3AZPKf4xEUu5OfAaqHaKuLTfjOLrld1C9FMm4LpcKjnrSpTqQnFeeoMjNuGqXp+17nEk+Lkk7+03tpfAieNK+U/zaxD6Z18KOFxmwFVkXrl20grOBdiFQ3+QJPcz3Dzrug==','aOu0FBk9Rn/m0cN4hFyJw6m1eZmcP7zw6MVO/XaEVhoosqMzsswK5yai2gwSIYlNFUJgUO/bObMJLzcQZ+vAaqNfrEWswQPnOmtQTWOojlVg68smFo8j+kZigtvvB7bL+j9wE+GuQ0rrk4GO3IYp/uex9mcU8vO+sLQeKe6hf8l/0cRwHTfHkOG5eCSIP+/Rpotmc0HaY+3lxNzrmcilH1bfyL4pg8B5e3xkvRIQFb7kqhhEkUYaifojHF1yyLdA9RBz5Tlncoo5C3jde1EYt+IJf6f+UZAOuNjIf0QUaoaAICzS51pJR3qUqd6hNZER+UXM5S3aE6XMV6PkWDTwXg==','KtyjDUhQ1I199o+nd/mj9wbrn776itk2/99ACWhjFohj7Gi8YTEzOdvXt/dpcsVP/k/WL03xKQpmuEGUGnBRccbe2zhFXOZyT0PUoGtSGTQYYZMs1MOWf/8MVpjYH6cCwUwRBvG3/MVoYHufg/k1rp1BT8kyQK0y2/sEgSbHxj1sXvUdph+1kl3KP4W5gzItlptlwFw+1s89JUQ7JwJElo+Gw/u/WFtLVSWErdypPt+xRskykuEAH4aldY20vpXWYVJSazAGuxGMBlaPp8RKHC6x/GLYjBVGPidC70v8xjKkvt1jT8jbMlfTCvlX60pcJMw7ThuGRkBY0lsW8bvMVw==','F4HHqDxljnPk199aAEBxTjiWXkyskhSLsDUzRmnArdphuo5TyR0JUhiSAqpCB/gttw1IMel1eOwfd0vRxXWsU/MzVuanf8v5MeaY5BbI9hrybYF8StqI0MCi+MylRC+XI3QskHTfBDPcxHj3g91NFL5ps7ATqA9LKuGZTLWl7Ohik+jM8UTvbkAA1oh2dNrwvXVmbVlvHDRom30X6zQbK2mAngMA9CjrnygUA6sYy4tsq4XVQNeG13BK6TB2JJ2oLztVPg8/IKvN75vwdW99kdIncXUodZBNIynYIwsZr0iDO/aOxrIyQIKCbkxvxcT1Y1C67mFSNp/5WsE4k3T0VA==');
/*!40000 ALTER TABLE `users_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_passwords`
--

DROP TABLE IF EXISTS `users_passwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_passwords` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1077 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_passwords`
--

LOCK TABLES `users_passwords` WRITE;
/*!40000 ALTER TABLE `users_passwords` DISABLE KEYS */;
INSERT INTO `users_passwords` VALUES
(1064,'Francisco','$2y$10$NBGBwG13FUAUaSAjlqRwv.nV28SY0bebk7TzXVSHRfKm6ydnJYUVa'),
(1072,'Lupita','$2y$10$qZ/qUxUcElMwJLH7Kl5Qoe815dXIZHahfTOdhLxgQLiuZrP1mT.mC'),
(1073,'franco.vazquez.13.13@gmail.com','$2y$10$WDcVCSfc/J4jDOg6I2qsfeM1iZJmOYIiQWvQR1vSc3MlGlmWM449e'),
(1074,'Joseph','$2y$10$.D.IuoQhR0unNWG738iF8.b0FP7EbkH7sw1FgN6naQTLa1NavBxYe'),
(1075,'','$2y$10$VRc0GYiMptNl4VxhTQxyIejzYM1n0.2Fu2.B3V9v93je0w6sN.ZbO'),
(1076,'huesos','$2y$10$RiYkjvMBhYQ9qKpfM0YK2Orwzk0qlx1.2rJPTu//o7azdzRSwB41C');
/*!40000 ALTER TABLE `users_passwords` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-21 21:17:53
