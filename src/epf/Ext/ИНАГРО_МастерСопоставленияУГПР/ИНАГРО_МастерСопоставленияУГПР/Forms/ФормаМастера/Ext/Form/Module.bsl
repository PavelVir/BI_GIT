﻿
&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	Если Параметры.Свойство("Проект") Тогда
		Проект =  Параметры.Проект;
	КонецЕсли;
	
	СобытияФорм.ПриСозданииНаСервере(ЭтаФорма, Отказ, СтандартнаяОбработка);
 	
КонецПроцедуры

&НаСервере
Процедура ВерсияПриИзмененииНаСервере()

	тДерево = РеквизитФормыВЗначение("ДеревоWBS");
	
	тДерево.Строки.Очистить();

	Если не Проект.Пустая() и не Версия.Пустая() Тогда
		
		СтруктураОтбора = Неопределено;
		
		Если НеПоказыватьРаботыССоответствиямиВнешняя Тогда
			СтруктураОтбора = Новый Структура("ВерсияОтбораВнешняя", ВерсияСоотв);
		КонецЕсли;

 		ВыборкаДереваПроекта = Документы.ИНАГРО_УГПР.ВыборкаДереваПроекта(Проект, Версия, СтруктураОтбора);
 		ПреобразоватьВДЗРекурсия(тДерево, ВыборкаДереваПроекта.выгрузить(), "00000000-0000-0000-0000-000000000000");
 		
	КонецЕсли;
	
	ЗначениеВРеквизитФормы(тДерево, "ДеревоWBS");
	
КонецПроцедуры

&НаКлиенте
Процедура ВерсияПриИзменении(Элемент)

	Если ВерсияСоотв = Версия Тогда
		Версия = Неопределено;
		ПоказатьПредупреждение(,"Нельзя выбирать одинаковые версии!");
 	КонецЕсли;

	ВерсияПриИзмененииНаСервере();

	Для Каждого Строка ИЗ ДеревоWBS.ПолучитьЭлементы() Цикл
		Элементы.ДеревоWBS.Развернуть(Строка.ПолучитьИдентификатор(), Истина);
	КонецЦикла;
	
	 УСтановитьОтборы();

КонецПроцедуры

&НаСервереБезКонтекста
Процедура ПреобразоватьВДЗРекурсия(тДерево, тТаблица, ГУИД)
	
	тПоиск = Новый Структура("КлючСвязи", ГУИД);
	
	тМассив = тТаблица.НайтиСтроки(тПоиск);
	
	Для Каждого тСтр Из тМассив Цикл новСтр = тДерево.Строки.Добавить();  новСтр.Картинка = ?(тСтр.ЭтоРабота, 3, 0);  ЗаполнитьЗначенияСвойств(новСтр, тСтр); ПреобразоватьВДЗРекурсия(новСтр, тТаблица, тСтр.КлючСтроки); КонецЦикла;
	
КонецПроцедуры

&НаКлиенте
Процедура ПриОткрытии(Отказ)
	
	Для Каждого Строка ИЗ ДеревоWBS.ПолучитьЭлементы() Цикл
		Элементы.ДеревоWBS.Развернуть(Строка.ПолучитьИдентификатор(), Истина);
	КонецЦикла;

КонецПроцедуры

&НаСервере
Процедура ВерсияСоотвПриИзмененииНаСервере()
	
	тДерево = РеквизитФормыВЗначение("ДеревоWBSСоотв");
 		
 	тДерево.Строки.Очистить();
	
	Если не Проект.Пустая() и не ВерсияСоотв.Пустая() Тогда
		
		СтруктураОтбора = Неопределено;
		
		Если НеПоказыватьРаботыССоответствиями Тогда
			СтруктураОтбора = Новый Структура("ВерсияОтбора", Версия);
		КонецЕсли;

 		ВыборкаДереваПроекта = Документы.ИНАГРО_УГПР.ВыборкаДереваПроекта(Проект, ВерсияСоотв, СтруктураОтбора);

 		ПреобразоватьВДЗРекурсия(тДерево, ВыборкаДереваПроекта.выгрузить(), "00000000-0000-0000-0000-000000000000");

	КонецЕсли;
	
	ЗначениеВРеквизитФормы(тДерево, "ДеревоWBSСоотв");

