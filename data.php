<?php

include "___";
//##############################################################################
//
// This page lists the records based on the query given
// 
// i tend to print out each array to see what is inside it. this helps with my
// understanding
// if (DEBUG) {
//    print "<p>Contents of the array<pre>";
//    print_r($array_name);
//    print "</pre></p>";
// }
//##############################################################################

//$query = "SELECT title, subject, classid , section FROM course ";
$query = 'SELECT fldFirstName, fldLastName FROM tblHuman';
$records = $thisDatabaseReader->select($query, "", 0, 0, 0, 0, false, false);
if (DEBUG) {
    print "<p>Contents of the array<pre>";
    print_r($records);
    print "</pre></p>";
}
print '<h2 class="alternateRows">Meet the guys!</h2>';
if (is_array($records)) {
    foreach ($records as $record) {
        print "<p>" . $record['fldFirstName'] . "  " ."       ". $record['fldLastName'] . "</p>";
    }
}
include ("../lab1/footer.php");
?>