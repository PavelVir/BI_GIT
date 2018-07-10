﻿#language: ru

@exportscenarios

Функционал: Проверка загрузки формата 5.5.2.1

Как Разрабоотчик
Я хочу Я хочу проверить работу обработки загрузки
Чтобы уменьшить количество ошибок

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: Я Проверяю работу обработки загрузки формата5521

	И В командном интерфейсе я выбираю 'Управление строительным производством' 'Загрузка из kenml *'
	Тогда открылось окно 'Мастер формирования УГПР из xml: Загрузка из kenml *'
	И из выпадающего списка "Проект" я выбираю точное значение '!Простой проект для проверки'
	И я буду выбирать внешний файл "E:\DOCUMENTS\Mega\ПРОЕКТЫ\BI_GIT\features\ERP_ПроверкаЗагрузкиКенмл\Формат5521.kenml"
	И я нажимаю на кнопку 'Выбрать файл'	
	Тогда открылось окно 'Мастер формирования УГПР из xml: Загрузка из kenml *'	
	И элемент формы с именем "Формат" стал равен "556"
	И я нажимаю на кнопку 'Создать УГПР'
	И я перехожу к закладке "Дерево работ"
	#И я жду, что в таблице "РаботыДЗ" количество строк будет "больше" 0 в течение 20 секунд	
	И в таблице "РаботыДЗ" я активизирую поле "Себестоимость всего"
	И в таблице "РаботыДЗ" поле с именем "РаботыДЗВидРаботы" имеет значение "вентиляцию"
	И в таблице "РаботыДЗ" поле "Код WBS" имеет значение "№ 2-1-4"
	И в таблице "РаботыДЗ" поле "Стоимость прямых затрат" имеет значение "3 168 470,00"
	И в таблице "РаботыДЗ" поле "НР 1 уровня" имеет значение "756 101,00"
	И в таблице "РаботыДЗ" поле "НР 2 уровня" имеет значение "166 402,00"
	И в таблице "РаботыДЗ" поле "Сметная прибыль" имеет значение "327 275,00"
	И в таблице "РаботыДЗ" поле "Себестоимость всего" имеет значение "4 418 248,00"
	И в таблице "РаботыДЗ" поле "Цена заказчика" имеет значение ""
	И в таблице "РаботыДЗ" поле "Стоимость заказчика" имеет значение ""
	И в таблице "РаботыДЗ" поле "НДС" имеет значение ""
	И в таблице "РаботыДЗ" поле "Маржа" имеет значение "-4 418 248,00"
	И я закрываю текущее окно