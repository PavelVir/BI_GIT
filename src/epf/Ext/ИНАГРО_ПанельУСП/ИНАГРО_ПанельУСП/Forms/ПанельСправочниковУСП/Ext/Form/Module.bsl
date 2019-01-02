﻿
#Область ОбработчикиСобытийФормы

&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	Если Параметры.Свойство("АвтоТест") Тогда // Возврат при получении формы для анализа.
		Возврат;
	КонецЕсли;

	УправлениеЭлементами();
	
	СобытияФорм.ПриСозданииНаСервере(ЭтаФорма, Отказ, СтандартнаяОбработка);

КонецПроцедуры

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

&НаСервере
Процедура УправлениеЭлементами()
	
	 Элементы.ОткрытьОрганизации.Видимость = ПравоДоступа("Просмотр", Метаданные.Справочники.Организации);
	 Элементы.ОткрытьПодконструктив.Видимость = ПравоДоступа("Просмотр", Метаданные.Справочники.ИНАГРО_ПодКонструктив);
	 Элементы.ОткрытьПодконструктивы2.Видимость = ПравоДоступа("Просмотр", Метаданные.Справочники.ИНАГРО_ПодКонструктив2);
	 Элементы.ОткрытьПричиныОтклонений.Видимость = ПравоДоступа("Просмотр", Метаданные.Справочники.ИНАГРО_ПричиныОтклонений);
	 Элементы.ОткрытьПроекты.Видимость = ПравоДоступа("Просмотр", Метаданные.Справочники.Проекты);
	 Элементы.ОткрытьРесурсы.Видимость = ПравоДоступа("Просмотр", Метаданные.Справочники.СМ_Ресурсы);
	 Элементы.ОткрытьРоли.Видимость = ПравоДоступа("Просмотр", Метаданные.Справочники.ИНАГРО_Роли);
	 Элементы.ОткрытьСостав.Видимость = ПравоДоступа("Просмотр", Метаданные.Справочники.ИНАГРО_СоставыРесурсов);
	 Элементы.ОткрытьСтатьиРасходов.Видимость = ПравоДоступа("Просмотр", Метаданные.РегистрыСведений.ИНАГРО_СтатьиРасходовРесурсы);
	 Элементы.ОткрытьСтатьяРасходовСубподряд.Видимость = ПравоДоступа("Просмотр", Метаданные.Константы.ИНАГРО_СтатьяРасходовСубподряд);
	 Элементы.ОткрытьСтоимостьСоставаРесурса.Видимость = ПравоДоступа("Просмотр", Метаданные.РегистрыСведений.ИНАГРО_СтоимостьСоставаРесурса);
	 //Элементы.ОткрытьСтроительныеОбъекты.Видимость = ПравоДоступа("Просмотр", Метаданные.Справочники.ИНАГРО_СтроительныеОбъекты);	// удалены	
	 Элементы.ОткрытьСтроительныеОбъектыКласс.Видимость = ПравоДоступа("Просмотр", Метаданные.Справочники.ИНАГРО_СтроительныеОбъектыКласс);
	 Элементы.ОткрытьСценарий.Видимость = ПравоДоступа("Просмотр", Метаданные.Справочники.ИНАГРО_Сценарий);
  	 Элементы.ОткрытьШаблоныВБС.Видимость = ПравоДоступа("Просмотр", Метаданные.Справочники.ИНАГРО_ШаблоныWBS);
	 Элементы.ОткрытьЭлементы.Видимость = ПравоДоступа("Просмотр", Метаданные.Справочники.ИНАГРО_ЭлементыОбъектовКлас);
	 Элементы.ОткрытьЭлементы2.Видимость = ПравоДоступа("Просмотр", Метаданные.Справочники.ИНАГРО_ЭлементыОбъектовКлас2);
	 Элементы.ОткрытьWBS.Видимость = ПравоДоступа("Просмотр", Метаданные.Справочники.ИНАГРО_КонструктивыПроекта);
	 Элементы.ОткрытьАльбом.Видимость = ПравоДоступа("Просмотр", Метаданные.Справочники.ИНАГРО_АльбомПроектов);
	 Элементы.ОткрытьВерсия.Видимость = ПравоДоступа("Просмотр", Метаданные.Справочники.ИНАГРО_Версия);
	 Элементы.ОткрытьВидыНР.Видимость = ПравоДоступа("Просмотр", Метаданные.Справочники.ИНАГРО_ВидыНР);
	 Элементы.ОткрытьВидыПроектов.Видимость = ПравоДоступа("Просмотр", Метаданные.Справочники.ИНАГРО_ВидыПроектов);
	 Элементы.ОткрытьВидыРабот.Видимость = ПравоДоступа("Просмотр", Метаданные.Справочники.ИНАГРО_ВидыРаботПроект);
	 //Элементы.ОткрытьВидыРаботКлас.Видимость = ПравоДоступа("Просмотр", Метаданные.Справочники.ИНАГРО_ВидыРабот);	//   удалены	
	 Элементы.ОткрытьКонструктивы.Видимость = ПравоДоступа("Просмотр", Метаданные.Справочники.ИНАГРО_Конструктивы);
	 Элементы.ОткрытьОперации.Видимость = ПравоДоступа("Просмотр", Метаданные.Справочники.ИНАГРО_Операции);
	 Элементы.ОткрытьСоответствияСметныхЕдиниц.Видимость = ПравоДоступа("Просмотр", Метаданные.РегистрыСведений.ИНАГРО_СоответствияСметныхЕдиницКлассификатору);
	 Элементы.ОткрытьСоответствияПроекта.Видимость = ПравоДоступа("Просмотр", Метаданные.РегистрыСведений.ИНАГРО_СоответствияПроекта);
	 Элементы.ОткрытьГрафикиПроекта.Видимость = ПравоДоступа("Просмотр", Метаданные.Справочники.ГрафикиРаботыСотрудников);
	 
	 Элементы.ОткрытьДолжностиУСП.Видимость = ПравоДоступа("Просмотр", Метаданные.Справочники.BI_ДолжностиУСП); //Ситис Вирич П.В. #2421  2018-05-30
	 
	 Элементы.Справочник_BI_ККЭ.Видимость =  ПравоДоступа("Просмотр", Метаданные.Справочники.BI_ККЭ);  //Ситис Вирич П.В. #2531 2018-06-27

