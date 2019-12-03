﻿#language: ru
@tree

#report.epic=Документы 
#report.feature=СметныйРасчет
#report.story=Основные функции сметного расчета 

Функционал: Как пользователь УСП я хочу иметь возможность создать документ сметный расчет 
  
Сценарий: Я создаю УГПР для теста сметного расчета  

Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
И Я создаю тестовую организацию
И Я создаю тестовый проект без графика для сметного расчета

Зачистим старые данные    
    Когда В панели разделов я выбираю 'Управление строительным производством'
    И Я нажимаю кнопку командного интерфейса 'Управленческий график производства работ'
    Тогда открылось окно 'Управленческий график производства работ'
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
    Тогда я жду открытия окна 'Управленческий график производства работ (создание)' в течение 10 секунд
    И из выпадающего списка "Проект" я выбираю по строке 'Автотестирование загрузки 27 улицы (без графика)'
    И Я закрываю окно предупреждения
    И я выбираю значение реквизита "Версия" из формы списка    
    И Я создаю версию проекта с названием "4781 Сметный расчет" 
    И в таблице "Список" я выбираю текущую строку
    Тогда элемент формы "Версия" стал равен шаблону '(*) 4781 Сметный расчет'
    И я перехожу к закладке "Основное"
    И я нажимаю на кнопку открытия поля "Версия"
    Тогда открылось окно '* 4781 Сметный расчет (Версии проектов)'
    И из выпадающего списка "Вид версии" я выбираю точное значение 'Внешняя'
    И я нажимаю на кнопку 'Записать и закрыть'
    И я жду закрытия окна '* 4781 Сметный расчет (Версии проектов)' в течение 20 секунд
    Тогда элемент формы "Организация" стал равен 'Автотестирование загрузки 27 улицы'
    И я нажимаю на кнопку открытия поля "Проект"
    Тогда открылось окно '* (Проект)'
    И я перехожу к закладке "Показатели"
    И я устанавливаю флаг 'Произвольная структура WBS'
    И я нажимаю на кнопку 'Записать и закрыть'    
    Тогда открылось окно 'Управленческий график производства работ *'
    И в таблице "РаботыДЗ" я нажимаю на кнопку 'Детализация'



Сценарий:  Я создаю структуру WBS тестового УГПР

