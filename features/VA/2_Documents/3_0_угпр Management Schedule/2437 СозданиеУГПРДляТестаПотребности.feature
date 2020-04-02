﻿#language: ru
@tree

#report.epic=Документы 
#report.feature=УГПР
#report.story=УГПР тестовая версия для проверки расчета потребности

Функционал: Как пользователь УСП я хочу иметь возможность создать документ УГПР 
    тестовая версия для проверки расчета потребности

#Контекст: 
#Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Я создаю УГПР для теста расчета потребности 

Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
И Я создаю тестовый проект без графика

Зачистим старые данные    
    Когда В панели разделов я выбираю 'Управление строительным производством'
    И Я нажимаю кнопку командного интерфейса 'Бюджет проекта переменных затрат'
    Тогда открылось окно 'Бюджет проекта переменных затрат'
    И Я очищаю фильтр на форме списка
    И из выпадающего списка с именем "КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Значение" я выбираю по строке 'Автотестирование загрузки 27 улицы (без графика)'    
    Когда Я убираю группировки в текущем списке
    Я устанавливаю фильтр на список     
        И я нажимаю на кнопку с именем "*НастройкаСписка"	 
        И я перехожу к закладке "Отбор"
        И для каждой строки таблицы отбора я устанавливаю отбор в списке
        | Пометка удаления | Равно | Нет |		
        И я нажимаю на кнопку с именем "ФормаЗакончитьРедактирование"
    Если в таблице "Список" количество строк "Больше" 0 Тогда
        И для каждой строки таблицы "Список" я выполняю
            И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюУстановитьПометкуУдаления' на элементе формы с именем "Список"
            Тогда открылось окно '1С:Предприятие'
            И я нажимаю на кнопку 'Да'

Создаю документ
    И я нажимаю на кнопку с именем 'ФормаСоздать'
    Тогда я жду открытия окна 'Бюджет проекта переменных затрат (создание)' в течение 10 секунд
    И из выпадающего списка "Проект" я выбираю по строке 'Автотестирование загрузки 27 улицы (без графика)'
    И Я закрываю окно предупреждения
    И я выбираю значение реквизита "Версия" из формы списка    
    И Я создаю версию проекта с названием "2437 План потребности" 
    И в таблице "Список" я выбираю текущую строку
    Тогда элемент формы "Версия" стал равен шаблону '(*) 2437 План потребности'
    И я перехожу к закладке "Основное"
    И я нажимаю на кнопку открытия поля "Версия"
    Тогда открылось окно '* План потребности (Версии проектов)'
    И из выпадающего списка "Вид версии" я выбираю точное значение 'Рабочая'
    И я нажимаю на кнопку 'Записать и закрыть'
    И я жду закрытия окна '* План потребности (Версии проектов)' в течение 20 секунд
    Тогда элемент формы "Организация" стал равен 'Автотестирование загрузки 27 улицы'
    И я нажимаю на кнопку открытия поля "Проект"
    Тогда открылось окно '* (Проект)'
    И я перехожу к закладке "Показатели"
    И я устанавливаю флаг 'Произвольная структура WBS'
    И я нажимаю на кнопку 'Записать и закрыть'	
    Тогда открылось окно 'Бюджет проекта переменных затрат *'
    И в таблице "РаботыДЗ" я нажимаю на кнопку 'Детализация'



Сценарий:  Я создаю структуру WBS тестового УГПР

Создаю тестовую ВБС
    И я перехожу к закладке "Дерево работ"
    И я нажимаю на кнопку с именем "РаботыДЗДЗДобавитьКонструктив"
    И Я создаю элемент  WBS  проекта с названием 'Итоги' 
    И в таблице "Список" я выбираю текущую строку
    Тогда открылось окно 'Бюджет проекта переменных затрат (создание) *'
    И в таблице "РаботыДЗ" в поле 'Код WBS' я ввожу текст '0'
    И в таблице "РаботыДЗ" я завершаю редактирование строки
   
    И я нажимаю на кнопку с именем "РаботыДЗДЗДобавитьПодКонструктив"
    И Я создаю элемент  WBS  проекта с названием 'Конструктив 1' 
    И в таблице "Список" я выбираю текущую строку
    Тогда открылось окно 'Бюджет проекта переменных затрат (создание) *'
    И в таблице "РаботыДЗ" в поле 'Код WBS' я ввожу текст '1'
    И в таблице "РаботыДЗ" я завершаю редактирование строки
    
    И я нажимаю на кнопку с именем "РаботыДЗДЗДобавитьКонструктив"
    И Я создаю элемент  WBS  проекта с названием 'Конструктив 2' 
    И в таблице "Список" я выбираю текущую строку
    Тогда открылось окно 'Бюджет проекта переменных затрат (создание) *'
    И в таблице "РаботыДЗ" в поле 'Код WBS' я ввожу текст '2'
    И в таблице "РаботыДЗ" я завершаю редактирование строки
  


