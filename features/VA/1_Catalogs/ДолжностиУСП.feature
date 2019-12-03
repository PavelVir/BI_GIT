﻿#language: ru
@tree

#report.epic=ФункциональныеТесты
#report.feature=Справочники

Функционал: Я проверяю функциональность справочника BI_ДолжностиУСП

Как Пользователь
Я хочу проверить работу форм 
Чтобы не было ошибок при открытии 

Контекст:

Дано  Я открыл сеанс TestClient от имени "iRobot" с паролем "Kamala$oft" или подключаю уже существующий
И Я закрыл все окна клиентского приложения

Сценарий: Проверка функций справочника BI_ДолжностиУСП

Дано Я открываю основную форму списка справочника "BI_ДолжностиУСП" и удаляем данные "ЛОЖЬ"
Тогда открылось окно "Должности УСП"
Проверим создание группы
	Когда Проверяю шаги на Исключение:
	|'И я нажимаю на кнопку с именем 'ФормаСоздатьГруппу''|

Проверим создание элемента
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Должности УСП (создание)'
	И в поле 'Наименование' я ввожу текст 'Тестовая должность УСП'
	И я перехожу к следующему реквизиту
	И я нажимаю кнопку выбора у поля "Должность"
	Тогда открылось окно 'Должности'
	И в таблице "Список" я перехожу к первой строке
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И я нажимаю на кнопку 'Записать и закрыть'
	И я жду закрытия окна 'Должности УСП (создание) *' в течение 20 секунд
	Тогда открылось окно "Должности УСП"



 







