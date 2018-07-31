﻿#language: ru
@IgnoreOnCIMainBuild
@exportscenarios

Функционал: Я проверяю форму Настройки и справочники УСП

Как Пользователь
Я хочу проверить работу форм справочника Организации
Чтобы не было ошибок при открытии и создании элементов

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: Я проверяю форму Настройки и справочники УСП

	Когда В командном интерфейсе я выбираю 'Управление строительным производством' 'Настройки и справочники'
	Тогда открылось окно 'Настройки и справочники УСП'
		И Я проверяю справочник Организации
		И Я проверяю справочник АльбомПроектов
		И Я проверяю справочник Виды накладных расходов 
	И    Я закрыл все окна клиентского приложения

