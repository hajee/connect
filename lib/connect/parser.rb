#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.12
# from Racc grammer file "".
#

require 'racc/parser.rb'

  require 'connect/dsl'
  require 'connect/lexer'

module Connect
  class Dsl < Racc::Parser

module_eval(<<'...end dsl.y/module_eval...', 'dsl.y', 193)

  def parse(input)
    scan_str(input) unless empty_definition?(input)
  end

  def power(v1,v2)
    v1 ^ v2
  end

  def multiply(v1,v2)
    v1 * v2
  end

  def divide(v1,v2)
    v1 / v2
  end

  def add(v1,v2)
    v1 + v2
  end

  def subtract(v1,v2)
    v1 - v2
  end

  def do_or(v1,v2)
    v1 || v2
  end

  def do_and(v1,v2)
    v1 && v2
  end

  def on_error(token, value, vstack )
    position =  "Syntax error on line #{lineno} of config file '#{current_file}'"
    text = @ss.peek(20)
    unless value.nil?
      msg = "#{position} at value '#{value}' : #{text}"
    else
      msg = "#{position} at token '#{token}' : #{text}"
    end
    if @ss.eos?
      msg = "#{position}: Unexpected end of file"
    end
    raise ParseError, msg
  end
...end dsl.y/module_eval...
##### State transition tables begin ###

racc_action_table = [
    17,   130,    12,    13,    12,    13,    22,     9,   131,     9,
    12,    13,   109,    37,    97,     9,    12,    13,    12,    13,
    56,     9,    98,     9,    28,    29,   108,   107,   101,    15,
    23,    15,    55,    16,   104,    16,   105,    15,    57,    30,
    33,    16,    58,    15,    23,    15,   111,    16,    24,    16,
    12,    13,   108,   107,    23,     9,    12,    29,    36,   102,
   103,    12,    13,    40,    41,   115,    25,    26,    52,    12,
    29,    25,    26,    44,    45,    34,    35,    15,    25,    26,
   116,    16,    51,    70,    12,    13,    40,    41,    86,    22,
    19,    52,    86,   125,    25,    26,    44,    45,    82,    12,
    13,    40,    41,    79,   128,    51,    52,    97,    79,    25,
    26,    44,    45,   101,    12,    13,    40,    41,   101,   134,
    51,    52,   135,    59,    25,    26,    44,    45,   137,    12,
    13,    40,    41,   138,   nil,    51,    52,   nil,   nil,    25,
    26,    44,    45,    89,    40,    41,   nil,   nil,   nil,    52,
    51,   nil,    25,    26,    44,    45,    89,    40,    41,   nil,
   nil,   nil,    52,    51,   nil,    25,    26,    44,    45,    89,
    40,    41,   nil,   nil,   nil,    52,    51,   nil,    25,    26,
    44,    45,    89,    40,    41,   nil,   nil,   nil,    52,    51,
   nil,    25,    26,    44,    45,    89,    40,    41,   nil,   nil,
   nil,    52,    51,   nil,    25,    26,    44,    45,    89,    40,
    41,   nil,   nil,   nil,    52,    51,   nil,    25,    26,    44,
    45,    89,    40,    41,   nil,   nil,   nil,    52,    51,   nil,
    25,    26,    44,    45,    89,    40,    41,   nil,   nil,   nil,
    52,    51,   nil,    25,    26,    44,    45,    75,    40,    41,
   nil,    75,    40,    41,    51,   nil,    25,    26,    44,    45,
    25,    26,    44,    45,    75,    40,    41,   nil,    75,    40,
    41,   nil,    73,    25,    26,    44,    45,    25,    26,    44,
    45,    40,    41,   nil,   nil,    40,    41,   nil,   nil,    25,
    26,    44,    45,    25,    26,    44,    45,    60,    61,    62,
    63,    64,    65,    66 ]