КонецПроцедуры

&НаКлиенте
Процедура ВерсияСоотвПриИзменении(Элемент)
	
	Если ВерсияСоотв = Версия Тогда
		ВерсияСоотв = Неопределено;
		ПоказатьПредупреждение(,"Нельзя выбирать одинаковые версии!");
 	КонецЕсли;

	ВерсияСоотвПриИзмененииНаСервере();
	
	Для Каждого Строка ИЗ ДеревоWBSСоотв.ПолучитьЭлементы() Цикл
		Элементы.ДеревоWBSСоотв.Развернуть(Строка.ПолучитьИдентификатор(), Истина);
	КонецЦикла;
	
	 УСтановитьОтборы();

КонецПроцедуры

&НаСервере
Процедура ПроектПриИзмененииНаСервере()
	
	Если не Проект.Пустая()  Тогда
		
		Версия = Справочники.ИНАГРО_Версия.ВерсияПроектаЗаказчика(Проект);
		
		ВерсияСоотв = Справочники.ИНАГРО_Версия.РабочаяВерсияПроекта(Проект);
		
	КонецЕсли;
	
КонецПроцедуры

&НаКлиенте
Процедура ПроектПриИзменении(Элемент)
	ПроектПриИзмененииНаСервере();
	ВерсияПриИзменении("");
	ВерсияСоотвПриИзменении("");
КонецПроцедуры

&НаКлиенте
Процедура УСтановитьОтборы()
   	
	ОбщегоНазначенияКлиентСервер.УстановитьЭлементОтбораДинамическогоСписка(ЭтаФорма.ИНАГРО_СоответствияWBS, "ВерсияСоответствия", Версия, ВидСравненияКомпоновкиДанных.Равно, , не Версия.Пустая(), РежимОтображенияЭлементаНастройкиКомпоновкиДанных.Недоступный);
 
	ОбщегоНазначенияКлиентСервер.УстановитьЭлементОтбораДинамическогоСписка(ЭтаФорма.ИНАГРО_СоответствияWBS, "Версия", ВерсияСоотв, ВидСравненияКомпоновкиДанных.Равно, , не ВерсияСоотв.Пустая(), РежимОтображенияЭлементаНастройкиКомпоновкиДанных.Недоступный);
	
	ОбновитьОтображениеДанных();

КонецПроцедуры

&НаКлиенте
Процедура ДеревоWBSСоотвВыбор(Элемент, ВыбраннаяСтрока, Поле, СтандартнаяОбработка)

	ВыбСтрока = ДеревоWBSСоотв.НайтиПоИдентификатору(ВыбраннаяСтрока[0]);
	
	Если ВыбСтрока <> Неопределено   Тогда
		
		Если не ВыбСтрока.ЭтоРабота Тогда
			ПоказатьПредупреждение(,"Установка соответствий для групп не предусмотрено", 60);
			Возврат;
		КонецЕсли;
		
		ОсновнаяСтрока = Элементы.ДеревоWBS.ТекущиеДанные;
		
		Если ОсновнаяСтрока = Неопределено Тогда
			ПоказатьПредупреждение(,"Не выбрана ведущая строка", 60);
			Возврат;
			
		иначе	

			Если не ОсновнаяСтрока.ЭтоРабота Тогда
				ПоказатьПредупреждение(,"Установка соответствий для групп не предусмотрено", 60);
				Возврат;
			КонецЕсли;

			ОсновнаяСтрока =   ОсновнаяСтрока.ПолучитьИдентификатор();
			
		КонецЕсли;
		
		ЗаписатьСоответствие(ВыбраннаяСтрока[0], ОсновнаяСтрока) ;
		
 		Элементы.ИНАГРО_СоответствияWBS.Обновить();
    
 	КонецЕсли;
	
