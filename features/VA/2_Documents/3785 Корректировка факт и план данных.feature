﻿#language: ru
@tree

#report.epic=Документы 
#report.feature=УГПР
#report.story=УГПР корректировка факт и план данных

Функционал: Как пользователь УСП я хочу иметь рабочий УГПР 

Контекст: Создаем необходимые данные
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
    И Я создаю тестовый проект  по наименованию "#3785 - Корректировка фактических опер. данных"

Сценарий: Я прохожу процесс планирования, оперативного факта и корректировки

Зачищаем данные
    Допустим Я открываю основную форму списка документа "ИНАГРО_КорректировкаЗатратОперативногоУчета" по проекту "#3785 - Корректировка фактических опер. данных" удаляем данные "Истина"
    Допустим Я открываю основную форму списка документа "ИНАГРО_УчетРаботыСотрудниковИТехники" по проекту "#3785 - Корректировка фактических опер. данных" удаляем данные "Истина"
    Допустим Я открываю основную форму списка документа "ИНАГРО_РасходМатериалов" по проекту "#3785 - Корректировка фактических опер. данных" удаляем данные "Истина"
    Допустим Я открываю основную форму списка документа "ИНАГРО_УчетВыполненныхОбъемовРабот" по проекту "#3785 - Корректировка фактических опер. данных" удаляем данные "Истина"
    Допустим Я открываю основную форму списка документа "ИНАГРО_РаспределительнаяВедомость" по проекту "#3785 - Корректировка фактических опер. данных" удаляем данные "Истина"


Создаю документ
    Допустим Я открываю основную форму списка документа "ИНАГРО_УГПР" по проекту "#3785 - Корректировка фактических опер. данных" удаляем данные "Истина"    
    И я нажимаю на кнопку с именем 'ФормаСоздать'
    Тогда я жду открытия окна 'Бюджет проекта переменных затрат (создание)*' в течение 10 секунд
    И я выбираю значение реквизита "Версия" из формы списка    
    И Я создаю версию проекта с названием "3785 Рабочая" 
    И в таблице "Список" я выбираю текущую строку
    Тогда элемент формы "Версия" стал равен шаблону '(*) 3785 Рабочая'
    И я нажимаю на кнопку открытия поля "Версия"
    И из выпадающего списка "Вид версии" я выбираю точное значение 'Рабочая'
    И я нажимаю на кнопку 'Записать и закрыть'
    И я жду закрытия окна 'Версии проектов *' в течение 20 секунд

Произвольная структура WBS
    И я нажимаю на кнопку открытия поля "Проект"
    Тогда открылось окно '* (Проект)'
    И я перехожу к закладке "Показатели"
    И я устанавливаю флаг 'Произвольная структура WBS'
    И я нажимаю на кнопку 'Записать и закрыть'
    
