puts '---------------------------'
puts '-------Starting seed-------'
puts '---------------------------'

puts '-------Seeding stores------'
puts '---------------------------'

extra = Store.create(name: 'Extra')
dia = Store.create(name: 'Dia')
lopes = Store.create(name: 'Lopes')
drop_off = Store.create(name: 'Drop-Off')


puts '------Seeding machines-----'
puts '---------------------------'

Machine.create(vm_pay_id: 41924, name: 'Itaquera', washer: true, store: extra, street_name: 'Avenida Nagib Farah Maluf', street_number: 249, cep: '08255-000', latitude: -23.5516768, longitude: -46.4372325)
Machine.create(vm_pay_id: 41924, name: 'Itaquera', washer: false, store: extra, street_name: 'Avenida Nagib Farah Maluf', street_number: 249, cep: '08255-000', latitude: -23.5516768, longitude: -46.4372325)
Machine.create(vm_pay_id: 41920, name: 'Itaquera', washer: true, store: extra, street_name: 'Avenida Nagib Farah Maluf', street_number: 249, cep: '08255-000', latitude: -23.5516768, longitude: -46.4372325)
Machine.create(vm_pay_id: 41920, name: 'Itaquera', washer: false, store: extra, street_name: 'Avenida Nagib Farah Maluf', street_number: 249, cep: '08255-000', latitude: -23.5516768, longitude: -46.4372325)


Machine.create(vm_pay_id: 41922, name: 'Rego Freitas', washer: true, store: extra, street_name: 'Rua Rego Freitas', street_number: 172, cep: '01220-010', latitude: -23.5433117, longitude: -46.6466382)
Machine.create(vm_pay_id: 41922, name: 'Rego Freitas', washer: false, store: extra, street_name: 'Rua Rego Freitas', street_number: 172, cep: '01220-010', latitude: -23.5433117, longitude: -46.6466382)
Machine.create(vm_pay_id: 41923, name: 'Rego Freitas', washer: true, store: extra, street_name: 'Rua Rego Freitas', street_number: 172, cep: '01220-010', latitude: -23.5433117, longitude: -46.6466382)
Machine.create(vm_pay_id: 41923, name: 'Rego Freitas', washer: false, store: extra, street_name: 'Rua Rego Freitas', street_number: 172, cep: '01220-010', latitude: -23.5433117, longitude: -46.6466382)


Machine.create(vm_pay_id: 41901, name: 'Palmeiras', washer: true, store: extra, street_name: 'Rua das Palmeiras', street_number: 187, cep: '01226-000', latitude: -23.5375666, longitude: -46.6509097)
Machine.create(vm_pay_id: 41901, name: 'Palmeiras', washer: false, store: extra, street_name: 'Rua das Palmeiras', street_number: 187, cep: '01226-000', latitude: -23.5375666, longitude: -46.6509097)


Machine.create(vm_pay_id: 41899, name: 'Glicério', washer: true, store: extra, street_name: 'Rua Glicério', street_number: 90, cep: '01514-000', latitude: -23.5532852, longitude: -46.6278866)
Machine.create(vm_pay_id: 41899, name: 'Glicério', washer: false, store: extra, street_name: 'Rua Glicério', street_number: 90, cep: '01514-000', latitude: -23.5532852, longitude: -46.6278866)
Machine.create(vm_pay_id: 31196, name: 'Glicério', washer: true, store: extra, street_name: 'Rua Glicério', street_number: 90, cep: '01514-000', latitude: -23.5532852, longitude: -46.6278866)
Machine.create(vm_pay_id: 31196, name: 'Glicério', washer: false, store: extra, street_name: 'Rua Glicério', street_number: 90, cep: '01514-000', latitude: -23.5532852, longitude: -46.6278866)


Machine.create(vm_pay_id: 41903, name: 'Liberdade', washer: true, store: extra, street_name: 'Avenida da Liberdade', street_number: 455, cep: '01502-000', latitude: -23.5569748, longitude: -46.6362527)
Machine.create(vm_pay_id: 41903, name: 'Liberdade', washer: false, store: extra, street_name: 'Avenida da Liberdade', street_number: 455, cep: '01502-000', latitude: -23.5569748, longitude: -46.6362527)


Machine.create(vm_pay_id: 41904, name: 'Maria Luiza', washer: true, store: dia, street_name: 'Avenida Maria Luiza Americano', street_number: 1761, cep: '08275-000', latitude: -23.566731, longitude: -46.474818)
Machine.create(vm_pay_id: 41904, name: 'Maria Luiza', washer: false, store: dia, street_name: 'Avenida Maria Luiza Americano', street_number: 1761, cep: '08275-000', latitude: -23.566731, longitude: -46.474818)


Machine.create(vm_pay_id: 41905, name: 'Jacu Pêssego', washer: true, store: lopes, street_name: "Rua Sabbado D'Ângelo", street_number: 1980, cep: '08210-791', latitude: -23.5501043, longitude: -46.4455626)
Machine.create(vm_pay_id: 41905, name: 'Jacu Pêssego', washer: false, store: lopes, street_name: "Rua Sabbado D'Ângelo", street_number: 1980, cep: '08210-791', latitude: -23.5501043, longitude: -46.4455626)


