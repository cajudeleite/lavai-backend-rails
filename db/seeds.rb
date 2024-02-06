require 'sidekiq'
require 'active_support/all'

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

itaquera = []
itaquera << Machine.create(vm_pay_id: 41924, name: 'Itaquera', washer: true, store: extra, street_name: 'Avenida Nagib Farah Maluf', street_number: 249, cep: '08255-000', latitude: -23.5516768, longitude: -46.4372325)
itaquera << Machine.create(vm_pay_id: 41924, name: 'Itaquera', washer: false, store: extra, street_name: 'Avenida Nagib Farah Maluf', street_number: 249, cep: '08255-000', latitude: -23.5516768, longitude: -46.4372325)
itaquera << Machine.create(vm_pay_id: 41920, name: 'Itaquera', washer: true, store: extra, street_name: 'Avenida Nagib Farah Maluf', street_number: 249, cep: '08255-000', latitude: -23.5516768, longitude: -46.4372325)
itaquera << Machine.create(vm_pay_id: 41920, name: 'Itaquera', washer: false, store: extra, street_name: 'Avenida Nagib Farah Maluf', street_number: 249, cep: '08255-000', latitude: -23.5516768, longitude: -46.4372325)

rego = []
rego << Machine.create(vm_pay_id: 41922, name: 'Rego Freitas', washer: true, store: extra, street_name: 'Rua Rego Freitas', street_number: 172, cep: '01220-010', latitude: -23.5433117, longitude: -46.6466382)
rego << Machine.create(vm_pay_id: 41922, name: 'Rego Freitas', washer: false, store: extra, street_name: 'Rua Rego Freitas', street_number: 172, cep: '01220-010', latitude: -23.5433117, longitude: -46.6466382)
rego << Machine.create(vm_pay_id: 41923, name: 'Rego Freitas', washer: true, store: extra, street_name: 'Rua Rego Freitas', street_number: 172, cep: '01220-010', latitude: -23.5433117, longitude: -46.6466382)
rego << Machine.create(vm_pay_id: 41923, name: 'Rego Freitas', washer: false, store: extra, street_name: 'Rua Rego Freitas', street_number: 172, cep: '01220-010', latitude: -23.5433117, longitude: -46.6466382)

palmeiras = []
palmeiras << Machine.create(vm_pay_id: 41901, name: 'Palmeiras', washer: true, store: extra, street_name: 'Rua das Palmeiras', street_number: 187, cep: '01226-000', latitude: -23.5375666, longitude: -46.6509097)
palmeiras << Machine.create(vm_pay_id: 41901, name: 'Palmeiras', washer: false, store: extra, street_name: 'Rua das Palmeiras', street_number: 187, cep: '01226-000', latitude: -23.5375666, longitude: -46.6509097)

glicerio = []
glicerio << Machine.create(vm_pay_id: 41899, name: 'Glicério', washer: true, store: extra, street_name: 'Rua Glicério', street_number: 90, cep: '01514-000', latitude: -23.5532852, longitude: -46.6278866)
glicerio << Machine.create(vm_pay_id: 41899, name: 'Glicério', washer: false, store: extra, street_name: 'Rua Glicério', street_number: 90, cep: '01514-000', latitude: -23.5532852, longitude: -46.6278866)
glicerio << Machine.create(vm_pay_id: 31196, name: 'Glicério', washer: true, store: extra, street_name: 'Rua Glicério', street_number: 90, cep: '01514-000', latitude: -23.5532852, longitude: -46.6278866)
glicerio << Machine.create(vm_pay_id: 31196, name: 'Glicério', washer: false, store: extra, street_name: 'Rua Glicério', street_number: 90, cep: '01514-000', latitude: -23.5532852, longitude: -46.6278866)

liberdade = []
liberdade << Machine.create(vm_pay_id: 41903, name: 'Liberdade', washer: true, store: extra, street_name: 'Avenida da Liberdade', street_number: 455, cep: '01502-000', latitude: -23.5569748, longitude: -46.6362527)
liberdade << Machine.create(vm_pay_id: 41903, name: 'Liberdade', washer: false, store: extra, street_name: 'Avenida da Liberdade', street_number: 455, cep: '01502-000', latitude: -23.5569748, longitude: -46.6362527)