Заполнение работ
    И я перехожу к закладке "Дерево работ"
    И я нажимаю на кнопку с именем "РаботыДЗДЗДобавитьКонструктив"
    И Я создаю элемент WBS проекта с названием 'Уровень итогов'
    И в таблице "Список" я выбираю текущую строку
    Тогда не появилось окно предупреждения системы
    Тогда открылось окно 'Бюджет проекта переменных затрат (создание) *'
    И в таблице "РаботыДЗ" в поле 'Код WBS' я ввожу текст '1.0'
    И в таблице "РаботыДЗ" я завершаю редактирование строки

    И в таблице "РаботыДЗ" я нажимаю на кнопку 'Работу(ы)'
    И Я создаю вид работ проекта с названием  "Работа на 2019 год" и шифром "19-19"
    И в таблице "Список" я выбираю текущую строку
    Тогда не появилось окно предупреждения системы
    Тогда открылось окно 'Бюджет проекта переменных затрат (создание) *'
    И в таблице "РаботыДЗ" в поле 'Код WBS' я ввожу текст "19-19"
    И в таблице "РаботыДЗ" в поле 'Объем' я ввожу текст '200'
    И в таблице "РаботыДЗ" я завершаю редактирование строки
    И я перехожу к закладке "Материалы"    
    И Я добавляю ресурс в таблицу "РесурсыМатериалы" с названием "Бетон тяжелый класса В35 F200 W6" и видом ресурса "Материалы" норма "1" ценой "100"
    И Я добавляю ресурс в таблицу "РесурсыМатериалы" с названием "Щебень" и видом ресурса "Материалы" норма "0.5" ценой "50"
    И я перехожу к закладке "Трудовые ресурсы"    
    И Я добавляю ресурс в таблицу "РесурсыТрудовые" с названием "Затраты труда рабочих-строителей" и видом ресурса "Затраты труда рабочих" норма "2" ценой "200"
    И я перехожу к закладке "Машинные ресурсы"    
    И Я добавляю ресурс в таблицу "РесурсыМашинные" с названием "Трактор колесный МТЗ-80" и видом ресурса "Машины и механизмы" норма "1.5" ценой "300"
    И Я добавляю ресурс в таблицу "РесурсыМашинные" с названием "Бульдозеры, 79 кВт (108 л.с.)" и видом ресурса "Машины и механизмы" норма "2.5" ценой "100"    
    И пауза 1
    И Я добавляю период с "01.04.2019" по "20.04.2019" объемом "200,000000"

    И в таблице "РаботыДЗ" я нажимаю на кнопку 'Работу(ы)'
    И Я создаю вид работ проекта с названием  "Работа на 2019-2021" и шифром "19-21"
    И в таблице "Список" я выбираю текущую строку
    Тогда не появилось окно предупреждения системы
    Тогда открылось окно 'Бюджет проекта переменных затрат (создание) *'
    И в таблице "РаботыДЗ" в поле 'Код WBS' я ввожу текст "19-21"
    И в таблице "РаботыДЗ" в поле 'Объем' я ввожу текст '600'
    И в таблице "РаботыДЗ" я завершаю редактирование строки
    И я перехожу к закладке "Материалы"    
    И Я добавляю ресурс в таблицу "РесурсыМатериалы" с названием "Бетон тяжелый класса В35 F200 W6" и видом ресурса "Материалы" норма "1" ценой "100"
    И Я добавляю ресурс в таблицу "РесурсыМатериалы" с названием "Щебень" и видом ресурса "Материалы" норма "0.5" ценой "50"
    И я перехожу к закладке "Трудовые ресурсы"    
    И Я добавляю ресурс в таблицу "РесурсыТрудовые" с названием "Затраты труда рабочих-строителей" и видом ресурса "Затраты труда рабочих" норма "2" ценой "200"
    И я перехожу к закладке "Машинные ресурсы"    
    И Я добавляю ресурс в таблицу "РесурсыМашинные" с названием "Трактор колесный МТЗ-80" и видом ресурса "Машины и механизмы" норма "1.5" ценой "300"
    И Я добавляю ресурс в таблицу "РесурсыМашинные" с названием "Бульдозеры, 79 кВт (108 л.с.)" и видом ресурса "Машины и механизмы" норма "2.5" ценой "100"
    И пауза 1
    И Я добавляю период с "01.04.2019" по "20.04.2019" объемом "200,000000"
    И пауза 1
    И Я добавляю период с "01.04.2020" по "20.04.2020" объемом "200,000000"
    И пауза 1
    И Я добавляю период с "01.04.2021" по "20.04.2021" объемом "200,000000"
    И в таблице "РаботыПериод" я завершаю редактирование строки

    И в таблице "РаботыДЗ" я нажимаю на кнопку 'Пересчет'
    И в таблице "РаботыДЗ" я перехожу к строке:
    | 'WBS'            |
    | 'Уровень итогов' |
    И в таблице "РаботыДЗ" поле с именем "РаботыДЗСтоимостьПрямыхЗатрат" имеет значение "980 000,00"
    И я нажимаю на кнопку с именем "ФормаКнопкаПровестиИЗакрыть"
    Тогда не появилось окно предупреждения системы
    Тогда открылось окно 'Бюджет проекта переменных затрат'

