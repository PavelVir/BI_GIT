﻿#language: ru
@Tree

#report.epic=Документы 
#report.feature=УГПР
#report.story= Я создаю шаблон УГПР разными способами

Функционал: Как пользователь УСП я хочу иметь возможность обозначать документ УГПР как шаблон и создавать на его основании другие УГПРы

Контекст: 

    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
     
Сценарий: Я создаю шаблон УГПР на основании существующей сметы

Дано Я открываю основную форму списка документа "ИНАГРО_УГПР"
И Я очищаю фильтр на форме списка
И из выпадающего списка с именем "КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Значение" я выбираю по строке 'Автотестирование загрузки 27 улицы'    
Когда Я убираю группировки в текущем списке
И в таблице "Список" я перехожу к строке:
| 'Комментарий'                         | 'Проект'                             | 
| 'Загружено из файла, шифр сметы: 4-1' | 'Автотестирование загрузки 27 улицы' |         
И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюСкопировать' на элементе формы с именем "Список"   
Тогда открылось окно 'Управленческий график производства работ (создание)'
И я перехожу к закладке 'Дерево работ'
И в таблице "РаботыДЗ" я нажимаю на кнопку с именем 'РаботыДЗРазвернутьВсе'
И я запоминаю количество строк таблицы "РаботыДЗ" как "КвоСтрокИсходное"
И я перехожу к закладке 'Основное'
И элемент формы с именем "Шаблон" присутствует на форме
И я устанавливаю флаг с именем "Шаблон" 
И флаг с именем "Шаблон" равен "Истина"
#И элемент формы с именем "ФормаСоздатьПоШаблону" присутствует на форме
И я создаю проект для шаблона  
    И из выпадающего списка "Проект" я выбираю по строке 'Шаблон сметы 4-1'  
      
И я создаю версию для шаблона
    И из выпадающего списка "Версия" я выбираю по строке 'Шаблон' 
 
И я проверяю изменение владельца вида работ 
    И я перехожу к закладке 'Дерево работ'
    И количество строк таблицы "РаботыДЗ" равно переменной "КвоСтрокИсходное"
    И в таблице "РаботыДЗ" я перехожу к первой строке   
    И в таблице "РаботыДЗ" я активизирую поле с именем "РаботыДЗВидРаботы"
    И в таблице "РаботыДЗ" я выбираю текущую строку
    Тогда открылось окно '* (WBS (Cтруктурная декомпозиция работ))'
    И элемент формы "Проект" стал равен 'Шаблон сметы 4-1'
    И я закрываю текущее окно
    И в таблице "РаботыДЗ" я нажимаю на кнопку 'Развернуть все'
    И в таблице 'РаботыДЗ' я перехожу к последней строке
    #И я активизирую поле "WBS"
    И в таблице "РаботыДЗ" я активизирую поле с именем "РаботыДЗВидРаботы"
    И в таблице "РаботыДЗ" я выбираю текущую строку
    Тогда открылось окно '* (Виды работ (проект))'
    И элемент формы "Владелец" стал равен 'Шаблон сметы 4-1'
    И я закрываю текущее окно
    И я перехожу к закладке "Трудовые ресурсы"
    И в таблице "РесурсыТрудовые" я нажимаю на кнопку с именем 'РаботыДЗОтключитьОтборПоДереву2'
    И пауза 2
    И в таблице "РесурсыТрудовые" я перехожу к первой строке
    И в таблице "РесурсыТрудовые" я активизирую поле с именем "РесурсыТрудовыеВидРаботы"
    И в таблице "РесурсыТрудовые" я выбираю текущую строку
    Тогда открылось окно '* (Виды работ (проект))'
    И элемент формы "Владелец" стал равен 'Шаблон сметы 4-1'
    И я закрываю текущее окно


Сценарий: Я создаю шаблон УГПР как новый УГПР

