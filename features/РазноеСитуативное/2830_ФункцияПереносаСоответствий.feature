﻿#language: ru
@tree


Функционал:  Как пользователь УСП я хочу функцию переноса соответствий между версиями

 
  
Сценарий: Я создаю простые тестовые данные

Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
И я удаляю все элементы Справочника "ИНАГРО_Версия" с наименованием "2830 Перенос соответствий внешняя"
И я удаляю все элементы Справочника "ИНАГРО_Версия" с наименованием "2830 Перенос соответствий вручную"
И я удаляю все элементы Справочника "ИНАГРО_Версия" с наименованием "2830 Перенос соответствий приемник"

Создаю простой УГПР	
    Дано Я открываю основную форму списка документа 'ИНАГРО_УГПР'
    Тогда открылось окно 'Управленческий график производства работ'
    И Я устанавливаю фильтр на список
    | Проект | Равно | "Автотестирование загрузки 27 улицы" |
    | Пометка удаления | Равно | Нет |
    И я нажимаю на кнопку с именем 'ФормаСоздать'
    Тогда я жду открытия окна 'Управленческий график производства работ (создание)' в течение 10 секунд
    И из выпадающего списка "Проект" я выбираю точное значение 'Автотестирование загрузки 27 улицы'
    И я выбираю значение реквизита "Версия" из формы списка    
    И Я создаю версию проекта с названием "2830 Перенос соответствий вручную" 
    И в таблице "Список" я выбираю текущую строку
    Тогда элемент формы "Версия" стал равен шаблону '(*) 2830 Перенос соответствий вручную'
    И я нажимаю на кнопку открытия поля "Версия"
    И из выпадающего списка "Вид версии" я выбираю точное значение 'Рабочая'
    И я нажимаю на кнопку 'Записать и закрыть'
    И я жду закрытия окна 'Версии проектов *' в течение 20 секунд
    Тогда элемент формы "Организация" стал равен 'Автотестирование загрузки 27 улицы'
    И я перехожу к закладке "Дерево работ"


Структура сценария:  Я создаю структуру WBS тестового УГПР

Создаю тестовую ВБС
    Когда в таблице "РаботыДЗ" я нажимаю на кнопку <Кнопка>
    И Я создаю элемент  WBS  проекта с названием <НазваниеВБС>
    И в таблице "Список" я выбираю текущую строку
    Тогда открылось окно 'Управленческий график производства работ (создание) *'
    И в таблице "РаботыДЗ" в поле 'Код WBS' я ввожу текст <КодыWBS>
    И в таблице "РаботыДЗ" я завершаю редактирование строки

Примеры:
|Кнопка         | НазваниеВБС       |КодыWBS|
|'Уровень'      | 'Итоги'           |'0'|
|'Под уровень'  | 'Конструктив 1'   |'1'|
|'Уровень'      | 'Конструктив 2'   |'2'|
 

Структура сценария:  Я создаю тестовые работы в текущем УГПР

Создаю работу
    Когда в таблице "РаботыДЗ" я перехожу к строке:
    |'Код WBS'|
    |<КодРодителя>|
    И в таблице "РаботыДЗ" я нажимаю на кнопку 'Работу(ы)'  
    и Я создаю вид работ проекта с названием  <НазваниеРаботы>  и шифром <Шифр>
    И в таблице "Список" я выбираю текущую строку
    Тогда открылось окно 'Управленческий график производства работ (создание) *'
    И в таблице "РаботыДЗ" в поле 'Код WBS' я ввожу текст <Шифр>
    И в таблице "РаботыДЗ" в поле 'Объем' я ввожу текст <Объем>
    И в таблице "РаботыДЗ" я завершаю редактирование строки
    Если в таблице "РаботыДЗ" есть строка Тогда
    | 'Код WBS' |
    |  "2.2"|   
        Тогда я нажимаю на кнопку 'Провести'
        И я перехожу к закладке "Отбор"
        И я запоминаю значение поля "Номер" как "НомерДокументаТест"
    И пауза 1

Примеры:
|КодРодителя | НазваниеРаботы  |Шифр  |Объем|
|'1'         | "Работа1_1"     |"1.1" |'11'|
|'1'         | "Работа1_2"     |"1.2" |'12'|
|'1'         | "Работа1_3"     |"1.3" |'13'|
|'2'         | "Работа2_1"     |"2.1" |'21'|
|'2'         | "Работа2_2"     |"2.2" |'22'|


Сценарий: Я создаю угпр  с версией заказчика

