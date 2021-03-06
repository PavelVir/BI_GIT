﻿#language: ru
@tree

#report.epic=Документы
#report.feature=УГПР
#report.story=УГПР создание структуры из шаблона

Функционал: Открываю тестовый УГПР и проверяю создание структуры из шаблона

Как пользователь УГПР
Я хочу иметь возможность выбирать структуру из заданных шаблонов структуры
Чтобы управлять наполнеинем графика и оно было стандартизировано

Контекст:
	Дано  Я открыл сеанс TestClient от имени "iRobot" с паролем "Kamala$oft" или подключаю уже существующий
	И я закрыл все окна клиентского приложения

Сценарий: Я открываю тестовый УГПР и проверяю создание структуры из шаблона

Открываем тестовый УГПР
	Допустим Я открываю основную форму списка документа "ИНАГРО_УГПР"
	И из выпадающего списка с именем "КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Значение" я выбираю по строке '3702'
	и Я убираю группировки в текущем списке
	И в таблице "Список" я перехожу к строке по шаблону:
		| 'Версия'      | 'Проект'                                           | 
		| '(*) Рабочая' |  '3702 - создание структуры из шаблона' | 
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Бюджет проекта переменных затрат * от *'
	
Проверям что нет доступа без признака 
	Допустим я перехожу к закладке "Основное" 
	И я нажимаю на кнопку открытия поля "Проект"
	Тогда открылось окно '* - создание структуры из шаблона (Проект)'
	И я перехожу к закладке "Показатели"
	И я снимаю флаг 'Произвольная структура WBS'
	И я нажимаю на кнопку 'Записать и закрыть'
	И я жду закрытия окна '* - создание структуры из шаблона (Проект)' в течение 20 секунд
	Тогда открылось окно 'Бюджет проекта переменных затрат * от *'
	И я перехожу к закладке "Дерево работ"
	И в таблице "РаботыДЗ" я нажимаю на кнопку с именем 'РаботыДЗДетализацияРаботы'
	Когда Проверяю шаги на Исключение:
	|'И в таблице "РаботыДЗ" я нажимаю на кнопку 'Уровень''|
	Когда Проверяю шаги на Исключение:
	|'И в таблице "РаботыДЗ" я нажимаю на кнопку 'Работу(ы)''|
	
Добавляем корневой элемент "Итоги"
	И я перехожу к закладке "Дерево работ"
	И я нажимаю на кнопку с именем "РаботыДЗДЗДобавитьПоШаблону"
	Тогда открылось окно 'Шаблоны WBS'
	И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюСписок' на элементе формы с именем "Список"
	И в таблице "Список" я перехожу к строке:
	| 'Владелец'               | 'Наименование'          | 'Номер в структуре' |
	| 'Дорожное строительство' | 'Итоги'                 | '000'               |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Бюджет проекта переменных затрат * от *'
	

Добавляем уровень Строительный объект
	И я перехожу к закладке "Дерево работ"
	И в таблице "РаботыДЗ" я перехожу к строке:
	| 'WBS'   |
	| 'Итоги' |
	И я нажимаю на кнопку с именем "РаботыДЗДЗДобавитьПоШаблону"
	Тогда открылось окно 'Шаблоны WBS'
	И в таблице "Список" я перехожу к строке:
	| 'Владелец'               | 'Наименование'          | 'Номер в структуре' |
	| 'Дорожное строительство' | 'Строительный объект 1' | '001'               |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Бюджет проекта переменных затрат * от *'
	
Добавляем уровень Элемент 1 уровня
	И я перехожу к закладке "Дерево работ"
	И в таблице "РаботыДЗ" я перехожу к строке:
	| 'WBS'   |
	| 'Строительный объект 1' |
	И я нажимаю на кнопку с именем "РаботыДЗДЗДобавитьПоШаблону"
	Тогда открылось окно 'Шаблоны WBS'
	И в таблице "Список" я перехожу к строке:
	| 'Владелец'               | 'Наименование'          | 'Номер в структуре' |
	| 'Дорожное строительство' | 'Элемент 1 уровня'      | '002'               |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Бюджет проекта переменных затрат * от *'
	
