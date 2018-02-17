#!/usr/bin/ruby -w
# -*- coding: UTF-8 -*-

=begin
七周七种语言
第一天练习题 
=end

#第一题：打印"Hello, world."
    def print_hello_world
        puts "Hello, world."
    end


#第二题：在字符串“Hello，Ruby.”中，找出“Ruby.”所在下标。
    def look_list_Subscript
        material    = 'Hello,Ruby.'
        #mate_size   = material.size
        mate_length = material.length
        #puts "mate_size : #{mate_size}"
        #puts "mate_length: #{mate_length}"
        index_num = 0
        while index_num < mate_length
            puts "#{material[index_num]}的下标为#{index_num}"
            index_num = index_num + 1
        end
    end


#第三题：打印自己的名字十遍
    def put_name_ten
        x=1
        myname = 'XieZhenBin/谢振斌'
        while x <= 10
            puts "#{x}、my name is #{myname}"
            x = x+1
        end
    end

#第四题： 打印字符串“This is sentence number 1.”，其中的数字1会一直变化到10.
    def four_puts
        x=1
        while x <= 10
            puts "#This is sentence number #{x} ."
            x = x+1
        end
    end


#第五题：
    def execute_code_from_file
        puts "命令窗口 执行: 'ruby 文件' 例如：ruby ./first_day_code"
    end

#加分题：一个选随机数的程序。该程序让玩家猜随机数是多少，并告诉玩家是猜大了还是猜小了
#(提示：rand（10）可产生0~9的随机数，gets可读取键盘输入的字符串，你要把输入字符串转换成整数)
    # 判断单个字符符是否是数字字符
    def is_number_str(str)
        if(str>='0' && str <='9')
            # 该单个字符是数字字符
            return true 
        else
          # 该单个字符不是数字字符； 
          return false
        end
    end

    
    # 猜大小
    def guess_the_size
        puts "请输入一个0~9的随机数："
        # gets_input_str = gets
        gets_input_str = gets.strip
        # strip 去掉两端的空白字符（回车、换行、空格、制表符）：
        gets_input_int = gets_input_str.to_i  #ruby的整数、浮点数、字符串的类均提供了to_i,to_f,to_s三个方法，分别用于转换成整数、转换成浮点数、转换成字符串，
        # is_int = gets_input_int.is_a?(Integer)
        # puts is_int
        # puts gets_input_int
        #puts is_number_str(gets_input_str)
        while ( is_number_str(gets_input_str) == false||  gets_input_str.to_i>10 ||  gets_input_str.to_i <0)
            puts "您输入的#{gets_input_str}不是一个0~9的随机数"
            puts "请输入一个0~9的随机数："
            gets_input_str = gets
            # is_int = gets_input_str.is_a?(Integer)
            # puts is_int
        end
        gets_input_int = gets_input_str.to_i  #ruby的整数、浮点数、字符串的类均提供了to_i,to_f,to_s三个方法，分别用于转换成整数、转换成浮点数、转换成字符串，
        random_number = rand(10)
        puts "您的输入值:#{gets_input_str}"
        puts "开的数是:#{random_number}"
        if gets_input_int > random_number
            puts "猜大了"
        else
            if gets_input_int == random_number
                puts "猜对了"
            else
                puts "猜小了"
            end
        end
    end


# 执行 第一题："
puts "第一题:打印\"Hello, world.\""
print_hello_world

# 执行 第二题："
puts "第二题:在字符串“Hello，Ruby.”中，找出“Ruby.”所在下标"
look_list_Subscript

# 执行 第三题
puts "第三题:打印自己的名字十遍"
put_name_ten

# 执行 第四题
puts "第三题:打印字符串“This is sentence number 1.”，其中的数字1会一直变化到10."
four_puts

# 执行 第五题
puts "第五题:从文件运行Ruby程序"
execute_code_from_file

# 执行 第六题（加分题）
puts "第六题（加分题）:猜大小程序"
guess_the_size