Дано Я открываю основную форму списка документа "ИНАГРО_УГПР"
Тогда открылось окно 'Управленческий график производства работ'
И Я очищаю фильтр на форме списка
И я нажимаю на кнопку с именем 'ФормаСоздать'
Тогда я жду открытия окна 'Управленческий график производства работ (создание)' в течение 10 секунд
И из выпадающего списка "Проект" я выбираю по строке 'Шаблон сметы 4-1'
И из выпадающего списка "Версия" я выбираю по строке 'Шаблон'
И я перехожу к закладке "Дерево работ"
И я создаю структуру WBS
    И в таблице "РаботыДЗ" я нажимаю на кнопку 'Уровень'
    И Я очищаю фильтр на форме списка
    Тогда открылось окно 'WBS (Cтруктурная декомпозиция работ)'
    И в таблице "Список" я выбираю текущую строку
    Тогда открылось окно 'Управленческий график производства работ (создание) *'
    И в таблице "РаботыДЗ" я нажимаю на кнопку 'Под-уровень'
    Тогда открылось окно 'WBS (Cтруктурная декомпозиция работ)'
    И в таблице "Список" я перехожу к строке:
    | 'Проект'           | 'Наименование' | 'Уровень сметы' |
    | 'Шаблон сметы 4-1' | 'Демонтаж'     | 'Раздел сметы'  |
    И в таблице "Список" я выбираю текущую строку
    Тогда открылось окно 'Управленческий график производства работ (создание) *'
    И в таблице "РаботыДЗ" я разворачиваю текущую строку
    И в таблице "РаботыДЗ" я завершаю редактирование строки
    И в таблице "РаботыДЗ" я нажимаю на кнопку 'Уровень'
    Тогда открылось окно 'WBS (Cтруктурная декомпозиция работ)'
    И в таблице "Список" я перехожу к строке:
    | 'Проект'           | 'Наименование' | 'Уровень сметы' |
    | 'Шаблон сметы 4-1' | 'Засыпка'      | 'Раздел сметы'  |
    И в таблице "Список" я выбираю текущую строку
    Тогда открылось окно 'Управленческий график производства работ (создание) *'
    И в таблице "РаботыДЗ" я завершаю редактирование строки

И я создаю работы
    И в таблице "РаботыДЗ" я нажимаю на кнопку 'Работу(ы)'
    Тогда открылось окно 'Виды работ (проект)'
    И Я очищаю фильтр на форме списка
    И в таблице "Список" я перехожу к строке:
    | 'Проект'           | 'Шифр'           |
    | 'Шаблон сметы 4-1' | '11-330105-1101' |
    И я нажимаю на кнопку с именем 'ФормаИзменить'
    Тогда открылось окно '* (Виды работ (проект))'
    И из выпадающего списка "Вид работ (класс)" я выбираю по строке "Забивка заземлителей вручную на глубину до 3 м"
    И из выпадающего списка "Основная единица" я выбираю точное значение 'шт'
    И я нажимаю на кнопку 'Записать и закрыть'
    И в таблице "Список" я активизирую поле с именем "ВидРабот"
    И в таблице "Список" поле с именем "ВидРабот" имеет значение "Забивка заземлителей вручную на глубину до 3 м"
    И в таблице "Список" я выбираю текущую строку
    Тогда открылось окно 'Управленческий график производства работ (создание) *'
    И пауза 2
    И в таблице "РаботыДЗ" я активизирую поле с именем "РаботыДЗОбъем"
    И в таблице "РаботыДЗ" в поле 'Объем' я ввожу текст '1,000000'
    И в таблице "РаботыДЗ" я завершаю редактирование строки