maria = []
maria << Machine.create(vm_pay_id: 41904, name: 'Maria Luiza', washer: true, store: dia, street_name: 'Avenida Maria Luiza Americano', street_number: 1761, cep: '08275-000', latitude: -23.566731, longitude: -46.474818)
maria << Machine.create(vm_pay_id: 41904, name: 'Maria Luiza', washer: false, store: dia, street_name: 'Avenida Maria Luiza Americano', street_number: 1761, cep: '08275-000', latitude: -23.566731, longitude: -46.474818)

jacu = []
jacu << Machine.create(vm_pay_id: 41905, name: 'Jacu Pêssego', washer: true, store: lopes, street_name: "Rua Sabbado D'Ângelo", street_number: 1980, cep: '08210-791', latitude: -23.5501043, longitude: -46.4455626)
jacu << Machine.create(vm_pay_id: 41905, name: 'Jacu Pêssego', washer: false, store: lopes, street_name: "Rua Sabbado D'Ângelo", street_number: 1980, cep: '08210-791', latitude: -23.5501043, longitude: -46.4455626)

barra = []
barra << Machine.create(vm_pay_id: 41907, name: 'Barra Funda', washer: true, store: extra, street_name: "Avenida General Olímpio da Silveira", street_number: 414, cep: '01150-000', latitude: -23.53171, longitude: -46.660447)
barra << Machine.create(vm_pay_id: 41907, name: 'Barra Funda', washer: false, store: extra, street_name: "Avenida General Olímpio da Silveira", street_number: 414, cep: '01150-000', latitude: -23.53171, longitude: -46.660447)

brooklin = []
brooklin << Machine.create(vm_pay_id: 41908, name: 'Brooklin', washer: true, store: dia, street_name: "Avenida Padre Antônio José dos Santos", street_number: 1181, cep: '04563-013', latitude: -23.608765, longitude: -46.68879)
brooklin << Machine.create(vm_pay_id: 41908, name: 'Brooklin', washer: false, store: dia, street_name: "Avenida Padre Antônio José dos Santos", street_number: 1181, cep: '04563-013', latitude: -23.608765, longitude: -46.68879)

veridiana = []
veridiana << Machine.create(vm_pay_id: 41914, name: 'Veridiana', washer: true, store: dia, street_name: "Rua Dona Veridiana", street_number: 78, cep: '01238-010', latitude: -23.540311, longitude: -46.650557)
veridiana << Machine.create(vm_pay_id: 41914, name: 'Veridiana', washer: false, store: dia, street_name: "Rua Dona Veridiana", street_number: 78, cep: '01238-010', latitude: -23.540311, longitude: -46.650557)
veridiana << Machine.create(vm_pay_id: 41915, name: 'Veridiana', washer: true, store: dia, street_name: "Rua Dona Veridiana", street_number: 78, cep: '01238-010', latitude: -23.540311, longitude: -46.650557)
veridiana << Machine.create(vm_pay_id: 41915, name: 'Veridiana', washer: false, store: dia, street_name: "Rua Dona Veridiana", street_number: 78, cep: '01238-010', latitude: -23.540311, longitude: -46.650557)

graca = []
graca << Machine.create(vm_pay_id: 41916, name: 'Graça', washer: true, store: drop_off, street_name: "Rua Dona Veridiana", street_number: 21, cep: '03928-160', latitude: -23.6067, longitude: -46.503379)
graca << Machine.create(vm_pay_id: 41916, name: 'Graça', washer: false, store: drop_off, street_name: "Rua Dona Veridiana", street_number: 21, cep: '03928-160', latitude: -23.6067, longitude: -46.503379)

maio = []
maio << Machine.create(vm_pay_id: 49899, name: '24 de Maio', washer: true, store: dia, street_name: "Rua 24 de Maio", street_number: 108, cep: '01041-000', latitude: -23.544141, longitude: -46.6396525)
maio << Machine.create(vm_pay_id: 49899, name: '24 de Maio', washer: false, store: dia, street_name: "Rua 24 de Maio", street_number: 108, cep: '01041-000', latitude: -23.544141, longitude: -46.6396525)
maio << Machine.create(vm_pay_id: 47177, name: '24 de Maio', washer: true, store: dia, street_name: "Rua 24 de Maio", street_number: 108, cep: '01041-000', latitude: -23.544141, longitude: -46.6396525)
maio << Machine.create(vm_pay_id: 47177, name: '24 de Maio', washer: false, store: dia, street_name: "Rua 24 de Maio", street_number: 108, cep: '01041-000', latitude: -23.544141, longitude: -46.6396525)