КонецПроцедуры

&НаСервере
Процедура ЗаписатьСоответствие(Знач ВыбСтрока, Знач ОсновнаяСтрока)
	
	ОсновнаяСтрока = ДеревоWBS.НайтиПоИдентификатору(ОсновнаяСтрока);
	ВыбСтрока      = ДеревоWBSСоотв.НайтиПоИдентификатору(ВыбСтрока);
		
	МенеджерЗаписи = РегистрыСведений.ИНАГРО_СоответствияWBS.СоздатьМенеджерЗаписи();
	// по договоренности первый всегда наш план, а в соответствии работы заказчика
	МенеджерЗаписи.Версия     = ВерсияСоотв;
	МенеджерЗаписи.КлючСтроки = ВыбСтрока.КлючСтроки;
	МенеджерЗаписи.ВидРаботы  = ВыбСтрока.ВидРаботы;
	
	МенеджерЗаписи.ВерсияСоответствия     = Версия;
	МенеджерЗаписи.КлючСтрокиСоответствия = ОсновнаяСтрока.КлючСтроки;
	МенеджерЗаписи.ВидРаботыСоответствия  = ОсновнаяСтрока.ВидРаботы;
	
	Если ПроверкаУсловий(МенеджерЗаписи) Тогда
		Попытка
			МенеджерЗаписи.Записать(Истина);
		Исключение
			ОбщегоНазначенияКлиентСервер.СообщитьПользователю(ОписаниеОшибки());
		КонецПопытки;
	КонецЕсли;
 	
КонецПроцедуры

&НаСервереБезКонтекста
Функция ПроверкаУсловий(МенеджерЗаписи)
	
	//СообщениеТекст = НСтр("ru = 'Для вида работы уже установлено соответствие %1'; en = 'no'");
	//
	//
	//Запрос = Новый Запрос;
	//Запрос.Текст = 
	//"ВЫБРАТЬ
	//|	ИНАГРО_СоответствияWBS.ВидРаботыСоответствия,
	//|	ИНАГРО_СоответствияWBS.ВидРаботыСоответствия.Наименование КАК Наименование
	//|ИЗ
	//|	РегистрСведений.ИНАГРО_СоответствияWBS КАК ИНАГРО_СоответствияWBS
	//|ГДЕ
	//|	ИНАГРО_СоответствияWBS.Версия = &Версия
	//|	И ИНАГРО_СоответствияWBS.ВерсияСоответствия = &ВерсияСоответствия
	//|	И ИНАГРО_СоответствияWBS.КлючСтроки = &КлючСтроки
	//|	И ИНАГРО_СоответствияWBS.КлючСтрокиСоответствия <> &КлючСтрокиСоответствия";
	//
	//Запрос.УстановитьПараметр("Версия", МенеджерЗаписи.Версия);
	//Запрос.УстановитьПараметр("ВерсияСоответствия", МенеджерЗаписи.ВерсияСоответствия);
	//Запрос.УстановитьПараметр("КлючСтроки", МенеджерЗаписи.КлючСтроки);
	//Запрос.УстановитьПараметр("КлючСтрокиСоответствия", МенеджерЗаписи.КлючСтрокиСоответствия);
	//
	//РезультатЗапроса = Запрос.Выполнить();
	//
	//ВыборкаДетальныеЗаписи = РезультатЗапроса.Выбрать();
	//
	//Пока ВыборкаДетальныеЗаписи.Следующий() Цикл
	//	
	//	СообщениеТекст1 = СтрЗаменить(СообщениеТекст, "%1", ВыборкаДетальныеЗаписи.Наименование);
	//	                                                    
	//	ОбщегоНазначенияКлиентСервер.СообщитьПользователю(СообщениеТекст1);
	//	Возврат Ложь;
	//КонецЦикла;
	//

	Возврат Истина;
	
КонецФункции

