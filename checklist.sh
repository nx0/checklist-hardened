#!/bin/bash
CHECK="ssh php apache"

for i in ${CHECK}; do
	sh ./check/${i}.check
done
