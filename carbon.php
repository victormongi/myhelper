<?php
// get the current time  - 2015-12-19 10:10:54
$current = Carbon::now();
$current = new Carbon();

// get today - 2015-12-19 00:00:00
$today = Carbon::today();

// get yesterday - 2015-12-18 00:00:00
$yesterday = Carbon::yesterday();

// get tomorrow - 2015-12-20 00:00:00
$tomorrow = Carbon::tomorrow();

// parse a specific string - 2016-01-01 00:00:00
$newYear = new Carbon('first day of January 2016');

// set a specific timezone - 2016-01-01 00:00:00
$newYearPST = new Carbon('first day of January 2016', 'America\Pacific');

//Create day
Carbon::createFromDate($year, $month, $day, $tz);
Carbon::createFromTime($hour, $minute, $second, $tz);
Carbon::create($year, $month, $day, $hour, $minute, $second, $tz);

//Manipulate Date

//// get the current time
$current = Carbon::now();

// add 30 days to the current time
$trialExpires = $current->addDays(30);

$dt = Carbon::create(2012, 1, 31, 0);

echo $dt->toDateTimeString();            // 2012-01-31 00:00:00

echo $dt->addYears(5);                   // 2017-01-31 00:00:00
echo $dt->addYear();                     // 2018-01-31 00:00:00
echo $dt->subYear();                     // 2017-01-31 00:00:00
echo $dt->subYears(5);                   // 2012-01-31 00:00:00

echo $dt->addMonths(60);                 // 2017-01-31 00:00:00
echo $dt->addMonth();                    // 2017-03-03 00:00:00 equivalent of $dt->month($dt->month + 1); so it wraps
echo $dt->subMonth();                    // 2017-02-03 00:00:00
echo $dt->subMonths(60);                 // 2012-02-03 00:00:00

echo $dt->addDays(29);                   // 2012-03-03 00:00:00
echo $dt->addDay();                      // 2012-03-04 00:00:00
echo $dt->subDay();                      // 2012-03-03 00:00:00
echo $dt->subDays(29);                   // 2012-02-03 00:00:00

echo $dt->addWeekdays(4);                // 2012-02-09 00:00:00
echo $dt->addWeekday();                  // 2012-02-10 00:00:00
echo $dt->subWeekday();                  // 2012-02-09 00:00:00
echo $dt->subWeekdays(4);                // 2012-02-03 00:00:00

echo $dt->addWeeks(3);                   // 2012-02-24 00:00:00
echo $dt->addWeek();                     // 2012-03-02 00:00:00
echo $dt->subWeek();                     // 2012-02-24 00:00:00
echo $dt->subWeeks(3);                   // 2012-02-03 00:00:00

echo $dt->addHours(24);                  // 2012-02-04 00:00:00
echo $dt->addHour();                     // 2012-02-04 01:00:00
echo $dt->subHour();                     // 2012-02-04 00:00:00
echo $dt->subHours(24);                  // 2012-02-03 00:00:00

echo $dt->addMinutes(61);                // 2012-02-03 01:01:00
echo $dt->addMinute();                   // 2012-02-03 01:02:00
echo $dt->subMinute();                   // 2012-02-03 01:01:00
echo $dt->subMinutes(61);                // 2012-02-03 00:00:00

echo $dt->addSeconds(61);                // 2012-02-03 00:01:01
echo $dt->addSecond();                   // 2012-02-03 00:01:02
echo $dt->subSecond();                   // 2012-02-03 00:01:01
echo $dt->subSeconds(61);                // 2012-02-03 00:00:00


//Another quick way to manipulate or read the time is to use the getters and setters available.
$dt = Carbon::now();

// set some things
$dt->year   = 2015;
$dt->month  = 04;
$dt->day    = 21;
$dt->hour   = 22;
$dt->minute = 32;
$dt->second = 5;

// get some things
var_dump($dt->year);
var_dump($dt->month);
var_dump($dt->day);
var_dump($dt->hour);
var_dump($dt->second);
var_dump($dt->dayOfWeek);
var_dump($dt->dayOfYear);
var_dump($dt->weekOfMonth);
var_dump($dt->daysInMonth);


//We can even string together some setters
$dt = Carbon::now();

$dt->year(1975)->month(5)->day(21)->hour(22)->minute(32)->second(5)->toDateTimeString();
$dt->setDate(1975, 5, 21)->setTime(22, 32, 5)->toDateTimeString();
$dt->setDateTime(1975, 5, 21, 22, 32, 5)->toDateTimeString();

//Formatting
$dt = Carbon::now();

echo $dt->toDateString();               // 2015-12-19
echo $dt->toFormattedDateString();      // Dec 19, 2015
echo $dt->toTimeString();               // 10:10:16
echo $dt->toDateTimeString();           // 2015-12-19 10:10:16
echo $dt->toDayDateTimeString();        // Sat, Dec 19, 2015 10:10 AM

// ... of course format() is still available
echo $dt->format('l jS \\of F Y h:i:s A');         // Saturday 19th of December 2015 10:10:16 AM
# Relative Time

//DISPLAYING THE DIFFERENCE FOR HUMANS
$dt     = Carbon::now();
$past   = $dt->subMonth();
$future = $dt->addMonth();

echo $dt->subDays(10)->diffForHumans();     // 10 days ago
echo $dt->diffForHumans($past);             // 1 month ago
echo $dt->diffForHumans($future);           // 1 month before
