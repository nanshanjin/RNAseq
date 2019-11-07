#
fastp -i R18073243_R1.fastq.gz -o R18073243_R1.fastq.gz \
    -I R18073243_R2.fastq.gz -O R18073243_R2.fastq.gz  \
    -q 20 -l 36 -5 20 -3 3 -W 4 -M 20 -n 10  \
    -j R18073243.json -h R18073243.html -z 6 -w 8
#
fastp -i 1.fq.gz -o 1.trim.paired1.fq.gz \
    -I 2.fq.gz -O 1.trim.paired2.fq.gz \
    --length_required=35 -q 20 -w 6 -z 1 \
    --adapter_sequence GATCGGAAGAGCACACGTCTGAACTCCAGTCAC \
    --adapter_sequence_r2 AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGTAGATCTCGGTGGTCGCCGTATCATT \
    -V 2>trim.summary.txt
