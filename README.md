# Data-Management-Unix

**countReviews.sh** <br />
<br />
The dataset to be used for this coursework is a TripAdvisor dataset extacted from a tar.gz file. The file is extracted using standard UNIX file decompression commands.<br />
<br />
BASIC FILE PROCESSING AND DATA ANALYSIS <br />
countReviews.sh finds out what hotels are commented on the most (the frequency of comments may indicate how many guests they actually receive). To answer this question:<br />
<br />
The hotel data file is of the form hotel_72572.dat. It is first copied to the home directory.<br />
<br />
countreviews.sh counts the number of reviews in the file <br />
hotel_72572.dat is an example file name. Note that 15 is just an example and not
the actual result for this file. Also note that the argument to the script, hotel_72572.dat,
is just an example file PATH; the script handles both relative and absolute paths correctly. 
<br />

It takes input from the command line like this:<br />
% ./countreviews.sh hotel_72572.dat<br />
15<br />

<br />
countreviews.sh is then extended to count the number of reviews in each file given the folder
   name (i.e., where all your files are stored).<br />
    % ./countreviews.sh path_to_reviews_folder<br />
    15<br />
    12<br />
    13<br />
    ...<br />

<br />
Finally all the hotels are ranked according to the review count so that the hotel with the most
reviews is at the top of the list.<br />

The output of your complete script should be formatted like this:<br />
% ./countreviews.sh path_to_reviews_folder<br />
hotel_1322 50<br />
hotel_21313 49<br />
hotel_31331 45<br />
...<br />
<br />
Regarding the output of the script, please note the following:<br />
1. The .dat extension is omitted from the filename.<br />
2. The hotel name is separated from the count by a single whitespace.<br />
3. Nothing but the hotel-count pairing should be output by the script.<br />
<br />
<br />

**averageReviews.sh** <br />
This script finds the average ratings each hotel entered in Trip Advisor gets
from reviews’ authors and orders them such that the hotel with most ratings
appears first. The script for this section is very similar to countreviews script. However,
instead of the number of reviews in each hotel file, we are interested in the average
ratings given to each hotel. Therefore, we extract the ratings given to the hotel by each author and then calculate the average. The average
of the ratings are then printed to two decimal places.