Сценарий:  Я создаю тестовые работы в текущем УГПР

Создаю работы
    И в таблице "РаботыДЗ" я перехожу к строке:
    |'Код WBS'|
    |'1'|
    И в таблице "РаботыДЗ" я нажимаю на кнопку 'Работу(ы)'  
    и Я создаю вид работ проекта с названием  "Работа на месяц" и шифром "1.1"
    И в таблице "Список" я выбираю текущую строку
    Тогда открылось окно 'Бюджет проекта переменных затрат (создание) *'
    И в таблице "РаботыДЗ" в поле 'Код WBS' я ввожу текст "1.1"
    И в таблице "РаботыДЗ" в поле 'Объем' я ввожу текст '31' 
    И в таблице "РаботыДЗ" я завершаю редактирование строки

    И в таблице "РаботыДЗ" я перехожу к строке:
    |'Код WBS'|
    |'1'|
    И в таблице "РаботыДЗ" я нажимаю на кнопку 'Работу(ы)'  
    и Я создаю вид работ проекта с названием  "Работа на год" и шифром "1.2"
    И в таблице "Список" я выбираю текущую строку
    Тогда открылось окно 'Бюджет проекта переменных затрат (создание) *'
    И в таблице "РаботыДЗ" в поле 'Код WBS' я ввожу текст "1.2"
    И в таблице "РаботыДЗ" в поле 'Объем' я ввожу текст '365' 
    И в таблице "РаботыДЗ" я завершаю редактирование строки

    И в таблице "РаботыДЗ" я перехожу к строке:
    |'Код WBS'|
    |'1'|
    И в таблице "РаботыДЗ" я нажимаю на кнопку 'Работу(ы)'  
    и Я создаю вид работ проекта с названием  "Работа на квартал" и шифром "1.3"
    И в таблице "Список" я выбираю текущую строку
    Тогда открылось окно 'Бюджет проекта переменных затрат (создание) *'
    И в таблице "РаботыДЗ" в поле 'Код WBS' я ввожу текст "1.3"
    И в таблице "РаботыДЗ" в поле 'Объем' я ввожу текст '91' 
    И в таблице "РаботыДЗ" я завершаю редактирование строки

    И в таблице "РаботыДЗ" я перехожу к строке:
    |'Код WBS'|
    |'2'|
    И в таблице "РаботыДЗ" я нажимаю на кнопку 'Работу(ы)'  
    и Я создаю вид работ проекта с названием  "Работа на два года" и шифром "2.1"
    И в таблице "Список" я выбираю текущую строку
    Тогда открылось окно 'Бюджет проекта переменных затрат (создание) *'
    И в таблице "РаботыДЗ" в поле 'Код WBS' я ввожу текст "2.1"
    И в таблице "РаботыДЗ" в поле 'Объем' я ввожу текст '730' 
    И в таблице "РаботыДЗ" я завершаю редактирование строки

    И в таблице "РаботыДЗ" я нажимаю на кнопку 'Детализация'



Структура сценария:  Я создаю тестовые ресурсы в текущем УГПР

