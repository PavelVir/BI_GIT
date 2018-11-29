﻿#language: ru
@tree
@IgnoreOnCIMainBuild


Функционал: Я проверяю отчеты подсистемы УСП

Как Пользователь
Я хочу проверить работу форм отчетов
Чтобы не было ошибок при открытии формы

Контекст:

	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	 Тогда Я устанавливаю severity 'critical'

  

Структура сценария: Проверка открытия  всех отчетов УСП
	Когда Я закрыл все окна клиентского приложения
	Когда В командном интерфейсе я выбираю 'Управление строительным производством'<НазваниеКнопки> 
	и не появилось окно предупреждения системы
	Тогда открылось окно <НазваниеОкна> 
	И я активизирую поле <ПолеРезультата> 
	#И я нажимаю на кнопку 'Сформировать'
	И в табличном документе <ПолеРезультата> я перехожу к ячейке "R1C1"
	И Я закрыл все окна клиентского приложения
	
	Примеры:
	|НазваниеКнопки	| НазваниеОкна | ПолеРезультата|
	|'Актирование работ'| 'Актирование работ*'|	'Результат'|
	|'Журнал учета выполненных работ' |  'Журнал учета выполненных работ*'|'Результат'|
	|'Материальный отчет М-19'| 'Материальный отчет М-19*'|'Результат'|
	|'Отчет по актам отклонения'| 'Отчет по актам отклонения' |'Результат'|
	|'Отчет по изменениям стоимости ресурсов'| 'Отчет по изменениям стоимости ресурсов*' |'ОтчетТабличныйДокумент'|
	|'Отчет по перевозкам'	| 'Отчет по перевозкам*' |'Результат'|
	|'Отчет по экономии ресурсов'	| 'Отчет по экономии ресурсов*' |'Результат'|
	|'Сводный отчет по проекту'	| 'Сводный отчет по проекту*' |'Результат'|
	|'Анализ обеспеченности потребности материалов по проекту'	| 'Анализ обеспеченности потребности материалов по проекту*' |'Результат'|
	|'Анализ потребности материалов по проекту'	| 'Анализ потребности материалов по проекту*' |'Результат'|
	|'Данные проекта'	| 'Данные проекта*' |'ОтчетТабличныйДокумент'|
	|'Потребность в машинах и механизмах'			| 'Потребность в машинах и механизмах*' |'Результат'|
	|'Потребность в трудовых ресурсах'	| 'Потребность в трудовых ресурсах*' |'Результат'|
	|'Проверка периодов выполнения работ (УСП)'		| 'Проверка распределения*' |'ОтчетТабличныйДокумент'|
	|'Расценка бюджета объекта строительства'| 'Расценка бюджета объекта строительства*' |'Результат'|
	|'Соответствия работ и ресурсов версий'	| 'BoQ*' |'ОтчетТабличныйДокумент'|
	|'Сравнение версий проекта'	| 'Сравнение версий проекта*' |'ОтчетТабличныйДокумент'|
	|'Сравнение расценок сценариев'	| 'Сравнение расценок сценариев*' |'Результат'|
	|'План-фактный анализ в машинах и механизмах'| 'План-фактный анализ в машинах и механизмах*' |'ОтчетТабличныйДокумент'|
	|'План-фактный анализ использования трудовых ресурсов'	| 'План-фактный анализ использования трудовых ресурсов*' |'ОтчетТабличныйДокумент'|
	| 'План-фактный анализ расхода материалов'	| 'План-фактный анализ расхода материалов*' |'ОтчетТабличныйДокумент'|
 







