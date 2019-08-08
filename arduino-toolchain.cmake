set(ARDUINOCORE ARDUINO_CORE_NOT_FOUND CACHE FILEPATH "")
set(CMAKE_SYSTEM_NAME "Generic")
set(CMAKE_C_COMPILER avr-gcc)
set(CMAKE_CXX_COMPILER avr-g++)
include_directories("${ARDUINOCORE}/cores/arduino")
include_directories("${ARDUINOCORE}/variants/standard")
set(CMAKE_CXX_FLAGS "-MMD -mmcu=atmega328p -Wall -DF_CPU=16000000L -Os")
set(CMAKE_C_FLAGS "-MMD -mmcu=atmega328p -Wall -DF_CPU=16000000L -Os")
add_library(core STATIC
	"${ARDUINOCORE}/cores/arduino/main.cpp"
	"${ARDUINOCORE}/cores/arduino/wiring.c"
	"${ARDUINOCORE}/cores/arduino/wiring_digital.c"
	"${ARDUINOCORE}/cores/arduino/wiring_analog.c"
	"${ARDUINOCORE}/cores/arduino/hooks.c"
 )
