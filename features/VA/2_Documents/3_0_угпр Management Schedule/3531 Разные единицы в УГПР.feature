﻿#language: ru
@tree

#report.epic=Документы 
#report.feature=УГПР
#report.story=УГПР проверяю разные варианты формы расшифровки МиМ 

Функционал: Открываю тестовый УГПР и проверяю разные варианты формы расшифровки МиМ 

Как пользователь УГПР
Я хочу иметь возможность указывать разные варианты формы расшифровки МиМ
Чтобы управлять планированием ресурсов

Контекст:
    #Дано  Я открыл сеанс TestClient от имени "iRobot" с паролем "Kamala$oft" или подключаю уже существующий
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий    

Сценарий: Я открываю тестовый УГПР и проверяю разные варианты формы расшифровки МиМ 

Открываем эталонный документ
    Дано Я открываю основную форму списка документа "ИНАГРО_УГПР"
    И из выпадающего списка с именем "КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Значение" я выбираю по строке '3531'
    и Я убираю группировки в текущем списке
    И в таблице "Список" я активизирую поле с именем "Проект"
    И в таблице "Список" я выбираю текущую строку
    Тогда открылось окно 'Бюджет проекта переменных затрат *'


Копируем работу чтобы исключить порчу данных эталона	 
    И я перехожу к закладке "Дерево работ"
    И в таблице "РаботыДЗ" я нажимаю на кнопку 'Развернуть все'
    И в таблице "РаботыДЗ" я перехожу к строке:
    |'WBS'|
    |'Работы января'|
    И в таблице "РаботыДЗ" я нажимаю на кнопку с именем 'РаботыДЗКнопкаКопировать'
    Затем Если появилось окно диалога я нажимаю на кнопку "Нет"
    Тогда открылось окно 'WBS и работы проекта: Форма выбора элемента WBS'
    И в таблице "ДеревоWBS" я нажимаю на кнопку с именем 'ДеревоWBSКнопка1'
    И в таблице "РаботыДЗ" я активизирую поле "Код WBS"
    И в таблице "РаботыДЗ" в поле 'Код WBS' я ввожу текст '123'
    И в таблице "РаботыДЗ" я завершаю редактирование строки
    И в таблице "РаботыДЗ" я перехожу к строке:
    |'Код WBS'|
    |'123'|
    

Проверям расчет по машиночасам
    И я перехожу к закладке "Машинные ресурсы"
    #Время на отборы
    И пауза 2
    И в таблице "РесурсыМашинные" я перехожу к строке:
    |'Ресурс'|
    |'Трактор с щетками дорожными навесными'|
    И в таблице "РесурсыМашинные" я нажимаю на кнопку с именем 'РесурсыМашинныеРесурсы_РасчетНормы'
    Тогда открылось окно 'Расшифровка расчета нормы и цены : Форма расшифровки'
    Тогда элемент формы с именем "Переменная2" стал равен '200,000000'
    Тогда элемент формы с именем "ЕдиницаИзмеренияПлан" стал равен 'маш./ час'
    Тогда элемент формы с именем "ЦенаЗаНорму" стал равен '200,000000'
    Тогда элемент формы с именем "Сумма" стал равен '40 000,00'    
    И в поле 'Цена за ед. изм ресурса' я ввожу текст '100,000000'
    И я перехожу к следующему реквизиту
    Тогда элемент формы с именем "Сумма" стал равен '20 000,00'
    И я нажимаю на кнопку 'ОК'    
    И в таблице "РесурсыМашинные" поле с именем "РесурсыМашинныеЕдИзм" имеет значение "маш./ час"
    И в таблице "РесурсыМашинные" поле с именем "РесурсыМашинныеКоличество" имеет значение "200,000000"
    И в таблице "РесурсыМашинные" поле с именем "РесурсыМашинныеСумма" имеет значение "20 000,00"
    #3799 - проверим расчет м/ч при изменении единиц туда и обратно
    И в таблице "РесурсыМашинные" в поле с именем 'РесурсыМашинныеНормаРасхода' я ввожу текст '0,500000'
    И в таблице "РесурсыМашинные" я завершаю редактирование строки
    И в таблице "РесурсыМашинные" я нажимаю на кнопку с именем 'РесурсыМашинныеРесурсы_РасчетНормы'
    И из выпадающего списка "Единица измерения и способ расчета" я выбираю точное значение 'тн/км'
    И из выпадающего списка "Единица измерения и способ расчета" я выбираю точное значение 'маш./ час'
    Тогда элемент формы с именем "Переменная2" стал равен '100,000000'
    И в поле с именем 'Переменная2' я ввожу текст '100,000000'
    И я перехожу к следующему реквизиту
    И элемент формы с именем "ЦенаЗаНорму" стал равен "100,000000"
    # 100 * 100 = 10 000
    Тогда элемент формы с именем "Сумма" стал равен '10 000,00'
    И я нажимаю на кнопку 'ОК' 
    И в таблице "РесурсыМашинные" поле с именем "РесурсыМашинныеЕдИзм" имеет значение "маш./ час"
    И в таблице "РесурсыМашинные" поле с именем "РесурсыМашинныеКоличество" имеет значение "100,000000"
    И в таблице "РесурсыМашинные" поле с именем "РесурсыМашинныеСумма" имеет значение "10 000,00"

