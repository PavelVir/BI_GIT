﻿#language: ru

@exportscenarios
@IgnoreOnCIMainBuild
@tree


Функционал: Создание тестовой организации для УСП

	Хочу чтобы всё работало без ошибок!

Контекст:

	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: Я создаю тестовую организацию

	Когда В командном интерфейсе я выбираю 'Управление строительным производством' 'Настройки и справочники'
	Тогда открылось окно 'Настройки и справочники УСП'
	И я нажимаю на кнопку 'Организации'	
	Тогда открылось окно 'Организации'
	Если в таблице "Список" нет строки Тогда
	|'наименование'|
	|'Автотестирование загрузки 27 улицы'|
		И я нажимаю на кнопку 'Юридическое лицо'
		Тогда открылось окно 'Организация (создание)'
		И в поле 'Сокращенное наименование' я ввожу текст 'Автотестирование загрузки 27 улицы'
		И я перехожу к закладке "Учетная политика и налоги"
		И из выпадающего списка "УчетнаяПолитика" я выбираю точное значение 'Общеустановленная'
		Когда открылось окно '1С:Предприятие'
		И я нажимаю на кнопку 'OK'
		И я нажимаю на кнопку 'Записать и закрыть'
		И я жду закрытия окна 'Организации (создание) *' в течение 20 секунд


	






