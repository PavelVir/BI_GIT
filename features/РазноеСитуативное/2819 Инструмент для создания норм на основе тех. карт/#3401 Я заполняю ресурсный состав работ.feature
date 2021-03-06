#language: ru

@ignore


Функционал: Как пользователь я хочу по выбранным нормативным сборникам заполнять ресурсы по набору предварительных нормативных сборников

Контекст:

	Дано Открыт клиент 1с
	и Открытая обработка Инструмент создания норм с заполненным и выбранным шаблоном

Сценарий:  Я заполняю материальные ресурсы работ по легким бульдозерам


Когда я выбираю в отборах видов работ "НаименованиеСвойства" равно "Бульдозер"
И я выбираю в отборах видов работ "ЗначениеСвойства" равно "Легкий"
тогда я вижу в таблице "Выбранные виды работ" список предварительных нормативных сборников по легким бульдозерам
И в таблице  "Состав звена"  я добавляю строку
И в таблице  "Состав звена"   в поле с именем 'Ресурс' я ввожу значение "Щебень"
И в таблице  "Состав звена"   в поле с именем 'Тип ресурса' я ввожу значение "По проекту"
И в таблице  "Состав звена"   в поле с именем 'Норма расхода' я ввожу значение "1"
И в таблице "ИмяТаблицы" текущая строка равна:
| Код      | Ресурс   | Единица измерения | Тип ресурса  | Норма расхода | Вид ресурсов   |
| "30-8-2" | "Щебень" |"м3"               | "По проекту" | "1.000000"    | "Материальные" |
Допустим я нажимаю кнопку "Записать материалы"
Тогда во все выбранные предварительные нормативные сборники в табличную часть "Ресурсы" запишется ресурс "Щебень"
Допустим я нажимаю кнопку "Записать материалы"
Тогда я вижу вопрос "В указанных видах работ уже заполнен материальный состав работ, хотите перезаполнить новым составом? (Да/нет)"
И я нажимаю "Да"
Тогда во все выбранные предварительные нормативные сборники в табличную часть "Ресурсы" запишется ресурс "Щебень"
И Ресурсы любого из выбранных предварительных нормативных сборников будет равен
| Код      | Ресурс   | Единица измерения | Тип ресурса  | Норма расхода | Вид ресурсов   |
| "30-8-2" | "Щебень" |"м3"               | "По проекту" | "1.000000"    | "Материальные" |
И все предварительные сборники не попавшие в отбор будут без ресурса "Щебень"



Сценарий:  Я заполняю трудовые и машинные ресурсы работ по легким бульдозерам