Добавляем уровень Элемент 2 уровня как подуровень - теперь автоматически
	И я перехожу к закладке "Дерево работ"
	И в таблице "РаботыДЗ" я перехожу к строке:
	| 'WBS'   |
	| 'Элемент 1 уровня' |
	И в таблице "РаботыДЗ" я нажимаю на кнопку с именем 'РаботыДЗРазвернутьВсе'
	И в таблице "РаботыДЗ" я перехожу к строке:
	| 'WBS'   |
	| 'Элемент 2 уровня' |
	И в таблице "РаботыДЗ" я нажимаю на кнопку 'Работу из сборника'
	Тогда открылось окно 'Нормативные сборники'
	И Я очищаю фильтр на форме списка
	И Я устанавливаю фильтр на список
	| Наименование | Содержит | "Изготовление и монтаж алюминиевых кассет" |
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к первой строке	
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Бюджет проекта переменных затрат * от *'
	И в таблице "РаботыДЗ" в поле 'НР 1 уровня' я ввожу текст '100,00'
	И В таблице "РаботыДЗ" я завершаю редактирование строки

Добавляем уровень Конструктив
	И я перехожу к закладке "Дерево работ"
	И в таблице "РаботыДЗ" я перехожу к строке:
	| 'WBS'   |
	| 'Элемент 1 уровня' |
	И я нажимаю на кнопку с именем "РаботыДЗДЗДобавитьПоШаблону"
	Тогда открылось окно 'Шаблоны WBS'
	И в таблице "Список" я перехожу к строке:
	| 'Владелец'               | 'Наименование'          | 'Номер в структуре' |
	| 'Дорожное строительство' | 'Конструктив 1'         | '004'               |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Бюджет проекта переменных затрат * от * Рабочая'

Добавляем уровень Конструктив 1 уровня
	И я перехожу к закладке "Дерево работ"
	И в таблице "РаботыДЗ" я перехожу к строке:
	| 'WBS'   |
	| 'Конструктив 1' |
 
Добавляем уровень Конструктив 2 уровня как подуровень - теперь автоматически
	И я перехожу к закладке "Дерево работ"
	И в таблице "РаботыДЗ" я перехожу к строке:
	| 'WBS'   |
	| 'Подконструктив 1' |
	И в таблице "РаботыДЗ" я перехожу к строке:
	| 'WBS'   |
	| 'Подконструктив 2' |
	И в таблице "РаботыДЗ" я нажимаю на кнопку 'Работу из сборника'
	Тогда открылось окно 'Нормативные сборники'
	И Я очищаю фильтр на форме списка
	И Я устанавливаю фильтр на список
	| Наименование | Содержит | "Изготовление и монтаж алюминиевых кассет" |
	И в таблице "Список" я перехожу к первой строке
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Бюджет проекта переменных затрат * от *'
	И В таблице "РаботыДЗ" я завершаю редактирование строки
	И в таблице "РаботыДЗ" в поле 'НР 1 уровня' я ввожу текст '100,00'
	И В таблице "РаботыДЗ" я завершаю редактирование строки
	И в таблице "РаботыДЗ" я нажимаю на кнопку 'Пересчет'

Тогда таблица "РаботыДЗ" стала равной:
	| 'WBS'                   | 'НР 1 уровня' |
	| 'Итоги'                 | '200,00'      |
	| 'Строительный объект 1' | ''            |
	| 'Элемент 1 уровня'      | '100,00'      |
	| 'Элемент 2 уровня'      | '100,00'      |
	| 'Изготовление и монтаж алюминиевых кассет'     | '100,00'      |
	| 'Конструктив 1'         | ''            |
	| 'Подконструктив 1'      | '100,00'      |
	| 'Подконструктив 2'      | '100,00'      |
	| 'Изготовление и монтаж алюминиевых кассет'     | '100,00'      |

Проверяем опцию "Произвольная структура ВБС"
	Допустим я перехожу к закладке "Основное" 
	И я нажимаю на кнопку открытия поля "Проект"
	Тогда открылось окно '* - создание структуры из шаблона (Проект)'
	И я перехожу к закладке "Показатели"
	И я устанавливаю флаг 'Произвольная структура WBS'
	И я нажимаю на кнопку 'Записать и закрыть'
	И я жду закрытия окна '* - создание структуры из шаблона (Проект)' в течение 20 секунд
	Тогда открылось окно 'Бюджет проекта переменных затрат * от *'
	И я перехожу к закладке "Дерево работ"
	И в таблице "РаботыДЗ" я нажимаю на кнопку 'Уровень'
	Тогда открылось окно 'WBS (Cтруктурная декомпозиция работ)'
	И Я очищаю фильтр на форме списка
	И в таблице "Список" я перехожу к первой строке
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И я закрываю текущее окно