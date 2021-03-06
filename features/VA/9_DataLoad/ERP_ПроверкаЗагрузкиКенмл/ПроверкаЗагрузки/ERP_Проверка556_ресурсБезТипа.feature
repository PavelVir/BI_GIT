﻿#language: ru
@tree

#report.epic=Обработки
#report.feature=ЗагрузкаКенМЛ
#report.story=Проверка загрузки формата 5.5.6

Функционал: Проверка загрузки формата 5.5.6 без накладных и сметной прибыли 

Как Разрабоотчик
Я хочу Я хочу проверить работу обработки загрузки
Чтобы уменьшить количество ошибок

Контекст:
	Дано  Я открыл сеанс TestClient от имени "iRobot" с паролем "Kamala$oft" или подключаю уже существующий

Сценарий: Я Проверяю работу обработки загрузки формата556 с ошибкой - без накладных и сметной прибыли и ресурс без типа

	Когда В командном интерфейсе я выбираю 'Управление строительным производством' 'Загрузка смет (kenml)'
	Тогда открылось окно 'Мастер формирования УГПР из xml: Загрузка смет (kenml)'
	И я запоминаю текущее окно как "НужноеОкно"
	И из выпадающего списка "Проект" я выбираю по строке '!Простой проект для проверки'
	И я буду выбирать внешний файл "$КаталогПроекта$\ERP_ПроверкаЗагрузкиКенмл\Формат556_ресурсБезТипа.kenml"
	И я нажимаю на кнопку 'Выбрать файл'	
	Тогда появилось предупреждение, содержащее текст "не указан размер СП"
	Затем Если появилось окно диалога я нажимаю на кнопку "Да"	 
	Тогда открылось окно 'Мастер формирования УГПР из xml: Загрузка смет (kenml)'
	И элемент формы с именем "Формат" стал равен "556"
	И я нажимаю на кнопку 'Создать УГПР'
	И я перехожу к закладке "Дерево работ"
	#И я жду, что в таблице "РаботыДЗ" количество строк будет "больше" 0 в течение 20 секунд	
	И в таблице "РаботыДЗ" я активизирую поле "Себестоимость всего"
	И в таблице "РаботыДЗ" поле с именем "РаботыДЗВидРаботы" имеет значение "резервуары чистой воды емк. 25м3 /2 очередь/"
	И в таблице "РаботыДЗ" поле "Код WBS" имеет значение "№ 06-4-10"
	И в таблице "РаботыДЗ" поле "Стоимость прямых затрат" имеет значение "537 978,71"
	И в таблице "РаботыДЗ" поле "НР 1 уровня" имеет значение "78 188,49"
	И в таблице "РаботыДЗ" поле "НР 2 уровня" имеет значение ""
	И в таблице "РаботыДЗ" поле "Сметная прибыль" имеет значение "36 970,11"
	И в таблице "РаботыДЗ" поле "Себестоимость всего" имеет значение "653 137,31"
	И в таблице "РаботыДЗ" поле "Цена заказчика" имеет значение ""
	И в таблице "РаботыДЗ" поле "Стоимость заказчика" имеет значение ""
	И в таблице "РаботыДЗ" поле "НДС" имеет значение ""
	И в таблице "РаботыДЗ" поле "Маржа" имеет значение "-653 137,31"
	И Я закрыл все окна клиентского приложения
