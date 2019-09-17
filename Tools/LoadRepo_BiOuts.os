#Использовать v8runner
#Использовать logos

Перем Лог;


Функция ЗагрузкаИзКонфигуратораТЕСТ()
	
	ФайлЖурнала = Новый ВыводЛогаВФайл;
	ФайлЖурнала.ОткрытьФайл("LoadRepBIOuts.log");
	
	Если Лог = Неопределено Тогда
		Лог = Логирование.ПолучитьЛог("logTest");
		Лог.ДобавитьСпособВывода(Новый ВыводЛогаВКонсоль);
		Лог.ДобавитьСпособВывода(ФайлЖурнала);		
	КонецЕсли;
	
	ПутьБазы = """sql01/Dev_BIOuts""";
	СтрокаСоединения = "/S"+ПутьБазы;
	Пользователь ="iRobot";
	Пароль = "Kamala$oft";
	
	СтрокаСоединенияХран = "tcp://SQL01/Dev_BIOuts";
	ПользовательХран ="Dev_BIOuts";
	ПарольХран = "";
	
	УправлениеКонфигуратором = Новый УправлениеКонфигуратором;
	УправлениеКонфигуратором.ИспользоватьВерсиюПлатформы("8.3.13");
	
	
	УправлениеКонфигуратором.УстановитьКонтекст(СтрокаСоединения, Пользователь, Пароль);	
	
	Лог.Информация(""+ТекущаяДата());
	Лог.Информация("Выполняю обновление конфигурации из хранилища");
	
	
	ТекущаяПроцедура = "ЗапуститьОбновлениеИзХранилища";
	
	Попытка
		УправлениеКонфигуратором.ОбновитьКонфигурациюБазыДанныхИзХранилища(СтрокаСоединенияХран, ПользовательХран, ПарольХран);	
		
		Текст = УправлениеКонфигуратором.ВыводКоманды();
		Если Не ПустаяСтрока(Текст) Тогда
			Лог.Информация(Текст);
		КонецЕсли;
		
		Лог.Информация("Обновление конфигурации из хранилища завершено");
		
	Исключение
		Лог.Ошибка(УправлениеКонфигуратором.ВыводКоманды());
		ВызватьИсключение ТекущаяПроцедура;
	КонецПопытки;
	
	
	
	Лог.Информация("Запускаю обновление конфигурации БД");
	
	ТекущаяПроцедура = "ОбновитьКонфигурациюБазыДанных";
	
	Попытка
		УправлениеКонфигуратором.ОбновитьКонфигурациюБазыДанных(Ложь);
		Текст           = УправлениеКонфигуратором.ВыводКоманды();
		Если Не ПустаяСтрока(Текст) Тогда
			Лог.Информация(Текст);
		КонецЕсли;
		
		Лог.Информация("Обновление конфигурации БД завершено.");	
		
	Исключение
		Лог.Ошибка(УправлениеКонфигуратором.ВыводКоманды());
		ВызватьИсключение ТекущаяПроцедура;
	КонецПопытки;
	
	Лог.Закрыть();
	
	
КонецФункции

ЗагрузкаИзКонфигуратораТЕСТ();