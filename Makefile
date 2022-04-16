VERILOG = iverilog
TARGET = test0408.vcd

$(TARGET) : test0408.vvp
	vvp test0408.vvp

test0408.vvp: test0408_tb.v test0408.v
	$(VERILOG) -o test0408.vvp test0408_tb.v test0408.v

clean:
	-del $(TARGET)