taipas = []
taipas << Machine.create(vm_pay_id: 41974, name: 'Taipas', washer: true, store: extra, street_name: "Avenida Elísio Teixeira Leite", street_number: 7098, cep: '02810-000', latitude: -23.443347, longitude: -46.717144)
taipas << Machine.create(vm_pay_id: 41974, name: 'Taipas', washer: false, store: extra, street_name: "Avenida Elísio Teixeira Leite", street_number: 7098, cep: '02810-000', latitude: -23.443347, longitude: -46.717144)

caetano = []
caetano << Machine.create(vm_pay_id: 41910, name: 'São Caetano', washer: true, store: extra, street_name: "Rua Boa Vista", street_number: 523, cep: '09572-300', latitude: -23.643064, longitude: -46.560913)
caetano << Machine.create(vm_pay_id: 41910, name: 'São Caetano', washer: false, store: extra, street_name: "Rua Boa Vista", street_number: 523, cep: '09572-300', latitude: -23.643064, longitude: -46.560913)

bernardo = []
bernardo << Machine.create(vm_pay_id: 41912, name: 'São Bernardo', washer: true, store: extra, street_name: "Avenida Humberto de Alencar Castelo Branco", street_number: 4001, cep: '09850-350', latitude: -23.724108, longitude: -46.578651)
bernardo << Machine.create(vm_pay_id: 41912, name: 'São Bernardo', washer: false, store: extra, street_name: "Avenida Humberto de Alencar Castelo Branco", street_number: 4001, cep: '09850-350', latitude: -23.724108, longitude: -46.578651)
bernardo << Machine.create(vm_pay_id: 41913, name: 'São Bernardo', washer: true, store: extra, street_name: "Avenida Humberto de Alencar Castelo Branco", street_number: 4001, cep: '09850-350', latitude: -23.724108, longitude: -46.578651)
bernardo << Machine.create(vm_pay_id: 41913, name: 'São Bernardo', washer: false, store: extra, street_name: "Avenida Humberto de Alencar Castelo Branco", street_number: 4001, cep: '09850-350', latitude: -23.724108, longitude: -46.578651)

puts '------Scheduling jobs------'
puts '---------------------------'

def next_time_for_day(day, hour, minute = 0)
  current_time = Time.zone.now.in_time_zone('America/Sao_Paulo')

  next_day = case day.downcase
             when 'sunday' then current_time.next_week(:sunday)
             when 'monday' then current_time.next_week(:monday)
             when 'tuesday' then current_time.next_week(:tuesday)
             when 'wednesday' then current_time.next_week(:wednesday)
             when 'thursday' then current_time.next_week(:thursday)
             when 'friday' then current_time.next_week(:friday)
             when 'saturday' then current_time.next_week(:saturday)
             else
               raise ArgumentError, 'Invalid day'
             end

  Time.new(next_day.year, next_day.month, next_day.day, hour, minute, 0).in_time_zone('America/Sao_Paulo')
end


OpenMachineJob.set(wait_until: next_time_for_day('monday', 7)).perform_later([itaquera, rego, palmeiras, glicerio, liberdade, maria, jacu, barra, brooklin, caetano, bernardo, veridiana, maio, taipas])
OpenMachineJob.set(wait_until: next_time_for_day('tuesday', 7)).perform_later([itaquera, rego, palmeiras, glicerio, liberdade, maria, jacu, barra, brooklin, caetano, bernardo, veridiana, maio, taipas])
OpenMachineJob.set(wait_until: next_time_for_day('wednesday', 7)).perform_later([itaquera, rego, palmeiras, glicerio, liberdade, maria, jacu, barra, brooklin, caetano, bernardo, veridiana, maio, taipas])
OpenMachineJob.set(wait_until: next_time_for_day('thursday', 7)).perform_later([itaquera, rego, palmeiras, glicerio, liberdade, maria, jacu, barra, brooklin, caetano, bernardo, veridiana, maio, taipas])
OpenMachineJob.set(wait_until: next_time_for_day('friday', 7)).perform_later([itaquera, rego, palmeiras, glicerio, liberdade, maria, jacu, barra, brooklin, caetano, bernardo, veridiana, maio, taipas])
OpenMachineJob.set(wait_until: next_time_for_day('saturday', 7)).perform_later([itaquera, rego, palmeiras, glicerio, liberdade, maria, jacu, barra, brooklin, caetano, bernardo, veridiana, maio, taipas])
OpenMachineJob.set(wait_until: next_time_for_day('sunday', 7)).perform_later([itaquera, rego, palmeiras, glicerio, liberdade, maria, jacu, barra, brooklin, caetano, bernardo])

