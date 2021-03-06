require "./spec_helper"

describe "Words to numbers" do
  {% for example in {
                      {"none", 0},
                      {"one", 1},
                      {"a couple hundred", 200},
                      {"couple thousand", 2000},
                      {"a couple of million", 2000000},
                      {"a couple", 2},
                      {"a pair", 2},
                      {"twenty-five", 25},
                      {"minus one hundred and seventeen", -117},
                      {"one hundred and fifty-six", 156},
                      {"minus two thousand two", -2002},
                      {"nine thousand, seven hundred, one", 9701},
                      {"minus six hundred and twenty six thousand, eight hundred and fourteen", -626814},
                      {"four million, seven hundred thousand, three hundred and eighty-six", 4700386},
                      {"fifty-one billion, two hundred and fifty-two million, seventeen thousand, one hundred eighty-four", 51252017184},
                      {"two hundred and one billion, twenty-one million, two thousand and one", 201021002001},
                      {"a thousand", 1000},
                      {"a billion", 1000000000},
                      {"nineteen-hundred-and-eighty-four", 1984},
                      {"nineteen-hundred-and-ninety-nine", 1999},
                    } %}

    it "\"#{{{example[0]}}}\" = #{{{example[1]}}}" do
      str = {{example[0]}}
      num = {{example[1]}}
      str.words_to_numbers.should eq num
    end

  {% end %}
end
