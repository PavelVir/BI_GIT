﻿#language: ru
@tree
@exportscenarios

#report.feature=Обработки
#report.story=ЗагрузкаКенМЛ

Функционал: Проверка загрузки формата 5.5.5 с ошибками стоимости материалов

Как Разрабоотчик
Я хочу Я хочу проверить работу обработки загрузки
Чтобы уменьшить количество ошибок

Контекст:
	Дано  Я открыл сеанс TestClient от имени "iRobot" с паролем "Kamala$oft" или подключаю уже существующий

Сценарий: Я Проверяю работу обработки загрузки формата555_ОшибкиМатериалы

	Когда В командном интерфейсе я выбираю 'Управление строительным производством' 'Загрузка из kenml *'
	Тогда открылось окно 'Мастер формирования УГПР из xml: Загрузка из kenml *'
	И из выпадающего списка "Проект" я выбираю по строке '!Простой проект для проверки'
	И я буду выбирать внешний файл "$КаталогПроекта$\ERP_ПроверкаЗагрузкиКенмл\Формат555_ошибкаСтоимостиМатериалов.kenml"
	И я нажимаю на кнопку 'Выбрать файл'	
	Тогда открылось окно 'Мастер формирования УГПР из xml: Загрузка из kenml *'	
	И элемент формы с именем "Формат" стал равен "556"
	И я нажимаю на кнопку 'Создать УГПР'
	И я перехожу к закладке "Дерево работ"
	#И я жду, что в таблице "РаботыДЗ" количество строк будет "больше" 0 в течение 20 секунд	
	И в таблице "РаботыДЗ" я активизирую поле "Себестоимость всего"
	И в таблице "РаботыДЗ" поле с именем "РаботыДЗВидРаботы" имеет значение "светосигнальное оборудование"
	И в таблице "РаботыДЗ" поле "Код WBS" имеет значение "№ 02-5-3"
	И в таблице "РаботыДЗ" поле "Стоимость прямых затрат" имеет значение "893 071 109,37"
	И в таблице "РаботыДЗ" поле "НР 1 уровня" имеет значение "12 234 131,00"
	И в таблице "РаботыДЗ" поле "НР 2 уровня" имеет значение "38 022 820,00"
	И в таблице "РаботыДЗ" поле "Сметная прибыль" имеет значение "75 466 244,79"
	И в таблице "РаботыДЗ" поле "Себестоимость всего" имеет значение "1 018 794 305,16"
	И в таблице "РаботыДЗ" поле "Цена заказчика" имеет значение ""
	И в таблице "РаботыДЗ" поле "Стоимость заказчика" имеет значение ""
	И в таблице "РаботыДЗ" поле "НДС" имеет значение ""
	И в таблице "РаботыДЗ" поле "Маржа" имеет значение "-1 018 794 305,16"
	И Я закрыл все окна клиентского приложения