Создаю ресурсы
    И в таблице "РаботыДЗ" я перехожу к строке:
    |'Код WBS'| 
    |'<КодРодителя>'|
    И пауза 1
    И я перехожу к закладке <Закладка>
    И в таблице "РесурсыМатериалы" я нажимаю на кнопку с именем 'РесурсыМатериалыДобавить'
    И в таблице "РесурсыМатериалы" я выбираю значение реквизита с именем "РесурсыМатериалыРесурс" из формы списка
    Тогда открылось окно 'Ресурсы'
    И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюСписок' на элементе формы с именем "Список"
    И Я устанавливаю фильтр на список
    | Наименование | Содержит | <НазваниеРесурса> |
    И в таблице 'Список' я перехожу к первой строке    
    Если в таблице "Список" нет строки Тогда
    |'Наименование'|
    |'<НазваниеРесурса>'|
        Когда я нажимаю на кнопку с именем 'ФормаСоздать'
        Тогда открылось окно 'Ресурс (создание)'
        И в поле 'Наименование' я ввожу текст <НазваниеРесурса> 
        И из выпадающего списка "Единица измерения" я выбираю по строке 'шт'
        И из выпадающего списка "Год выпуска" я выбираю точное значение 'В ценах на 01.01.2000 редакция 2017'
        И из выпадающего списка "Вид ресурса" я выбираю точное значение <ВидРесурса> 
        И из выпадающего списка "Группа ресурсов" я выбираю по строке 'Ресурсы Bi Group'       
        И я нажимаю на кнопку 'Записать и закрыть'
        Затем Если появилось окно диалога я нажимаю на кнопку "Да"
        И я жду закрытия окна 'Ресурсы (создание)' в течение 20 секунд
    Тогда открылось окно 'Ресурсы'
    И в таблице "Список" я перехожу к строке:
    |'Наименование'|
    |'<НазваниеРесурса>'|
    И в таблице "Список" я выбираю текущую строку
    Тогда открылось окно 'Бюджет проекта переменных затрат (создание) *'
    И в таблице "РесурсыМатериалы" поле "Ресурс" имеет значение <НазваниеРесурса>
    И в таблице "РесурсыМатериалы" поле "Вид ресурса" имеет значение <ВидРесурса>
    И в таблице "РесурсыМатериалы" в поле 'Норма расхода' я ввожу текст <НормаРасхода>
    И в таблице "РесурсыМатериалы" я завершаю редактирование строки
    И пауза 1
    И в таблице "РесурсыМатериалы" в поле 'Сумма' я ввожу текст <Сумма>
    И в таблице "РесурсыМатериалы" я завершаю редактирование строки
    И пауза 1
    И в таблице "РесурсыМатериалы" поле "Количество" имеет значение <Количество>
    И в таблице "РесурсыМатериалы" поле "Цена" имеет значение <Цена>

Примеры:
|Закладка    |КодРодителя | НазваниеРесурса |ВидРесурса  |НормаРасхода   | Сумма      | Количество   | Цена     | 
|"Материалы" |'1.1'       | Материал1     |'Материалы' |'1'            | '310'      | "31,000000"  | "10,000" | 
|"Материалы" |"1.1"       | "Материал2"     |'Материалы' |'2'            | '310'      | "62,000000"  | "5,000"  |
|"Материалы" |"1.1"       | "Материал3"     |'Материалы' |'2'            | '310'      | "62,000000"  | "5,000"  |
|"Материалы" |"1.2"       | "Материал1"     |'Материалы' |'1'            | '1095'     | "365,000000" | "3,000"  | 
|"Материалы" |"1.2"       | "Материал2"     |'Материалы' |'2'            | '2920'     | "730,000000" | "4,000"  | 
|"Материалы" |"1.3"       | "Материал1"     |'Материалы' |'1'            | '910'      | "91,000000"  | "10,000" | 
|"Материалы" |"1.3"       | "Материал2"     |'Материалы' |'2'            | '182'      | "182,000000" | "1,000"  |  
|"Материалы" |"2.1"       | "Материал1"     |'Материалы' |'1'            | '3650'     | "730,000000" | "5,000" | 
|"Материалы" |"2.1"       | "Материал2"     |'Материалы' |'11'           | '16060'    |"8 030,000000"| "2,000"  | 


 
 
Сценарий: Я проверяю данные в таблицах УГПР

