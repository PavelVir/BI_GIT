﻿#language: ru

@exportscenarios

Функционал: Проверка загрузки формата 5.5.6

Как Разрабоотчик
Я хочу Я хочу проверить работу обработки загрузки
Чтобы уменьшить количество ошибок

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: Я Проверяю работу обработки загрузки формата556

	И В командном интерфейсе я выбираю 'Управление строительным производством' 'Загрузка из kenml *'
	Тогда открылось окно 'Мастер формирования УГПР из xml: Загрузка из kenml *'
	И из выпадающего списка "Проект" я выбираю по строке '!Простой проект для проверки'
	И я буду выбирать внешний файл "$КаталогПроекта$\ERP_ПроверкаЗагрузкиКенмл\Формат556.kenml"
	И я нажимаю на кнопку 'Выбрать файл'	
	Тогда открылось окно 'Мастер формирования УГПР из xml: Загрузка из kenml *'	
	И элемент формы с именем "Формат" стал равен "556"
	И я нажимаю на кнопку 'Создать УГПР'
	И я перехожу к закладке "Дерево работ"
	#И я жду, что в таблице "РаботыДЗ" количество строк будет "больше" 0 в течение 20 секунд	
	И в таблице "РаботыДЗ" я активизирую поле "Себестоимость всего"
	И в таблице "РаботыДЗ" поле с именем "РаботыДЗВидРаботы" имеет значение "ОБЩЕСТРОИТЕЛЬНЫЕ РАБОТЫ. КОНСТРУКЦИЯ ЖЕЛЕЗОБЕТОННЫЕ"
	И в таблице "РаботыДЗ" поле "Код WBS" имеет значение "2-1-1"
	И в таблице "РаботыДЗ" поле "Стоимость прямых затрат" имеет значение "281 064 251,03"
	И в таблице "РаботыДЗ" поле "НР 1 уровня" имеет значение "13 332 802,00"
	И в таблице "РаботыДЗ" поле "НР 2 уровня" имеет значение "12 482 435,00"
	И в таблице "РаботыДЗ" поле "Сметная прибыль" имеет значение "24 550 358,29"
	И в таблице "РаботыДЗ" поле "Себестоимость всего" имеет значение "331 429 846,32"
	И в таблице "РаботыДЗ" поле "Цена заказчика" имеет значение ""
	И в таблице "РаботыДЗ" поле "Стоимость заказчика" имеет значение ""
	И в таблице "РаботыДЗ" поле "НДС" имеет значение ""
	И в таблице "РаботыДЗ" поле "Маржа" имеет значение "-331 429 846,32"
	И Я закрыл все окна клиентского приложения
