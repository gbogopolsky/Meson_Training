#!/bin/xonsh

rm -rf build

try:
	meson . build
except:
	print("Meson failed")

try:
	cd build
	ninja
except:
	print("Failed to build")

try:
	result = $(./07-generator)
	if result == "Hello World!\n":
		print("Success!")
		print("Got: {output}".format(output=result))
	else:
		print("Can't get expected output")
except:
	print("can't run 07-generator")
