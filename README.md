## Facilitar gravação de erros do active record em um arquivo csv para exportar como planilha xlsx

- Exemplo:
```ruby
=> irb

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


Document.write("#{Dir.pwd}/file", errors)
```