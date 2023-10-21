# !/usr/bin/env ruby
# frozen_string_literal: true

require_relative '../lib/record'

errors = [
  { contract: nil, cpf: '111.444.5555', name: 'teste name',
    error: 'A validação falhou: User address number campo obrigatório',
    testeum: 'asdasdasdasd',
    testedois: 'asdlkjfhalsdkjfhalksjdfh' },
  { contract: nil, cpf: 'xxx.xxx.xxx-21', name: 'outro teste nome',
    error: 'A validação falhou: User address number campo obrigatório',
    testeum: 'asdasdasdasd',
    testedois: 'asdlkjfhalsdkjfhalksjdfh' }
]

Document.write("#{Dir.pwd}/pedreschi-validation-errors", errors)

## TODO ADD THIS EXAMPLES WITH RESPEC TESTS
## DESCOMENT TO TEST PROGRAM
# Document.write("#{Dir.pwd}/test_file")
# sleep 2
# Document.write("#{Dir.pwd}/test_file", %w[asdasd asdasd asdasd])
# sleep 2
# Document.write("#{Dir.pwd}/test_file", [{}])
# sleep 2
# Document.write("#{Dir.pwd}/test_file", 'asdfasdfasdf')
# sleep 2
# Document.write(nil, errors)
# sleep 2
# Document.write("#{Dir.pwd}/test_file", errors)
