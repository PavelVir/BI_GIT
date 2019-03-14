﻿#language: ru

@exportscenarios

#report.feature=Обработки
#report.story=ЗагрузкаКенМЛ

Функционал: Проверка загрузки формата 5.5.6  - загрузка по ценам (Отключить автокоректирование ресурсов)

Как Разрабоотчик
Я хочу Я хочу проверить работу обработки загрузки
Чтобы уменьшить количество ошибок

Контекст:
	Дано  Я открыл сеанс TestClient от имени "iRobot" с паролем "Kamala$oft" или подключаю уже существующий


Сценарий: Я Проверяю работу обработки загрузки формата556 - загрузка по ценам (Отключить автокоректирование ресурсов)

	И В командном интерфейсе я выбираю 'Управление строительным производством' 'Загрузка из kenml *'
	Тогда открылось окно 'Мастер формирования УГПР из xml: Загрузка из kenml *'
	И из выпадающего списка "Проект" я выбираю по строке '!Простой проект для проверки'
	И я перехожу к закладке "Показатели сметы"
	И я устанавливаю флаг 'Отключить автокоректирование ресурсов'
	И я буду выбирать внешний файл "$КаталогПроекта$\ERP_ПроверкаЗагрузкиКенмл\Формат556_расчетОтЦены.kenml"
	И я нажимаю на кнопку 'Выбрать файл'	
	Тогда открылось окно 'Мастер формирования УГПР из xml: Загрузка из kenml *'	
	И элемент формы с именем "Формат" стал равен "556"
	И я нажимаю на кнопку 'Пересчет сметной прибыли'
	И я нажимаю на кнопку 'Создать УГПР'
	И я перехожу к закладке "Дерево работ"
	#И я жду, что в таблице "РаботыДЗ" количество строк будет "больше" 0 в течение 20 секунд	
	И в таблице "РаботыДЗ" я активизирую поле "Себестоимость всего"
	И в таблице "РаботыДЗ" поле с именем "РаботыДЗВидРаботы" имеет значение "Дорожная одежда"
	И в таблице "РаботыДЗ" поле "Код WBS" имеет значение "2-1-2"
	И в таблице "РаботыДЗ" поле "Стоимость прямых затрат" имеет значение "429 039 994,42"
	И в таблице "РаботыДЗ" поле "НР 1 уровня" имеет значение "14 015 643,00"
	И в таблице "РаботыДЗ" поле "НР 2 уровня" имеет значение "18 785 560,00"
	И в таблице "РаботыДЗ" поле "Сметная прибыль" имеет значение "36 947 373,84"
	И в таблице "РаботыДЗ" поле "Себестоимость всего" имеет значение "498 788 571,26"
	И в таблице "РаботыДЗ" поле "Цена заказчика" имеет значение ""
	И в таблице "РаботыДЗ" поле "Стоимость заказчика" имеет значение ""
	И в таблице "РаботыДЗ" поле "НДС" имеет значение ""
	И в таблице "РаботыДЗ" поле "Маржа" имеет значение "-498 788 571,26"
	И Я закрыл все окна клиентского приложения
