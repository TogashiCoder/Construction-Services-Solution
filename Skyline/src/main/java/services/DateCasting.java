package services;

import java.util.Date;

public  class DateCasting {


        public static java.sql.Date ToSqlDate(Date javaDate) {
            long milliseconds = javaDate.getTime(); // Get the milliseconds since January 1, 1970, 00:00:00 GMT
            return new java.sql.Date(milliseconds);
        }


    public static Date TojavaData(java.sql.Date sqlDate) {
        long milliseconds = sqlDate.getTime(); // Get the milliseconds since January 1, 1970, 00:00:00 GMT
        return new Date(milliseconds);
    }





}
