﻿#language: ru
@tree

#report.epic=ФункциональныеТесты
#report.feature=Справочники

Функционал: Я проверяю функциональность справочника ИНАГРО_ВидыНР

Как Пользователь
Я хочу проверить работу форм 
Чтобы не было ошибок при открытии 

Контекст:

Дано  Я открыл сеанс TestClient от имени "iRobot" с паролем "Kamala$oft" или подключаю уже существующий
И Я закрыл все окна клиентского приложения

Сценарий: Проверка функций справочника ИНАГРО_ВидыНР

Дано Я открываю основную форму списка справочника "ИНАГРО_ВидыНР" и удаляем данные "Ложь"
Тогда открылось окно "Виды непрямых затрат"
#Проверим создание группы
#	Когда Проверяю шаги на Исключение:
#	|'И я нажимаю на кнопку с именем 'ФормаСоздатьГруппу''|

Проверим создание элемента не в папке
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Затем я жду, что в сообщениях пользователю будет подстрока "не разрешено" в течение 30 секунд

Проверим создание элемента сметная прибыль
	И в таблице "Список" я перехожу к строке:
		| 'Полное наименование'  |
		| 'Виды сметной прибыли' |
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда не появилось окно предупреждения системы
	Тогда открылось окно 'Виды непрямых затрат (создание)'
	И в поле 'Полное наименование' я ввожу текст 'Тестовая СП'
	И я устанавливаю флаг 'ПЗ'
	И в поле 'Коэффициент' я ввожу текст '8,00000000'
	И я устанавливаю флаг 'НР в базу'
	И я нажимаю на кнопку 'Записать и закрыть'
	И я жду закрытия окна 'Виды непрямых затрат (создание) *' в течение 20 секунд
	Тогда открылось окно "Виды непрямых затрат"
	И таблица "Список" содержит строки:
	| Полное наименование | 
	| 'Тестовая СП' | 