Распред ведомость
    И я активизирую окно "Распределительная ведомость"
    И я нажимаю на кнопку с именем 'ФормаСоздать'
    Тогда открылось окно 'Распределительная ведомость (создание)'
    И я перехожу к закладке "Распределение WBS"
    И в таблице "РаботыДЗ" я нажимаю на кнопку 'Заполнить работы'
    Затем Если появилось окно диалога я нажимаю на кнопку 'Да'
    И в таблице "РаботыДЗ" я нажимаю на кнопку с именем 'РаботыУстановитьПоДокументуДЗ'
    Тогда открылось окно 'Введите подразделение'
    И в таблице "Список" я перехожу к строке:
    | 'Наименование' |
    | 'Холдинг 1'    |
    И я нажимаю на кнопку с именем 'ФормаВыбрать'
    Тогда открылось окно 'Распределительная ведомость (создание) *'
    И я нажимаю на кнопку 'Провести и закрыть'
    И я жду закрытия окна 'Распределительная ведомость (создание) *' в течение 20 секунд
    Тогда открылось окно 'Распределительная ведомость'

Учет работ
    И я активизирую окно "Учет выполненных объемов работ"
    И я нажимаю на кнопку с именем 'ФормаСоздать'
    Тогда открылось окно 'Учет выполненных объемов работ (создание)'
    И из выпадающего списка с именем "Проект" я выбираю точное значение '#3785 - Корректировка фактических опер. данных'
    И в поле с именем 'НачалоПериода' я ввожу текст '01.04.2019'
    И я перехожу к закладке с именем "ГруппаРаботы"
    И в таблице "РаботыТЧ" я нажимаю на кнопку с именем 'РаботыТЧВыбратьРаботуУГПР'
    Тогда открылось окно 'WBS и работы проекта: Форма выбора элемента WBS'    
    И в таблице "ДеревоWBS" я перехожу к строке:
    | 'Вид работы'         | 'Исполнитель' | 'Код WBS' | 'Объем'   |
    | 'Работа на 2019 год' | 'Холдинг 1'   | '19-19'   | '200,000' |
    И в таблице "ДеревоWBS" я активизирую поле с именем "ДеревоWBSВидРаботы"
    И в таблице "ДеревоWBS" я выбираю текущую строку
    Тогда открылось окно 'Учет выполненных объемов работ (создание) *'

    И в таблице "РаботыТЧ" я нажимаю на кнопку с именем 'РаботыТЧВыбратьРаботуУГПР'
    Тогда открылось окно 'WBS и работы проекта: Форма выбора элемента WBS'
    И в таблице "ДеревоWBS" я перехожу к строке:
    | 'Вид работы'          | 'Исполнитель' | 'Код WBS' | 'Объем'   |
    | 'Работа на 2019-2021' | 'Холдинг 1'   | '19-21'   | '600,000' |
    И в таблице "ДеревоWBS" я активизирую поле с именем "ДеревоWBSВидРаботы"
    И в таблице "ДеревоWBS" я выбираю текущую строку
    Тогда открылось окно 'Учет выполненных объемов работ (создание) *'

    И в таблице "РаботыТЧ" я перехожу к строке:
    | 'WBS'            | 'Вид работы'          | 'Исполнитель' |
    | 'Уровень итогов' | 'Работа на 2019 год'  | 'Холдинг 1'   |
    И в таблице "РаботыТЧ" в поле с именем 'РаботыТЧОбъемРаботыПлан' я ввожу текст '200,000000'
    И в таблице "РаботыТЧ" в поле с именем 'РаботыТЧОбъемРаботы' я ввожу текст '200,000000'
    И в таблице "РаботыТЧ" в поле с именем 'РаботыТЧПериод' я ввожу текст '01.04.2019'
    И в таблице "РаботыТЧ" я завершаю редактирование строки

    
    И в таблице "РаботыТЧ" я перехожу к строке:
    | 'WBS'            | 'Вид работы'          | 'Исполнитель' |
    | 'Уровень итогов' | 'Работа на 2019-2021'  | 'Холдинг 1'   |
    И в таблице "РаботыТЧ" в поле с именем 'РаботыТЧОбъемРаботыПлан' я ввожу текст '200,000000'
    И в таблице "РаботыТЧ" в поле с именем 'РаботыТЧОбъемРаботы' я ввожу текст '200,000000'
    И в таблице "РаботыТЧ" в поле с именем 'РаботыТЧПериод' я ввожу текст '01.04.2019'
    И в таблице "РаботыТЧ" я завершаю редактирование строки

    И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
    И я жду закрытия окна 'Учет выполненных объемов работ (создание) *' в течение 20 секунд