Проверка общая 
    Когда я перехожу к закладке "Материалы"
    Допустим в таблице "РесурсыМатериалы" я нажимаю на кнопку с именем 'РаботыДЗОтключитьОтборПоДереву1'
    Тогда таблица "РесурсыМатериалы" стала равной:
    | 'Вид ресурса' | 'Цена'   | 'Количество'   | 'Норма расхода' | 'Ресурс'    | 'ЕдИзм' | 'Вид работы'         | 'Сумма'     |
    | 'Материалы'   | '10,000' | '31,000000'    | '1,000000'      | 'Материал1' | 'шт'    | 'Работа на месяц'    | '310,00'    |
    | 'Материалы'   | '5,000'  | '62,000000'    | '2,000000'      | 'Материал2' | 'шт'    | 'Работа на месяц'    | '310,00'    |
    | 'Материалы'   | '5,000'  | '62,000000'    | '2,000000'      | 'Материал3' | 'шт'    | 'Работа на месяц'    | '310,00'    |
    | 'Материалы'   | '3,000'  | '365,000000'   | '1,000000'      | 'Материал1' | 'шт'    | 'Работа на год'      | '1 095,00'  |
    | 'Материалы'   | '4,000'  | '730,000000'   | '2,000000'      | 'Материал2' | 'шт'    | 'Работа на год'      | '2 920,00'  |
    | 'Материалы'   | '10,000' | '91,000000'    | '1,000000'      | 'Материал1' | 'шт'    | 'Работа на квартал'  | '910,00'    |
    | 'Материалы'   | '1,000'  | '182,000000'   | '2,000000'      | 'Материал2' | 'шт'    | 'Работа на квартал'  | '182,00'    |
    | 'Материалы'   | '5,000'  | '730,000000'   | '1,000000'      | 'Материал1' | 'шт'    | 'Работа на два года' | '3 650,00'  |
    | 'Материалы'   | '2,000'  | '8 030,000000' | '11,000000'     | 'Материал2' | 'шт'    | 'Работа на два года' | '16 060,00' |
    
    Тогда таблица "РаботыДЗ" стала равной:
    | 'Объем'      | 'WBS'                | 'Шифр позиции норматива' | 'Код WBS' |
    | ''           | 'Итоги'              | ''                       | '0'       |
    | ''           | 'Конструктив 1'      | ''                       | '1'       |
    | '31,000000'  | 'Работа на месяц'    | '1.1'                    | '1.1'     |
    | '365,000000' | 'Работа на год'      | '1.2'                    | '1.2'     |
    | '91,000000'  | 'Работа на квартал'  | '1.3'                    | '1.3'     |
    | ''           | 'Конструктив 2'      | ''                       | '2'       |
    | '730,000000' | 'Работа на два года' | '2.1'                    | '2.1'     |
    И в таблице "РаботыПериод" я нажимаю на кнопку с именем 'РаботыДЗОтключитьОтборПоДереву'



Структура сценария:  Я заполняю периоды работ 

Задаем периоды выполнения
    Допустим я перехожу к закладке "Период работ"    
    И в таблице "РаботыДЗ" я перехожу к строке:
    |'Код WBS'|
    |<КодРодителя>|
    И в таблице "РаботыПериод" я нажимаю на кнопку с именем 'РаботыПериодДобавить'
    И пауза 1
    И в таблице "РаботыПериод" в поле 'Начало периода' я ввожу текст <НачалоПериода>    
    И в таблице "РаботыПериод" я активизирую поле с именем "РаботыПериодОбъем"    
    И в таблице "РаботыПериод" я активизирую поле "Конец периода"
    И в таблице "РаботыПериод" в поле 'Конец периода' я ввожу текст <КонецПериода>        
    И в таблице "РаботыПериод" я активизирую поле с именем "РаботыПериодОбъем"
    И в таблице "РаботыПериод" я завершаю редактирование строки
    И пауза 1

Примеры:
|КодРодителя | НачалоПериода | КонецПериода | 
| '1.1'      | '01.08.2018'  | '31.08.2018' |
| '1.2'      | '01.01.2018'  | '31.12.2018' |
| '1.3'      | '01.09.2018'  | '30.11.2018' |
| '2.1'      | '01.01.2018'  | '31.12.2019' |


Сценарий: Я проверяю таблицу периодов

