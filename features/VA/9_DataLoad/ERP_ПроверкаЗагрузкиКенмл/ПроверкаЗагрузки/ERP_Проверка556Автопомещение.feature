﻿#language: ru

@exportscenarios

#report.epic=Обработки
#report.feature=ЗагрузкаКенМЛ
#report.story=Проверка загрузки формата 5.5.6

Функционал: Проверка загрузки формата 5.5.6 автопомещение ресурсов в работы

Как Разрабоотчик
Я хочу Я хочу проверить работу обработки загрузки
Чтобы уменьшить количество ошибок

Контекст:
	Дано  Я открыл сеанс TestClient от имени "iRobot" с паролем "Kamala$oft" или подключаю уже существующий


Сценарий: Я Проверяю работу обработки загрузки формата556 автопомещение должно давать те же результаты что и без него

	Загрузка без автопомещения
		И В командном интерфейсе я выбираю 'Управление строительным производством' 'Загрузка из kenml *'
		Тогда открылось окно 'Мастер формирования УГПР из xml: Загрузка из kenml *'
		И из выпадающего списка "Проект" я выбираю по строке '!Простой проект для проверки'
		# Общая часть
		И я буду выбирать внешний файл "$КаталогПроекта$\ERP_ПроверкаЗагрузкиКенмл\Формат556Автопомещение.kenml"
		И я нажимаю на кнопку 'Выбрать файл'	
		Тогда открылось окно 'Мастер формирования УГПР из xml: Загрузка из kenml *'	
		И элемент формы с именем "Формат" стал равен "556"
		И я нажимаю на кнопку 'Создать УГПР'
		И я перехожу к закладке "Дерево работ"
		И в таблице "РаботыДЗ" я активизирую поле "Себестоимость всего"
		И в таблице "РаботыДЗ" поле с именем "РаботыДЗВидРаботы" имеет значение "Дорожная одежда"
		И в таблице "РаботыДЗ" поле "Код WBS" имеет значение "2-4"
		И в таблице "РаботыДЗ" поле "Стоимость прямых затрат" имеет значение "201 417 216,25"
		И в таблице "РаботыДЗ" поле "НР 1 уровня" имеет значение "3 845 151,00"
		И в таблице "РаботыДЗ" поле "НР 2 уровня" имеет значение "8 621 022,00"
		И в таблице "РаботыДЗ" поле "Сметная прибыль" имеет значение "17 110 670,83"
		И в таблице "РаботыДЗ" поле "Себестоимость всего" имеет значение "230 994 060,08"
		И в таблице "РаботыДЗ" поле "Цена заказчика" имеет значение ""
		И в таблице "РаботыДЗ" поле "Стоимость заказчика" имеет значение ""
		И в таблице "РаботыДЗ" поле "НДС" имеет значение ""
		И в таблице "РаботыДЗ" поле "Маржа" имеет значение "-230 994 060,08"
		И я закрываю текущее окно
		Затем Если появилось окно диалога я нажимаю на кнопку "нет"
		# Общая часть конец
	Загрузка с автопомещением
		И я активизирую окно "Мастер формирования УГПР из xml: Загрузка из kenml *"
		Тогда открылось окно 'Мастер формирования УГПР из xml: Загрузка из kenml (2.4.6.9)'
		И я перехожу к закладке "Показатели сметы"
		И я устанавливаю флаг 'Автопомещение ресурсов в работы'
		# Общая часть
		И я буду выбирать внешний файл "$КаталогПроекта$\ERP_ПроверкаЗагрузкиКенмл\Формат556Автопомещение.kenml"
		И я нажимаю на кнопку 'Выбрать файл'	
		Тогда открылось окно 'Мастер формирования УГПР из xml: Загрузка из kenml *'	
		И элемент формы с именем "Формат" стал равен "556"
		И я нажимаю на кнопку 'Создать УГПР'
		И я перехожу к закладке "Дерево работ"
		И в таблице "РаботыДЗ" я активизирую поле "Себестоимость всего"
		И в таблице "РаботыДЗ" поле с именем "РаботыДЗВидРаботы" имеет значение "Дорожная одежда"
		И в таблице "РаботыДЗ" поле "Код WBS" имеет значение "2-4"
		И в таблице "РаботыДЗ" поле "Стоимость прямых затрат" имеет значение "201 417 216,25"
		И в таблице "РаботыДЗ" поле "НР 1 уровня" имеет значение "3 845 151,00"
		И в таблице "РаботыДЗ" поле "НР 2 уровня" имеет значение "8 621 022,00"
		И в таблице "РаботыДЗ" поле "Сметная прибыль" имеет значение "17 110 670,83"
		И в таблице "РаботыДЗ" поле "Себестоимость всего" имеет значение "230 994 060,08"
		И в таблице "РаботыДЗ" поле "Цена заказчика" имеет значение ""
		И в таблице "РаботыДЗ" поле "Стоимость заказчика" имеет значение ""
		И в таблице "РаботыДЗ" поле "НДС" имеет значение ""
		И в таблице "РаботыДЗ" поле "Маржа" имеет значение "-230 994 060,08"
		# Общая часть конец

	И Я закрыл все окна клиентского приложения