Учет материалов
    И я активизирую окно "Учет расхода материалов"
    И я нажимаю на кнопку с именем 'ФормаСоздать'
    Тогда открылось окно 'Учет расхода материалов (создание) *'
    И из выпадающего списка с именем "Проект" я выбираю точное значение '#3785 - Корректировка фактических опер. данных'
    И в поле с именем 'НачалоПериода' я ввожу текст '01.04.2019'
    И я перехожу к закладке с именем "СтраницаМатериалы"

    И в таблице "РесурсыМатериалы" я нажимаю на кнопку с именем 'РесурсыМатериалы_ВыбратьРаботуИзУГПР'
    Тогда открылось окно 'WBS и работы проекта: Форма выбора элемента WBS'
    И в таблице "ДеревоWBS" я перехожу к строке:
    | 'Вид работы'         | 'Исполнитель' | 'Код WBS' | 'Объем'   |
    | 'Работа на 2019 год' | 'Холдинг 1'   | '19-19'   | '200,000' |
    И в таблице "ДеревоWBS" я нажимаю на кнопку с именем 'ДеревоWBSКнопка1'
    И в таблице "РесурсыМатериалы" я нажимаю на кнопку с именем 'РесурсыМатериалы_ВыбратьРаботуИзУГПР'
    Тогда открылось окно 'WBS и работы проекта: Форма выбора элемента WBS'
    И в таблице "ДеревоWBS" я перехожу к строке:
    | 'Вид работы'         | 'Исполнитель' | 'Код WBS' | 'Объем'   |
    | 'Работа на 2019 год' | 'Холдинг 1'   | '19-19'   | '200,000' |
    И в таблице "ДеревоWBS" я нажимаю на кнопку с именем 'ДеревоWBSКнопка1'
    
    И в таблице "РесурсыМатериалы" я нажимаю на кнопку с именем 'РесурсыМатериалы_ВыбратьРаботуИзУГПР'
    Тогда открылось окно 'WBS и работы проекта: Форма выбора элемента WBS'
    И в таблице "ДеревоWBS" я перехожу к строке:
    | 'Вид работы'         | 'Исполнитель' | 'Код WBS' | 'Объем'   |
    | 'Работа на 2019-2021' | 'Холдинг 1'   | '19-21'   | '600,000' |
    И в таблице "ДеревоWBS" я нажимаю на кнопку с именем 'ДеревоWBSКнопка1'
    И в таблице "РесурсыМатериалы" я нажимаю на кнопку с именем 'РесурсыМатериалы_ВыбратьРаботуИзУГПР'
    Тогда открылось окно 'WBS и работы проекта: Форма выбора элемента WBS'
    И в таблице "ДеревоWBS" я перехожу к строке:
    | 'Вид работы'         | 'Исполнитель' | 'Код WBS' | 'Объем'   |
    | 'Работа на 2019-2021' | 'Холдинг 1'   | '19-21'   | '600,000' |
    И в таблице "ДеревоWBS" я нажимаю на кнопку с именем 'ДеревоWBSКнопка1'

    Тогда открылось окно 'Учет расхода материалов (создание) *'
    И в таблице "РесурсыМатериалы" я перехожу к строке:
    | 'Вид работы'             | 'Исполнитель' | 'Ресурс' |
    | 'Работа на 2019 год, шт' | 'Холдинг 1'   | ''       |

    И в таблице "РесурсыМатериалы" из выпадающего списка с именем "РесурсыМатериалыРесурс" я выбираю по строке 'Щебень'
    И в таблице "РесурсыМатериалы" из выпадающего списка с именем "РесурсыМатериалыНоменклатура" я выбираю по строке 'Щебень 5-10 (шидерты)'
    И в таблице "РесурсыМатериалы" в поле с именем 'РесурсыМатериалыКоэффициент' я ввожу текст '1'
    И в таблице "РесурсыМатериалы" в поле с именем 'РесурсыМатериалыКоличествоРесурса' я ввожу текст '100,000000'
    И в таблице "РесурсыМатериалы" из выпадающего списка с именем "РесурсыМатериалыПоставщик" я выбираю по строке 'АБК Бетон ТОО'
    И в таблице "РесурсыМатериалы" я активизирую поле с именем "РесурсыМатериалыПричинаОтклонения"
    И в таблице "РесурсыМатериалы" я выбираю текущую строку
    И в таблице "РесурсыМатериалы" я нажимаю кнопку выбора у реквизита с именем "РесурсыМатериалыПричинаОтклонения"


    И я нажимаю на кнопку с именем 'ФормаСписок'
    И в таблице "Список" я перехожу к строке:
    | 'Вид причины' | 'Наименование'                  |
    | 'Перерасход'  | 'Отклонения по вине работников' |
    И в таблице "Список" я выбираю текущую строку
    Тогда открылось окно 'Учет расхода материалов (создание) *'    

    И в таблице "РесурсыМатериалы" я перехожу к строке:
    | 'Вид работы'             | 'Исполнитель' | 'Ресурс' |
    | 'Работа на 2019 год, шт' | 'Холдинг 1'   | ''       |

    И в таблице "РесурсыМатериалы" из выпадающего списка с именем "РесурсыМатериалыРесурс" я выбираю по строке 'Бетон тяжелый класса В35 F200 W6'
    И в таблице "РесурсыМатериалы" из выпадающего списка с именем "РесурсыМатериалыНоменклатура" я выбираю по строке 'Бетон гидротехнический ГОСТ 7473-2010'
    И в таблице "РесурсыМатериалы" в поле с именем 'РесурсыМатериалыКоэффициент' я ввожу текст '1'
    И в таблице "РесурсыМатериалы" в поле с именем 'РесурсыМатериалыКоличествоРесурса' я ввожу текст '115,000000'
    И в таблице "РесурсыМатериалы" из выпадающего списка с именем "РесурсыМатериалыПоставщик" я выбираю по строке 'АБК Бетон ТОО'
    И в таблице "РесурсыМатериалы" я активизирую поле с именем "РесурсыМатериалыПричинаОтклонения"
    И в таблице "РесурсыМатериалы" я выбираю текущую строку
    И в таблице "РесурсыМатериалы" я нажимаю кнопку выбора у реквизита с именем "РесурсыМатериалыПричинаОтклонения"
    
    И в таблице "Список" я перехожу к строке:
    | 'Вид причины' | 'Наименование'                  |
    | 'Перерасход'  | 'Отклонения по вине работников' |
    И в таблице "Список" я выбираю текущую строку
    Тогда открылось окно 'Учет расхода материалов (создание) *'

    Тогда открылось окно 'Учет расхода материалов (создание) *'
    И в таблице "РесурсыМатериалы" я перехожу к строке:
    | 'Вид работы'              | 'Исполнитель' | 'Ресурс' |
    | 'Работа на 2019-2021, шт' | 'Холдинг 1'   | ''       |

    И в таблице "РесурсыМатериалы" из выпадающего списка с именем "РесурсыМатериалыРесурс" я выбираю по строке 'Щебень'
    И в таблице "РесурсыМатериалы" из выпадающего списка с именем "РесурсыМатериалыНоменклатура" я выбираю по строке 'Щебень 5-10 (шидерты)'
    И в таблице "РесурсыМатериалы" в поле с именем 'РесурсыМатериалыКоэффициент' я ввожу текст '1'
    И в таблице "РесурсыМатериалы" в поле с именем 'РесурсыМатериалыКоличествоРесурса' я ввожу текст '100,000000'
    И в таблице "РесурсыМатериалы" из выпадающего списка с именем "РесурсыМатериалыПоставщик" я выбираю по строке 'АБК Бетон ТОО'
    И в таблице "РесурсыМатериалы" я активизирую поле с именем "РесурсыМатериалыПричинаОтклонения"
    И в таблице "РесурсыМатериалы" я выбираю текущую строку
    И в таблице "РесурсыМатериалы" я нажимаю кнопку выбора у реквизита с именем "РесурсыМатериалыПричинаОтклонения"
    
    И я нажимаю на кнопку с именем 'ФормаСписок'
    И в таблице "Список" я перехожу к строке:
    | 'Вид причины' | 'Наименование'                  |
    | 'Перерасход'  | 'Отклонения по вине работников' |
    И в таблице "Список" я выбираю текущую строку
    Тогда открылось окно 'Учет расхода материалов (создание) *'    

    И в таблице "РесурсыМатериалы" я перехожу к строке:
    | 'Вид работы'              | 'Исполнитель' | 'Ресурс' |
    | 'Работа на 2019-2021, шт' | 'Холдинг 1'   | ''       |

    И в таблице "РесурсыМатериалы" из выпадающего списка с именем "РесурсыМатериалыРесурс" я выбираю по строке 'Бетон тяжелый класса В35 F200 W6'
    И в таблице "РесурсыМатериалы" из выпадающего списка с именем "РесурсыМатериалыНоменклатура" я выбираю по строке 'Бетон гидротехнический ГОСТ 7473-2010'
    И в таблице "РесурсыМатериалы" в поле с именем 'РесурсыМатериалыКоэффициент' я ввожу текст '1'
    И в таблице "РесурсыМатериалы" в поле с именем 'РесурсыМатериалыКоличествоРесурса' я ввожу текст '110,000000'
    И в таблице "РесурсыМатериалы" из выпадающего списка с именем "РесурсыМатериалыПоставщик" я выбираю по строке 'АБК Бетон ТОО'
    И в таблице "РесурсыМатериалы" я активизирую поле с именем "РесурсыМатериалыПричинаОтклонения"
    И в таблице "РесурсыМатериалы" я выбираю текущую строку
    И в таблице "РесурсыМатериалы" я нажимаю кнопку выбора у реквизита с именем "РесурсыМатериалыПричинаОтклонения"
    
    И в таблице "Список" я перехожу к строке:
    | 'Вид причины' | 'Наименование'                  |
    | 'Перерасход'  | 'Отклонения по вине работников' |
    И в таблице "Список" я выбираю текущую строку
    Тогда открылось окно 'Учет расхода материалов (создание) *'

    И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
    И я жду закрытия окна 'Учет расхода материалов (создание) *' в течение 20 секунд