Проверка заполения ресурсов по нормативному сборнику
    И я перехожу к закладке "Материалы"
    Тогда в таблице "РесурсыМатериалы" количество строк "равно" 1
    И в таблице "РесурсыМатериалы" текущая строка равна:
    | "Норма расхода" | "Количество" |
    | "0,005000" | "0,005000" |
    И я перехожу к закладке "Трудовые ресурсы"
    Тогда в таблице "РесурсыТрудовые" количество строк "равно" 2
    Тогда таблица "РесурсыТрудовые" стала равной:
    | 'Ресурс'                                                                           | 'Вид работы'                                     | 'Количество' | 'Вид ресурса'           | 'Норма расхода' |
    | 'Работы по забивке заземлителей вручную на глубину до 3 м (затраты труда рабочих)' | 'Забивка заземлителей вручную на глубину до 3 м' | '0,670000'   | 'Затраты труда рабочих' | '0,670000'      |
    | 'Затраты труда машинистов'                                                         | 'Забивка заземлителей вручную на глубину до 3 м' | '0,040000'   | 'Затраты труда рабочих' | '0,040000'      |
    И я перехожу к закладке "Машинные ресурсы"
    Тогда в таблице "РесурсыМашинные" количество строк "равно" 2
    Тогда таблица "РесурсыМашинные" стала равной:
    | 'Вид работы'                                              | 'Ресурс'                                                                                          | 'Вид ресурса'        | 'Норма расхода' | 'Количество в ед.изм.' |
    | 'Забивка заземлителей вручную на глубину до 3 м' | 'Прочие машины для расценки E33-26-2'                                                             | 'Машины и механизмы' | '24,660000'     | '24,660000'            |
    | 'Забивка заземлителей вручную на глубину до 3 м' | 'Агрегаты сварочные передвижные с номинальным сварочным током 250-400 А, с бензиновым двигателем' | 'Машины и механизмы' | '0,120000'      | '0,120000'             |



    
  
Проверка перезаполнения ресурсов при изменении вида работы
    И в таблице "РаботыДЗ" я перехожу к строке:
    |'Шифр позиции норматива'|
    |'11-330105-1101'|
    И в таблице "РаботыДЗ" я выбираю текущую строку
    И в таблице "РаботыДЗ" я нажимаю кнопку выбора у реквизита "WBS"
    Тогда открылось окно 'Выбор типа данных'
    И я нажимаю на кнопку 'ОК'
    Тогда открылось окно 'Виды работ (проект)'
    И в таблице "Список" я перехожу к строке:
    | 'Шифр'  |
    | '11-010205-0302'  |
    И в таблице "Список" я выбираю текущую строку
    Тогда открылось окно 'Управленческий график производства работ (создание) *'
    И в таблице "РаботыДЗ" я завершаю редактирование строки
    И в таблице "РаботыДЗ" я нажимаю кнопку выбора у реквизита "WBS"
    Тогда открылось окно 'Выбор типа данных'
    И я нажимаю на кнопку 'ОК'
    Тогда открылось окно 'Виды работ (проект)'
    И в таблице "Список" я перехожу к строке:
    | 'Проект'           | 'Шифр'           |
    | 'Шаблон сметы 4-1' | '11-330105-1101' |
    И в таблице "Список" я выбираю текущую строку
    Затем Если появилось окно диалога я нажимаю на кнопку "Да"
    Тогда открылось окно 'Управленческий график производства работ (создание) *'

Проверка заполения ресурсов по нормативному сборнику
    И я перехожу к закладке "Материалы"
    Тогда в таблице "РесурсыМатериалы" количество строк "равно" 1
    И в таблице "РесурсыМатериалы" текущая строка равна:
    | "Норма расхода" | "Количество" |
    | "0,005000" | "0,005000" |
    И я перехожу к закладке "Трудовые ресурсы"
    Тогда в таблице "РесурсыТрудовые" количество строк "равно" 2
    Тогда таблица "РесурсыТрудовые" стала равной:
    | 'Ресурс'                                                                           | 'Вид работы'                                              | 'Количество' | 'Вид ресурса'           | 'Норма расхода' |
    | 'Работы по забивке заземлителей вручную на глубину до 3 м (затраты труда рабочих)' | 'Забивка заземлителей вручную на глубину до 3 м' | '0,670000'   | 'Затраты труда рабочих' | '0,670000'      |
    | 'Затраты труда машинистов'                                                         | 'Забивка заземлителей вручную на глубину до 3 м' | '0,040000'   | 'Затраты труда рабочих' | '0,040000'      |
    И я перехожу к закладке "Машинные ресурсы"
    Тогда в таблице "РесурсыМашинные" количество строк "равно" 2
    Тогда таблица "РесурсыМашинные" стала равной:
    | 'Вид работы'                                              | 'Ресурс'                                                                                          | 'Вид ресурса'        | 'Норма расхода' | 'Количество в ед.изм.' |
    | 'Забивка заземлителей вручную на глубину до 3 м' | 'Прочие машины для расценки E33-26-2'                                                             | 'Машины и механизмы' | '24,660000'     | '24,660000'            |
    | 'Забивка заземлителей вручную на глубину до 3 м' | 'Агрегаты сварочные передвижные с номинальным сварочным током 250-400 А, с бензиновым двигателем' | 'Машины и механизмы' | '0,120000'      | '0,120000'             |

  
