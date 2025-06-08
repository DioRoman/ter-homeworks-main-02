# Задание 1

Исправьте намеренно допущенные синтаксические ошибки. Ищите внимательно, посимвольно. Ответьте, в чём заключается их суть.

_В основном ошибки были связаны с ссылками на переменные внутри tf файлов. Также были ошибки в указании неприменяемых конфигураций YC и орфография (standarT)._

Как в процессе обучения могут пригодиться параметры preemptible = true и core_fraction=5 в параметрах ВМ.

_preemptible = true - прерываемая, сильно дешевле, но не долговечна. ВМ работает не более 24 часов и может быть остановлена Compute Cloud в любой момент. Для тестов и учебы норм._

_core_fraction=5 Гарантированная доля vCPU, которая будет выделена ВМ. ВМ с гарантированной долей меньше 100% обеспечивают указанный уровень производительности с вероятностью временного повышения вплоть до 100%.
Такие ВМ подходят для задач, которые не требуют постоянной гарантии производительности vCPU на 100%. Опять таки это дешевле и норм для тестирования._

# Задание 2 и Задание 3

https://github.com/DioRoman/ter-homeworks-main-02/blob/main/src/vms_platform.tf

# Задание 4

https://github.com/DioRoman/ter-homeworks-main-02/blob/main/src/outputs.tf

![Снимок экрана 2025-06-04 193805](https://github.com/user-attachments/assets/3982ea42-b8fc-41ec-becd-c4d0c99f87e1)

# Задание 5

https://github.com/DioRoman/ter-homeworks-main-02/blob/main/src/locals.tf

# Задание 6

https://github.com/DioRoman/ter-homeworks-main-02/blob/main/src/variables.tf

# Задание 7 

terraform console

Напишите, какой командой можно отобразить второй элемент списка test_list.

`local.test_list[1]`

Найдите длину списка test_list с помощью функции length(<имя переменной>).

`length(local.test_list)`

Напишите, какой командой можно отобразить значение ключа admin из map test_map.

`local.test_map.admin`

Напишите interpolation-выражение, результатом которого будет: "John is admin for production server based on OS ubuntu-20-04 with X vcpu, Y ram and Z virtual disks", используйте данные из переменных test_list, test_map, servers и функцию length() для подстановки значений.

```
"${local.test_map["admin"]} is ${keys(local.test_map)[0]} for production server based on OS ${local.servers.develop["image"]} with ${local.servers.production["cpu"]} vcpu, ${local.servers.production["ram"]} ram and ${length(local.servers.production.disks)} virtual ${keys(local.servers.production)[3]}"`
```

# Задание 8

Напишите и проверьте переменную test и полное описание ее type в соответствии со значением из terraform.tfvars

```
"${local.test_map["admin"]} is ${keys(local.test_map)[0]} for production server based on OS ${local.servers.develop["image"]} with ${local.servers.production["cpu"]} vcpu, ${local.servers.production["ram"]} ram and ${length(local.servers.production.disks)} virtual ${keys(local.servers.production)[3]}"
```

https://github.com/DioRoman/ter-homeworks-main-02/blob/main/src/variables.tf

Напишите выражение в terraform console, которое позволит вычленить строку "ssh -o 'StrictHostKeyChecking=no' ubuntu@62.84.124.117" из этой переменной.

`var.test.dev1.ssh`

# Задание 9

https://github.com/DioRoman/ter-homeworks-main-02/blob/main/src/main.tf

![Снимок экрана 2025-06-07 212124](https://github.com/user-attachments/assets/5b0c4c10-bf74-4c8b-acfe-8706ca155de5)

