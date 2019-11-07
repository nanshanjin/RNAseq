bowtie2-2.3.4.1-linux-x86_64/bowtie2  -p 6 --un-gz s-1_no_rRNA --un-conc-gz s-1_no_rRNA -x  /home/Ref/rna/rRNA/human/Homo_sapien_rRNA.fa  -1 s-1.trim.paired1.fq.gz  -2 s-1.trim.paired2.fq.gz  -U s-1.trim.single.fq.gz 2>s-1.bowtie.rRNA.err|samtools-1.7/samtools view -bT rrna.fa - >s-1.rRNA.bam && \
mv s-1_no_rRNA s-1_no_rRNA.single.fq.gz && \
mv s-1_no_rRNA.1 s-1_no_rRNA.1.fq.gz && \
mv s-1_no_rRNA.2 s-1_no_rRNA.2.fq.gz
