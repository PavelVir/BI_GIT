﻿#language: ru
@Tree


Функционал: Как пользователь УСП c ограничеными правами
 я хочу иметь возможность выбрать документ УГПР как шаблон и создавать на его основании другие УГПРы


Контекст: 

	Когда в базе есть пользователь "BiCC" с паролем "123"
	И я подключаю TestClient "КлиентОграниченый" логин "BiCC" пароль "123"
		
Сценарий: Я создаю УГПР на основании существующего шаблона с неполными правами
	Дано Я закрыл все окна клиентского приложения
	#Дано я удаляю все элементы Справочника "Проекты" с наименованием 'Шаблон сметы создание из шаблона'
	Выбираю шаблон и инициирую создание
		Когда В панели разделов я выбираю 'Управление строительным производством'
		И Я нажимаю кнопку командного интерфейса 'Управленческий график производства работ'
		Тогда открылось окно 'Управленческий график производства работ'
		И я меняю значение переключателя 'ВидДокумента' на 'Шаблоны'
		И я снимаю флаг 'Проект'
		и Я убираю группировки в текущем списке
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
		И в таблице "Список" я перехожу к строке:
		| 'Наименование'|
		| 'Шаблон сметы создание из шаблона'|	
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
	и пауза 1
	И в таблице "РесурсыТрудовые" я выбираю текущую строку
	Тогда открылось окно '* (Виды работ (проект))'
	И элемент формы "Владелец" стал равен 'Шаблон сметы создание из шаблона'
	И я закрываю текущее окно
	И я нажимаю на кнопку "Провести и закрыть"




