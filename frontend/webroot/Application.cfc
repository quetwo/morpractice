component
{
    this.name = "MorPractice";
    this.applicationtimeout = createTimespan(0,12,0,0);
    this.sessionmanagement = true;
    this.sessiontimeout = createTimespan(0,0,30,0);
    this.datasource =
    {
        class: 'com.mysql.cj.jdbc.Driver'
        , bundleName: 'com.mysql.cj'
        , bundleVersion: '8.0.19'
        , connectionString: 'jdbc:mysql://db:3306/mor-practice?characterEncoding=UTF-8&serverTimezone=Etc/UTC&maxReconnects=3'
        , username: 'root'
        , password: "encrypted:11f7109e0015ddc5ed84bb843f5454185b134a37669a7b53eec39dc448437758"
    };
    this.ormenabled = true;
    this.ormsettings =
    {
        dbcreate = "update",
        logSQL = true,
        cfclocation = "db"
    };
}