Тогда открылось окно 'Управленческий график производства работ *'
И я нажимаю на кнопку с именем 'ФормаСкопировать'
Тогда открылось окно 'Управленческий график производства работ (создание)'
И в поле 'Комментарий' я ввожу текст ''
И я выбираю значение реквизита "Версия" из формы списка    
И Я создаю версию проекта с названием "2830 Перенос соответствий внешняя" 
И в таблице "Список" я выбираю текущую строку
Тогда элемент формы "Версия" стал равен шаблону '(*) 2830 Перенос соответствий внешняя'
И я нажимаю на кнопку открытия поля "Версия"
И из выпадающего списка "Вид версии" я выбираю точное значение 'Внешняя'
И я устанавливаю флаг 'Активная'
И я нажимаю на кнопку 'Записать и закрыть'
И я жду закрытия окна 'Версии проектов *' в течение 20 секунд
И я перехожу к закладке "Дерево работ"
И в таблице "РаботыДЗ" я нажимаю на кнопку 'Развернуть все'


Структура сценария: Я устанавливаю тестовые соответствия

Когда в таблице "РаботыДЗ" я перехожу к строке:
    |'Код WBS'|
    |<КодРодителя>|
И я перехожу к закладке "Соответствия работ"
И в таблице "СвязиВерсий" я нажимаю на кнопку с именем 'СвязиВерсийДобавить'
Тогда открылось окно 'WBS и работы проекта: Форма выбора элемента WBS'
И из выпадающего списка "Версия" я выбираю по строке '2830 Перенос соответствий вручную'
И в таблице "ДеревоWBS" я перехожу к строке:
| 'Код WBS' |
| <КодСоответствия>|
И в таблице "ДеревоWBS" я нажимаю на кнопку с именем 'ДеревоWBSКнопка1'
Тогда открылось окно 'Управленческий график производства работ (создание) *'

Примеры:
| КодРодителя | КодСоответствия |
| '1.1'       | '1.1'           |
| '1.1'       | '1.2'           |
| '1.1'       | '1.3'           |
| '1.2'       | '2.2'           |
| '1.3'       | '2.2'           |
| '2.1'       | '2.1'           |

Сценарий: Я проверяю результат установки соответствий

Когда открылось окно 'Управленческий график производства работ (создание) *'
Тогда я нажимаю на кнопку 'Провести и закрыть'
И В командном интерфейсе я выбираю 'Управление строительным производством' 'Мастер сопоставления работ версий проекта'
Тогда открылось окно 'Мастер установки соответствий между работами версий проекта: Форма мастера'
И из выпадающего списка "Проект" я выбираю по строке 'Автотестирование загрузки 27 улицы' 
И элемент формы с именем "Версия" стал равен  шаблону "(*) 2830 Перенос соответствий внешняя"
И из выпадающего списка "Рабочая версия" я выбираю по строке '2830 Перенос соответствий вручную'


Структура сценария: Я проверяю тестовые соответствия

Когда в таблице "ДеревоWBS" я перехожу к строке:
    |'Код WBS'|
    |<КодРодителя>|

И таблица "ИНАГРО_СоответствияWBS" содержит строки:
   |'Вид работы'       | 'Вид работы соответствия'|
   |<РаботаРодитель>   | <РаботаСоответствия>| 

Примеры:
| КодРодителя | КодСоответствия | РаботаРодитель |РаботаСоответствия |
| '1.1'       | '1.1'           | 'Работа1_1' | "Работа1_1" |
| '1.1'       | '1.2'           | 'Работа1_2' | "Работа1_1" |
| '1.1'       | '1.3'           | 'Работа1_3' | "Работа1_1" |
| '1.2'       | '2.2'           | 'Работа2_2' | "Работа1_2" |
| '1.3'       | '2.2'           | 'Работа2_2' | "Работа1_3" |
| '2.1'       | '2.1'           | 'Работа2_1' | "Работа2_1" |




Сценарий: Я делаю версию проекта

Дано Я открываю основную форму списка документа 'ИНАГРО_УГПР'
и Я убираю группировки в текущем списке

Делаем копию документа с версий приемником
    И в таблице "Список" я перехожу к строке по шаблону:
    #| 'Номер'| 'Проект'| 'Версия'|
    #| $НомерДокументаТест$ |  "Автотестирование загрузки 27 улицы"  | '(0) 2830 Перенос соответствий вручную' |
    | 'Проект'| 'Версия'|'Статус'|
    | "Автотестирование загрузки 27 улицы"  | '(*) 2830 Перенос соответствий вручную' |"В подготовке"| 
    И в таблице "Список" я выбираю текущую строку
    Тогда открылось окно 'Управленческий график производства работ * Перенос соответствий вручную'
    И из выпадающего списка "Статус" я выбираю точное значение 'Утвержден'
    и пауза 1
    И я закрываю текущее окно
    И в таблице "Список" я выбираю текущую строку
    И я нажимаю на кнопку "Создать версию"
    Затем Если появилось окно диалога я нажимаю на кнопку "Да"
    Тогда открылось окно 'Управленческий график производства работ *'
    И я нажимаю на кнопку открытия поля "Версия"
    И в поле 'Наименование' я ввожу текст "2830 Перенос соответствий приемник" 
    И из выпадающего списка "Вид версии" я выбираю точное значение 'Архивная'
    И я нажимаю на кнопку 'Записать и закрыть'
    И я жду закрытия окна 'Версии проектов *' в течение 20 секунд    
    Тогда элемент формы "Версия" стал равен шаблону '(*) 2830 Перенос соответствий приемник'
    И в поле 'Комментарий' я ввожу текст ''
    Тогда я нажимаю на кнопку 'Провести и закрыть'
    
