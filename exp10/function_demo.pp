$student = 'nikhitha'
$upper_name = upcase($student)
$lower_name = downcase($student)

notify { "Uppercase Name: ${upper_name}": }
notify { "Lowercase Name: ${lower_name}": }
