cmake_minimum_required(VERSION 3.10)
project(arduinon-nano-project 
  LANGUAGES C CXX 
  VERSION 0.0.0.0)
  
add_library(arduino-core STATIC
	"$ENV{ARDUINOCORE}/cores/arduino/main.cpp"
	"$ENV{ARDUINOCORE}/cores/arduino/wiring.c"
	"$ENV{ARDUINOCORE}/cores/arduino/wiring_digital.c"
	"$ENV{ARDUINOCORE}/cores/arduino/wiring_analog.c"
	"$ENV{ARDUINOCORE}/cores/arduino/hooks.c"
 )

add_executable(program program.cpp)
target_link_libraries(program arduino-core)

add_custom_command(
	TARGET program POST_BUILD
	COMMAND ${CMAKE_OBJCOPY} -O ihex -R .eeprom program program.hex
	COMMENT "OBJCOPY program"
	BYPRODUCTS program.hex
)
