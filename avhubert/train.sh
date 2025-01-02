config_dir=/local/yh/jenny/av_hubert/avhubert/conf/pretrain/
config_name=mrbase_lrs3.yaml

data_dir=/bada/yh/jenny/LRS3/433h_data
# -- train.tsv
# -- valid.tsv

label_dir=/local/yh/jenny/av_hubert/avhubert/clustering/feature
# -- train.km
# -- valid.km
# -- dict.km.txt

exp_dir=/local/yh/jenny/av_hubert/experiment/mrav_base_exp1
ratios="[1, 2]"
label_rate=100

fairseq-hydra-train --config-dir ${config_dir} --config-name ${config_name} \
  task.data=${data_dir} \
  task.label_dir=${label_dir} \
  task.labels='["km"]' \
  model.label_rate=${label_rate} \
  task.label_rate_ratios=${ratios} \
  hydra.run.dir=${exp_dir} \
  common.user_dir=`pwd`