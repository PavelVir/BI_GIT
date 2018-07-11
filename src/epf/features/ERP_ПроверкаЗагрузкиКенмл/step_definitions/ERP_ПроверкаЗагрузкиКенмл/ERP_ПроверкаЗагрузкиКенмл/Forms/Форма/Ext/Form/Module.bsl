﻿
///////////////////////////////////////////////////
//Служебные функции и процедуры
///////////////////////////////////////////////////

&НаКлиенте
// контекст фреймворка Vanessa-Behavior
Перем Ванесса;
 
&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 
&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Behavior.
Перем КонтекстСохраняемый Экспорт;

&НаКлиенте
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,ОписаниеШага,ТипШага,Транзакция,Параметр);

//	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯОткрылНовыйСеансTestClientИлиПодключилУжеСуществующий()","ЯОткрылНовыйСеансTestClientИлиПодключилУжеСуществующий","Дано Я открыл новый сеанс TestClient или подключил уже существующий","",""); //уже был в E:\ONEASS\OneScript\lib\add\features\libraries\TestClients\step_definitions\РаботаСTestClient.epf
//	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯЗакрылВсеОкнаКлиентскогоПриложения()","ЯЗакрылВсеОкнаКлиентскогоПриложения","И    Я закрыл все окна клиентского приложения","",""); //уже был в E:\ONEASS\OneScript\lib\add\features\libraries\UITestRunner\step_definitions\РаботаСИнтерфейсом.epf
//	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВКомандномИнтерфейсеЯВыбираю(Парам01,Парам02)","ВКомандномИнтерфейсеЯВыбираю","И В командном интерфейсе я выбираю 'Управление строительным производством' 'Загрузка из kenml (2.4.1)'","",""); //уже был в E:\ONEASS\OneScript\lib\add\features\libraries\UITestRunner\step_definitions\РаботаСИнтерфейсом.epf
//	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ОткрылосьОкно(Парам01)","ОткрылосьОкно","Тогда открылось окно 'Мастер формирования УГПР из xml: Загрузка из kenml (2.4.1)'","",""); //уже был в E:\ONEASS\OneScript\lib\add\features\libraries\UITestRunner\step_definitions\РаботаСИнтерфейсом.epf
//	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ИзВыпадающегоСпискаЯВыбираюТочноеЗначение(Парам01,Парам02)","ИзВыпадающегоСпискаЯВыбираюТочноеЗначение","И из выпадающего списка ""Проект"" я выбираю точное значение '!Простой проект для проверки'","",""); //уже был в E:\ONEASS\OneScript\lib\add\features\libraries\UITestRunner\step_definitions\РаботаСИнтерфейсом.epf
//	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯБудуВыбиратьВнешнийФайл(Парам01)","ЯБудуВыбиратьВнешнийФайл","И я буду выбирать внешний файл ""E:\DOCUMENTS\Mega\ПРОЕКТЫ\BI_GIT\features\ERP_ПроверкаЗагрузкиКенмл\Формат556.kenml""","",""); //уже был в E:\ONEASS\OneScript\lib\add\features\libraries\UITestRunner\step_definitions\РаботаСИнтерфейсом.epf
//	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯНажимаюНаКнопку(Парам01)","ЯНажимаюНаКнопку","И я нажимаю на кнопку 'Выбрать файл'","",""); //уже был в E:\ONEASS\OneScript\lib\add\features\libraries\UITestRunner\step_definitions\РаботаСИнтерфейсом.epf

	Возврат ВсеТесты;
КонецФункции
	
&НаСервере
// Служебная функция.
Функция ПолучитьМакетСервер(ИмяМакета)
	ОбъектСервер = РеквизитФормыВЗначение("Объект");
	Возврат ОбъектСервер.ПолучитьМакет(ИмяМакета);
КонецФункции
	
&НаКлиенте
// Служебная функция для подключения библиотеки создания fixtures.
Функция ПолучитьМакетОбработки(ИмяМакета) Экспорт
	Возврат ПолучитьМакетСервер(ИмяМакета);
КонецФункции



///////////////////////////////////////////////////
//Работа со сценариями
///////////////////////////////////////////////////

&НаКлиенте
// Процедура выполняется перед началом каждого сценария
Процедура ПередНачаломСценария() Экспорт
	
КонецПроцедуры

&НаКлиенте
// Процедура выполняется перед окончанием каждого сценария
Процедура ПередОкончаниемСценария() Экспорт
	
КонецПроцедуры



///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////

//&НаКлиенте
////Дано Я открыл новый сеанс TestClient или подключил уже существующий
////@ЯОткрылНовыйСеансTestClientИлиПодключилУжеСуществующий()
//Процедура ЯОткрылНовыйСеансTestClientИлиПодключилУжеСуществующий() Экспорт
//	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
//	ВызватьИсключение "Не реализовано.";
//КонецПроцедуры

//&НаКлиенте
////И    Я закрыл все окна клиентского приложения
////@ЯЗакрылВсеОкнаКлиентскогоПриложения()
//Процедура ЯЗакрылВсеОкнаКлиентскогоПриложения() Экспорт
//	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
//	ВызватьИсключение "Не реализовано.";
//КонецПроцедуры

//&НаКлиенте
////И В командном интерфейсе я выбираю 'Управление строительным производством' 'Загрузка из kenml (2.4.1)'
////@ВКомандномИнтерфейсеЯВыбираю(Парам01,Парам02)
//Процедура ВКомандномИнтерфейсеЯВыбираю(Парам01,Парам02) Экспорт
//	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
//	ВызватьИсключение "Не реализовано.";
//КонецПроцедуры

//&НаКлиенте
////Тогда открылось окно 'Мастер формирования УГПР из xml: Загрузка из kenml (2.4.1)'
////@ОткрылосьОкно(Парам01)
//Процедура ОткрылосьОкно(Парам01) Экспорт
//	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
//	ВызватьИсключение "Не реализовано.";
//КонецПроцедуры

//&НаКлиенте
////И из выпадающего списка "Проект" я выбираю точное значение '!Простой проект для проверки'
////@ИзВыпадающегоСпискаЯВыбираюТочноеЗначение(Парам01,Парам02)
//Процедура ИзВыпадающегоСпискаЯВыбираюТочноеЗначение(Парам01,Парам02) Экспорт
//	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
//	ВызватьИсключение "Не реализовано.";
//КонецПроцедуры

//&НаКлиенте
////И я буду выбирать внешний файл "E:\DOCUMENTS\Mega\ПРОЕКТЫ\BI_GIT\features\ERP_ПроверкаЗагрузкиКенмл\Формат556.kenml"
////@ЯБудуВыбиратьВнешнийФайл(Парам01)
//Процедура ЯБудуВыбиратьВнешнийФайл(Парам01) Экспорт
//	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
//	ВызватьИсключение "Не реализовано.";
//КонецПроцедуры

//&НаКлиенте
////И я нажимаю на кнопку 'Выбрать файл'
////@ЯНажимаюНаКнопку(Парам01)
//Процедура ЯНажимаюНаКнопку(Парам01) Экспорт
//	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
//	ВызватьИсключение "Не реализовано.";
//КонецПроцедуры