OpenMachineJob.set(wait_until: next_time_for_day('sunday', 8)).perform_later([veridiana, maio, taipas])

OpenMachineJob.set(wait_until: next_time_for_day('monday', 9, 30)).perform_later([graca])
OpenMachineJob.set(wait_until: next_time_for_day('tuesday', 9, 30)).perform_later([graca])
OpenMachineJob.set(wait_until: next_time_for_day('wednesday', 9, 30)).perform_later([graca])
OpenMachineJob.set(wait_until: next_time_for_day('thursday', 9, 30)).perform_later([graca])
OpenMachineJob.set(wait_until: next_time_for_day('friday', 9, 30)).perform_later([graca])
OpenMachineJob.set(wait_until: next_time_for_day('saturday', 9, 30)).perform_later([graca])


CloseMachineJob.set(wait_until: next_time_for_day('monday', 21)).perform_later([itaquera, rego, palmeiras, glicerio, liberdade, jacu, barra, caetano, bernardo, taipas])
CloseMachineJob.set(wait_until: next_time_for_day('tuesday', 21)).perform_later([itaquera, rego, palmeiras, glicerio, liberdade, jacu, barra, caetano, bernardo, taipas])
CloseMachineJob.set(wait_until: next_time_for_day('wednesday', 21)).perform_later([itaquera, rego, palmeiras, glicerio, liberdade, jacu, barra, caetano, bernardo, taipas])
CloseMachineJob.set(wait_until: next_time_for_day('thursday', 21)).perform_later([itaquera, rego, palmeiras, glicerio, liberdade, jacu, barra, caetano, bernardo, taipas])
CloseMachineJob.set(wait_until: next_time_for_day('friday', 21)).perform_later([itaquera, rego, palmeiras, glicerio, liberdade, jacu, barra, caetano, bernardo, taipas])
CloseMachineJob.set(wait_until: next_time_for_day('saturday', 21)).perform_later([itaquera, rego, palmeiras, glicerio, liberdade, jacu, barra, caetano, bernardo, taipas])
CloseMachineJob.set(wait_until: next_time_for_day('sunday', 21)).perform_later([itaquera, rego, palmeiras])

CloseMachineJob.set(wait_until: next_time_for_day('monday', 20)).perform_later([maria, brooklin, veridiana, maio])
CloseMachineJob.set(wait_until: next_time_for_day('tuesday', 20)).perform_later([maria, brooklin, veridiana, maio])
CloseMachineJob.set(wait_until: next_time_for_day('wednesday', 20)).perform_later([maria, brooklin, veridiana, maio])
CloseMachineJob.set(wait_until: next_time_for_day('thursday', 20)).perform_later([maria, brooklin, veridiana, maio])
CloseMachineJob.set(wait_until: next_time_for_day('friday', 20)).perform_later([maria, brooklin, veridiana, maio])
CloseMachineJob.set(wait_until: next_time_for_day('saturday', 20)).perform_later([maria, brooklin, veridiana, maio])
CloseMachineJob.set(wait_until: next_time_for_day('sunday', 20)).perform_later([glicerio, liberdade, maria, brooklin, caetano, bernardo, veridiana, taipas])

CloseMachineJob.set(wait_until: next_time_for_day('sunday', 17)).perform_later([jacu])

CloseMachineJob.set(wait_until: next_time_for_day('sunday', 19)).perform_later([barra])

CloseMachineJob.set(wait_until: next_time_for_day('monday', 18, 30)).perform_later([graca])
CloseMachineJob.set(wait_until: next_time_for_day('tuesday', 18, 30)).perform_later([graca])
CloseMachineJob.set(wait_until: next_time_for_day('wednesday', 18, 30)).perform_later([graca])
CloseMachineJob.set(wait_until: next_time_for_day('thursday', 18, 30)).perform_later([graca])
CloseMachineJob.set(wait_until: next_time_for_day('friday', 18, 30)).perform_later([graca])
CloseMachineJob.set(wait_until: next_time_for_day('saturday', 18, 30)).perform_later([graca])


CloseMachineJob.set(wait_until: next_time_for_day('sunday', 13)).perform_later([maio])

UpdateStatusJob.perform_now

puts '------------Done-----------'
puts '---------------------------'
