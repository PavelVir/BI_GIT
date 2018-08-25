﻿#language: ru

@exportscenarios
@IgnoreOnCIMainBuild
@tree


Функционал: Создание тестового проекта для УСП без графика

	Хочу чтобы всё работало без ошибок!

Контекст:

	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

  
Сценарий: Я создаю тестовый проект без графика

	Когда В командном интерфейсе я выбираю 'Управление строительным производством' 'Настройки и справочники'
	Тогда открылось окно 'Настройки и справочники УСП'
	И я нажимаю на кнопку 'Проекты'	
	Тогда открылось окно 'Проекты'
	Если в таблице "Список" нет строки Тогда
	|'Наименование'|
	|'Автотестирование загрузки 27 улицы (без графика)'|
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Проект (создание)'
		И в поле 'Наименование' я ввожу текст 'Автотестирование загрузки 27 улицы (без графика)'
		И я перехожу к закладке "Реквизиты УСП"
		И из выпадающего списка "Организация" я выбираю точное значение 'Автотестирование загрузки 27 улицы'
		И из выпадающего списка "Основное подразделение" я выбираю по строке 'Холдинг 1'
		Тогда открылось окно 'Проект (создание) *'
		И из выпадающего списка "Горизонт оперативного планирования" я выбираю точное значение 'Месяц'
		И из выпадающего списка "Бизнес регион" я выбираю точное значение 'Астана'
		#И из выпадающего списка "График работы" я выбираю точное значение 'Основной тест'
		И я нажимаю на кнопку 'Записать и закрыть'
		И я жду закрытия окна 'Проект (создание) *' в течение 20 секунд
	Тогда открылось окно 'Проекты'
 

	






