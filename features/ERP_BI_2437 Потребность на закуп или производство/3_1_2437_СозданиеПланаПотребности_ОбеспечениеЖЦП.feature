#language: ru

Функционал: Создание документа план потребностей в материалах на ЖЦП

Как пользователь УСП
Я хочу протестировать базовое формирование документа потребности в материалах с Обеспечением на ЖЦП


Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: Я создаю план потребности в материалах на ЖЦП

	Когда В панели разделов я выбираю 'Управление строительным производством'	
	И Я нажимаю кнопку командного интерфейса 'План потребностей в материалах'
	Тогда открылось окно 'План потребностей в материалах'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'План потребностей в материалах (создание)'
	И из выпадающего списка "Вид операции" я выбираю точное значение 'Обеспечение потребности'
	И из выпадающего списка "Проект" я выбираю по строке 'Автотестирование загрузки 27 улицы (без графика)'
	И из выпадающего списка "Вид планирования" я выбираю по строке 'ЖЦП'
	Затем Если появилось окно диалога я нажимаю на кнопку "Да"
	И я перехожу к закладке "Источники обеспечения"	
	И в таблице "РаспределениеИсточниковОбеспечения" я нажимаю на кнопку 'Потребности проекта'
	Тогда таблица "РаспределениеИсточниковОбеспечения" стала равной:
		| 'Количество (ЖЦП)' | 'Количество расхождение расхода' | 'Номенклатура' | 'Обеспечить по закупке (период)' | 'Количество (год)' | 'Осталось обеспечить по проекту по производству' | 'Закупка, %' | 'Осталось обеспечить по проекту по закупкам' | 'N' | 'Расходовано (норма)' | 'Расходовано (факт)' | 'Обеспечить(период)' | 'К. пересчета' | 'Осталось обеспечить по проекту' | 'Пр-во, %' | 'Обеспечить по производству (период)' | 'Ресурс'    | 'Количество (период)' | 'Передано ранее на обеспечение ' | 'Ед.изм.' | 'Всего поставлено материалов' | 'Остаток (склады)' |
		| '1 216,999973'     | ''                               | 'Бензин А-92'  | '608,499987'                     | '851,999990'       | '608,49998650'                                   | '50,0'       | '608,49998650'                               | '1' | ''                    | ''                   | '1 216,999973'       | '1,000000'     | '1 216,99997300'                 | '50,0'     | '608,499987'                          | 'Материал1' | '1 216,999973'        | ''                               | 'л/дм3'   | ''                            | ''                 |
		| '9 003,999539'     | ''                               | 'Болт'         | ''                               | '4 988,999775'     | '9 003,99953900'                                 | ''           | ''                                           | '2' | ''                    | ''                   | '9 003,999539'       | '1,000000'     | '9 003,99953900'                 | '100,0'    | '9 003,999539'                        | 'Материал2' | '9 003,999539'        | ''                               | 'шт'      | ''                            | ''                 |
		| '62,000000'        | ''                               | ''             | '62,000000'                      | '62,000000'        | ''                                               | '100,0'      | '62,00000000'                                | '3' | ''                    | ''                   | '62,000000'          | ''             | '62,00000000'                    | ''         | ''                                    | 'Материал3' | '62,000000'           | ''                               | ''        | ''                            | ''                 |
	И я перехожу к закладке "Потребность периода"
	И в таблице "РесурсыМатериалыДЗ" я перехожу к строке:
        |'Период'|'Ресурс'   |
        |'Январь'|'Материал1'|
	И в таблице "РесурсыМатериалыДЗ" поле с именем "РесурсыМатериалыДЗКоличествоОбеспечитьПроизводство" имеет значение "31,000001"
	И в таблице "РесурсыМатериалыДЗ" я перехожу к строке:
        |'Период'|'Ресурс'   |
        |'Январь'|'Материал2'|	
	И в таблице "РесурсыМатериалыДЗ" поле с именем "РесурсыМатериалыДЗКоличествоОбеспечитьПроизводство" имеет значение "62,000002"
	И я нажимаю на кнопку 'Провести и закрыть'
	И я жду закрытия окна 'План потребностей в материалах *' в течение 20 секунд
	Тогда открылось окно 'План потребностей в материалах'