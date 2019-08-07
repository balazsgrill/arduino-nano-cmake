cmake_minimum_required(VERSION 3.10)
add_executable(program program.cpp)
target_link_libraries(program core)

add_custom_command(
	TARGET program POST_BUILD
	COMMAND ${CMAKE_OBJCOPY} -O ihex -R .eeprom program program.hex
	COMMENT "OBJCOPY program"
	BYPRODUCTS program.hex
)
