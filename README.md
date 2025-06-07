Задание 1

Исправьте намеренно допущенные синтаксические ошибки. Ищите внимательно, посимвольно. Ответьте, в чём заключается их суть.

_В основном ошибки были связаны с ссылками на переменные внутри tf файлов. Также были ошибки в указании неприменяемых конфигураций YC и орфография (standarT)._

Как в процессе обучения могут пригодиться параметры preemptible = true и core_fraction=5 в параметрах ВМ.

preemptible = true - прерываемая, сильно дешевле, но не долговечна. ВМ работает не более 24 часов и может быть остановлена Compute Cloud в любой момент. Для тестов и учебы норм.
core_fraction=5 Гарантированная доля vCPU, которая будет выделена ВМ. ВМ с гарантированной долей меньше 100% обеспечивают указанный уровень производительности с вероятностью временного повышения вплоть до 100%. Такие ВМ подходят для задач, которые не требуют постоянной гарантии производительности vCPU на 100%. Опять таки это дешевле и норм для тестирования.

Задание 2



Задание 3

Задание 7 

terraform console

Напишите, какой командой можно отобразить второй элемент списка test_list.

local.test_list[1]

Найдите длину списка test_list с помощью функции length(<имя переменной>).

length(local.test_list)

Напишите, какой командой можно отобразить значение ключа admin из map test_map.

local.test_map.admin

Напишите interpolation-выражение, результатом которого будет: "John is admin for production server based on OS ubuntu-20-04 with X vcpu, Y ram and Z virtual disks", используйте данные из переменных test_list, test_map, servers и функцию length() для подстановки значений.

"${local.test_map["admin"]} is ${keys(local.test_map)[0]} for production server based on OS ${local.servers.develop["image"]} with ${local.servers.production["cpu"]} vcpu, ${local.servers.production["ram"]} ram and ${length(local.servers.production.disks)} virtual ${keys(local.servers.production)[3]}"