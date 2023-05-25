# Proteomics
## 31site
nextflow run /data/zhiyu/software/proteomicslq/proteomicslfq-1.0.0  -profile test,docker --outdir test2  
https://github.com/nf-core/test-datasets/tree/proteomicslfq  

## 34节点
#ok
## --expdesign 'expdesign5.tsv' 需要提前配置
 /home/xiw*/software/nextflow run /home/xiw*/software/proteomicslfq-1.0.0  \
 --input 'rawdata1/*.raw'  \
 --outdir 'test8_nfcore_20230217' \
 --database 'fasta/*.fasta' \
 --max_memory 800.GB \
 --max_cpus 120 \
 --expdesign 'expdesign5.tsv' \
 --add_decoys \
 -resume \
 -profile docker \


 --quantification_method 'spectral_counting' \
 --enzyme 'Trypsin' \ #default
 --num_enzyme_termini 'fully' \ #default
 --allowed_missed_cleavages 2 \ #default
 --min_peptide_length 6 \   #default
 --max_peptide_length 40 \   #default
 --variable_mods 'Oxidation (M)' \ #default
 --fixed_mods 'Carbamidomethyl (C)' \  #default
 --num_hits 1 \ #default
 --max_mods 3 \ #default
 --outlier_handling 'none' \  #default
 --protein_level_fdr_cutoff 0.05 \  #default
 --protein_inference 'aggregation' \  #default
 --protein_quant 'unique_peptides' \ #Default
 --transfer_ids 'false'  \ #default
 --consensusid_considered_top_hits 0 \ #Default
 --targeted_only 1 \ #Default
 
maxquant-DP（34site）
1 /home/xiw*/project/proteomics_preprocessing/SHJW_DP/xml_edit_script.sh #其中/home/xiw*/project/proteomics_preprocessing/SHJW_DP/xml_test中1.xml 作为初始文件

2 dotnet /home/xiw*/software/MaxQuant_2.0.1.0/bin/MaxQuantCmd.exe xml_test/${m}.xml   --changeFolder mqpar.xml   fasta   rawdata #{m}.xml是最后生成的文件
dotnet /home/xiw*/software/MaxQuant_2.0.1.0/bin/MaxQuantCmd.exe mqpar.xml

3 /home/xiw*/project/sixhosp_maxquant_proteomics_328samples3/data_analysis.Rmd




 /home/xiw*/software/nextflow  run  /home/xiwenz/software/proteomicslfq-1.0.0  -profile test,docker --outdir test2
