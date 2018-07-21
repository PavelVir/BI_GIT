﻿#language: ru
@Tree


Функционал: Как пользователь УСП я хочу иметь возможность обозначать документ УГПР как шаблон и создавать на его основании другие УГПРы


Контекст: 

	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: Я создаю УГПР на основании существующего шаблона
	Дано я удаляю все элементы Справочника "Проекты" с наименованием 'Шаблон сметы создание из шаблона'
	Выбираю шаблон и инициирую создание
		Когда В панели разделов я выбираю 'Управление строительным производством'
		И Я нажимаю кнопку командного интерфейса 'Управленческий график производства работ'
		Тогда открылось окно 'Управленческий график производства работ'
		И я меняю значение переключателя 'ВидДокумента' на 'Шаблоны'
		И я снимаю флаг 'Проект'
		#И Я убираю группировки в текущем списке
		Тогда открылось окно 'Управленческий график производства работ'
		И в таблице "Список" я перехожу к строке:
		| 'Проект'           | 'Версия' |
		| 'Шаблон сметы 4-1' | 'Шаблон (0)'|
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Управленческий график производства работ *'
		И я перехожу к закладке 'Дерево работ'
		И я запоминаю количество строк таблицы "РаботыДЗ" как "КвоСтрокИсходное"
		И я нажимаю на кнопку 'Создать по шаблону'
	Создаю и выбираю проект
		Тогда открылось окно 'Проекты'
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Когда открылось окно 'Проект (создание)'
		Тогда в поле 'Наименование' я ввожу текст 'Шаблон сметы создание из шаблона'
		И я перехожу к закладке "Реквизиты УСП"
		И из выпадающего списка "Организация" я выбираю по строке 'Автотестирование загрузки 27 улицы'
		И из выпадающего списка "Основное подразделение" я выбираю по строке 'Холдинг 1'
		И из выпадающего списка "Горизонт оперативного планирования" я выбираю точное значение 'Месяц'
		И из выпадающего списка "Тип цен" я выбираю точное значение 'Текущая'
		И из выпадающего списка "Бизнес регион" я выбираю точное значение 'Астана'
		И я нажимаю на кнопку 'Записать и закрыть'
		И в таблице "Список" я выбираю текущую строку	
	И В панели открытых я выбираю 'Управленческий график производства работ (создание)'
	Тогда открылось окно 'Управленческий график производства работ (создание)'

И я проверяю изменение владельца вида работ 	
	И я перехожу к закладке 'Дерево работ'
	И количество строк таблицы "РаботыДЗ" равно переменной "КвоСтрокИсходное"	
	И в таблице "РаботыДЗ" я перехожу к первой строке   
	И я активизирую поле "WBS"
	и пауза 1
	И в таблице  "РаботыДЗ" я начинаю редактирование строки 
	И я нажимаю на кнопку открытия поля "WBS"
	Тогда открылось окно '* (WBS (Cтруктурная декомпозиция работ))'
	И элемент формы "Проект" стал равен 'Шаблон сметы создание из шаблона'
	И я закрываю текущее окно
	И в таблице "РаботыДЗ" я нажимаю на кнопку 'Развернуть все'
	И в таблице 'РаботыДЗ' я перехожу к последней строке
	И я активизирую поле "WBS"
	и пауза 1
	И в таблице  "РаботыДЗ" я начинаю редактирование строки 
	И я нажимаю на кнопку открытия поля "WBS"
	Тогда открылось окно '* (Виды работ (проект))'
	И элемент формы "Владелец" стал равен 'Шаблон сметы создание из шаблона'
	И я закрываю текущее окно
	И я перехожу к закладке "Трудовые ресурсы"
	И в таблице "РесурсыТрудовые" я нажимаю на кнопку с именем 'РаботыДЗОтключитьОтборПоДереву2'
	И пауза 1
	И в таблице "РесурсыТрудовые" я перехожу к первой строке 
	И в таблице "РесурсыТрудовые" я выбираю текущую строку
	Тогда открылось окно '* (Виды работ (проект))'
	И элемент формы "Владелец" стал равен 'Шаблон сметы создание из шаблона'
	И я закрываю текущее окно
	И я нажимаю на кнопку "Провести и закрыть"




