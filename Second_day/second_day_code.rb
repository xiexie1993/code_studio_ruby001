#!/user/bin/ruby -w
# -*- coding: UTF-8 -*-


# 示例

def tell_the_truth(options= {})
    if options[:profession] == :lawyer
        'if could  be believed that this is almos certainly not false.'
    else
        true
    end
end

puts tell_the_truth

puts tell_the_truth :profession =>:lawyer


# 代码块实现原理示例
class Fixnum
    def my_times
        i = self
        while i > 0
            i = i -1
            yield
        end
    end
end

3.my_times { puts 'mangy moose'}

# 派发代码块
puts '派发代码块 示例'

def call_block(&block)
    block.call
end

def pass_block(&block)
    call_block(&block)
end

pass_block{ puts 'hello,block'}


# 代码块用于延时
# puts '代码块用于延时 示例'

# execute_at_noon { puts 'Beep beep ... time to qet up'}

# puts '代码块用于延时 示例'


# in_case_of_emergency do 
#     use_credit_card
#     panic
# end

# def in_case_of_emergency
#     yield if emergency?
# end

# within_a_transaction do
#     things_that
#     must_happen_together
# end

# def within_a_transactior
#     begin_transaction
#     yield
#     end_transaction
# end
#自习题