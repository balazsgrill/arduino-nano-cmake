set(CMAKE_SYSTEM_NAME "Generic")
set(CMAKE_C_COMPILER avr-gcc)
set(CMAKE_CXX_COMPILER avr-g++)
include_directories("$ENV{ARDUINOCORE}/cores/arduino")
include_directories("$ENV{ARDUINOCORE}/variants/standard")
set(CMAKE_CXX_FLAGS "-MMD -mmcu=atmega328p -Wall -DF_CPU=16000000L -Os")
set(CMAKE_C_FLAGS "-MMD -mmcu=atmega328p -Wall -DF_CPU=16000000L -Os")
add_library(arduino-core STATIC
	"$ENV{ARDUINOCORE}/cores/arduino/main.cpp"
	"$ENV{ARDUINOCORE}/cores/arduino/wiring.c"
	"$ENV{ARDUINOCORE}/cores/arduino/wiring_digital.c"
	"$ENV{ARDUINOCORE}/cores/arduino/wiring_analog.c"
	"$ENV{ARDUINOCORE}/cores/arduino/hooks.c"
 )
