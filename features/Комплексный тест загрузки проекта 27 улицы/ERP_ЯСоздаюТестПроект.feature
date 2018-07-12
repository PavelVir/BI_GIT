﻿#language: ru

@exportscenarios


Функционал: Создание тестового проекта для УСП

	Хочу чтобы всё работало без ошибок!

Контекст:

	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

  
Сценарий: Я создаю тестовый проект 

	Когда В командном интерфейсе я выбираю 'Управление строительным производством' 'Настройки и справочники'
	Тогда открылось окно 'Настройки и справочники УСП'
	И я нажимаю на кнопку 'Проекты'	
 	Тогда открылось окно 'Проекты'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Проект (создание)'
	И в поле 'Наименование' я ввожу текст 'Автотестирование загрузки 27 улицы'
	И я перехожу к закладке "Реквизиты УСП"
	И из выпадающего списка "Организация" я выбираю точное значение 'Автотестирование загрузки 27 улицы'
	И из выпадающего списка "Основное подразделение" я выбираю по строке 'Холдинг 1'
	Тогда открылось окно 'Проект (создание) *'
	И из выпадающего списка "Горизонт оперативного планирования" я выбираю точное значение 'Месяц'
	И из выпадающего списка "Бизнес регион" я выбираю точное значение 'Астана'
	И я нажимаю на кнопку 'Записать и закрыть'
	И я жду закрытия окна 'Проект (создание) *' в течение 20 секунд
 

	






