﻿
&НаСервере
фУНКЦИЯ ПолучитьПроектИзНастроек()
	
	Перем РезультатФ;
	
	ПараметрДанных = Отчет.КомпоновщикНастроек.Настройки.ПараметрыДанных.Элементы.Найти("Проект");
	
	Проект = Отчет.КомпоновщикНастроек.ПользовательскиеНастройки.Элементы.Найти(ПараметрДанных.ИдентификаторПользовательскойНастройки);
	
	Если Проект <> Неопределено Тогда
		
		РезультатФ = Проект.Значение;
		
	КонецЕсли;

	Возврат РезультатФ;
	
КонецФункции

&НаСервере
Процедура УстановитьОтборы()
	НастройкиОтчета = Отчет.КомпоновщикНастроек.Настройки;
	
	//Если ЗначениеЗаполнено(Проект) Тогда
	//	ЭлементОтбора = Неопределено; 
	//	Для каждого СтрОтбор Из НастройкиОтчета.Отбор.Элементы Цикл
	//		Если СтрОтбор.ЛевоеЗначение = Новый ПолеКомпоновкиДанных("Проект") Тогда
	//			ЭлементОтбора = СтрОтбор;
	//			Прервать;
	//		КонецЕсли; 
	//	КонецЦикла;
	//	Если ЭлементОтбора = Неопределено Тогда
	//		ЭлементОтбора = НастройкиОтчета.Отбор.Элементы.Добавить(Тип("ЭлементОтбораКомпоновкиДанных"));
	//		ЭлементОтбора.ЛевоеЗначение = Новый ПолеКомпоновкиДанных("Проект");
	//	КонецЕсли;
	//	
	//	ПользовательскаяНастройка = Отчет.КомпоновщикНастроек.ПользовательскиеНастройки.Элементы.Найти(ЭлементОтбора.ИдентификаторПользовательскойНастройки);
	//	ПользовательскаяНастройка.ВидСравнения 	 = ВидСравненияКомпоновкиДанных.Равно;
	//	ПользовательскаяНастройка.ПравоеЗначение = Проект;
	//	ПользовательскаяНастройка.Использование  = Истина;
	//Иначе
	//	ЭлементОтбора = Неопределено;
	//	Для каждого СтрОтбор Из НастройкиОтчета.Отбор.Элементы Цикл
	//		Если СтрОтбор.ЛевоеЗначение = Новый ПолеКомпоновкиДанных("Проект") Тогда
	//			ЭлементОтбора = СтрОтбор;		
	//		КонецЕсли; 
	//	КонецЦикла;
	//	Если ЭлементОтбора <> Неопределено Тогда
	//		ПользовательскаяНастройка = Отчет.КомпоновщикНастроек.ПользовательскиеНастройки.Элементы.Найти(ЭлементОтбора.ИдентификаторПользовательскойНастройки);
	//		ПользовательскаяНастройка.ПравоеЗначение = Справочники.Проекты.ПустаяСсылка();
	//		ПользовательскаяНастройка.Использование  = Ложь;
	//	КонецЕсли;
	//КонецЕсли; 

	Если ЗначениеЗаполнено(Конструктив) Тогда
		
		Запрос = Новый Запрос;
		Запрос.Текст = "ВЫБРАТЬ
		               |	ИНАГРО_УГПРРаботы.КлючСтроки
		               |ИЗ
		               |	РегистрСведений.ИНАГРО_УГПРРаботы КАК ИНАГРО_УГПРРаботы
		               |ГДЕ
		               |	ИНАГРО_УГПРРаботы.Проект = &Проект
		               |	И ИНАГРО_УГПРРаботы.ВидРаботы = &Конструктив
		               |	И ИНАГРО_УГПРРаботы.Версия.ВидВерсии = ЗНАЧЕНИЕ(Перечисление.ИНАГРО_ВидВерсии.Рабочая)";
		Запрос.УстановитьПараметр("Проект", ПолучитьПроектИзНастроек());
		Запрос.УстановитьПараметр("Конструктив", Конструктив);
		Рез = Запрос.Выполнить().Выгрузить();
		Если Рез.Количество() = 0 тогда
			Сообщить("Не найден	ключ строки для указанного конструктива. Проверьте наличие документа УГПР с данным конструктивом!");
		Иначе
			КлючСтроки = Рез[0].КлючСтроки;
		КонецЕсли;
		
		СписокКлючей = ПолучитьМассивКлючейПодчиненных(КлючСтроки);
		
		ЭлементОтбора = Неопределено;
		Для каждого СтрОтбор Из НастройкиОтчета.Отбор.Элементы Цикл
			Если СтрОтбор.ЛевоеЗначение = Новый ПолеКомпоновкиДанных("КлючСтроки") Тогда
				ЭлементОтбора = СтрОтбор;
				Прервать;
			КонецЕсли;
		КонецЦикла;
		Если ЭлементОтбора = Неопределено Тогда
			ЭлементОтбора = НастройкиОтчета.Отбор.Элементы.Добавить(Тип("ЭлементОтбораКомпоновкиДанных"));
			ЭлементОтбора.ЛевоеЗначение = Новый ПолеКомпоновкиДанных("КлючСтроки");
		КонецЕсли;
		
		ПользовательскаяНастройка = Отчет.КомпоновщикНастроек.ПользовательскиеНастройки.Элементы.Найти(ЭлементОтбора.ИдентификаторПользовательскойНастройки);
		
		ПользовательскаяНастройка.ВидСравнения 	 = ВидСравненияКомпоновкиДанных.ВСписке;
		ПользовательскаяНастройка.ПравоеЗначение = СписокКлючей;
		ПользовательскаяНастройка.Использование  = Истина;
	Иначе
		ЭлементОтбора = Неопределено;
		Для каждого СтрОтбор Из НастройкиОтчета.Отбор.Элементы Цикл
			Если СтрОтбор.ЛевоеЗначение = Новый ПолеКомпоновкиДанных("КлючСтроки") Тогда
				ЭлементОтбора = СтрОтбор;
			КонецЕсли;
		КонецЦикла;
		Если ЭлементОтбора <> Неопределено Тогда
			ПользовательскаяНастройка = Отчет.КомпоновщикНастроек.ПользовательскиеНастройки.Элементы.Найти(ЭлементОтбора.ИдентификаторПользовательскойНастройки);
			ПользовательскаяНастройка.ПравоеЗначение = Новый СписокЗначений;
			ПользовательскаяНастройка.Использование  = Ложь;
		КонецЕсли;
	КонецЕсли;
	
