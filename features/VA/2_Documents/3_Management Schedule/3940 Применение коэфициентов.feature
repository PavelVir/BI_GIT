﻿#language: ru
@tree

#report.epic=Документы
#report.feature=УГПР
#report.story=Применение коэф при создании работы из НС

Функционал: Как пользователь УСП я хочу иметь возможность применять коэф при создании работы из НС

Сценарий: Я выполняю проверку применение коэф при создании работы из НС

Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Я открываю тестовый документ УГПР    
  Дано Я открываю основную форму списка документа "ИНАГРО_УГПР"
  Тогда открылось окно 'Управленческий график производства работ'
  И из выпадающего списка с именем "КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Значение" я выбираю по строке '#3940 Применение коэф при создании работы из НС'
  И Я убираю группировки в текущем списке
  И в таблице "Список" я перехожу к строке:
  | 'Проект'|
  |'#3940 Применение коэф при создании работы из НС'|   
  И в таблице "Список" я выбираю текущую строку
  Тогда открылось окно 'Управленческий график производства работ *'    	    
  И я перехожу к закладке "Дерево работ"

Я проверяю применение коэфициента к стоимости материалов
  И в таблице "РаботыДЗ" я нажимаю на кнопку с именем 'РаботыДЗРазвернутьВсе'
  И в таблице "РаботыДЗ" я перехожу к строке:
  | 'Код WBS' |
  | '1'       |	
  И в таблице "РаботыДЗ" поле с именем "РаботыДЗСтоимостьПрямыхЗатрат" имеет значение "8 000,00"
  И я перехожу к закладке "Материалы"
  И пауза 1
  И в таблице "РесурсыМатериалы" поле с именем "РесурсыМатериалыСумма" имеет значение "4 000,00" 
  И Я добавляю НР с названием 'Демонтаж тест = Мат 0,9'
  Тогда открылось окно 'Управленческий график производства работ *'
  И в таблице "РасходыКРаспределению" поле с именем "РасходыКРаспределениюВидНР" имеет значение "Демонтаж тест = Мат 0,9"
  И в таблице "РасходыКРаспределению" поле с именем "РасходыКРаспределениюПроцент" имеет значение "0,90000000"
  И в таблице "РаботыДЗ" поле с именем "РаботыДЗСтоимостьПрямыхЗатрат" имеет значение "7 600,00"
  И я перехожу к закладке "Материалы"
  И пауза 1
  И в таблице "РесурсыМатериалы" поле с именем "РесурсыМатериалыСумма" имеет значение "3 600,00"

Я проверяю применение коэфициента к стоимости труда
  И в таблице "РаботыДЗ" я перехожу к строке:
  | 'Код WBS' |
  | '2'       |	
  И в таблице "РаботыДЗ" поле с именем "РаботыДЗСтоимостьПрямыхЗатрат" имеет значение "8 000,00"
  И я перехожу к закладке "Трудовые ресурсы"
  И пауза 1
  И в таблице "РесурсыТрудовые" поле с именем "РесурсыТрудовыеСумма" имеет значение "4 000,00"
  И Я добавляю НР с названием 'Демонтаж тест = ОЗ= 0,8'
  Тогда открылось окно 'Управленческий график производства работ *'
  И в таблице "РасходыКРаспределению" поле с именем "РасходыКРаспределениюВидНР" имеет значение "Демонтаж тест = ОЗ= 0,8"
  И в таблице "РасходыКРаспределению" поле с именем "РасходыКРаспределениюПроцент" имеет значение "0,80000000"
  И в таблице "РаботыДЗ" поле с именем "РаботыДЗСтоимостьПрямыхЗатрат" имеет значение "3 200,00"
  И я перехожу к закладке "Трудовые ресурсы"
  И пауза 1
  И в таблице "РесурсыТрудовые" поле с именем "РесурсыТрудовыеСумма" имеет значение "3 200,00"