И в таблице "РаботыПериод" я нажимаю на кнопку с именем 'РаботыДЗОтключитьОтборПоДереву'
Тогда таблица "РаботыПериод" стала равной:
| 'Вид работы'         | 'Конец периода' | 'Начало периода' | 'Длительность' | 'Объем'     | 'Тип сроков' |
| 'Работа на год'      | '31.01.2018'    | '01.01.2018'     | '31'           | '31,000000' | 'дн'         |
| 'Работа на два года' | '31.01.2018'    | '01.01.2018'     | '31'           | '31,000000' | 'дн'         |
| 'Работа на год'      | '28.02.2018'    | '01.02.2018'     | '28'           | '28,000000' | 'дн'         |
| 'Работа на два года' | '28.02.2018'    | '01.02.2018'     | '28'           | '28,000000' | 'дн'         |
| 'Работа на год'      | '31.03.2018'    | '01.03.2018'     | '31'           | '31,000000' | 'дн'         |
| 'Работа на два года' | '31.03.2018'    | '01.03.2018'     | '31'           | '31,000000' | 'дн'         |
| 'Работа на год'      | '30.04.2018'    | '01.04.2018'     | '30'           | '30,000000' | 'дн'         |
| 'Работа на два года' | '30.04.2018'    | '01.04.2018'     | '30'           | '30,000000' | 'дн'         |
| 'Работа на год'      | '31.05.2018'    | '01.05.2018'     | '31'           | '31,000000' | 'дн'         |
| 'Работа на два года' | '31.05.2018'    | '01.05.2018'     | '31'           | '31,000000' | 'дн'         |
| 'Работа на год'      | '30.06.2018'    | '01.06.2018'     | '30'           | '30,000000' | 'дн'         |
| 'Работа на два года' | '30.06.2018'    | '01.06.2018'     | '30'           | '30,000000' | 'дн'         |
| 'Работа на год'      | '31.07.2018'    | '01.07.2018'     | '31'           | '31,000000' | 'дн'         |
| 'Работа на два года' | '31.07.2018'    | '01.07.2018'     | '31'           | '31,000000' | 'дн'         |
| 'Работа на месяц'    | '31.08.2018'    | '01.08.2018'     | '31'           | '31,000000' | 'дн'         |
| 'Работа на год'      | '31.08.2018'    | '01.08.2018'     | '31'           | '31,000000' | 'дн'         |
| 'Работа на два года' | '31.08.2018'    | '01.08.2018'     | '31'           | '31,000000' | 'дн'         |
| 'Работа на год'      | '30.09.2018'    | '01.09.2018'     | '30'           | '30,000000' | 'дн'         |
| 'Работа на квартал'  | '30.09.2018'    | '01.09.2018'     | '30'           | '30,000000' | 'дн'         |
| 'Работа на два года' | '30.09.2018'    | '01.09.2018'     | '30'           | '30,000000' | 'дн'         |
| 'Работа на год'      | '31.10.2018'    | '01.10.2018'     | '31'           | '31,000000' | 'дн'         |
| 'Работа на квартал'  | '31.10.2018'    | '01.10.2018'     | '31'           | '31,000000' | 'дн'         |
| 'Работа на два года' | '31.10.2018'    | '01.10.2018'     | '31'           | '31,000000' | 'дн'         |
| 'Работа на год'      | '30.11.2018'    | '01.11.2018'     | '30'           | '30,000000' | 'дн'         |
| 'Работа на квартал'  | '30.11.2018'    | '01.11.2018'     | '30'           | '30,000000' | 'дн'         |
| 'Работа на два года' | '30.11.2018'    | '01.11.2018'     | '30'           | '30,000000' | 'дн'         |
| 'Работа на год'      | '31.12.2018'    | '01.12.2018'     | '31'           | '31,000000' | 'дн'         |
| 'Работа на два года' | '31.12.2018'    | '01.12.2018'     | '31'           | '31,000000' | 'дн'         |
| 'Работа на два года' | '31.01.2019'    | '01.01.2019'     | '31'           | '31,000000' | 'дн'         |
| 'Работа на два года' | '28.02.2019'    | '01.02.2019'     | '28'           | '28,000000' | 'дн'         |
| 'Работа на два года' | '31.03.2019'    | '01.03.2019'     | '31'           | '31,000000' | 'дн'         |
| 'Работа на два года' | '30.04.2019'    | '01.04.2019'     | '30'           | '30,000000' | 'дн'         |
| 'Работа на два года' | '31.05.2019'    | '01.05.2019'     | '31'           | '31,000000' | 'дн'         |
| 'Работа на два года' | '30.06.2019'    | '01.06.2019'     | '30'           | '30,000000' | 'дн'         |
| 'Работа на два года' | '31.07.2019'    | '01.07.2019'     | '31'           | '31,000000' | 'дн'         |
| 'Работа на два года' | '31.08.2019'    | '01.08.2019'     | '31'           | '31,000000' | 'дн'         |
| 'Работа на два года' | '30.09.2019'    | '01.09.2019'     | '30'           | '30,000000' | 'дн'         |
| 'Работа на два года' | '31.10.2019'    | '01.10.2019'     | '31'           | '31,000000' | 'дн'         |
| 'Работа на два года' | '30.11.2019'    | '01.11.2019'     | '30'           | '30,000000' | 'дн'         |
| 'Работа на два года' | '31.12.2019'    | '01.12.2019'     | '31'           | '31,000000' | 'дн'         |
И я нажимаю на кнопку 'Провести и закрыть'
И я жду закрытия окна 'Бюджет проекта переменных затрат *' в течение 20 секунд