Создаю тестовую ВБС
    И я перехожу к закладке "Дерево работ"
    И я нажимаю на кнопку с именем "РаботыДЗДЗДобавитьКонструктив"
    И Я создаю элемент  WBS  проекта с названием 'Итоги' 
    И в таблице "Список" я выбираю текущую строку
    Тогда открылось окно 'Управленческий график производства работ (создание) *'
    И в таблице "РаботыДЗ" в поле 'Код WBS' я ввожу текст '0'
    И в таблице "РаботыДЗ" я завершаю редактирование строки
   
    И я нажимаю на кнопку с именем "РаботыДЗДЗДобавитьПодКонструктив"
    И Я создаю элемент  WBS  проекта с названием 'Конструктив 1' 
    И в таблице "Список" я выбираю текущую строку
    Тогда открылось окно 'Управленческий график производства работ (создание) *'
    И в таблице "РаботыДЗ" в поле 'Код WBS' я ввожу текст '1'
    И в таблице "РаботыДЗ" я завершаю редактирование строки
    
    И я нажимаю на кнопку с именем "РаботыДЗДЗДобавитьКонструктив"
    И Я создаю элемент  WBS  проекта с названием 'Конструктив 2' 
    И в таблице "Список" я выбираю текущую строку
    Тогда открылось окно 'Управленческий график производства работ (создание) *'
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
    Тогда открылось окно 'Управленческий график производства работ (создание) *'
    И в таблице "РаботыДЗ" в поле 'Код WBS' я ввожу текст "1.1"
    И в таблице "РаботыДЗ" в поле 'Объем' я ввожу текст '31' 
    И в таблице "РаботыДЗ" я завершаю редактирование строки

    И в таблице "РаботыДЗ" я перехожу к строке:
    |'Код WBS'|
    |'1'|
    И в таблице "РаботыДЗ" я нажимаю на кнопку 'Работу(ы)'  
    и Я создаю вид работ проекта с названием  "Работа на год" и шифром "1.2"
    И в таблице "Список" я выбираю текущую строку
    Тогда открылось окно 'Управленческий график производства работ (создание) *'
    И в таблице "РаботыДЗ" в поле 'Код WBS' я ввожу текст "1.2"
    И в таблице "РаботыДЗ" в поле 'Объем' я ввожу текст '365' 
    И в таблице "РаботыДЗ" я завершаю редактирование строки

    И в таблице "РаботыДЗ" я перехожу к строке:
    |'Код WBS'|
    |'1'|
    И в таблице "РаботыДЗ" я нажимаю на кнопку 'Работу(ы)'  
    и Я создаю вид работ проекта с названием  "Работа на квартал" и шифром "1.3"
    И в таблице "Список" я выбираю текущую строку
    Тогда открылось окно 'Управленческий график производства работ (создание) *'
    И в таблице "РаботыДЗ" в поле 'Код WBS' я ввожу текст "1.3"
    И в таблице "РаботыДЗ" в поле 'Объем' я ввожу текст '91' 
    И в таблице "РаботыДЗ" я завершаю редактирование строки

    И в таблице "РаботыДЗ" я перехожу к строке:
    |'Код WBS'|
    |'2'|
    И в таблице "РаботыДЗ" я нажимаю на кнопку 'Работу(ы)'  
    и Я создаю вид работ проекта с названием  "Работа на два года" и шифром "2.1"
    И в таблице "Список" я выбираю текущую строку
    Тогда открылось окно 'Управленческий график производства работ (создание) *'
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
        И в поле 'Код' я ввожу текст <НазваниеРесурса> 
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
    Тогда открылось окно 'Управленческий график производства работ (создание) *'
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
|"Материалы" |'1.1'       | "Материал1"     |'Материалы' |'1'            | '310'      | "31,000000"  | "10,000" | 
|"Материалы" |"1.1"       | "Материал2"     |'Материалы' |'2'            | '310'      | "62,000000"  | "5,000"  |
|"Материалы" |"1.1"       | "Материал3"     |'Материалы' |'2'            | '310'      | "62,000000"  | "5,000"  |
|"Материалы" |"1.2"       | "Материал1"     |'Материалы' |'1'            | '1095'     | "365,000000" | "3,000"  | 
|"Материалы" |"1.2"       | "Материал2"     |'Материалы' |'2'            | '2920'     | "730,000000" | "4,000"  | 
|"Материалы" |"1.3"       | "Материал1"     |'Материалы' |'1'            | '910'      | "91,000000"  | "10,000" | 
|"Материалы" |"1.3"       | "Материал2"     |'Материалы' |'2'            | '182'      | "182,000000" | "1,000"  |  
|"Материалы" |"2.1"       | "Материал1"     |'Материалы' |'1'            | '3650'     | "730,000000" | "5,000" | 
|"Материалы" |"2.1"       | "Материал2"     |'Материалы' |'11'           | '16060'    |"8 030,000000"| "2,000"  | 

Сценарий: Проведение документа УГПР и создание сметного расчета на зимнее удорожание процентом

Финализация документа
    И я нажимаю на кнопку 'Провести и закрыть'
    И я жду закрытия окна 'Управленческий график производства работ *' в течение 20 секунд
    
