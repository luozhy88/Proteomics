# /data/zhiyu/software/nfcore/nextflow  run /data2/zhiyu/software/proteomicslfq/proteomicslfq-1.0.0 -profile test_full,docker \
#   --outdir test \
#   --add_decoys \
#   --missing_decoy_action 'warn'




/data/zhiyu/software/nfcore/nextflow  run /data2/zhiyu/software/proteomicslfq/proteomicslfq-1.0.0 -profile docker \
  -c /data2/zhiyu/software/proteomicslfq/proteomicslfq-1.0.0/conf/test_full_hsa.config \
  --outdir test \
  --add_decoys \
  --missing_decoy_action 'warn'

