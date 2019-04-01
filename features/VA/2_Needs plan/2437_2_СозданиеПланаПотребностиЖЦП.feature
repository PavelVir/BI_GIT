﻿#language: ru

#report.epic=Документы
#report.feature=План потребности в материалах
#report.story=План потребности в материалах на тестовых материалах

Функционал: Создание документа план потребностей в материалах

Как пользователь УСП
Я хочу протестировать базовое формирование документа потребности в материалах с установкой соответствий


Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: Я создаю план потребности в материалах на ЖЦП

	Когда В панели разделов я выбираю 'Управление строительным производством'	
	И Я нажимаю кнопку командного интерфейса 'План потребностей в материалах'
	Тогда открылось окно 'План потребностей в материалах'
	

	Зачистим старые данные
		И Я устанавливаю фильтр на список
		| Проект | Равно | Автотестирование загрузки 27 улицы (без графика) |
		| Пометка удаления | Равно | Нет |
		Когда Я убираю группировки в текущем списке
		И для каждой строки таблицы "Список" я выполняю
			И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюУстановитьПометкуУдаления' на элементе формы с именем "Список"
			Тогда открылось окно '1С:Предприятие'
			И я нажимаю на кнопку 'Да'

	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'План потребностей в материалах (создание)'
	И из выпадающего списка "Проект" я выбираю по строке 'Автотестирование загрузки 27 улицы (без графика)'
	И в поле 'Начало периода' я ввожу текст '01.01.2018'
	И в поле 'Конец периода' я ввожу текст '31.12.2019'	
	И я перехожу к закладке "Потребность периода"
	И в таблице "РесурсыМатериалыДЗ" я нажимаю на кнопку 'Заполнить потребность'	
	Тогда открылось окно 'План потребностей в материалах (создание) *'
	И в таблице "РесурсыМатериалыДЗ" я перехожу к строке:
		| 'Период' |  'Количество' | 'Единица измерения' | 'Ресурс'    |
		| 'Январь' |  '31,000001'  | 'шт'                | 'Материал1' |
	И в таблице "РесурсыМатериалыДЗ" я активизирую поле с именем "РесурсыМатериалыДЗРесурс"
	И в таблице "РесурсыМатериалыДЗ" я активизирую поле с именем "РесурсыМатериалыДЗНоменклатура"
	И в таблице "РесурсыМатериалыДЗ" я выбираю текущую строку
	И в таблице "РесурсыМатериалыДЗ" я выбираю значение реквизита с именем "РесурсыМатериалыДЗНоменклатура" из формы списка
	Тогда открылось окно 'Номенклатура'
	И в таблице "СписокРасширенныйПоискНоменклатура" я перехожу к строке:
		| 'Наименование' | 
		| 'Бензин А-92'  |
	И в таблице "СписокРасширенныйПоискНоменклатура" я выбираю текущую строку
	Тогда открылось окно 'План потребностей в материалах (создание) *'
	И в таблице "РесурсыМатериалыДЗ" я завершаю редактирование строки
	И в таблице "РесурсыМатериалыДЗ" я перехожу к строке:
		| 'Период' |  'Количество' | 'Единица измерения' | 'Ресурс'    |
		| 'Январь' |  '62,000002'  | 'шт'                | 'Материал2' |
	И в таблице "РесурсыМатериалыДЗ" я выбираю текущую строку
	И в таблице "РесурсыМатериалыДЗ" я выбираю значение реквизита с именем "РесурсыМатериалыДЗНоменклатура" из формы списка
	Тогда открылось окно 'Номенклатура'
	И в таблице "СписокРасширенныйПоискНоменклатура" я перехожу к строке:
		| 'Наименование' |
		| 'Болт'         |
	И в таблице "СписокРасширенныйПоискНоменклатура" я выбираю текущую строку
	Тогда открылось окно 'План потребностей в материалах (создание) *'
	И я нажимаю на кнопку 'Записать общие соответствия'
	Тогда открылось окно '1С:Предприятие'
	И я нажимаю на кнопку 'Да'
	Тогда открылось окно '1С:Предприятие'
	И я нажимаю на кнопку 'Да'
	Тогда открылось окно 'План потребностей в материалах *'
	И в таблице "РесурсыМатериалыДЗ" я нажимаю на кнопку 'Соответствия проекта'
	Тогда открылось окно 'План потребностей в материалах *'
	Тогда таблица "РесурсыМатериалыДЗ" стала равной:
		| 'Характеристика' | 'WBS, вид работы'    | 'Номенклатура' | 'Период'   | 'Количество' | 'Единица измерения' | 'Коэффициент пересчета' | 'Единица хранения' | 'Ресурс'    | 'К-во номенклатуры' |
		| ''               | 'Итоги'              | ''             | ''         | ''           | ''                  | ''                      | ''                 | ''          | ''                  |
		| ''               | 'Конструктив 1'      | ''             | ''         | ''           | ''                  | ''                      | ''                 | ''          | ''                  |
		| ''               | 'Работа на год'      | ''             | ''         | ''           | ''                  | ''                      | ''                 | ''          | ''                  |
		| ''               | ''                   | 'Бензин А-92'  | 'Январь'   | '31,000001'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '31,000001'         |
		| ''               | ''                   | 'Болт'         | 'Январь'   | '62,000002'  | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '62,000002'         |
		| ''               | ''                   | 'Бензин А-92'  | 'Февраль'  | '28,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '28,000000'         |
		| ''               | ''                   | 'Болт'         | 'Февраль'  | '56,000001'  | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '56,000001'         |
		| ''               | ''                   | 'Бензин А-92'  | 'Март'     | '31,000001'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '31,000001'         |
		| ''               | ''                   | 'Болт'         | 'Март'     | '62,000002'  | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '62,000002'         |
		| ''               | ''                   | 'Бензин А-92'  | 'Апрель'   | '30,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '30,000000'         |
		| ''               | ''                   | 'Болт'         | 'Апрель'   | '59,999999'  | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '59,999999'         |
		| ''               | ''                   | 'Бензин А-92'  | 'Май'      | '31,000001'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '31,000001'         |
		| ''               | ''                   | 'Болт'         | 'Май'      | '62,000002'  | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '62,000002'         |
		| ''               | ''                   | 'Бензин А-92'  | 'Июнь'     | '30,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '30,000000'         |
		| ''               | ''                   | 'Болт'         | 'Июнь'     | '59,999999'  | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '59,999999'         |
		| ''               | ''                   | 'Бензин А-92'  | 'Июль'     | '31,000001'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '31,000001'         |
		| ''               | ''                   | 'Болт'         | 'Июль'     | '62,000002'  | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '62,000002'         |
		| ''               | ''                   | 'Бензин А-92'  | 'Август'   | '31,000001'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '31,000001'         |
		| ''               | ''                   | 'Болт'         | 'Август'   | '62,000002'  | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '62,000002'         |
		| ''               | ''                   | 'Бензин А-92'  | 'Сентябрь' | '30,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '30,000000'         |
		| ''               | ''                   | 'Болт'         | 'Сентябрь' | '59,999999'  | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '59,999999'         |
		| ''               | ''                   | 'Бензин А-92'  | 'Октябрь'  | '31,000001'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '31,000001'         |
		| ''               | ''                   | 'Болт'         | 'Октябрь'  | '62,000002'  | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '62,000002'         |
		| ''               | ''                   | 'Бензин А-92'  | 'Ноябрь'   | '30,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '30,000000'         |
		| ''               | ''                   | 'Болт'         | 'Ноябрь'   | '59,999999'  | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '59,999999'         |
		| ''               | ''                   | 'Бензин А-92'  | 'Декабрь'  | '31,000001'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '31,000001'         |
		| ''               | ''                   | 'Болт'         | 'Декабрь'  | '62,000002'  | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '62,000002'         |
		| ''               | 'Работа на месяц'    | ''             | ''         | ''           | ''                  | ''                      | ''                 | ''          | ''                  |
		| ''               | ''                   | 'Бензин А-92'  | 'Август'   | '31,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '31,000000'         |
		| ''               | ''                   | 'Болт'         | 'Август'   | '62,000000'  | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '62,000000'         |
		| ''               | ''                   | ''             | 'Август'   | '62,000000'  | 'шт'                | ''                      | ''                 | 'Материал3' | ''                  |
		| ''               | 'Работа на квартал'  | ''             | ''         | ''           | ''                  | ''                      | ''                 | ''          | ''                  |
		| ''               | ''                   | 'Бензин А-92'  | 'Сентябрь' | '30,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '30,000000'         |
		| ''               | ''                   | 'Болт'         | 'Сентябрь' | '60,000000'  | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '60,000000'         |
		| ''               | ''                   | 'Бензин А-92'  | 'Октябрь'  | '31,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '31,000000'         |
		| ''               | ''                   | 'Болт'         | 'Октябрь'  | '62,000000'  | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '62,000000'         |
		| ''               | ''                   | 'Бензин А-92'  | 'Ноябрь'   | '30,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '30,000000'         |
		| ''               | ''                   | 'Болт'         | 'Ноябрь'   | '60,000000'  | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '60,000000'         |
		| ''               | 'Конструктив 2'      | ''             | ''         | ''           | ''                  | ''                      | ''                 | ''          | ''                  |
		| ''               | 'Работа на два года' | ''             | ''         | ''           | ''                  | ''                      | ''                 | ''          | ''                  |
		| ''               | ''                   | 'Бензин А-92'  | 'Январь'   | '30,999998'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '30,999998'         |
		| ''               | ''                   | 'Болт'         | 'Январь'   | '340,999973' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '340,999973'        |
		| ''               | ''                   | 'Бензин А-92'  | 'Февраль'  | '27,999997'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '27,999997'         |
		| ''               | ''                   | 'Болт'         | 'Февраль'  | '307,999965' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '307,999965'        |
		| ''               | ''                   | 'Бензин А-92'  | 'Март'     | '30,999998'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '30,999998'         |
		| ''               | ''                   | 'Болт'         | 'Март'     | '340,999973' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '340,999973'        |
		| ''               | ''                   | 'Бензин А-92'  | 'Апрель'   | '30,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '30,000000'         |
		| ''               | ''                   | 'Болт'         | 'Апрель'   | '329,999997' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '329,999997'        |
		| ''               | ''                   | 'Бензин А-92'  | 'Май'      | '30,999998'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '30,999998'         |
		| ''               | ''                   | 'Болт'         | 'Май'      | '340,999973' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '340,999973'        |
		| ''               | ''                   | 'Бензин А-92'  | 'Июнь'     | '30,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '30,000000'         |
		| ''               | ''                   | 'Болт'         | 'Июнь'     | '329,999997' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '329,999997'        |
		| ''               | ''                   | 'Бензин А-92'  | 'Июль'     | '30,999998'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '30,999998'         |
		| ''               | ''                   | 'Болт'         | 'Июль'     | '340,999973' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '340,999973'        |
		| ''               | ''                   | 'Бензин А-92'  | 'Август'   | '30,999998'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '30,999998'         |
		| ''               | ''                   | 'Болт'         | 'Август'   | '340,999973' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '340,999973'        |
		| ''               | ''                   | 'Бензин А-92'  | 'Сентябрь' | '30,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '30,000000'         |
		| ''               | ''                   | 'Болт'         | 'Сентябрь' | '329,999997' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '329,999997'        |
		| ''               | ''                   | 'Бензин А-92'  | 'Октябрь'  | '30,999998'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '30,999998'         |
		| ''               | ''                   | 'Болт'         | 'Октябрь'  | '340,999973' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '340,999973'        |
		| ''               | ''                   | 'Бензин А-92'  | 'Ноябрь'   | '30,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '30,000000'         |
		| ''               | ''                   | 'Болт'         | 'Ноябрь'   | '329,999997' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '329,999997'        |
		| ''               | ''                   | 'Бензин А-92'  | 'Декабрь'  | '30,999998'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '30,999998'         |
		| ''               | ''                   | 'Болт'         | 'Декабрь'  | '340,999973' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '340,999973'        |
		| ''               | ''                   | 'Бензин А-92'  | 'Январь'   | '30,999998'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '30,999998'         |
		| ''               | ''                   | 'Болт'         | 'Январь'   | '340,999973' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '340,999973'        |
		| ''               | ''                   | 'Бензин А-92'  | 'Февраль'  | '27,999997'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '27,999997'         |
		| ''               | ''                   | 'Болт'         | 'Февраль'  | '307,999965' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '307,999965'        |
		| ''               | ''                   | 'Бензин А-92'  | 'Март'     | '30,999998'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '30,999998'         |
		| ''               | ''                   | 'Болт'         | 'Март'     | '340,999973' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '340,999973'        |
		| ''               | ''                   | 'Бензин А-92'  | 'Апрель'   | '30,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '30,000000'         |
		| ''               | ''                   | 'Болт'         | 'Апрель'   | '329,999997' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '329,999997'        |
		| ''               | ''                   | 'Бензин А-92'  | 'Май'      | '30,999998'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '30,999998'         |
		| ''               | ''                   | 'Болт'         | 'Май'      | '340,999973' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '340,999973'        |
		| ''               | ''                   | 'Бензин А-92'  | 'Июнь'     | '30,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '30,000000'         |
		| ''               | ''                   | 'Болт'         | 'Июнь'     | '329,999997' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '329,999997'        |
		| ''               | ''                   | 'Бензин А-92'  | 'Июль'     | '30,999998'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '30,999998'         |
		| ''               | ''                   | 'Болт'         | 'Июль'     | '340,999973' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '340,999973'        |
		| ''               | ''                   | 'Бензин А-92'  | 'Август'   | '30,999998'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '30,999998'         |
		| ''               | ''                   | 'Болт'         | 'Август'   | '340,999973' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '340,999973'        |
		| ''               | ''                   | 'Бензин А-92'  | 'Сентябрь' | '30,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '30,000000'         |
		| ''               | ''                   | 'Болт'         | 'Сентябрь' | '329,999997' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '329,999997'        |
		| ''               | ''                   | 'Бензин А-92'  | 'Октябрь'  | '30,999998'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '30,999998'         |
		| ''               | ''                   | 'Болт'         | 'Октябрь'  | '340,999973' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '340,999973'        |
		| ''               | ''                   | 'Бензин А-92'  | 'Ноябрь'   | '30,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '30,000000'         |
		| ''               | ''                   | 'Болт'         | 'Ноябрь'   | '329,999997' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '329,999997'        |
		| ''               | ''                   | 'Бензин А-92'  | 'Декабрь'  | '30,999998'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '30,999998'         |
		| ''               | ''                   | 'Болт'         | 'Декабрь'  | '340,999973' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '340,999973'        |


	И я нажимаю на кнопку 'Провести и закрыть'
	И я жду закрытия окна 'План потребностей в материалах *' в течение 20 секунд
	Тогда открылось окно 'План потребностей в материалах'