КонецПроцедуры

&НаКлиенте
Процедура КонструктивПриИзменении(Элемент)
	УстановитьОтборы();
КонецПроцедуры

&НаСервере
Функция ПолучитьМассивКлючейПодчиненных(КлючРодитель)
	
	Запрос = Новый Запрос;
	Запрос.Текст = "ВЫБРАТЬ
	               |	ИНАГРО_УГПРРаботы.КлючСтроки,
	               |	ИНАГРО_УГПРРаботы.ЭтоРабота,
	               |	ИНАГРО_УГПРРаботы.КлючСвязи
	               |ИЗ
	               |	РегистрСведений.ИНАГРО_УГПРРаботы КАК ИНАГРО_УГПРРаботы
	               |ГДЕ
	               |	ИНАГРО_УГПРРаботы.Проект = &Проект
	               |	И ИНАГРО_УГПРРаботы.КлючСвязи = &КлючРодитель
	               |	И ИНАГРО_УГПРРаботы.Версия.ВидВерсии = ЗНАЧЕНИЕ(Перечисление.ИНАГРО_ВидВерсии.Рабочая)";
	Запрос.УстановитьПараметр("Проект", ПолучитьПроектИзНастроек());
	Запрос.УстановитьПараметр("КлючРодитель", КлючРодитель);
	Рез = Запрос.Выполнить().Выгрузить();
	
	СписокКлючей = Новый СписокЗначений;
	Для Каждого СтрРез из Рез цикл
		Если СтрРез.ЭтоРабота тогда
			СписокКлючей.Добавить(СтрРез.КлючСтроки);
		Иначе
			СписокПодчиненыхКлючей = ПолучитьМассивКлючейПодчиненных(СтрРез.КлючСтроки);
			Для Каждого КлючСтрокиПодчиненный из СписокПодчиненыхКлючей цикл
				СписокКлючей.Добавить(КлючСтрокиПодчиненный.Значение);
			КонецЦикла;
		КонецЕсли;
	КонецЦикла;
	Возврат СписокКлючей;
	
КонецФункции

&НаКлиенте
Процедура ПроектПриИзменении(Элемент)
	УстановитьОтборы();
КонецПроцедуры