Сценарий: Я создаю УГПР на основании существующего шаблона
    
Выбираю шаблон и инициирую создание
    Когда В панели разделов я выбираю 'Управление строительным производством'
    И Я нажимаю кнопку командного интерфейса 'Управленческий график производства работ'
    Тогда открылось окно 'Управленческий график производства работ'
    И я меняю значение переключателя 'ВидДокумента' на 'Шаблоны'
    Когда Я убираю группировки в текущем списке
    Тогда открылось окно 'Управленческий график производства работ'
    И в таблице "Список" я выбираю текущую строку
    Тогда открылось окно 'Управленческий график производства работ *'
    И я нажимаю на кнопку 'Создать по шаблону'    
    И в таблице "Список" я перехожу к строке:
    | 'Наименование'                 | 'Организация'               |
    | '!Простой проект для проверки' | 'Bi Civil Construction ТОО' |
    И в таблице "Список" я выбираю текущую строку
    Тогда открылось окно 'Управленческий график производства работ *'
    И В панели открытых я выбираю 'Управленческий график производства работ (создание)'
    Тогда открылось окно 'Управленческий график производства работ (создание)'
    И я перехожу к закладке "Дерево работ"
    И в таблице "РаботыДЗ" я перехожу к первой строке
    И в таблице "РаботыДЗ" я нажимаю на кнопку 'Свернуть все'    
    И в таблице "РаботыДЗ" я перехожу к первой строке
    Тогда таблица "РаботыДЗ" стала равной:
    | 'WBS'                       | 'Сметная прибыль' | 'Объем' | 'Стоимость прямых затрат' | 'НР 1 уровня'   | 'НР 2 уровня'   | 'Индексация' | 'Себестоимость всего' | 'Маржа'           |
    | 'Наружное освещение'        | '19 714 462,77'   | ''      | '225 919 350,69'          | '10 578 514,00' | '9 932 921,00'  | ''           | '266 145 248,46'      | '-266 145 248,46' |

#3713
Проверим перенос связей  по задаче 3713 (При создании из шаблона копировать связи работ)
    И в таблице "РаботыДЗ" я нажимаю на кнопку 'Развернуть все'
    И я перехожу к закладке "Взаимосвязи"
    И в таблице "РаботыДЗ" я перехожу к строке:
    | 'Код WBS' |
    | '5'       |
    #Время на отборы
    И пауза 2 
    Тогда таблица "ВзаимосвязиРаботПред" стала равной:
    | 'Тип связи'             | 'Предшествующая работа'                                                                                       | 'Последующая работа'                                                                                                      |
    | 'Окончание-начало (ОН)' | 'Грунты 1 группы. Разработка с погрузкой на автомобили-самосвалы экскаваторами с ковшом вместимостью 0,25 м3' | 'Перевозка строительных грузов самосвалами вне карьеров. Грузоподъемность 20 т. Класс груза 1. Расстояние перевозки 3 км' |
    И в таблице "РаботыДЗ" я перехожу к строке:
    | 'Код WBS' |
    | '6'       |
    #Время на отборы
    И пауза 2 
    Тогда таблица "ВзаимосвязиРаботПред" стала равной:
    | 'Тип связи'             | 'Предшествующая работа'                                                                                                   | 'Последующая работа'                  |
    | 'Окончание-начало (ОН)' | 'Перевозка строительных грузов самосвалами вне карьеров. Грузоподъемность 20 т. Класс груза 1. Расстояние перевозки 3 км' | 'Грунты 2-3 группы. Работа на отвале' |




