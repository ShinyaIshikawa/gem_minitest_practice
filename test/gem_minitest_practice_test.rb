#-*- coding: utf-8 -*-
require 'test_helper'

class MiniTestPracticeTest < Minitest::Test
  def setup
    #インスタンス生成
    @target = EnpitTdd.new
  end
#  def test_that_it_has_a_version_number
#    refute_nil ::MiniTestPractice::VERSION
#  end

  def test_it_does_something_useful
    assert true
  end
  def test_odd
    #oddは引数が奇数の場合はtrue,偶数の場合はfalseを返す
    assert_equal(true,@target.odd(1))
    assert_equal(false,@target.odd(2))
  end
  def test_check_number
    #引数が0以外ではじまる4桁の数字であり，なおかつ，値が偶数ならば 真を返す
    assert_equal(false,@target.check_number(0201))
    assert_equal(true,@target.check_number(2002))
    assert_equal(false,@target.check_number(2003))
  end
  def test_enough_length
    #長さが3文字以上、8文字以下の場合はtrueを返す。
    assert_equal(true,@target.enough_length('string'))
    assert_equal(false,@target.enough_length('st'))
    assert_equal(false,@target.enough_length('おはようございます'))
    assert_equal(true,@target.enough_length('テストです'))
    assert_equal(false,@target.enough_length('テす'))
  end
  def test_divide
    assert_equal(2,@target.divide(10,5))
    assert_equal(-2,@target.divide(-10,5))
    assert_equal(0.1,@target.divide(0.5,5))
    assert_raises('ZeroDivisionError'){
      @target.divide(10,0)
    }
  end
  def test_fizz_buzz
    assert_equal('Fizz',@target.fizz_buzz(3))
    assert_equal('Buzz',@target.fizz_buzz(5))
    assert_equal('FizzBuzz',@target.fizz_buzz(45))
    assert_equal('',@target.fizz_buzz(8))
  end
  def test_hello
    out,err = capture_io do
      ret = @target.hello()
    end
    #標準出力では末尾に改行コードが追加されるため、トリムする
    assert_equal('Hello',out.strip)
  end
end