КонецПроцедуры
 
#КонецОбласти

#Область ОбработчикиКомандФормы

&НаКлиенте
Процедура ОткрытьОрганизации(Команда)
 	ОткрытьФорму("Справочник.Организации.ФормаСписка", , ЭтаФорма);
 КонецПроцедуры

&НаКлиенте
Процедура ОткрытьОперации(Команда)
	ОткрытьФорму("Справочник.ИНАГРО_Операции.ФормаСписка", , ЭтаФорма);
КонецПроцедуры

&НаКлиенте
Процедура ОткрытьПроекты(Команда)
	ОткрытьФорму("Справочник.Проекты.ФормаСписка", , ЭтаФорма);
КонецПроцедуры

&НаКлиенте
Процедура ОткрытьАльбом(Команда)
	ОткрытьФорму("Справочник.ИНАГРО_АльбомПроектов.ФормаСписка", , ЭтаФорма);
КонецПроцедуры

&НаКлиенте
Процедура ОткрытьПричиныОтклонений(Команда)
	ОткрытьФорму("Справочник.ИНАГРО_ПричиныОтклонений.ФормаСписка", , ЭтаФорма);
КонецПроцедуры

&НаКлиенте
Процедура ОткрытьРоли(Команда)
	ОткрытьФорму("Справочник.ИНАГРО_Роли.ФормаСписка", , ЭтаФорма);
КонецПроцедуры

&НаКлиенте
Процедура ОткрытьСостав(Команда)
	ОткрытьФорму("Справочник.ИНАГРО_СоставыРесурсов.ФормаСписка", , ЭтаФорма);
КонецПроцедуры

&НаКлиенте
Процедура ОткрытьСтатьиРасходов(Команда)
	ОткрытьФорму("РегистрСведений.ИНАГРО_СтатьиРасходовРесурсы.ФормаСписка", , ЭтаФорма);
КонецПроцедуры

&НаКлиенте
Процедура ОткрытьСтоимостьСоставаРесурса(Команда)
	ОткрытьФорму("РегистрСведений.ИНАГРО_СтоимостьСоставаРесурса.ФормаСписка", , ЭтаФорма);
КонецПроцедуры

&НаКлиенте
Процедура ОткрытьВидыНР(Команда)
	ОткрытьФорму("Справочник.ИНАГРО_ВидыНР.ФормаСписка", , ЭтаФорма);
КонецПроцедуры

&НаКлиенте
Процедура ОткрытьWBS(Команда)
	ОткрытьФорму("Справочник.ИНАГРО_КонструктивыПроекта.ФормаСписка", , ЭтаФорма);
КонецПроцедуры

&НаКлиенте
Процедура ОткрытьВерсия(Команда)
	ОткрытьФорму("Справочник.ИНАГРО_Версия.ФормаСписка", , ЭтаФорма);
КонецПроцедуры

&НаКлиенте
Процедура ОткрытьКонструктивы(Команда)
	ОткрытьФорму("Справочник.ИНАГРО_Конструктивы.ФормаСписка", , ЭтаФорма);
КонецПроцедуры

&НаКлиенте
Процедура ОткрытьСценарий(Команда)
	ОткрытьФорму("Справочник.ИНАГРО_Сценарий.ФормаСписка", , ЭтаФорма);