&НаКлиенте
Процедура ДеревоWBSВыбор(Элемент, ВыбраннаяСтрока, Поле, СтандартнаяОбработка)
	
	ВыбСтрока = ДеревоWBS.НайтиПоИдентификатору(ВыбраннаяСтрока);
	
	Если ВыбСтрока <> Неопределено   Тогда
		УстановитьОтборРегистра(ВыбСтрока);
 	КонецЕсли;
	
КонецПроцедуры

&НаКлиенте
Процедура УстановитьОтборРегистра(ВыбСтрока)
	
	ОбщегоНазначенияКлиентСервер.УстановитьЭлементОтбораДинамическогоСписка(ЭтаФорма.ИНАГРО_СоответствияWBS, "КлючСтрокиСоответствия", ВыбСтрока.КлючСтроки, ВидСравненияКомпоновкиДанных.Равно, , Истина, РежимОтображенияЭлементаНастройкиКомпоновкиДанных.Недоступный);
	ОбщегоНазначенияКлиентСервер.УстановитьЭлементОтбораДинамическогоСписка(ЭтаФорма.ИНАГРО_СоответствияWBS, "КлючСтроки",,,, Ложь);// снять зеркальный отбор
	
КонецПроцедуры

&НаСервере
Процедура СкрытьРаботыССоответствиямиНаСервере()
	
	НеПоказыватьРаботыССоответствиями = не НеПоказыватьРаботыССоответствиями;
	
	Элементы.ДеревоWBSСоотвСкрыть.Заголовок = ?(НеПоказыватьРаботыССоответствиями, "Показать работы с соответствиями", "Скрыть работы с соответствиями");
	
КонецПроцедуры

&НаСервере
Процедура СкрытьРаботыССоответствиямиНаСервереВнешняя()
	
	НеПоказыватьРаботыССоответствиямиВнешняя = не НеПоказыватьРаботыССоответствиямиВнешняя;
	
	Элементы.ДеревоWBSСкрытьРаботысСоответствиямиВнешняя.Заголовок = ?(НеПоказыватьРаботыССоответствиямиВнешняя, "Показать работы с соответствиями", "Скрыть работы с соответствиями");
	
КонецПроцедуры

&НаКлиенте
Процедура СкрытьРаботыССоответствиями(Команда)
	СкрытьРаботыССоответствиямиНаСервере();
	ВерсияСоотвПриИзменении("");
КонецПроцедуры

&НаКлиенте
Процедура ДеревоWBSПриАктивизацииСтроки(Элемент)
	
	ТекущиеДанные = Элементы.ДеревоWBS.ТекущиеДанные;
	
	Если ТекущиеДанные <> Неопределено Тогда
 		
		ВыбСтрока = ДеревоWBS.НайтиПоИдентификатору(ТекущиеДанные.ПолучитьИдентификатор());
		
		Если ВыбСтрока <> Неопределено   Тогда
			УстановитьОтборРегистра(ВыбСтрока);
		КонецЕсли;
		
	КонецЕсли;

КонецПроцедуры

&НаКлиенте
Процедура ОтчетСоответствий(Команда)
	
	ПараметрыФормы = Новый Структура("Отбор, ФиксированныеНастройки, КлючНазначенияИспользования, КлючВарианта, СформироватьПриОткрытии, ВидимостьКомандВариантовОтчетов");
	ПараметрыФормы.СформироватьПриОткрытии = Истина;
	ПараметрыФормы.ВидимостьКомандВариантовОтчетов = Истина;
  	
	ПараметрыФормы.Отбор = Новый Структура("Версия, ВерсияPlan, Проект", Версия, ВерсияСоотв, Проект);
	ПараметрыФормы.КлючНазначенияИспользования = "Версия";
	ПараметрыФормы.КлючВарианта = "Версия";
	
 	ОткрытьФорму("Отчет.ИНАГРО_СоответствияВерсийПроекта.Форма", ПараметрыФормы);

КонецПроцедуры