racc_action_check = [
     1,   123,     1,     1,    21,    21,    28,     1,   123,    21,
     0,     0,    86,    21,    68,     0,    10,    10,    11,    11,
    28,    10,    69,    11,    16,    16,    87,    87,    72,     1,
    75,    21,    27,     1,    83,    21,    84,     0,    32,    16,
    17,     0,    38,    10,    89,    11,    96,    10,    14,    11,
    20,    20,    85,    85,    13,    20,    23,    23,    20,    77,
    77,    51,    51,    51,    51,    99,    23,    23,    51,    57,
    57,    51,    51,    51,    51,    19,    19,    20,    15,    15,
   100,    20,    51,    51,    24,    24,    24,    24,    59,    12,
     9,    24,    58,   105,    24,    24,    24,    24,    55,    97,
    97,    97,    97,    54,   109,    24,    97,   114,    53,    97,
    97,    97,    97,   126,   103,   103,   103,   103,   127,   128,
    97,   103,   129,    39,   103,   103,   103,   103,   132,   102,
   102,   102,   102,   133,   nil,   103,   102,   nil,   nil,   102,
   102,   102,   102,    65,    65,    65,   nil,   nil,   nil,    65,
   102,   nil,    65,    65,    65,    65,    64,    64,    64,   nil,
   nil,   nil,    64,    65,   nil,    64,    64,    64,    64,    60,
    60,    60,   nil,   nil,   nil,    60,    64,   nil,    60,    60,
    60,    60,    63,    63,    63,   nil,   nil,   nil,    63,    60,
   nil,    63,    63,    63,    63,    66,    66,    66,   nil,   nil,
   nil,    66,    63,   nil,    66,    66,    66,    66,    61,    61,
    61,   nil,   nil,   nil,    61,    66,   nil,    61,    61,    61,
    61,    98,    98,    98,   nil,   nil,   nil,    98,    61,   nil,
    98,    98,    98,    98,    62,    62,    62,   nil,   nil,   nil,
    62,    98,   nil,    62,    62,    62,    62,   101,   101,   101,
   nil,   107,   107,   107,    62,   nil,   101,   101,   101,   101,
   107,   107,   107,   107,    52,    52,    52,   nil,   108,   108,
   108,   nil,    52,    52,    52,    52,    52,   108,   108,   108,
   108,   104,   104,   nil,   nil,   130,   130,   nil,   nil,   104,
   104,   104,   104,   130,   130,   130,   130,    50,    50,    50,
    50,    50,    50,    50 ]

racc_action_pointer = [
     8,     0,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    88,
    14,    16,    86,    23,    20,    66,    22,    40,   nil,    67,
    48,     2,   nil,    54,    82,   nil,   nil,     2,     3,   nil,
   nil,   nil,     4,   nil,   nil,   nil,   nil,   nil,    10,    91,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   281,    59,   261,   102,    97,    96,   nil,    67,    58,    54,
   166,   205,   231,   179,   153,   140,   192,   nil,   -11,    -3,
   nil,   nil,     3,   nil,   nil,    -1,   nil,    33,   nil,   nil,
   nil,   nil,   nil,     3,     6,    44,     8,    18,   nil,    13,
   nil,   nil,   nil,   nil,   nil,   nil,    22,    97,   218,    41,
    69,   244,   127,   112,   277,    91,   nil,   248,   265,    69,
   nil,   nil,   nil,   nil,    82,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   -24,   nil,   nil,    88,    93,   115,    98,
   281,   nil,   117,   123,   nil,   nil,   nil,   nil,   nil ]

racc_action_default = [
   -79,   -79,    -1,    -5,    -6,    -7,    -8,    -9,   -10,   -79,
   -79,   -79,   -79,   -18,   -79,   -79,   -79,   -79,    -2,   -79,
   -79,   -79,   -17,   -79,   -79,   -19,   -20,   -60,   -79,   -18,
   -67,   -68,   -79,   139,   -13,   -14,   -15,   -16,   -79,   -79,
    -3,    -4,   -21,   -22,   -23,   -24,   -25,   -26,   -27,   -28,
   -37,   -79,   -79,   -11,   -11,   -79,   -69,   -79,   -77,   -77,
   -79,   -79,   -79,   -79,   -79,   -79,   -79,   -29,   -44,   -44,
   -41,   -57,   -44,   -43,   -46,   -48,   -49,   -79,   -54,   -12,
   -58,   -59,   -61,   -66,   -71,   -74,   -79,   -74,   -30,   -79,
   -31,   -32,   -33,   -34,   -35,   -36,   -79,   -45,   -45,   -79,
   -79,   -45,   -79,   -79,   -79,   -79,   -72,   -79,   -79,   -79,
   -73,   -38,   -55,   -56,   -44,   -40,   -42,   -47,   -50,   -52,
   -51,   -53,   -62,   -79,   -64,   -70,   -44,   -44,   -79,   -79,
   -79,   -65,   -79,   -79,   -78,   -39,   -63,   -75,   -76 ]

