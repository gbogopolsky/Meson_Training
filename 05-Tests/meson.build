project('05-Test', 'c', 'cpp')

subdir('simplelib')
# simplelib_lib = library('simplelib', 'simplelib/simplelib.c')
# simplelib = declare_dependency(link_with: simplelib_lib)

gtest = dependency('gtest', required: true, main: false, fallback: ['gtest', 'gtest_dep'])

gtest_test = executable('gtest_test_exec', 'gtest-test/test.cpp', dependencies: [gtest, simplelib])
test('gtest_test', gtest_test)

manual_test_c = executable('manual_test_c', 'manual-test/main.c', dependencies: simplelib)
test('manual_test_c', manual_test_c)

python_test = find_program('python-test/test.py')
test('python_test', python_test)