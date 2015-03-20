#!/bin/bash

cloner() {
	for n in $(seq $2); do
		$1 > /dev/null 2>&1 &
	done
}