Я проверяю применение коэфициента к норме труда
  И в таблице "РаботыДЗ" я перехожу к строке:
  | 'Код WBS' |
  | '3'       |	
  И в таблице "РаботыДЗ" поле с именем "РаботыДЗСтоимостьПрямыхЗатрат" имеет значение "4 231,00"
  И я перехожу к закладке "Трудовые ресурсы"
  И пауза 1
  И в таблице "РесурсыТрудовые" поле с именем "РесурсыТрудовыеСумма" имеет значение "4 000,00"
  И Я добавляю НР с названием 'Демонтаж тест = ТР 0,8'
  Тогда открылось окно 'Управленческий график производства работ *'
  И в таблице "РасходыКРаспределению" поле с именем "РасходыКРаспределениюВидНР" имеет значение "Демонтаж тест = ТР 0,8"
  И в таблице "РасходыКРаспределению" поле с именем "РасходыКРаспределениюПроцент" имеет значение "0,80000000"
  И в таблице "РаботыДЗ" поле с именем "РаботыДЗСтоимостьПрямыхЗатрат" имеет значение "3 200,00"
  И я перехожу к закладке "Трудовые ресурсы"
  И пауза 1
  И в таблице "РесурсыТрудовые" поле с именем "РесурсыТрудовыеСумма" имеет значение "3 200,00"
  И в таблице "РесурсыТрудовые" поле с именем "РесурсыТрудовыеНормаРасхода" имеет значение "0,800000"
  И в таблице "РесурсыТрудовые" поле с именем "РесурсыТрудовыеКоличество" имеет значение "16,000000"


Я проверяю применение коэфициента к МиМ
  И в таблице "РаботыДЗ" я перехожу к строке:
  | 'Код WBS' |
  | '4'       |	
  И в таблице "РаботыДЗ" поле с именем "РаботыДЗСтоимостьПрямыхЗатрат" имеет значение "27,72"
  И я перехожу к закладке "Машинные ресурсы"
  И пауза 1
  И в таблице "РесурсыМашинные" поле с именем "РесурсыМашинныеСумма" имеет значение "14,44"
  И Я добавляю НР с названием 'Машины тест = ЭМ 0,75'
  Тогда открылось окно 'Управленческий график производства работ *'
  И в таблице "РасходыКРаспределению" поле с именем "РасходыКРаспределениюВидНР" имеет значение "Машины тест = ЭМ 0,75"
  И в таблице "РасходыКРаспределению" поле с именем "РасходыКРаспределениюПроцент" имеет значение "0,75000000"
  И в таблице "РаботыДЗ" поле с именем "РаботыДЗСтоимостьПрямыхЗатрат" имеет значение "24,11"
  И я перехожу к закладке "Машинные ресурсы"
  И пауза 1
  И в таблице "РесурсыМашинные" поле с именем "РесурсыМашинныеСумма" имеет значение "10,83"

Я проверяю применение коэфициента к норме машинистов
  И в таблице "РаботыДЗ" я перехожу к строке:
  | 'Код WBS' |
  | '5'       |	
  И в таблице "РаботыДЗ" поле с именем "РаботыДЗСтоимостьПрямыхЗатрат" имеет значение "27,72"
  И я перехожу к закладке "Трудовые ресурсы"
  И пауза 1
  И в таблице "РесурсыТрудовые" я перехожу к строке:
  | 'Вид ресурса'              | 'Ресурс'                   | 'Сумма' |
  | 'Затраты труда машинистов' | 'Затраты труда машинистов' | '14,84' |
  И в таблице "РесурсыТрудовые" поле с именем "РесурсыТрудовыеСумма" имеет значение "14,84"
  И Я добавляю НР с названием 'Машины тест = ТМ 0,5'
  Тогда открылось окно 'Управленческий график производства работ *'
  И в таблице "РасходыКРаспределению" поле с именем "РасходыКРаспределениюВидНР" имеет значение "Машины тест = ТМ 0,5"
  И в таблице "РасходыКРаспределению" поле с именем "РасходыКРаспределениюПроцент" имеет значение "0,50000000"
  И в таблице "РаботыДЗ" поле с именем "РаботыДЗСтоимостьПрямыхЗатрат" имеет значение "20,50"
  И я перехожу к закладке "Трудовые ресурсы"
  И пауза 1
  И в таблице "РесурсыТрудовые" я перехожу к строке:
  | 'Вид ресурса'              | 'Ресурс'                   |
  | 'Затраты труда машинистов' | 'Затраты труда машинистов' |
  И в таблице "РесурсыТрудовые" поле с именем "РесурсыТрудовыеСумма" имеет значение "7,42"
  И в таблице "РесурсыТрудовые" поле с именем "РесурсыТрудовыеНормаРасхода" имеет значение "0,001805"
  # И в таблице "РесурсыТрудовые" поле с именем "РесурсыТрудовыеКоличество" имеет значение "0,037100" 
  # после доработки которая приравнивает кво машинистов к кву машин
  И в таблице "РесурсыТрудовые" поле с именем "РесурсыТрудовыеКоличество" имеет значение "0,036100"  
  