КонецПроцедуры

&НаКлиенте
Процедура ОткрытьВидыРабот(Команда)
	ОткрытьФорму("Справочник.ИНАГРО_ВидыРаботПроект.ФормаСписка", , ЭтаФорма);
КонецПроцедуры

&НаКлиенте
Процедура ОткрытьСтроительныеОбъекты(Команда)
	//ОткрытьФорму("Справочник.ИНАГРО_СтроительныеОбъекты.ФормаСписка", , ЭтаФорма);
КонецПроцедуры

&НаКлиенте
Процедура ОткрытьВидыРаботКлас(Команда)
	ОткрытьФорму("Справочник.СМ_НормативныеСборники.ФормаСписка", , ЭтаФорма);
КонецПроцедуры

&НаКлиенте
Процедура ОткрытьСтроительныеОбъектыКласс(Команда)
	ОткрытьФорму("Справочник.ИНАГРО_СтроительныеОбъектыКласс.ФормаСписка", , ЭтаФорма);
КонецПроцедуры

&НаКлиенте
Процедура ОткрытьПодконструктив(Команда)
	ОткрытьФорму("Справочник.ИНАГРО_ПодКонструктив.ФормаСписка", , ЭтаФорма);
КонецПроцедуры

&НаКлиенте
Процедура ОткрытьЭлементы(Команда)
	ОткрытьФорму("Справочник.ИНАГРО_ЭлементыОбъектовКлас.ФормаСписка", , ЭтаФорма);
КонецПроцедуры

&НаКлиенте
Процедура ОткрытьЭлементы2(Команда)
	ОткрытьФорму("Справочник.ИНАГРО_ЭлементыОбъектовКлас2.ФормаСписка", , ЭтаФорма);
КонецПроцедуры

&НаКлиенте
Процедура ОткрытьВидыПроектов(Команда)
	ОткрытьФорму("Справочник.ИНАГРО_ВидыПроектов.ФормаСписка", , ЭтаФорма);
КонецПроцедуры

&НаКлиенте
Процедура ОткрытьШаблоныВБС(Команда)
	ОткрытьФорму("Справочник.ИНАГРО_ШаблоныWBS.ФормаСписка", , ЭтаФорма);
КонецПроцедуры

&НаКлиенте
Процедура ОткрытьРесурсы(Команда)
	ОткрытьФорму("Справочник.СМ_Ресурсы.ФормаСписка", , ЭтаФорма);
КонецПроцедуры

&НаКлиенте
Процедура ОткрытьСоответствияСметныхЕдиниц(Команда)
	ОткрытьФорму("РегистрСведений.ИНАГРО_СоответствияСметныхЕдиницКлассификатору.ФормаСписка", , ЭтаФорма);
КонецПроцедуры

&НаКлиенте
Процедура ОткрытьСоответствияПроекта(Команда)
	ОткрытьФорму("РегистрСведений.ИНАГРО_СоответствияПроекта.ФормаСписка", , ЭтаФорма);
КонецПроцедуры

&НаКлиенте
Процедура ОткрытьПодконструктивы2(Команда)
	ОткрытьФорму("Справочник.ИНАГРО_ПодКонструктив2.ФормаСписка", , ЭтаФорма);
КонецПроцедуры

&НаКлиенте
Процедура ОткрытьГрафикиПроекта(Команда)
	ОткрытьФорму("Справочник.ГрафикиРаботыСотрудников.Форма.ФормаСписка",Новый Структура("УСП", истина) , ЭтаФорма);
КонецПроцедуры

//РоманенкоА 20171128
&НаКлиенте
Процедура ОткрытьСтатьяРасходовСубподряд(Команда)
	ОткрытьФорму("Константа.ИНАГРО_СтатьяРасходовСубподряд.ФормаКонстант",, ЭтаФорма);
КонецПроцедуры  //РоманенкоА 20171128

&НаКлиенте
Процедура ОткрытьВеткиПроектов(Команда)
	ОткрытьФорму("Справочник.ИНАГРО_ВеткиПроектов.ФормаСписка", , ЭтаФорма);
КонецПроцедуры

&НаКлиенте
Процедура КонстантаЗапретУтверждения(Команда)
	ОткрытьФорму("Константа.ИНАГРО_ЗапрещатьУтверждениеБезКлассификаторов.ФормаКонстант",, ЭтаФорма);
КонецПроцедуры

&НаКлиенте
Процедура ОткрытьДолжностиУСП(Команда)
	ОткрытьФорму("Справочник.BI_ДолжностиУСП.ФормаСписка", , ЭтаФорма);
КонецПроцедуры

&НаКлиенте
Процедура Справочник_BI_ККЭ(Команда)
	ОткрытьФорму("Справочник.BI_ККЭ.ФормаСписка", , ЭтаФорма);
КонецПроцедуры

#КонецОбласти