Проверяем что соответствия перенеслись автоматически
    И В командном интерфейсе я выбираю 'Управление строительным производством' 'Мастер сопоставления работ версий проекта'
    Тогда открылось окно 'Мастер установки соответствий между работами версий проекта: Форма мастера'
    И из выпадающего списка "Проект" я выбираю по строке 'Автотестирование загрузки 27 улицы' 
    И элемент формы с именем "Версия" стал равен шаблону "(*) 2830 Перенос соответствий внешняя"
    И из выпадающего списка "Рабочая версия" я выбираю по строке '2830 Перенос соответствий приемник'

Структура сценария: Я проверяю перенос соответствий

Когда в таблице "ДеревоWBS" я перехожу к строке:
    |'Код WBS'|
    |<КодРодителя>|

И таблица "ИНАГРО_СоответствияWBS" содержит строки:
   |'Вид работы'       | 'Вид работы соответствия'|
   |<РаботаРодитель>   | <РаботаСоответствия>| 


Примеры:
| КодРодителя | КодСоответствия | РаботаРодитель |РаботаСоответствия |
| '1.1'       | '1.1'           | 'Работа1_1' | "Работа1_1" |
| '1.1'       | '1.2'           | 'Работа1_2' | "Работа1_1" |
| '1.1'       | '1.3'           | 'Работа1_3' | "Работа1_1" |
| '1.2'       | '2.2'           | 'Работа2_2' | "Работа1_2" |
| '1.3'       | '2.2'           | 'Работа2_2' | "Работа1_3" |
| '2.1'       | '2.1'           | 'Работа2_1' | "Работа2_1" |


Сценарий: Я делаю ручной перенос соответствий

Дано Я открываю основную форму регистра сведений "ИНАГРО_СоответствияWBS"
Когда открылось окно 'Соответствия работ версий УГПР'
И Я устанавливаю фильтр на список
| "Версия" | Равно | "2830 Перенос соответствий приемник" |
Тогда в таблице "Список" я выделяю все строки
Если в таблице "Список" количество строк "больше" 0 Тогда
    И я нажимаю на кнопку с именем 'ФормаУдалить'
    Затем Если появилось окно диалога я нажимаю на кнопку "Да"

Делаем операцию ручного переноса    
    И В командном интерфейсе я выбираю 'Управление строительным производством' '(Служ) Перенос соответствий'
    Тогда открылось окно 'Перенос соответствий в рамках проекта: Настройки и справочники'
    И из выпадающего списка "Проект" я выбираю точное значение 'Автотестирование загрузки 27 улицы'
    И из выпадающего списка "Версия источник" я выбираю по строке '2830 Перенос соответствий вручную'
    И из выпадающего списка "Версия приемник" я выбираю по строке '2830 Перенос соответствий приемник'
    И я нажимаю на кнопку 'Выполнить перенос'
    Затем я жду, что в сообщениях пользователю будет подстрока "Успешно" в течение 30 секунд
 

Сценарий: Я готовлю форму к проверке результата переноса соответствий

Допустим В командном интерфейсе я выбираю 'Управление строительным производством' 'Мастер сопоставления работ версий проекта'
Тогда открылось окно 'Мастер установки соответствий между работами версий проекта: Форма мастера'
И из выпадающего списка "Проект" я выбираю по строке 'Автотестирование загрузки 27 улицы' 
И элемент формы с именем "Версия" стал равен  шаблону "(*) 2830 Перенос соответствий внешняя"
И из выпадающего списка "Рабочая версия" я выбираю по строке '2830 Перенос соответствий вручную'


Структура сценария: Я проверяю перенос соответствий

Когда в таблице "ДеревоWBS" я перехожу к строке:
    |'Код WBS'|
    |<КодРодителя>|

И таблица "ИНАГРО_СоответствияWBS" содержит строки:
   |'Вид работы'       | 'Вид работы соответствия'|
   |<РаботаРодитель>   | <РаботаСоответствия>| 

Примеры:
| КодРодителя | КодСоответствия | РаботаРодитель |РаботаСоответствия |
| '1.1'       | '1.1'           | 'Работа1_1' | "Работа1_1" |
| '1.1'       | '1.2'           | 'Работа1_2' | "Работа1_1" |
| '1.1'       | '1.3'           | 'Работа1_3' | "Работа1_1" |
| '1.2'       | '2.2'           | 'Работа2_2' | "Работа1_2" |
| '1.3'       | '2.2'           | 'Работа2_2' | "Работа1_3" |
| '2.1'       | '2.1'           | 'Работа2_1' | "Работа2_1" |