racc_goto_table = [
     7,     7,    96,    99,    68,    31,   100,    72,   124,    18,
     7,     7,    39,    54,     1,    76,   123,    50,    27,    84,
     7,     7,    69,    32,    20,    21,    38,   117,    18,    18,
   106,    53,   110,   nil,   136,    85,    87,    80,    81,   nil,
    67,   nil,   nil,   nil,   nil,   nil,    83,   nil,   129,   nil,
   nil,   114,    78,    88,    90,    91,    92,    93,    94,    95,
   132,   133,   126,   127,    76,   nil,   nil,   122,   113,   nil,
    76,    76,   nil,   119,   121,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,    67,   nil,   nil,   nil,
   112,    67,    67,   122,   nil,   118,   120,   nil,   nil,   nil,
   nil,    78,   nil,   nil,   nil,   nil,   nil,    78,    78 ]

racc_goto_check = [
     8,     8,    22,    22,    21,    13,    22,    23,    26,     2,
     8,     8,    13,    13,     1,    15,    27,    16,    14,    28,
     8,     8,    19,    29,     1,     1,    14,    24,     2,     2,
    31,    20,    31,   nil,    26,    30,    30,    10,    10,   nil,
    13,   nil,   nil,   nil,   nil,   nil,    13,   nil,    22,   nil,
   nil,    21,     8,    16,    16,    16,    16,    16,    16,    16,
    22,    22,    23,    23,    15,   nil,   nil,    15,    19,   nil,
    15,    15,   nil,    19,    19,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,    13,   nil,   nil,   nil,
    16,    13,    13,    15,   nil,    16,    16,   nil,   nil,   nil,
   nil,     8,   nil,   nil,   nil,   nil,   nil,     8,     8 ]

racc_goto_pointer = [
   nil,    14,     8,   nil,   nil,   nil,   nil,   nil,     0,   nil,
   -16,   nil,   nil,   -11,     3,   -37,    -7,   nil,   nil,   -29,
     7,   -47,   -66,   -45,   -74,   nil,   -96,   -88,   -38,     7,
   -23,   -55 ]

racc_goto_default = [
   nil,   nil,     2,    43,     3,     4,     5,     6,    49,     8,
   nil,    10,    11,    14,    42,    46,    71,    47,    48,   nil,
   nil,   nil,   nil,   nil,    74,    77,   nil,   nil,   nil,   nil,
   nil,   nil ]

racc_reduce_table = [
  0, 0, :racc_error,
  1, 37, :_reduce_none,
  2, 37, :_reduce_none,
  1, 39, :_reduce_none,
  1, 39, :_reduce_none,
  1, 38, :_reduce_none,
  1, 38, :_reduce_none,
  1, 38, :_reduce_none,
  1, 38, :_reduce_none,
  1, 38, :_reduce_none,
  1, 38, :_reduce_none,
  0, 46, :_reduce_none,
  1, 46, :_reduce_none,
  3, 47, :_reduce_13,
  3, 48, :_reduce_14,
  3, 45, :_reduce_15,
  3, 45, :_reduce_16,
  2, 49, :_reduce_17,
  1, 49, :_reduce_18,
  1, 50, :_reduce_19,
  1, 50, :_reduce_none,
  1, 51, :_reduce_none,
  1, 51, :_reduce_none,
  1, 51, :_reduce_none,
  1, 51, :_reduce_none,
  1, 52, :_reduce_none,
  1, 52, :_reduce_none,
  1, 52, :_reduce_none,
  1, 52, :_reduce_none,
  1, 55, :_reduce_29,
  3, 56, :_reduce_30,
  3, 56, :_reduce_31,
  3, 56, :_reduce_32,
  3, 56, :_reduce_33,
  3, 56, :_reduce_34,
  3, 56, :_reduce_35,
  3, 56, :_reduce_36,
  1, 56, :_reduce_none,
  4, 53, :_reduce_38,
  6, 53, :_reduce_39,
  4, 53, :_reduce_40,
  2, 53, :_reduce_41,
  4, 54, :_reduce_42,
  2, 54, :_reduce_43,
  0, 58, :_reduce_none,
  1, 58, :_reduce_none,
  1, 59, :_reduce_none,
  3, 59, :_reduce_47,
  1, 61, :_reduce_48,
  1, 61, :_reduce_none,
  3, 60, :_reduce_50,
  3, 60, :_reduce_51,
  3, 60, :_reduce_52,
  3, 60, :_reduce_53,
  1, 60, :_reduce_54,
  3, 57, :_reduce_55,
  3, 57, :_reduce_56,
  1, 57, :_reduce_57,
  4, 40, :_reduce_58,
  4, 41, :_reduce_59,
  2, 42, :_reduce_60,
  4, 42, :_reduce_61,
  1, 62, :_reduce_none,
  3, 63, :_reduce_63,
  1, 63, :_reduce_64,
  4, 64, :_reduce_65,
  1, 64, :_reduce_66,
  1, 65, :_reduce_none,
  1, 65, :_reduce_none,
  2, 65, :_reduce_69,
  6, 43, :_reduce_70,
  4, 43, :_reduce_71,
  6, 44, :_reduce_72,
  6, 44, :_reduce_73,
  0, 67, :_reduce_none,
  4, 67, :_reduce_75,
  4, 67, :_reduce_76,
  0, 66, :_reduce_none,
  4, 66, :_reduce_78 ]

