# Data-Management-Unix

CcuntReviews.sh <br />
The dataset to be used for this coursework is a TripAdvisor dataset extacted from a tar.gz file. The file is extracted using standard UNIX file decompression commands.<br />
<br />
BASIC FILE PROCESSING AND DATA ANALYSIS <br />
countReviews.sh finds out what hotels are commented on the most (the frequency of comments may indicate how many guests they actually receive). To answer this question:<br />
1. The hotel data file is of the form hotel_72572.dat. It is first copied to the home directory.<br />
2. countreviews.sh counts the number of reviews in the file
It takes input from the command line like this:<br />
% ./countreviews.sh hotel_72572.dat<br />
15<br />

where hotel_72572.dat is an example file name. Note that 15 is just an example and not
the actual result for this file. Also note that the argument to the script, hotel_72572.dat,
is just an example file PATH; the script handles both relative and absolute paths correctly. 
<br />
3. countreviews.sh is then extended to count the number of reviews in each file given the folder
   name (i.e., where all your files are stored).<br />
    % ./countreviews.sh path_to_reviews_folder<br />
    15<br />
    12<br />
    13<br />
    ...<br />


4. Finally all the hotels are ranked according to the review count so that the hotel with the most
reviews is at the top of the list.<br />

The output of your complete script should be formatted like this:<br />
    % ./countreviews.sh path_to_reviews_folder<br />
    hotel_1322 50<br />
    hotel_21313 49<br />
    hotel_31331 45<br />
    ...<br />

Regarding the output of the script, please note the following:<br />
1. The .dat extension is omitted from the filename.<br />
2. The hotel name is separated from the count by a single whitespace.<br />
3. Nothing but the hotel-count pairing should be output by the script.<br />