Я проверяю применение коэфициента к оплате машинистов
  И в таблице "РаботыДЗ" я перехожу к строке:
  | 'Код WBS' |
  | '6'       |	
  И в таблице "РаботыДЗ" поле с именем "РаботыДЗСтоимостьПрямыхЗатрат" имеет значение "27,72"
  И я перехожу к закладке "Трудовые ресурсы"
  И пауза 1
  И в таблице "РесурсыТрудовые" я перехожу к строке:
  | 'Вид ресурса'              | 'Ресурс'                   | 'Сумма' |
  | 'Затраты труда машинистов' | 'Затраты труда машинистов' | '14,84' |
  И в таблице "РесурсыТрудовые" поле с именем "РесурсыТрудовыеСумма" имеет значение "14,84"
  И Я добавляю НР с названием 'Машины тест = ЗПМ 0,85'
  
  Тогда открылось окно 'Управленческий график производства работ *'
  И в таблице "РасходыКРаспределению" поле с именем "РасходыКРаспределениюВидНР" имеет значение "Машины тест = ЗПМ 0,85"
  И в таблице "РасходыКРаспределению" поле с именем "РасходыКРаспределениюПроцент" имеет значение "0,85000000"
  И в таблице "РаботыДЗ" поле с именем "РаботыДЗСтоимостьПрямыхЗатрат" имеет значение "27,72"
  И я перехожу к закладке "Трудовые ресурсы"
  И пауза 1
  И в таблице "РесурсыТрудовые" я перехожу к строке:
  | 'Вид ресурса'              | 'Ресурс'                   |
  | 'Затраты труда машинистов' | 'Затраты труда машинистов' |
  И в таблице "РесурсыТрудовые" поле с именем "РесурсыТрудовыеСумма" имеет значение "12,61"
  И в таблице "РесурсыТрудовые" поле с именем "РесурсыТрудовыеНормаРасхода" имеет значение "0,003610"
#  И в таблице "РесурсыТрудовые" поле с именем "РесурсыТрудовыеКоличество" имеет значение "0,074200"  
  И в таблице "РесурсыТрудовые" поле с именем "РесурсыТрудовыеКоличество" имеет значение "0,072200"  

