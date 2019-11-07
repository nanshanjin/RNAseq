hisat2-2.1.0/hisat2 -t --dta  --known-splicesite-infile /home/Ref/rna/genomes/animals/human/GRCh38.91/splicesites.txt  \
    -k 1 -p 6 --un-gz s-1.hisat.single.fq.gz --un-conc-gz s-1.hisat.fq.gz \
    -x /home/Ref/rna/genomes/animals/human/GRCh38.91/Homo_sapiens.GRCh38.dna.toplevel.fa \
    -1 s-1_no_rRNA.1.fq.gz -2 s-1_no_rRNA.2.fq.gz  \
    2>s-1.hisat.log \
    |/home/Group/rna/softwares/samtools-1.7/samtools view \
    -bT /home/Ref/rna/genomes/animals/human/GRCh38.91/Homo_sapiens.GRCh38.dna.toplevel.fa - >s-1.hisat.bam