Создание сметного расчет на зимнее удорожание
    И Я открываю основную форму списка документа "ИНАГРО_СметныйРасчетСтоимости" по проекту "Автотестирование загрузки 27 улицы (без графика)" удаляем данные "Истина"
    Когда открылось окно 'Сметный расчет стоимости'
    И я нажимаю на кнопку с именем 'ФормаСоздать'
    Тогда открылось окно 'Сметный расчет стоимости (создание)'
    Заполняем шапку и базу расчета
        И из выпадающего списка "Проект" я выбираю по строке 'Автотестирование загрузки 27 улицы (без графика)'
        И из выпадающего списка "Версия" я выбираю по строке '(*) 4781 Сметный расчет'
        И я перехожу к закладке "База распределения"
        И в таблице "РаботыДЗ" я нажимаю на кнопку 'Заполнить базу'
        И в таблице "РаботыДЗ" я разворачиваю строку:
        | 'Вид работы' | 'Всего затраты с накладными' |  'Код WBS' | 'Прямые затраты' | 'Стоимость материалов' |
        | 'Итоги'      | '25 747,00'                  |  '0'       | '25 747,00'      | '25 747,00'            |
        Тогда открылось окно 'Сметный расчет стоимости (создание) *'
    Заполняем вид расчета процентом    
        И я перехожу к закладке "Расходы к распределению"
        И в таблице "РасходыКРаспределению" я нажимаю на кнопку с именем 'РасходыКРаспределениюДобавить'
        И в таблице "РасходыКРаспределению" я нажимаю кнопку выбора у реквизита "Вид расчета"
        Тогда открылось окно 'Виды непрямых затрат'
        И Я устанавливаю фильтр на список
        | Наименование | Содержит | "Зимнее удорожание 2%" |
        Если в таблице "Список" нет строки Тогда
        |'Полное наименование'|
        |"Зимнее удорожание 2%"|
            Когда я нажимаю на кнопку с именем 'ФормаСоздать'
           Тогда открылось окно 'Виды непрямых затрат (проект) (создание)'
            И в поле 'Полное наименование' я ввожу текст 'Зимнее удорожание 2%'
            И в поле 'Коэффициент' я ввожу текст '2,00000000'
            И из выпадающего списка "Тип значения затраты" я выбираю точное значение '%'
            И я устанавливаю флаг 'ПЗ'
            И я меняю значение переключателя с именем 'СпособОтражения' на 'Индексация'
            И я нажимаю на кнопку 'Записать и закрыть'
            И я жду закрытия окна 'Виды непрямых затрат (создание)' в течение 20 секунд
            Тогда открылось окно 'Виды непрямых затрат'
        И в таблице "Список" я перехожу к строке:
        |'Полное наименование'|
        |"Зимнее удорожание 2%"|    
        И я нажимаю на кнопку с именем 'ФормаВыбрать'
        Тогда открылось окно 'Сметный расчет стоимости (создание) *'
        И в таблице "РасходыКРаспределению" поле с именем "РасходыКРаспределениюПроцент" имеет значение "2,00000000"
        И в таблице "РасходыКРаспределению" поле с именем "РасходыКРаспределениюСуммаБаза" имеет значение "25 747,00"
        И в таблице "РасходыКРаспределению" поле с именем "РасходыКРаспределениюСумма" имеет значение "514,94"
    И я нажимаю на кнопку 'Провести и закрыть'
    И я жду закрытия окна 'Сметный расчет стоимости (создание) *' в течение 20 секунд



Сценарий: Проверка отражения данных сметного расчета в УГПР
    И В панели открытых я выбираю 'Управленческий график производства работ'
    И в таблице "Список" я выбираю текущую строку
    Тогда открылось окно 'Управленческий график производства работ * Сметный расчет>'
    И элемент формы с именем "Статус" стал равен "В подготовке"
    И я перехожу к закладке "Дерево работ"
    И в таблице "РаботыДЗ" я перехожу к первой строке
    И в таблице "РаботыДЗ" поле с именем "РаботыДЗИндексация" имеет значение "514,94"
    И в таблице "РаботыДЗ" поле с именем "РаботыДЗСебестоимость" имеет значение "26 261,94"

Сценарий:  Создание сметного расчета на коэффициент инфляции - база должна включать зимнее удорожание