Я проверяю применение комплексного коэфициента к норме машинистов и затратам на механизацию
  И в таблице "РаботыДЗ" я перехожу к строке:
  | 'Код WBS' |
  | '9'       |	
  И в таблице "РаботыДЗ" поле с именем "РаботыДЗСтоимостьПрямыхЗатрат" имеет значение "277,20"
  И я перехожу к закладке "Трудовые ресурсы"
  И пауза 1
  И в таблице "РесурсыТрудовые" я перехожу к строке:
  | 'Вид ресурса'              | 'Ресурс'                   | 'Сумма' |
  | 'Затраты труда машинистов' | 'Затраты труда машинистов' | '72,20' |
  И в таблице "РесурсыТрудовые" поле с именем "РесурсыТрудовыеСумма" имеет значение "72,20"
  И Я добавляю НР с названием 'Машины тест = МАШ 0,5 и ТМ 0,4'
  Тогда открылось окно 'Управленческий график производства работ *'
  И в таблице "РасходыКРаспределению" поле с именем "РасходыКРаспределениюВидНР" имеет значение "Машины тест = МАШ 0,5 и ТМ 0,4"
  И в таблице "РаботыДЗ" поле с именем "РаботыДЗСтоимостьПрямыхЗатрат" имеет значение "161,68"
  И я перехожу к закладке "Трудовые ресурсы"
  И пауза 1
  И в таблице "РесурсыТрудовые" я перехожу к строке:
  | 'Вид ресурса'              | 'Ресурс'                   |
  | 'Затраты труда машинистов' | 'Затраты труда машинистов' |
  И в таблице "РесурсыТрудовые" поле с именем "РесурсыТрудовыеСумма" имеет значение "14,44"
  И в таблице "РесурсыТрудовые" поле с именем "РесурсыТрудовыеНормаРасхода" имеет значение "0,001444"
  И в таблице "РесурсыТрудовые" поле с именем "РесурсыТрудовыеКоличество" имеет значение "0,288800"  
  #Проверка на простом примере Корж Л Если у нас цена часа ресурса 10000 в т.ч. ЗП машиниста 2000 и норма 0,1 сумма 1000
  #Получим норму 0,04 и цену ресурса 5000 в т.ч. ЗП машиниста 1000   Сумму всего 200 в т.ч. ЗП машиниста 40
  И в таблице "РаботыДЗ" я нажимаю на кнопку 'Работу(ы)'
  И Я создаю вид работ проекта с названием  "Работа на месяц" и шифром "1.1"
  И в таблице "Список" я выбираю текущую строку  
  И в таблице "РаботыДЗ" в поле 'Код WBS' я ввожу текст "1.1"
  И в таблице "РаботыДЗ" в поле 'Объем' я ввожу текст '1'
  И в таблице "РаботыДЗ" я завершаю редактирование строки
  И я перехожу к закладке "Трудовые ресурсы"
  И Я добавляю ресурс в таблицу "РесурсыТрудовые" с названием "Затраты труда машинистов" и видом ресурса "Затраты труда машинистов" норма "0.1" ценой "2000"
  И я перехожу к закладке "Машинные ресурсы"
  И Я добавляю ресурс в таблицу "РесурсыМашинные" с названием "Бульдозеры, 118 кВт (160 л.с.)" и видом ресурса "Машины и механизмы" норма "0.1" ценой "10000"
  И в таблице "РесурсыМашинные" в поле с именем 'РесурсыМашинныеЦенаМашинистов' я ввожу текст '2000,000000'
  И в таблице "РесурсыМашинные" я завершаю редактирование строки
  И Я добавляю НР с названием 'Машины тест = МАШ 0,5 и ТМ 0,4'
  И я перехожу к закладке "Трудовые ресурсы"
  И в таблице "РесурсыТрудовые" я перехожу к строке:
  | 'Вид ресурса'              | 'Ресурс'                   |
  | 'Затраты труда машинистов' | 'Затраты труда машинистов' |
  И в таблице "РесурсыТрудовые" поле с именем "РесурсыТрудовыеСумма" имеет значение "40,00"
  И в таблице "РесурсыТрудовые" поле с именем "РесурсыТрудовыеНормаРасхода" имеет значение "0,040000"
  И в таблице "РесурсыТрудовые" поле с именем "РесурсыТрудовыеКоличество" имеет значение "0,040000"  
  И я перехожу к закладке "Машинные ресурсы"
  И в таблице "РесурсыМашинные" я перехожу к строке:
  | 'Вид ресурса'              | 'Ресурс'                   |
  | 'Машины и механизмы'       | 'Бульдозеры, 118 кВт (160 л.с.)' |
  И в таблице "РесурсыМашинные" поле "Норма расхода" имеет значение "0,040000"
  И в таблице "РесурсыМашинные" поле "Цена" имеет значение "5 000,000000"
  И в таблице "РесурсыМашинные" поле с именем "РесурсыМашинныеСумма" имеет значение "200,00"
  И в таблице "РесурсыМашинные" поле с именем "РесурсыМашинныеЦенаМашинистов" имеет значение "1 000,000000"
  И в таблице "РесурсыМашинные" поле с именем "РесурсыМашинныеСуммаЗПМАшинистов" имеет значение "40,00"
  
Я выбираю работу монтажа и делаю из нее демонтаж как существующую работу
  И в таблице "РаботыДЗ" я перехожу к строке по шаблону:
  | 'Код WBS' |
  | '7'       |	
  И пауза 1
  И в таблице "РаботыДЗ" я активизирую поле "WBS"
  И я перехожу к закладке "Материалы"
  И пауза 1
  Если в таблице "РесурсыМатериалы" количество строк "равно" 0 Тогда
    И в таблице "РесурсыМатериалы" я нажимаю на кнопку с именем 'РесурсыМатериалыДобавить'
    И в таблице "РесурсыМатериалы" из выпадающего списка с именем "РесурсыМатериалыРесурс" я выбираю по строке 'Материал1'
    И в таблице "РесурсыМатериалы" я завершаю редактирование строки  
  И в таблице "РаботыДЗ" я выбираю текущую строку  
   #нужно переделать, функционал поменялся