racc_reduce_n = 79

racc_shift_n = 139

racc_token_table = {
  false => 0,
  :error => 1,
  :SCOPE => 2,
  :IDENTIFIER => 3,
  :INTEGER => 4,
  :FLOAT => 5,
  :SELECTOR => 6,
  :WITH => 7,
  :DO => 8,
  "{" => 9,
  :END => 10,
  "}" => 11,
  :DOUBLE_QUOTED => 12,
  :SINGLE_QUOTED => 13,
  :BOOLEAN => 14,
  :UNDEF => 15,
  "^" => 16,
  "*" => 17,
  "/" => 18,
  "+" => 19,
  "-" => 20,
  :OR => 21,
  :AND => 22,
  "[" => 23,
  "]" => 24,
  "," => 25,
  ":" => 26,
  :HASH_ROCKET => 27,
  "=" => 28,
  :INCLUDE => 29,
  :INTO => 30,
  "(" => 31,
  ")" => 32,
  :IMPORT => 33,
  :FROM => 34,
  :TO => 35 }

racc_nt_base = 36

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "SCOPE",
  "IDENTIFIER",
  "INTEGER",
  "FLOAT",
  "SELECTOR",
  "WITH",
  "DO",
  "\"{\"",
  "END",
  "\"}\"",
  "DOUBLE_QUOTED",
  "SINGLE_QUOTED",
  "BOOLEAN",
  "UNDEF",
  "\"^\"",
  "\"*\"",
  "\"/\"",
  "\"+\"",
  "\"-\"",
  "OR",
  "AND",
  "\"[\"",
  "\"]\"",
  "\",\"",
  "\":\"",
  "HASH_ROCKET",
  "\"=\"",
  "INCLUDE",
  "INTO",
  "\"(\"",
  "\")\"",
  "IMPORT",
  "FROM",
  "TO",
  "$start",
  "dsl",
  "config",
  "number",
  "assignment",
  "connection",
  "include_file",
  "import_data",
  "definition",
  "default_scope",
  "selector",
  "with_scope_do",
  "with_scope_bracket",
  "literal",
  "string",
  "scalar",
  "value",
  "array",
  "hash",
  "reference",
  "expression",
  "values",
  "optional_comma",
  "hashpairs",
  "hashpair",
  "hashkey",
  "parameter",
  "parameters",
  "datasource",
  "imported_name",
  "iterator",
  "block" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

# reduce 1 omitted

# reduce 2 omitted

# reduce 3 omitted

# reduce 4 omitted

# reduce 5 omitted

# reduce 6 omitted

# reduce 7 omitted

# reduce 8 omitted

# reduce 9 omitted

# reduce 10 omitted

# reduce 11 omitted

# reduce 12 omitted

module_eval(<<'.,.,', 'dsl.y', 34)
  def _reduce_13(val, _values, result)
     push_scope(val[1])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 38)
  def _reduce_14(val, _values, result)
     push_scope(val[1])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 43)
  def _reduce_15(val, _values, result)
     pop_scope 
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 44)
  def _reduce_16(val, _values, result)
     pop_scope 
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 49)
  def _reduce_17(val, _values, result)
     result = "#{val[0]}#{val[1]}"
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 50)
  def _reduce_18(val, _values, result)
     result = "#{val[0]}"
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 54)
  def _reduce_19(val, _values, result)
     result = interpolate(val[0])
    result
  end
.,.,

# reduce 20 omitted

# reduce 21 omitted

# reduce 22 omitted

# reduce 23 omitted

# reduce 24 omitted

# reduce 25 omitted

# reduce 26 omitted

# reduce 27 omitted

# reduce 28 omitted

