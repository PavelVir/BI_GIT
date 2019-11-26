﻿#language: ru
@tree
@exportscenarios

#report.epic=Обработки
#report.feature=ЗагрузкаКенМЛ
#report.story=Проверка загрузки формата 5.5.1

Функционал: Проверка загрузки формата 5.5.1 с отрицательными объемами работ

Как Разрабоотчик
Я хочу Я хочу проверить работу обработки загрузки
Чтобы уменьшить количество ошибок

Контекст:
	Дано  Я открыл сеанс TestClient от имени "iRobot" с паролем "Kamala$oft" или подключаю уже существующий


Сценарий: Я Проверяю работу обработки загрузки формата551_ОтрицательныеРаботы

	Когда В командном интерфейсе я выбираю 'Управление строительным производством' 'Загрузка из kenml *'
	Тогда открылось окно 'Мастер формирования УГПР из xml: Загрузка из kenml *'
	И из выпадающего списка "Проект" я выбираю по строке '!Простой проект для проверки'
	И я буду выбирать внешний файл "$КаталогПроекта$\ERP_ПроверкаЗагрузкиКенмл\Формат551_ОтрицательныеРаботы.kenml"
	И я нажимаю на кнопку 'Выбрать файл'	
	Тогда открылось окно 'Мастер формирования УГПР из xml: Загрузка из kenml *'	
	И элемент формы с именем "Формат" стал равен "551"
	И я нажимаю на кнопку 'Создать УГПР'
	И я перехожу к закладке "Дерево работ"
	#И я жду, что в таблице "РаботыДЗ" количество строк будет "больше" 0 в течение 20 секунд	
	И в таблице "РаботыДЗ" я активизирую поле "Себестоимость всего"
	И в таблице "РаботыДЗ" поле с именем "РаботыДЗВидРаботы" имеет значение "Автобусные остановки - 4 шт."
	И в таблице "РаботыДЗ" поле "Код WBS" имеет значение "2-4"
	И в таблице "РаботыДЗ" поле "Стоимость прямых затрат" имеет значение "10 498 826,62"
	И в таблице "РаботыДЗ" поле "НР 1 уровня" имеет значение "1 603 435,00"
	И в таблице "РаботыДЗ" поле "НР 2 уровня" имеет значение "508 308,00"
	И в таблице "РаботыДЗ" поле "Сметная прибыль" имеет значение "1 008 844,32"
	И в таблице "РаботыДЗ" поле "Себестоимость всего" имеет значение "13 619 413,94"
	И в таблице "РаботыДЗ" поле "Цена заказчика" имеет значение ""
	И в таблице "РаботыДЗ" поле "Стоимость заказчика" имеет значение ""
	И в таблице "РаботыДЗ" поле "НДС" имеет значение ""
	И в таблице "РаботыДЗ" поле "Маржа" имеет значение "-13 619 413,94"
	И Я закрыл все окна клиентского приложения