Когда я выбираю в отборах видов работ "НаименованиеСвойства" равно "Бульдозер"
И я выбираю в отборах видов работ "ЗначениеСвойства" равно "Легкий"
тогда я вижу в таблице "Выбранные виды работ" список предварительных нормативных сборников по легким бульдозерам
И в таблице "Состав звена" я добавляю строку
И в таблице  "Состав звена"   в поле с именем 'Ресурс' я ввожу значение "Автогрейдер"
И в таблице  "Состав звена"   в поле с именем 'Тип ресурса' я ввожу значение "По проекту"
И в таблице  "Состав звена"   в поле с именем 'Норма расхода' я ввожу значение "10"
И в таблице  "Состав звена"   в поле с именем 'Определение ресурсов' я ввожу значение "Базовый"
И таблица "Состав звена" стала равна:
| Код      | Ресурс                     | Единица измерения | Определение ресурсов | Тип ресурса | Норма расхода  | Вид ресурсов         | Базовый ресурс |
| "0-58-14"| "Автогрейдер"              |"маш-ч"            | "Базовый"            |"По проекту" | "10.000000"    | "Машины и механизмы" |""              |
|      "1" | "Затраты труда машинистов" |"чел/ч"            | "Зависимый"          |"По проекту" | "10.000000"    | "Трудовые ресурсы"   | "Автогрейдер"  |
И в таблице "Состав звена" я добавляю строку
И в таблице  "Состав звена"   в поле с именем 'Ресурс' я ввожу значение "Бульдозер SD-23"
И в таблице  "Состав звена"   в поле с именем 'Тип ресурса' я ввожу значение "По проекту"
И в таблице  "Состав звена"   в поле с именем 'Норма расхода' я ввожу значение "3"
И в таблице  "Состав звена"   в поле с именем 'Определение ресурсов' я ввожу значение "Зависимый"
И в таблице "Состав звена" я добавляю строку
И в таблице  "Состав звена"   в поле с именем 'Ресурс' я ввожу значение "Тракторы на гусеничном ходу, 59 кВт /80 л.с./"
И в таблице  "Состав звена"   в поле с именем 'Тип ресурса' я ввожу значение "По проекту"
И в таблице  "Состав звена"   в поле с именем 'Норма расхода' я ввожу значение "5"
И таблица "Состав звена" стала равна:
| Код      | Ресурс                                         | Единица измерения | Определение ресурсов | Тип ресурса | Норма расхода  | Вид ресурсов         | Базовый ресурс  |
| "0-58-14"| "Автогрейдер"                                  |"маш-ч"            | "Базовый"            |"По проекту" | "10.000000"    | "Машины и механизмы" |""               |
|      "1" | "Затраты труда машинистов"                     |"чел/ч"            | "Зависимый"          |"По проекту" | "10.000000"    | "Трудовые ресурсы"   | "Автогрейдер"   |
| "0-55-8" | "Бульдозер SD-23"                              |"маш-ч"            | "Зависимый"          |"По проекту" | "3.000000"     | "Машины и механизмы" |""               |
|      "1" | "Затраты труда машинистов"                     |"чел/ч"            | "Зависимый"          |"По проекту" | "3.000000"     | "Трудовые ресурсы"   |"Бульдозер SD-23"|
| "002-1"  | "Тракторы на гусеничном ходу, 59 кВт /80 л.с./"|"маш-ч"            | "Независимый"        |"По проекту" | "5.000000"     | "Машины и механизмы" |""               |
|      "1" | "Затраты труда машинистов"                     |"чел/ч"            | "Зависимый"          |"По проекту" | "5.000000"     | "Трудовые ресурсы"   |"Тракторы на гусеничном ходу, 59 кВт /80 л.с./"|

Допустим я нажимаю кнопку "Записать состав звена"
Тогда во все выбранные предварительные нормативные сборники в табличную часть "Ресурсы" допишется 6 строк
Допустим я нажимаю кнопку "Записать состав звена"
Тогда я вижу вопрос "В указанных видах работ уже заполнен трудовой и машинный состав работ, хотите перезаполнить новым составом? (Да/нет)"
И я нажимаю "Да"
Тогда во все выбранные предварительные нормативные сборники в табличную часть "Ресурсы" перезапишется 6 строк
И таблица "Ресурсы" любого из выбранных предварительных нормативных сборников будет равна
| Код      | Ресурс                                         | Единица измерения | Тип ресурса  | Норма расхода | Вид ресурсов         |
| "30-8-2" | "Щебень"                                       |"м3"               | "По проекту" | "1.000000"    | "Материальные"       |
| "0-58-14"| "Автогрейдер"                                  |"маш-ч"            | "По проекту" | "10.000000"   | "Машины и механизмы" |
|      "1" | "Затраты труда машинистов"                     |"чел/ч"            | "По проекту" | "10.000000"   | "Трудовые ресурсы"   |
| "0-55-8" | "Бульдозер SD-23"                              |"маш-ч"            | "По проекту" | "3.000000"    | "Машины и механизмы" |
|      "1" | "Затраты труда машинистов"                     |"чел/ч"            | "По проекту" | "3.000000"    | "Трудовые ресурсы"   |
| "002-1"  | "Тракторы на гусеничном ходу, 59 кВт /80 л.с./"|"маш-ч"            | "По проекту" | "5.000000"    | "Машины и механизмы" |
|      "1" | "Затраты труда машинистов"                     |"чел/ч"            | "По проекту" | "5.000000"    | "Трудовые ресурсы"   |
#материальный ресурс 1 предыдущего сценария должен сохраниться