Проверям расчет по тоннокилометрам
    И я перехожу к закладке "Машинные ресурсы"
    И в таблице "РесурсыМашинные" я перехожу к строке:
    |'Ресурс'|
    |'Перевозка грузов автомобилями-самосвалами'|
    И в таблице "РесурсыМашинные" я активизирую поле "Включается в стоимость материала"
    И в таблице "РесурсыМашинные" я изменяю флаг 'Включается в стоимость материала'
    И в таблице "РесурсыМашинные" я завершаю редактирование строки
    И в таблице "РесурсыМашинные" я активизирую поле "Материал"
    И в таблице "РесурсыМашинные" я выбираю текущую строку    
    И в таблице "РесурсыМашинные" из выпадающего списка с именем "РесурсыМашинныеРесурсМатериал" я выбираю по строке "Щебень"
    И в таблице "РесурсыМашинные" поле с именем "РесурсыМашинныеОбъемМатериала" имеет значение "200,000000"
    И в таблице "РесурсыМашинные" я нажимаю на кнопку с именем 'РесурсыМашинныеРесурсы_РасчетНормы'
    Тогда открылось окно 'Расшифровка расчета нормы и цены : Форма расшифровки'
    Тогда элемент формы с именем "ЕдиницаИзмеренияПлан" стал равен 'маш./ час'
    И из выпадающего списка "Единица измерения и способ расчета" я выбираю точное значение 'тн/км'
    Тогда элемент формы с именем "Переменная2" стал равен '200,000000'
    И я нажимаю кнопку выбора у поля "Тип механизма"
    Тогда открылось окно 'Типы транспортных средств'
    И в таблице "Список" я перехожу к строке:
    | 'Наименование'               |
    | 'Самосвал до от 10 до 20 тн' |
    И в таблице "Список" я выбираю текущую строку
    Тогда открылось окно 'Расшифровка расчета нормы и цены : Форма расшифровки'
    И в поле 'Расстояние, км' я ввожу текст '10,000000'
    И я перехожу к следующему реквизиту
    Тогда элемент формы с именем "ЦенаЗаНорму" стал равен '100,000000' 
     # 200 * 10 * 100 = 200 000
    Тогда элемент формы с именем "Сумма" стал равен '200 000,00'
     #проверим ручной расчет
    И в поле 'Цена за ед. изм ресурса' я ввожу текст '300,000000'
    И я перехожу к следующему реквизиту
    # 200 * 10 * 300 = 600 000
    Тогда элемент формы с именем "Сумма" стал равен '600 000,00' 
     #Разные цены за 10 и 20 км
    И в поле 'Расстояние, км' я ввожу текст '20,000000'  
    И я перехожу к следующему реквизиту  
    Тогда элемент формы с именем "ЦенаЗаНорму" стал равен '200,000000'    
    # 200 * 20 * 200 = 800 000    
    Тогда элемент формы с именем "Сумма" стал равен '800 000,00'  
    И в поле 'Груз, тонны' я ввожу текст '100,000000'  
    И я перехожу к следующему реквизиту
    # 100 * 20 * 200 = 400 000    
    Тогда элемент формы с именем "Сумма" стал равен '400 000,00'  
    И я нажимаю на кнопку 'ОК'
    И пауза 1
    И в таблице "РесурсыМашинные" поле с именем "РесурсыМашинныеЕдИзм" имеет значение "тн/км"
    # 100 * 20 = 2 000
    И в таблице "РесурсыМашинные" поле с именем "РесурсыМашинныеКоличество" имеет значение "2 000,000000"    
    И в таблице "РесурсыМашинные" поле с именем "РесурсыМашинныеСумма" имеет значение "400 000,00"
    И в таблице "РесурсыМашинные" поле "Включается в стоимость материала" имеет значение "Да"
    И в таблице "РесурсыМашинные" поле с именем "РесурсыМашинныеРесурсМатериал" имеет значение "Щебень"
    И в таблице "РесурсыМашинные" поле с именем "РесурсыМашинныеОбъемМатериала" имеет значение "100,000000"

