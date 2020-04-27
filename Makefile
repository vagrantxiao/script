
all:
	python pr_flow.py rendering  -g -q 
clean:
	rm -rf ./*.rpt ./*.log ./vivado*  ./.Xil