module_eval(<<'.,.,', 'dsl.y', 73)
  def _reduce_29(val, _values, result)
    result = reference(val[0])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 77)
  def _reduce_30(val, _values, result)
     result = power(val[0],val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 78)
  def _reduce_31(val, _values, result)
     result = multiply(val[0],val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 79)
  def _reduce_32(val, _values, result)
     result = divide(val[0],val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 80)
  def _reduce_33(val, _values, result)
     result = add(val[0],val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 81)
  def _reduce_34(val, _values, result)
     result = subtract(val[0],val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 82)
  def _reduce_35(val, _values, result)
     result = do_or(val[0],val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 83)
  def _reduce_36(val, _values, result)
     result = do_and(val[0],val[2])
    result
  end
.,.,

# reduce 37 omitted

module_eval(<<'.,.,', 'dsl.y', 88)
  def _reduce_38(val, _values, result)
     result = val[1]
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 89)
  def _reduce_39(val, _values, result)
     result = val[3].unshift(val[1])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 90)
  def _reduce_40(val, _values, result)
     result = [val[1]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 91)
  def _reduce_41(val, _values, result)
     result = []
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 95)
  def _reduce_42(val, _values, result)
     result = val[1]
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 96)
  def _reduce_43(val, _values, result)
     result = MethodHash.new
    result
  end
.,.,

# reduce 44 omitted

# reduce 45 omitted

# reduce 46 omitted

module_eval(<<'.,.,', 'dsl.y', 106)
  def _reduce_47(val, _values, result)
     result.merge!(val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 110)
  def _reduce_48(val, _values, result)
     result = val[0].to_sym
    result
  end
.,.,

# reduce 49 omitted

module_eval(<<'.,.,', 'dsl.y', 115)
  def _reduce_50(val, _values, result)
     result = MethodHash[val[0], val[2]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 116)
  def _reduce_51(val, _values, result)
     result = MethodHash[val[0], val[2]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 117)
  def _reduce_52(val, _values, result)
     result = MethodHash[val[0], val[2]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 118)
  def _reduce_53(val, _values, result)
     result = MethodHash[val[0], val[2]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 119)
  def _reduce_54(val, _values, result)
     result = MethodHash[val[0].object_id, val[0]]
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 123)
  def _reduce_55(val, _values, result)
     result = val[0] << val[2]
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 124)
  def _reduce_56(val, _values, result)
     result = val[0] << val[2]
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 125)
  def _reduce_57(val, _values, result)
     result = [val[0]]
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 129)
  def _reduce_58(val, _values, result)
     assign(val[0], val[2], val[3])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 133)
  def _reduce_59(val, _values, result)
     connect(val[0], val[2], val[3])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 137)
  def _reduce_60(val, _values, result)
     include_file(val[1])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 138)
  def _reduce_61(val, _values, result)
     include_file(val[1], val[3])
    result
  end
.,.,

# reduce 62 omitted

module_eval(<<'.,.,', 'dsl.y', 146)
  def _reduce_63(val, _values, result)
     result = val[0] << val[2]
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 147)
  def _reduce_64(val, _values, result)
     result = [val[0]]
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 151)
  def _reduce_65(val, _values, result)
     result = [val[0], val[2]]
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 152)
  def _reduce_66(val, _values, result)
     result = [val[0], []]
    result
  end
.,.,

# reduce 67 omitted

# reduce 68 omitted

module_eval(<<'.,.,', 'dsl.y', 158)
  def _reduce_69(val, _values, result)
    result = "#{val[0]}*"
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 162)
  def _reduce_70(val, _values, result)
     import(val[1], val[5], val[3][0], val[3][1])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 163)
  def _reduce_71(val, _values, result)
     import(val[1], nil, val[3][0], val[3][1])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 169)
  def _reduce_72(val, _values, result)
     result = define(val[0], val[2], val[5], val[4])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 171)
  def _reduce_73(val, _values, result)
     result = define(val[0], val[2], val[5], val[4])
    result
  end
.,.,

# reduce 74 omitted

module_eval(<<'.,.,', 'dsl.y', 176)
  def _reduce_75(val, _values, result)
     result = val[1]
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 177)
  def _reduce_76(val, _values, result)
     result = val[1]
    result
  end
.,.,

# reduce 77 omitted

module_eval(<<'.,.,', 'dsl.y', 182)
  def _reduce_78(val, _values, result)
     result = {:from => val[1], :to => val[3]}
    result
  end
.,.,

def _reduce_none(val, _values, result)
  val[0]
end

  end   # class Dsl
  end   # module Connect