Учет ресурсов за 2019 год
    И я активизирую окно "Учет работы сотрудников и техники"    
    Когда открылось окно 'Учет работы сотрудников и техники'
    И я нажимаю на кнопку с именем 'ФормаСоздать'
    Тогда открылось окно 'Учет работы сотрудников и техники (создание)'
    И из выпадающего списка с именем "Проект" я выбираю точное значение '#3785 - Корректировка фактических опер. данных'
    И в поле с именем 'НачалоПериода' я ввожу текст '01.04.2019'
    И я перехожу к закладке с именем "СтраницаГруппаТЧ"

    И в таблице "Должности" я нажимаю на кнопку с именем 'Должности_ВыбратьИзУГПР'
    Тогда открылось окно 'WBS и работы проекта: Форма выбора элемента WBS'
    И в таблице "ДеревоWBS" я перехожу к строке:
    | 'Вид работы'         | 'Исполнитель' | 'Код WBS' | 'Объем'   |
    | 'Работа на 2019 год' | 'Холдинг 1'   | '19-19'   | '200,000' |
    И в таблице "ДеревоWBS" я нажимаю на кнопку с именем 'ДеревоWBSКнопка1'
    Тогда открылось окно 'Учет работы сотрудников и техники (создание) *'
    И в таблице "Должности" я перехожу к строке:
    | 'Вид работы'         | 'Ресурс' |
    | 'Работа на 2019 год' | ''       |
    И в таблице "Должности" в поле с именем 'ДолжностиДатаФакт' я ввожу текст '01.04.2019'
    И в таблице "Должности" в поле с именем 'ДолжностиКоличествоФакт' я ввожу текст '10'
    И в таблице "Должности" в поле с именем 'ДолжностиЧасовФактЧЧММ' я ввожу текст '10:00:00'
    И в таблице "Должности" из выпадающего списка с именем "ДолжностиРесурс" я выбираю по строке 'Затраты труда рабочих-строителей'
    И в таблице "Должности" я нажимаю кнопку выбора у реквизита с именем "ДолжностиДолжность"
    И Я создаю элемент текущего справочника с названием "Разнорабочий"  "Должности УСП"
    И в таблице "Список" я выбираю текущую строку

    И в таблице "Должности" я нажимаю на кнопку с именем 'Должности_ВыбратьИзУГПР'
    Тогда открылось окно 'WBS и работы проекта: Форма выбора элемента WBS'
    И в таблице "ДеревоWBS" я перехожу к строке:
    | 'Вид работы'          | 'Исполнитель' | 'Код WBS' | 'Объем'   |
    | 'Работа на 2019-2021' | 'Холдинг 1'   | '19-21'   | '600,000' |
    И в таблице "ДеревоWBS" я нажимаю на кнопку с именем 'ДеревоWBSКнопка1'
    Тогда открылось окно 'Учет работы сотрудников и техники (создание) *'
    И в таблице "Должности" я перехожу к строке:
    | 'Вид работы'          | 'Ресурс' |
    | 'Работа на 2019-2021' | ''       |
    И в таблице "Должности" в поле с именем 'ДолжностиДатаФакт' я ввожу текст '01.04.2019'
    И в таблице "Должности" в поле с именем 'ДолжностиКоличествоФакт' я ввожу текст '10'
    И в таблице "Должности" в поле с именем 'ДолжностиЧасовФактЧЧММ' я ввожу текст '10:00:00'
    И в таблице "Должности" из выпадающего списка с именем "ДолжностиРесурс" я выбираю по строке 'Затраты труда рабочих-строителей'
    И в таблице "Должности" я нажимаю кнопку выбора у реквизита с именем "ДолжностиДолжность"
    И Я создаю элемент текущего справочника с названием "Разнорабочий"  "Должности УСП"
    И в таблице "Список" я выбираю текущую строку


    И в таблице "Должности" я нажимаю на кнопку с именем 'ДолжностиЗаполнитьЦеныВсе'
    И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
    И я жду закрытия окна 'Учет работы сотрудников и техники (создание) *' в течение 20 секунд

