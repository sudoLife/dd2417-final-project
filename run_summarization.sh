#!/usr/bin/env bash

export HUGGINGFACE_TOKEN="your_token"

python run_summarization.py \
--model_name_or_path t5-small \
--do_train \
--do_eval \
--dataset_name cnn_dailymail \
--dataset_config "3.0.0" \
--source_prefix "summarize: " \
--output_dir ./tst-summarization \
--per_device_train_batch_size=8 \
--per_device_eval_batch_size=8 \
--predict_with_generate \
--max_source_length 1024 \
--max_target_length 128 \
--push_to_hub

# --overwrite_output_dir \
