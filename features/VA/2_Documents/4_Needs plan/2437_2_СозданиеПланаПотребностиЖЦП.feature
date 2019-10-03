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
		Если в таблице "Список" количество строк "Больше" 0 Тогда
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
		| 'Январь 2018' |  '31,000000'  | 'шт'                | 'Материал1' |
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
	И в таблице "РесурсыМатериалыДЗ" в поле с именем 'РесурсыМатериалыДЗКоэффициентПересчета' я ввожу текст '1,00000'
	И в таблице "РесурсыМатериалыДЗ" я завершаю редактирование строки
	И в таблице "РесурсыМатериалыДЗ" я перехожу к строке:
		| 'Период'      |  'Количество' | 'Единица измерения' | 'Ресурс'    |
		| 'Январь 2018' |  '62,000000'  | 'шт'                | 'Материал2' |
	И в таблице "РесурсыМатериалыДЗ" я выбираю текущую строку
	И в таблице "РесурсыМатериалыДЗ" я выбираю значение реквизита с именем "РесурсыМатериалыДЗНоменклатура" из формы списка
	Тогда открылось окно 'Номенклатура'
	И в таблице "СписокРасширенныйПоискНоменклатура" я перехожу к строке:
		| 'Наименование' |
		| 'Болт'         |
	И в таблице "СписокРасширенныйПоискНоменклатура" я выбираю текущую строку
	Тогда открылось окно 'План потребностей в материалах (создание) *'
	И в таблице "РесурсыМатериалыДЗ" в поле с именем 'РесурсыМатериалыДЗКоэффициентПересчета' я ввожу текст '1,00000'
	И я нажимаю на кнопку 'Записать общие соответствия'
	Тогда открылось окно '1С:Предприятие'
	И я нажимаю на кнопку 'Да'
	Тогда открылось окно '1С:Предприятие'
	И я нажимаю на кнопку 'Да'
	Тогда открылось окно 'План потребностей в материалах *'
	И в таблице "РесурсыМатериалыДЗ" я нажимаю на кнопку 'Соответствия проекта'
	Тогда открылось окно 'План потребностей в материалах *'
	Тогда таблица "РесурсыМатериалыДЗ" стала равной:
	
		| 'WBS, вид работы'    | 'Номенклатура' | 'Период'        | 'Количество' | 'Единица измерения' | 'Коэффициент пересчета' | 'Единица хранения' | 'Ресурс'    | 'К-во номенклатуры' |
		| 'Итоги'              | ''             | ''              | ''           | ''                  | ''                      | ''                 | ''          | ''                  |
		| 'Конструктив 1'      | ''             | ''              | ''           | ''                  | ''                      | ''                 | ''          | ''                  |
		| 'Работа на год'      | ''             | ''              | ''           | ''                  | ''                      | ''                 | ''          | ''                  |
		| ''                   | 'Бензин А-92'  | 'Январь 2018'   | '31,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '31,000000'         |
		| ''                   | 'Болт'         | 'Январь 2018'   | '62,000000'  | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '62,000000'         |
		| ''                   | 'Бензин А-92'  | 'Февраль 2018'  | '28,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '28,000000'         |
		| ''                   | 'Болт'         | 'Февраль 2018'  | '56,000000'  | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '56,000000'         |
		| ''                   | 'Бензин А-92'  | 'Март 2018'     | '31,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '31,000000'         |
		| ''                   | 'Болт'         | 'Март 2018'     | '62,000000'  | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '62,000000'         |
		| ''                   | 'Бензин А-92'  | 'Апрель 2018'   | '30,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '30,000000'         |
		| ''                   | 'Болт'         | 'Апрель 2018'   | '60,000000'  | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '60,000000'         |
		| ''                   | 'Бензин А-92'  | 'Май 2018'      | '31,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '31,000000'         |
		| ''                   | 'Болт'         | 'Май 2018'      | '62,000000'  | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '62,000000'         |
		| ''                   | 'Бензин А-92'  | 'Июнь 2018'     | '30,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '30,000000'         |
		| ''                   | 'Болт'         | 'Июнь 2018'     | '60,000000'  | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '60,000000'         |
		| ''                   | 'Бензин А-92'  | 'Июль 2018'     | '31,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '31,000000'         |
		| ''                   | 'Болт'         | 'Июль 2018'     | '62,000000'  | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '62,000000'         |
		| ''                   | 'Бензин А-92'  | 'Август 2018'   | '31,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '31,000000'         |
		| ''                   | 'Болт'         | 'Август 2018'   | '62,000000'  | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '62,000000'         |
		| ''                   | 'Бензин А-92'  | 'Сентябрь 2018' | '30,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '30,000000'         |
		| ''                   | 'Болт'         | 'Сентябрь 2018' | '60,000000'  | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '60,000000'         |
		| ''                   | 'Бензин А-92'  | 'Октябрь 2018'  | '31,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '31,000000'         |
		| ''                   | 'Болт'         | 'Октябрь 2018'  | '62,000000'  | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '62,000000'         |
		| ''                   | 'Бензин А-92'  | 'Ноябрь 2018'   | '30,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '30,000000'         |
		| ''                   | 'Болт'         | 'Ноябрь 2018'   | '60,000000'  | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '60,000000'         |
		| ''                   | 'Бензин А-92'  | 'Декабрь 2018'  | '31,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '31,000000'         |
		| ''                   | 'Болт'         | 'Декабрь 2018'  | '62,000000'  | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '62,000000'         |
		| 'Работа на месяц'    | ''             | ''              | ''           | ''                  | ''                      | ''                 | ''          | ''                  |
		| ''                   | 'Бензин А-92'  | 'Август 2018'   | '31,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '31,000000'         |
		| ''                   | 'Болт'         | 'Август 2018'   | '62,000000'  | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '62,000000'         |
		| ''                   | 'Бензин А-92'  | 'Август 2018'   | '62,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал3' | '62,000000'         |
		| 'Работа на квартал'  | ''             | ''              | ''           | ''                  | ''                      | ''                 | ''          | ''                  |
		| ''                   | 'Бензин А-92'  | 'Сентябрь 2018' | '30,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '30,000000'         |
		| ''                   | 'Болт'         | 'Сентябрь 2018' | '60,000000'  | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '60,000000'         |
		| ''                   | 'Бензин А-92'  | 'Октябрь 2018'  | '31,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '31,000000'         |
		| ''                   | 'Болт'         | 'Октябрь 2018'  | '62,000000'  | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '62,000000'         |
		| ''                   | 'Бензин А-92'  | 'Ноябрь 2018'   | '30,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '30,000000'         |
		| ''                   | 'Болт'         | 'Ноябрь 2018'   | '60,000000'  | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '60,000000'         |
		| 'Конструктив 2'      | ''             | ''              | ''           | ''                  | ''                      | ''                 | ''          | ''                  |
		| 'Работа на два года' | ''             | ''              | ''           | ''                  | ''                      | ''                 | ''          | ''                  |
		| ''                   | 'Бензин А-92'  | 'Январь 2018'   | '31,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '31,000000'         |
		| ''                   | 'Болт'         | 'Январь 2018'   | '341,000000' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '341,000000'        |
		| ''                   | 'Бензин А-92'  | 'Февраль 2018'  | '28,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '28,000000'         |
		| ''                   | 'Болт'         | 'Февраль 2018'  | '308,000000' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '308,000000'        |
		| ''                   | 'Бензин А-92'  | 'Март 2018'     | '31,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '31,000000'         |
		| ''                   | 'Болт'         | 'Март 2018'     | '341,000000' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '341,000000'        |
		| ''                   | 'Бензин А-92'  | 'Апрель 2018'   | '30,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '30,000000'         |
		| ''                   | 'Болт'         | 'Апрель 2018'   | '330,000000' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '330,000000'        |
		| ''                   | 'Бензин А-92'  | 'Май 2018'      | '31,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '31,000000'         |
		| ''                   | 'Болт'         | 'Май 2018'      | '341,000000' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '341,000000'        |
		| ''                   | 'Бензин А-92'  | 'Июнь 2018'     | '30,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '30,000000'         |
		| ''                   | 'Болт'         | 'Июнь 2018'     | '330,000000' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '330,000000'        |
		| ''                   | 'Бензин А-92'  | 'Июль 2018'     | '31,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '31,000000'         |
		| ''                   | 'Болт'         | 'Июль 2018'     | '341,000000' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '341,000000'        |
		| ''                   | 'Бензин А-92'  | 'Август 2018'   | '31,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '31,000000'         |
		| ''                   | 'Болт'         | 'Август 2018'   | '341,000000' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '341,000000'        |
		| ''                   | 'Бензин А-92'  | 'Сентябрь 2018' | '30,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '30,000000'         |
		| ''                   | 'Болт'         | 'Сентябрь 2018' | '330,000000' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '330,000000'        |
		| ''                   | 'Бензин А-92'  | 'Октябрь 2018'  | '31,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '31,000000'         |
		| ''                   | 'Болт'         | 'Октябрь 2018'  | '341,000000' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '341,000000'        |
		| ''                   | 'Бензин А-92'  | 'Ноябрь 2018'   | '30,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '30,000000'         |
		| ''                   | 'Болт'         | 'Ноябрь 2018'   | '330,000000' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '330,000000'        |
		| ''                   | 'Бензин А-92'  | 'Декабрь 2018'  | '31,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '31,000000'         |
		| ''                   | 'Болт'         | 'Декабрь 2018'  | '341,000000' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '341,000000'        |
		| ''                   | 'Бензин А-92'  | 'Январь 2019'   | '31,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '31,000000'         |
		| ''                   | 'Болт'         | 'Январь 2019'   | '341,000000' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '341,000000'        |
		| ''                   | 'Бензин А-92'  | 'Февраль 2019'  | '28,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '28,000000'         |
		| ''                   | 'Болт'         | 'Февраль 2019'  | '308,000000' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '308,000000'        |
		| ''                   | 'Бензин А-92'  | 'Март 2019'     | '31,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '31,000000'         |
		| ''                   | 'Болт'         | 'Март 2019'     | '341,000000' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '341,000000'        |
		| ''                   | 'Бензин А-92'  | 'Апрель 2019'   | '30,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '30,000000'         |
		| ''                   | 'Болт'         | 'Апрель 2019'   | '330,000000' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '330,000000'        |
		| ''                   | 'Бензин А-92'  | 'Май 2019'      | '31,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '31,000000'         |
		| ''                   | 'Болт'         | 'Май 2019'      | '341,000000' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '341,000000'        |
		| ''                   | 'Бензин А-92'  | 'Июнь 2019'     | '30,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '30,000000'         |
		| ''                   | 'Болт'         | 'Июнь 2019'     | '330,000000' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '330,000000'        |
		| ''                   | 'Бензин А-92'  | 'Июль 2019'     | '31,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '31,000000'         |
		| ''                   | 'Болт'         | 'Июль 2019'     | '341,000000' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '341,000000'        |
		| ''                   | 'Бензин А-92'  | 'Август 2019'   | '31,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '31,000000'         |
		| ''                   | 'Болт'         | 'Август 2019'   | '341,000000' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '341,000000'        |
		| ''                   | 'Бензин А-92'  | 'Сентябрь 2019' | '30,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '30,000000'         |
		| ''                   | 'Болт'         | 'Сентябрь 2019' | '330,000000' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '330,000000'        |
		| ''                   | 'Бензин А-92'  | 'Октябрь 2019'  | '31,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '31,000000'         |
		| ''                   | 'Болт'         | 'Октябрь 2019'  | '341,000000' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '341,000000'        |
		| ''                   | 'Бензин А-92'  | 'Ноябрь 2019'   | '30,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '30,000000'         |
		| ''                   | 'Болт'         | 'Ноябрь 2019'   | '330,000000' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '330,000000'        |
		| ''                   | 'Бензин А-92'  | 'Декабрь 2019'  | '31,000000'  | 'шт'                | '1,00000'               | 'л/дм3'            | 'Материал1' | '31,000000'         |
		| ''                   | 'Болт'         | 'Декабрь 2019'  | '341,000000' | 'шт'                | '1,00000'               | 'шт'               | 'Материал2' | '341,000000'        |



	И я нажимаю на кнопку 'Провести и закрыть'
	И я жду закрытия окна 'План потребностей в материалах *' в течение 20 секунд
	Тогда открылось окно 'План потребностей в материалах'