Machine.create(vm_pay_id: 41907, name: 'Barra Funda', washer: true, store: extra, street_name: "Avenida General Olímpio da Silveira", street_number: 414, cep: '01150-000', latitude: -23.53171, longitude: -46.660447)
Machine.create(vm_pay_id: 41907, name: 'Barra Funda', washer: false, store: extra, street_name: "Avenida General Olímpio da Silveira", street_number: 414, cep: '01150-000', latitude: -23.53171, longitude: -46.660447)


Machine.create(vm_pay_id: 41908, name: 'Brooklin', washer: true, store: dia, street_name: "Avenida Padre Antônio José dos Santos", street_number: 1181, cep: '04563-013', latitude: -23.608765, longitude: -46.68879)
Machine.create(vm_pay_id: 41908, name: 'Brooklin', washer: false, store: dia, street_name: "Avenida Padre Antônio José dos Santos", street_number: 1181, cep: '04563-013', latitude: -23.608765, longitude: -46.68879)


Machine.create(vm_pay_id: 41914, name: 'Veridiana', washer: true, store: dia, street_name: "Rua Dona Veridiana", street_number: 78, cep: '01238-010', latitude: -23.540311, longitude: -46.650557)
Machine.create(vm_pay_id: 41914, name: 'Veridiana', washer: false, store: dia, street_name: "Rua Dona Veridiana", street_number: 78, cep: '01238-010', latitude: -23.540311, longitude: -46.650557)
Machine.create(vm_pay_id: 41915, name: 'Veridiana', washer: true, store: dia, street_name: "Rua Dona Veridiana", street_number: 78, cep: '01238-010', latitude: -23.540311, longitude: -46.650557)
Machine.create(vm_pay_id: 41915, name: 'Veridiana', washer: false, store: dia, street_name: "Rua Dona Veridiana", street_number: 78, cep: '01238-010', latitude: -23.540311, longitude: -46.650557)


Machine.create(vm_pay_id: 41916, name: 'Graça', washer: true, store: drop_off, street_name: "Rua Dona Veridiana", street_number: 21, cep: '03928-160', latitude: -23.6067, longitude: -46.503379)
Machine.create(vm_pay_id: 41916, name: 'Graça', washer: false, store: drop_off, street_name: "Rua Dona Veridiana", street_number: 21, cep: '03928-160', latitude: -23.6067, longitude: -46.503379)


Machine.create(vm_pay_id: 49899, name: '24 de Maio', washer: true, store: dia, street_name: "Rua 24 de Maio", street_number: 108, cep: '01041-000', latitude: -23.544141, longitude: -46.6396525)
Machine.create(vm_pay_id: 49899, name: '24 de Maio', washer: true, store: dia, street_name: "Rua 24 de Maio", street_number: 108, cep: '01041-000', latitude: -23.544141, longitude: -46.6396525)
Machine.create(vm_pay_id: 47177, name: '24 de Maio', washer: true, store: dia, street_name: "Rua 24 de Maio", street_number: 108, cep: '01041-000', latitude: -23.544141, longitude: -46.6396525)
Machine.create(vm_pay_id: 47177, name: '24 de Maio', washer: true, store: dia, street_name: "Rua 24 de Maio", street_number: 108, cep: '01041-000', latitude: -23.544141, longitude: -46.6396525)


Machine.create(vm_pay_id: 41974, name: 'Taipas', washer: true, store: extra, street_name: "Avenida Elísio Teixeira Leite", street_number: 7098, cep: '02810-000', latitude: -23.443347, longitude: -46.717144)
Machine.create(vm_pay_id: 41974, name: 'Taipas', washer: false, store: extra, street_name: "Avenida Elísio Teixeira Leite", street_number: 7098, cep: '02810-000', latitude: -23.443347, longitude: -46.717144)


Machine.create(vm_pay_id: 41910, name: 'São Caetano', washer: true, store: extra, street_name: "Rua Boa Vista", street_number: 523, cep: '09572-300', latitude: -23.643064, longitude: -46.560913)
Machine.create(vm_pay_id: 41910, name: 'São Caetano', washer: false, store: extra, street_name: "Rua Boa Vista", street_number: 523, cep: '09572-300', latitude: -23.643064, longitude: -46.560913)


Machine.create(vm_pay_id: 41912, name: 'São Bernardo', washer: true, store: extra, street_name: "Avenida Humberto de Alencar Castelo Branco", street_number: 4001, cep: '09850-350', latitude: -23.724108, longitude: -46.578651)
Machine.create(vm_pay_id: 41912, name: 'São Bernardo', washer: false, store: extra, street_name: "Avenida Humberto de Alencar Castelo Branco", street_number: 4001, cep: '09850-350', latitude: -23.724108, longitude: -46.578651)
Machine.create(vm_pay_id: 41913, name: 'São Bernardo', washer: true, store: extra, street_name: "Avenida Humberto de Alencar Castelo Branco", street_number: 4001, cep: '09850-350', latitude: -23.724108, longitude: -46.578651)
Machine.create(vm_pay_id: 41913, name: 'São Bernardo', washer: false, store: extra, street_name: "Avenida Humberto de Alencar Castelo Branco", street_number: 4001, cep: '09850-350', latitude: -23.724108, longitude: -46.578651)


puts '------------Done-----------'
puts '---------------------------'
