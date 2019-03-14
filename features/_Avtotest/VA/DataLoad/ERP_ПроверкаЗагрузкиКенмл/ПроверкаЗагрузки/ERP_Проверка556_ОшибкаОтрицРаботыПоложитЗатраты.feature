﻿#language: ru

@exportscenarios
@tree


#report.feature=Обработки
#report.story=ЗагрузкаКенМЛ

Функционал: Проверка загрузки формата 5.5.6  файл с ошибкой ОтрицРаботы  + ПоложитЗатраты в позиции 

Как Разрабоотчик
Я хочу Я хочу проверить работу обработки загрузки
Чтобы уменьшить количество ошибок

Контекст:
	Дано  Я открыл сеанс TestClient от имени "iRobot" с паролем "Kamala$oft" или подключаю уже существующий


Сценарий: Я Проверяю работу обработки загрузки Формат556_ОшибкаОтрицРаботыПоложитЗатраты

	И В командном интерфейсе я выбираю 'Управление строительным производством' 'Загрузка из kenml *'
	Тогда открылось окно 'Мастер формирования УГПР из xml: Загрузка из kenml *'
	И я запоминаю текущее окно как "НужноеОкно"
	И из выпадающего списка "Проект" я выбираю по строке '!Простой проект для проверки'
	И я буду выбирать внешний файл "$КаталогПроекта$\ERP_ПроверкаЗагрузкиКенмл\Формат556_ОшибкаОтрицРаботыПоложитЗатраты.kenml"
	И я нажимаю на кнопку 'Выбрать файл'	

#Имитируем исправление ошибки в ресурсе
	Если текущее окно "не равно" ожидаемому окну "НужноеОкно" Тогда
		Тогда открылось окно '(ЕСТЬ ОШИБКИ ЗАГРУЗКИ!!!) Мастер формирования УГПР из xml: Загрузка из kenml *'	
		И элемент формы с именем "Формат" стал равен "556"
		И я нажимаю на кнопку 'Создать УГПР'
		Тогда появилось предупреждение, содержащее текст "выявлены ошибки"
		Затем Если появилось окно диалога я нажимаю на кнопку "Нет"	
		И в таблице "ТаблицаРесурсов" я перехожу к строке:
		|'Код СНБ'|
		|'23-030101-0303'|		
		И я активизирую поле "Ресурс  в 1с"
		И в таблице  "ТаблицаРесурсов" я начинаю редактирование строки 
		И я нажимаю на кнопку открытия поля "Ресурс  в 1с"
		Тогда открылось окно '* (Ресурс)'
		И из выпадающего списка "Единица измерения" я выбираю по строке 'комплект'
		И из выпадающего списка "Вид ресурса" я выбираю точное значение 'Материалы'
		И из выпадающего списка "Тип ресурсов (СП)" я выбираю точное значение 'Материальные'
		И я нажимаю на кнопку 'Записать и закрыть'
		И я жду закрытия окна '* (Ресурс)' в течение 20 секунд
		Тогда открылось окно '(ЕСТЬ ОШИБКИ ЗАГРУЗКИ!!!) Мастер формирования УГПР из xml: Загрузка из kenml *'
		И я буду выбирать внешний файл "$КаталогПроекта$\ERP_ПроверкаЗагрузкиКенмл\Формат556_ОшибкаОтрицРаботыПоложитЗатраты.kenml"
		И я нажимаю на кнопку 'Выбрать файл'	
		Затем Если появилось окно диалога я нажимаю на кнопку "Да"

	Тогда открылось окно 'Мастер формирования УГПР из xml: Загрузка из kenml *'	
	И элемент формы с именем "Формат" стал равен "556"
	И я нажимаю на кнопку 'Создать УГПР'
	И я перехожу к закладке "Дерево работ"
	#И я жду, что в таблице "РаботыДЗ" количество строк будет "больше" 0 в течение 20 секунд	
	И в таблице "РаботыДЗ" я активизирую поле "Себестоимость всего"
	И в таблице "РаботыДЗ" поле с именем "РаботыДЗВидРаботы" имеет значение "Водопровод В-1"
	И в таблице "РаботыДЗ" поле "Код WBS" имеет значение "6-1"
	И в таблице "РаботыДЗ" поле "Стоимость прямых затрат" имеет значение "277 947 181,94"
	И в таблице "РаботыДЗ" поле "НР 1 уровня" имеет значение "14 551 164,00"
	И в таблице "РаботыДЗ" поле "НР 2 уровня" имеет значение "12 401 929,00"
	И в таблице "РаботыДЗ" поле "Сметная прибыль" имеет значение "24 392 022,06"
	И в таблице "РаботыДЗ" поле "Себестоимость всего" имеет значение "329 292 297,00"
	И в таблице "РаботыДЗ" поле "Цена заказчика" имеет значение ""
	И в таблице "РаботыДЗ" поле "Стоимость заказчика" имеет значение ""
	И в таблице "РаботыДЗ" поле "НДС" имеет значение ""
	И в таблице "РаботыДЗ" поле "Маржа" имеет значение "-329 292 297,00"
	И Я закрыл все окна клиентского приложения
