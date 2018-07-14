﻿#language: ru

@exportscenarios

Функционал: Проверка загрузки формата 555

Как Разрабоотчик
Я хочу Я хочу проверить работу обработки загрузки
Чтобы уменьшить количество ошибок

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: Я Проверяю работу обработки загрузки формата555

	Когда В командном интерфейсе я выбираю 'Управление строительным производством' 'Загрузка из kenml *'
	Тогда открылось окно 'Мастер формирования УГПР из xml: Загрузка из kenml *'
	И из выпадающего списка "Проект" я выбираю точное значение '!Простой проект для проверки'
	И я буду выбирать внешний файл "E:\DOCUMENTS\Mega\ПРОЕКТЫ\BI_GIT\features\ERP_ПроверкаЗагрузкиКенмл\Формат555.kenml"
	И я нажимаю на кнопку 'Выбрать файл'	
	Тогда открылось окно 'Мастер формирования УГПР из xml: Загрузка из kenml *'	
	И элемент формы с именем "Формат" стал равен "556"
	И я нажимаю на кнопку 'Создать УГПР'
	И я перехожу к закладке "Дерево работ"
	#И я жду, что в таблице "РаботыДЗ" количество строк будет "больше" 0 в течение 20 секунд	
	И в таблице "РаботыДЗ" я активизирую поле "Себестоимость всего"
	И в таблице "РаботыДЗ" поле с именем "РаботыДЗВидРаботы" имеет значение "Наружное архитектурное электроосвещение"
	И в таблице "РаботыДЗ" поле "Код WBS" имеет значение "4-2"
	И в таблице "РаботыДЗ" поле "Стоимость прямых затрат" имеет значение "15 469 052,50"
	И в таблице "РаботыДЗ" поле "НР 1 уровня" имеет значение "422 391,00"
	И в таблице "РаботыДЗ" поле "НР 2 уровня" имеет значение "673 798,00"
	И в таблице "РаботыДЗ" поле "Сметная прибыль" имеет значение "1 325 220,22"
	И в таблице "РаботыДЗ" поле "Себестоимость всего" имеет значение "17 890 461,72"
	И в таблице "РаботыДЗ" поле "Цена заказчика" имеет значение ""
	И в таблице "РаботыДЗ" поле "Стоимость заказчика" имеет значение ""
	И в таблице "РаботыДЗ" поле "НДС" имеет значение ""
	И в таблице "РаботыДЗ" поле "Маржа" имеет значение "-17 890 461,72"
	И я закрываю текущее окно