﻿#language: ru

@exportscenarios

Функционал: Проверка загрузки формата 2018 где есть работы с коэффициентами

Как Разрабоотчик
Я хочу Я хочу проверить работу обработки загрузки
Чтобы уменьшить количество ошибок

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: Я Проверяю работу обработки загрузки формата2018_Коэф

	И В командном интерфейсе я выбираю 'Управление строительным производством' 'Загрузка из kenml *'
	Тогда открылось окно 'Мастер формирования УГПР из xml: Загрузка из kenml *'
	И из выпадающего списка "Проект" я выбираю точное значение '!Простой проект для проверки'
	И я буду выбирать внешний файл "E:\DOCUMENTS\Mega\ПРОЕКТЫ\BI_GIT\features\ERP_ПроверкаЗагрузкиКенмл\Формат2018_коэф.kenml"
	И я нажимаю на кнопку 'Выбрать файл'	
	Тогда открылось окно 'Мастер формирования УГПР из xml: Загрузка из kenml *'	
	И у элемента формы с именем "Формат" текст редактирования стал равен "2018"
	И я нажимаю на кнопку 'Создать УГПР'
	И я перехожу к закладке "Дерево работ"
	#И я жду, что в таблице "РаботыДЗ" количество строк будет "больше" 0 в течение 20 секунд	
	И в таблице "РаботыДЗ" я активизирую поле "Себестоимость всего"
	И в таблице "РаботыДЗ" поле с именем "РаботыДЗВидРаботы" имеет значение "Водоснабжение"
	И в таблице "РаботыДЗ" поле "Код WBS" имеет значение "2-2"
	И в таблице "РаботыДЗ" поле "Стоимость прямых затрат" имеет значение "520 040,41"
	И в таблице "РаботыДЗ" поле "НР 1 уровня" имеет значение "101 500,64"
	И в таблице "РаботыДЗ" поле "НР 2 уровня" имеет значение ""
	И в таблице "РаботыДЗ" поле "Сметная прибыль" имеет значение "49 723,26"
	И в таблице "РаботыДЗ" поле "Себестоимость всего" имеет значение "671 264,31"
	И в таблице "РаботыДЗ" поле "Цена заказчика" имеет значение ""
	И в таблице "РаботыДЗ" поле "Стоимость заказчика" имеет значение ""
	И в таблице "РаботыДЗ" поле "НДС" имеет значение ""
	И в таблице "РаботыДЗ" поле "Маржа" имеет значение "-671 264,31"
	И Я закрыл все окна клиентского приложения