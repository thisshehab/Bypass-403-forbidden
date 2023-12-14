#!/bin/sh
ffuf -w input.txt -u FUZZ -o output/output1.txt -fc 403,404 -H "X-Forwarded-For: 127.0.0.1"  > /dev/null
ffuf -u HOST/WORD -w input.txt:HOST -w input/log_strings.txt:WORD -fc 403,404 -o output/output2.txt > /dev/null
ffuf -u HOST/WORD -w input.txt:HOST -w input/special_char.txt:WORD -fc 403,404 -o output/output3.txt > /dev/null
ffuf -w input.txt -u FUZZ -X POST -fc 403,404 -o output/output4.txt > /dev/null
cat input.txt | unfurl --unique format %s://%d/%p. | tee input/unfurl.txt > /dev/null
ffuf -w input/unfurl.txt -u FUZZ -fc 403,404 -o output/output5.txt > /dev/null
./http-v1.sh > /dev/null
cat output/*.txt | jq -r '.results[].url' | tee final_output.txt > /dev/null
cat final_output.txt