&НаКлиенте
Процедура УстановитьСоответствия(Команда)

	ВыделенныеСтроки = Элементы.ДеревоWBSСоотв.ВыделенныеСтроки;
	
 	ОсновнаяСтрока = Элементы.ДеревоWBS.ТекущиеДанные;
	
	Для каждого ВыбСтрока Из ВыделенныеСтроки Цикл
		
		Если ВыбСтрока <> Неопределено Тогда
			УстановкаСоответствия(ОсновнаяСтрока, ВыбСтрока)
		КонецЕсли;//Если ВыбСтрока <> Неопределено   Тогда
		
	КонецЦикла;

	Элементы.ИНАГРО_СоответствияWBS.Обновить();
	
	Если НеПоказыватьРаботыССоответствиями Тогда
		ВерсияСоотвПриИзменении("");
	КонецЕсли;
	
	Если НеПоказыватьРаботыССоответствиямиВнешняя Тогда
		ВерсияПриИзменении("");
	КонецЕсли;
	
КонецПроцедуры

&НаКлиенте
Процедура УстановкаСоответствия(ОсновнаяСтрока, ВыбраннаяСтрокаИД)
	
	ВыбраннаяСтрока = ДеревоWBSСоотв.НайтиПоИдентификатору(ВыбраннаяСтрокаИД);
   	
	Если Не ВыбраннаяСтрока.ЭтоРабота Тогда
		//ПоказатьПредупреждение(,"Установка соответствий для групп не предусмотрено", 60);
		Возврат;
	КонецЕсли;
 	
	Если ОсновнаяСтрока = Неопределено Тогда
		ПоказатьПредупреждение(,"Не выбрана ведущая строка", 60);
		Возврат;
	Иначе
		Если Не ОсновнаяСтрока.ЭтоРабота Тогда
			//ПоказатьПредупреждение(,"Установка соответствий для групп не предусмотрено", 60);
			Возврат;
		КонецЕсли;
		
 	КонецЕсли;
	
	ЗаписатьСоответствие(ВыбраннаяСтрокаИД, ОсновнаяСтрока.ПолучитьИдентификатор());
 	
КонецПроцедуры

&НаКлиенте
Процедура СкрытьРаботысСоответствиямиВнешняя(Команда)

	СкрытьРаботыССоответствиямиНаСервереВнешняя();
	ВерсияПриИзменении("");

КонецПроцедуры

&НаКлиенте
Процедура СделатьКлючевой(Команда)
	
	ТД = Элементы.ИНАГРО_СоответствияWBS.ТекущиеДанные;
	
	Если ТД = Неопределено Тогда
		Возврат;
	КонецЕсли;
	
	УстановитьИлиОтменитьКлючевуюРаботу(ТД.Версия, ТД.ВерсияСоответствия, ТД.КлючСтроки, ТД.КлючСтрокиСоответствия);
	
	Элементы.ИНАГРО_СоответствияWBS.Обновить();
	
КонецПроцедуры // СделатьКлючевой()

&НаСервере
Процедура УстановитьИлиОтменитьКлючевуюРаботу(Версия, ВерсияСоответствия, КлючСтроки, КлючСтрокиСоответствия)
	
	МенеджерЗаписи = РегистрыСведений.ИНАГРО_СоответствияWBS.СоздатьМенеджерЗаписи();
	
	МенеджерЗаписи.Версия             = Версия;
	МенеджерЗаписи.ВерсияСоответствия = ВерсияСоответствия;
	
	МенеджерЗаписи.КлючСтроки             = КлючСтроки;
	МенеджерЗаписи.КлючСтрокиСоответствия = КлючСтрокиСоответствия;
	
	МенеджерЗаписи.Прочитать();
	
	Если МенеджерЗаписи.Ключевая Тогда
		МенеджерЗаписи.Ключевая = Ложь;
	Иначе
		МенеджерЗаписи.Ключевая = Истина;
	КонецЕсли;
	
	Попытка
		МенеджерЗаписи.Записать(Истина);
	Исключение
		ОбщегоНазначенияКлиентСервер.СообщитьПользователю(ОписаниеОшибки());
	КонецПопытки;
	
КонецПроцедуры // УстановитьИлиОтменитьКлючевуюРаботу()

