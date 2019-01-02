#language: ru

@Tree

Функционал: Как пользователь я хочу создавать новый шаблон вида работ в обработке

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	#и я удаляю все элементы справочника "BI_ТехнологическиеКарты" с Наименованием "Тест карта"
	

Сценарий:  Я создаю шаблон работ

 #[autodoc.groupsteps] Я загружаю первоначальный настройки
Допустим я заполняю первоначальные настройки	
	И я загружаю макет "ТестДанные"
	И Я открываю основную форму списка документа "ИНАГРО_УГПР"
	И я нажимаю на кнопку с именем "*НастройкаСписка"
	И я нажимаю на кнопку с именем "ФормаСтандартныеНастройки"	
	И я перехожу к закладке "Отбор"
	И для каждой строки таблицы отбора я устанавливаю отбор в списке
	| Проект | Равно | "3431" |	
	И я перехожу к закладке "Группировка"
	Если элемент "КомпоновщикНастроекПользовательскиеНастройкиЭлемент3Группировка" присутствует на форме Тогда
		Если в таблице "КомпоновщикНастроекПользовательскиеНастройкиЭлемент3Группировка" количество строк "больше" 0 Тогда
			И для каждой строки таблицы "КомпоновщикНастроекПользовательскиеНастройкиЭлемент3Группировка" я выполняю
				И в таблице "КомпоновщикНастроекПользовательскиеНастройкиЭлемент3Группировка" я снимаю флаг 'Использование'		
	Если элемент "КомпоновщикНастроекПользовательскиеНастройкиЭлемент4Группировка" присутствует на форме Тогда
		Если в таблице "КомпоновщикНастроекПользовательскиеНастройкиЭлемент4Группировка" количество строк "больше" 0 Тогда
			И для каждой строки таблицы "КомпоновщикНастроекПользовательскиеНастройкиЭлемент4Группировка" я выполняю
				И в таблице "КомпоновщикНастроекПользовательскиеНастройкиЭлемент4Группировка" я снимаю флаг 'Использование'	
	И я нажимаю на кнопку с именем "ФормаЗакончитьРедактирование"
	И я нажимаю на кнопку с именем 'ФормаПровести'

	И Я открываю основную форму списка документа "ИНАГРО_РаспределительнаяВедомость"
	И я нажимаю на кнопку с именем "*НастройкаСписка"
	И я нажимаю на кнопку с именем "ФормаСтандартныеНастройки"	
	И я перехожу к закладке "Отбор"
	И для каждой строки таблицы отбора я устанавливаю отбор в списке
	| Проект | Равно | "3431" |	
	И я перехожу к закладке "Группировка"
	Если элемент "КомпоновщикНастроекПользовательскиеНастройкиЭлемент3Группировка" присутствует на форме Тогда
		Если в таблице "КомпоновщикНастроекПользовательскиеНастройкиЭлемент3Группировка" количество строк "больше" 0 Тогда
			И для каждой строки таблицы "КомпоновщикНастроекПользовательскиеНастройкиЭлемент3Группировка" я выполняю
				И в таблице "КомпоновщикНастроекПользовательскиеНастройкиЭлемент3Группировка" я снимаю флаг 'Использование'		
	Если элемент "КомпоновщикНастроекПользовательскиеНастройкиЭлемент4Группировка" присутствует на форме Тогда
		Если в таблице "КомпоновщикНастроекПользовательскиеНастройкиЭлемент4Группировка" количество строк "больше" 0 Тогда
			И для каждой строки таблицы "КомпоновщикНастроекПользовательскиеНастройкиЭлемент4Группировка" я выполняю
				И в таблице "КомпоновщикНастроекПользовательскиеНастройкиЭлемент4Группировка" я снимаю флаг 'Использование'	
	И я нажимаю на кнопку с именем "ФормаЗакончитьРедактирование"
	И я нажимаю на кнопку с именем 'ФормаПровести'

	И Я открываю основную форму списка документа "ИНАГРО_ПланПотребностейВМатериалах"
	И я нажимаю на кнопку с именем "*НастройкаСписка"
	И я нажимаю на кнопку с именем "ФормаСтандартныеНастройки"	
	И я перехожу к закладке "Отбор"
	И для каждой строки таблицы отбора я устанавливаю отбор в списке
	| Проект | Равно | "3431" |	
	И я перехожу к закладке "Группировка"
	Если элемент "КомпоновщикНастроекПользовательскиеНастройкиЭлемент3Группировка" присутствует на форме Тогда
		Если в таблице "КомпоновщикНастроекПользовательскиеНастройкиЭлемент3Группировка" количество строк "больше" 0 Тогда
			И для каждой строки таблицы "КомпоновщикНастроекПользовательскиеНастройкиЭлемент3Группировка" я выполняю
				И в таблице "КомпоновщикНастроекПользовательскиеНастройкиЭлемент3Группировка" я снимаю флаг 'Использование'		
	Если элемент "КомпоновщикНастроекПользовательскиеНастройкиЭлемент4Группировка" присутствует на форме Тогда
		Если в таблице "КомпоновщикНастроекПользовательскиеНастройкиЭлемент4Группировка" количество строк "больше" 0 Тогда
			И для каждой строки таблицы "КомпоновщикНастроекПользовательскиеНастройкиЭлемент4Группировка" я выполняю
				И в таблице "КомпоновщикНастроекПользовательскиеНастройкиЭлемент4Группировка" я снимаю флаг 'Использование'	
	И я нажимаю на кнопку с именем "ФормаЗакончитьРедактирование"
	И я нажимаю на кнопку с именем 'ФормаПровести'

	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'План потребностей в материалах * от *'
	И я перехожу к закладке "Потребность периода"	
	И я нажимаю на кнопку 'Провести'
	