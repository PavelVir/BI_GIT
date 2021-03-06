﻿#language: ru

@exportscenarios
@Tree

#report.epic=Обработки
#report.feature=ЗагрузкаКенМЛ
#report.story=Проверка загрузки формата 5.5.3

Функционал: Проверка загрузки формата 5.5.3

Как Разрабоотчик
Я хочу Я хочу проверить работу обработки загрузки
Чтобы уменьшить количество ошибок

Контекст:
	Дано  Я открыл сеанс TestClient от имени "iRobot" с паролем "Kamala$oft" или подключаю уже существующий


Сценарий: Я Проверяю работу обработки загрузки формата553

	Когда В командном интерфейсе я выбираю 'Управление строительным производством' 'Загрузка смет (kenml)'
	Тогда открылось окно 'Мастер формирования УГПР из xml: Загрузка смет (kenml)'
	И я запоминаю текущее окно как "НужноеОкно"
	И из выпадающего списка "Проект" я выбираю по строке '!Простой проект для проверки'
	И я буду выбирать внешний файл "$КаталогПроекта$\ERP_ПроверкаЗагрузкиКенмл\Формат553.kenml"
	И я нажимаю на кнопку 'Выбрать файл'	
	

	#Имитируем исправление ошибки в ресурсе
	Если текущее окно "не равно" ожидаемому окну "НужноеОкно" Тогда
		И открылось окно '(ЕСТЬ ОШИБКИ ЗАГРУЗКИ!!!) Мастер формирования УГПР из xml: Загрузка смет (kenml)*'
		И элемент формы с именем "Формат" стал равен "556"
		И я нажимаю на кнопку 'Создать УГПР'
		Тогда появилось предупреждение, содержащее текст "выявлены ошибки"
		Затем Если появилось окно диалога я нажимаю на кнопку "Нет"	
		И в таблице "ТаблицаРесурсов" я перехожу к строке:
		|'Код СНБ'|
		|'40-12306'|		
		И я активизирую поле "Ресурс  в 1с"
		И в таблице  "ТаблицаРесурсов" я начинаю редактирование строки 
		И я нажимаю на кнопку открытия поля "Ресурс  в 1с"
		Тогда открылось окно '* (Ресурс)'
		И из выпадающего списка "Вид ресурса" я выбираю точное значение 'Материалы'
		И из выпадающего списка "Тип ресурсов (СП)" я выбираю точное значение 'Материальные'
		И я нажимаю на кнопку 'Записать и закрыть'
		И я жду закрытия окна '* (Ресурс)' в течение 20 секунд
		Тогда открылось окно '(ЕСТЬ ОШИБКИ ЗАГРУЗКИ!!!) Мастер формирования УГПР из xml: Загрузка из kenml *'
		И Я завершаю редактирование строки
		И я буду выбирать внешний файл "E:\DOCUMENTS\Mega\ПРОЕКТЫ\BI_GIT\features\ERP_ПроверкаЗагрузкиКенмл\Формат553.kenml"
		И я нажимаю на кнопку 'Выбрать файл'	
		Тогда открылось окно 'Мастер формирования УГПР из xml: Загрузка смет (kenml)'
	
	Тогда открылось окно 'Мастер формирования УГПР из xml: Загрузка смет (kenml)'
	И элемент формы с именем "Формат" стал равен "556"
	И я нажимаю на кнопку 'Создать УГПР'
	И я перехожу к закладке "Дерево работ"
	#И я жду, что в таблице "РаботыДЗ" количество строк будет "больше" 0 в течение 20 секунд	
	И в таблице "РаботыДЗ" я активизирую поле "Себестоимость всего"
	И в таблице "РаботыДЗ" поле с именем "РаботыДЗВидРаботы" имеет значение "Дорожная одежда"
	И в таблице "РаботыДЗ" поле "Код WBS" имеет значение "2-2"
	И в таблице "РаботыДЗ" поле "Стоимость прямых затрат" имеет значение "455 396 615,35"
	И в таблице "РаботыДЗ" поле "НР 1 уровня" имеет значение "14 524 711,00"
	И в таблице "РаботыДЗ" поле "НР 2 уровня" имеет значение "19 736 693,00"
	И в таблице "РаботыДЗ" поле "Сметная прибыль" имеет значение "39 172 643,36"
	И в таблице "РаботыДЗ" поле "Себестоимость всего" имеет значение "528 830 662,71"
	И в таблице "РаботыДЗ" поле "Цена заказчика" имеет значение ""
	И в таблице "РаботыДЗ" поле "Стоимость заказчика" имеет значение ""
	И в таблице "РаботыДЗ" поле "НДС" имеет значение ""
	И в таблице "РаботыДЗ" поле "Маржа" имеет значение "-528 830 662,71"
	И Я закрыл все окна клиентского приложения