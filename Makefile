# 设置默认的编译器
# CC = gcc
CC = arm-linux-gnueabi-gcc

# flags
CFLAGS = -Wall -g


# out path
OBJ_DIR = ./out/

# 获取所有.c和.s文件列表
C_SOURCES = $(wildcard *.c)
ASM_SOURCES = $(wildcard *.s)
 
# 获取所有.c和.s文件对应的目标文件(.o)
C_OBJECTS = $(patsubst %.c, %.o, $(C_SOURCES))
ASM_OBJECTS = $(patsubst %.s, %.o, $(ASM_SOURCES))
OBJECTS = $(C_OBJECTS) $(ASM_OBJECTS)
 


# 设置默认目标

all: bin

# 定义bin目标及其依赖
bin: $(OBJECTS)
	$(CC) -o $@ $(OBJECTS)
 
# 使用模式规则来编译.c和.s文件
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@
 
%.o: %.s
	$(CC) $(CFLAGS) -c $< -o $@
 
# 清理规则
clean:
	rm -f $(OBJECTS) bin


# 这个Makefile使用了一些GNU Make的特性
# 如自动变量（如$<代表规则中的第一个依赖）和模式规则（%.o: %.c和%.o: %.s）。
# 它首先检索当前目录下所有的C和汇编源文件，然后将它们编译成对象文件，并最终链接成一个名为myprogram的可执行文件。
# 通过运行make命令，可以编译整个项目。运行make clean可以清理生成的对象文件和最终程序。