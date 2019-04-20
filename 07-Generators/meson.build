project('07-Generators', 'c')

gen_script = find_program('generator.py')
gen = generator(gen_script,
                output: '@BASENAME@.c',
                arguments: ['@INPUT@', '@OUTPUT@'])
gen_src = gen.process('main.c.in')
executable('07-generator', gen_src)