И В панели открытых я выбираю 'Сметный расчет стоимости'
Создание сметного расчет на зимнее удорожание
    Когда открылось окно 'Сметный расчет стоимости'
    И я нажимаю на кнопку с именем 'ФормаСоздать'
    Тогда открылось окно 'Сметный расчет стоимости (создание)'
    Заполняем шапку и базу расчета
        И из выпадающего списка "Проект" я выбираю по строке 'Автотестирование загрузки 27 улицы (без графика)'
        И из выпадающего списка "Версия" я выбираю по строке '(*) 4781 Сметный расчет'
        И я перехожу к закладке "База распределения"
        И в таблице "РаботыДЗ" я нажимаю на кнопку 'Заполнить базу'
        И в таблице "РаботыДЗ" я разворачиваю строку:
        | 'Вид работы' | 'Всего затраты с накладными' |  'Код WBS' | 'Прямые затраты' | 'Стоимость материалов' |
        | 'Итоги'      | '26 261,94'                  |  '0'       | '25 747,00'      | '25 747,00'            |
        Тогда открылось окно 'Сметный расчет стоимости (создание) *'
    Заполняем вид расчета процентом    
        И я перехожу к закладке "Расходы к распределению"
        И в таблице "РасходыКРаспределению" я нажимаю на кнопку с именем 'РасходыКРаспределениюДобавить'
        И в таблице "РасходыКРаспределению" я нажимаю кнопку выбора у реквизита "Вид расчета"
        Тогда открылось окно 'Виды непрямых затрат'
        И Я устанавливаю фильтр на список
        | Наименование | Содержит | "Коэф инфляции 0,05" |
        Если в таблице "Список" нет строки Тогда
        |'Полное наименование'|
        |"Коэф инфляции 0,05"|
            Когда я нажимаю на кнопку с именем 'ФормаСоздать'
            Тогда открылось окно 'Виды непрямых затрат (создание)'
            И в поле 'Полное наименование' я ввожу текст 'Коэф инфляции 0,05'
            И из выпадающего списка "Тип значения затраты" я выбираю точное значение 'Коэффициент'
            И в поле 'Коэффициент' я ввожу текст '0,05000000'            
            И я устанавливаю флаг 'ПЗ'
            И я устанавливаю флаг 'НР в базу'
            И я меняю значение переключателя с именем 'СпособОтражения' на 'Индексация'
            И я нажимаю на кнопку 'Записать и закрыть'
            И я жду закрытия окна 'Виды непрямых затрат (создание)' в течение 20 секунд
            Тогда открылось окно 'Виды непрямых затрат'
        И в таблице "Список" я перехожу к строке:
        |'Полное наименование'|
        |"Коэф инфляции 0,05"|    
        И я нажимаю на кнопку с именем 'ФормаВыбрать'
        Тогда открылось окно 'Сметный расчет стоимости (создание) *'
        И в таблице "РасходыКРаспределению" поле с именем "РасходыКРаспределениюПроцент" имеет значение "0,05000000"
        И в таблице "РасходыКРаспределению" поле с именем "РасходыКРаспределениюСуммаБаза" имеет значение "26 261,94"
        И в таблице "РасходыКРаспределению" поле с именем "РасходыКРаспределениюСумма" имеет значение "1 313,10"
    И я нажимаю на кнопку 'Провести'

Сценарий: Проверка отражения данных второго сметного расчета в УГПР
    И В панели открытых я выбираю 'Управленческий график производства работ №*'
    И я перехожу к закладке "Дерево работ"
    И в таблице "РаботыДЗ" я нажимаю на кнопку с именем 'РаботыДЗОбновить'
    И в таблице "РаботыДЗ" я перехожу к первой строке
    И в таблице "РаботыДЗ" поле с именем "РаботыДЗИндексация" имеет значение "1 828,04"
    И в таблице "РаботыДЗ" поле с именем "РаботыДЗСебестоимость" имеет значение "27 575,04"



Сценарий: Исправление сметного расчета на коэффициент инфляции вручную фиксированно 1400
    И В панели открытых я выбираю 'Сметный расчет стоимости * от *'
    И я перехожу к закладке "База распределения"
    И я перехожу к закладке "Расходы к распределению"
    И в таблице "РасходыКРаспределению" я активизирую поле "Фиксированная сумма"
    И в таблице "РасходыКРаспределению" я устанавливаю флаг 'Фиксированная сумма'
    И в таблице "РасходыКРаспределению" я активизирую поле "Сумма"
    И в таблице "РасходыКРаспределению" я выбираю текущую строку
    И в таблице "РасходыКРаспределению" в поле 'Сумма' я ввожу текст '1 400,00'
    И в таблице "РасходыКРаспределению" я завершаю редактирование строки
    И я нажимаю на кнопку 'Провести'
    И в таблице "РасходыКРаспределению" поле "Сумма" имеет значение "1 400,00"


Сценарий: Проверка отражения данных второго сметного расчета в УГПР после ручных изменений
    И В панели открытых я выбираю 'Управленческий график производства работ №*'
    И я перехожу к закладке "Дерево работ"
    И в таблице "РаботыДЗ" я нажимаю на кнопку с именем 'РаботыДЗОбновить'
    И в таблице "РаботыДЗ" я перехожу к первой строке
    И в таблице "РаботыДЗ" поле с именем "РаботыДЗИндексация" имеет значение "1 914,94"
    И в таблице "РаботыДЗ" поле с именем "РаботыДЗСебестоимость" имеет значение "27 661,94"