Проверям расчет по абонплате
    И я перехожу к закладке "Машинные ресурсы"
    И в таблице "РесурсыМашинные" я перехожу к строке:
    |'Ресурс'|
    |'Автокран грузоподъемностью 20т'|
    И в таблице "РесурсыМашинные" я нажимаю на кнопку с именем 'РесурсыМашинныеРесурсы_РасчетНормы'
    Тогда открылось окно 'Расшифровка расчета нормы и цены : Форма расшифровки'
    Тогда элемент формы с именем "ЕдиницаИзмеренияПлан" стал равен 'маш./ час'
    И из выпадающего списка "Единица измерения и способ расчета" я выбираю точное значение 'Абон. пл./час'
    И из выпадающего списка "Тип механизма" я выбираю по строке 'Автокран'
    #75 дн * 8 = 600 ч
    И в поле 'Цена за ед. изм ресурса' я ввожу текст '10,000000'
    И я перехожу к следующему реквизиту
    #600 * 10 = 6 000
    Тогда элемент формы с именем "Сумма" стал равен '6 000,00'
    И из выпадающего списка "Единица измерения и способ расчета" я выбираю точное значение 'Абон. пл./дн'
    #75 дн    
    И в поле 'Цена за ед. изм ресурса' я ввожу текст '100,000000'
    И я перехожу к следующему реквизиту
    #75 * 100 = 7 500
    Тогда элемент формы с именем "Сумма" стал равен '7 500,00'
    И я нажимаю на кнопку 'ОК'
    И в таблице "РесурсыМашинные" поле с именем "РесурсыМашинныеЕдИзм" имеет значение "Абон. пл./дн"
    И в таблице "РесурсыМашинные" поле с именем "РесурсыМашинныеКоличество" имеет значение "75,000000"
    И в таблице "РесурсыМашинные" поле с именем "РесурсыМашинныеЦена" имеет значение "100,000000"
    И в таблице "РесурсыМашинные" поле с именем "РесурсыМашинныеСумма" имеет значение "7 500,00"

Проверям расчет по физобъемам
    И я перехожу к закладке "Машинные ресурсы"
    И в таблице "РесурсыМашинные" я перехожу к строке:
    |'Ресурс'|
    |'Бульдозеры, 118 кВт (160 л.с.)'|
    И в таблице "РесурсыМашинные" я нажимаю на кнопку с именем 'РесурсыМашинныеРесурсы_РасчетНормы'
    И из выпадающего списка "Единица измерения и способ расчета" я выбираю точное значение 'Физ. объем груза, м3'
    И из выпадающего списка "Тип механизма" я выбираю по строке 'Бульдозер Средний  от 10 до 30 тн'
    И я перехожу к следующему реквизиту
    Тогда элемент формы с именем "ЦенаЗаНорму" стал равен '100,000000'
    И в поле 'Объем груза, м3' я ввожу текст '3 000,000000'
    И я перехожу к следующему реквизиту
    Тогда элемент формы с именем "Сумма" стал равен '300 000,00'
    И я нажимаю на кнопку 'ОК'
    И в таблице "РесурсыМашинные" поле "Ед изм" имеет значение "Физ. объем груза, м3"
    И в таблице "РесурсыМашинные" поле с именем "РесурсыМашинныеКоличество" имеет значение "3 000,000000"
    И в таблице "РесурсыМашинные" поле с именем "РесурсыМашинныеЦена" имеет значение "100,000000"
    И в таблице "РесурсыМашинные" поле с именем "РесурсыМашинныеСумма" имеет значение "300 000,00"

Проверям расчет по рейсам
    И я перехожу к закладке "Машинные ресурсы"
    И в таблице "РесурсыМашинные" я перехожу к строке:
    |'Ресурс'|
    |'Автобус на 36 посадочных места'|
    И в таблице "РесурсыМашинные" я нажимаю на кнопку с именем 'РесурсыМашинныеРесурсы_РасчетНормы'
    И из выпадающего списка "Единица измерения и способ расчета" я выбираю точное значение 'Рейсы'    
    И из выпадающего списка "Тип механизма" я выбираю по строке 'Автобус'
    И я перехожу к следующему реквизиту
    Тогда элемент формы с именем "ЦенаЗаНорму" стал равен "250,000000"
    И из выпадающего списка "Маршрут" я выбираю по строке 'Перевозка щебня'
    И в поле 'Количество' я ввожу текст "5"
    И я перехожу к следующему реквизиту
    Тогда элемент формы с именем "Сумма" стал равен "1 250,00"
    И я нажимаю на кнопку 'ОК'
    И в таблице "РесурсыМашинные" поле "Ед изм" имеет значение "Рейсы"
    И в таблице "РесурсыМашинные" поле с именем "РесурсыМашинныеКоличество" имеет значение "5,000000"
    И в таблице "РесурсыМашинные" поле с именем "РесурсыМашинныеЦена" имеет значение "250,000000"
    И в таблице "РесурсыМашинные" поле с именем "РесурсыМашинныеСумма" имеет значение "1 250,00"

И я закрыл все окна клиентского приложения