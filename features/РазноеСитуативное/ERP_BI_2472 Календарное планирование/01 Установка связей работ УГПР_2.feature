﻿#language: ru
@tree


Функционал: Как пользователь УСП я хочу иметь возможность установить связи
 для обозначения последовательности выполнения работ для использования
 в дальнейших расчетах графика


Контекст: 

Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Структура сценария: Я связываю две работы c выбранным типом последовательно с запаздываением


Допустим в открытом документе УГПР
    Когда В командном интерфейсе я выбираю 'Управление строительным производством''Управленческий график производства работ'
    Тогда открылось окно 'Управленческий график производства работ'
    И Я устанавливаю фильтр на список
    | Проект | равно | Автотестирование загрузки 27 улицы |
    И Я убираю группировки в текущем списке
    И в таблице "Список" я перехожу к строке:
    | 'Создатель' | 'Комментарий'| 'Проект'| 'Версия'|
    | 'Вирич П'| 'Загружено из файла, шифр сметы: 1-2'|'Автотестирование загрузки 27 улицы'|'(0) Базовая'|    
    И в таблице "Список" я выбираю текущую строку
    Тогда открылось окно 'Управленческий график производства работ *'	
    И я перехожу к закладке "Дерево работ"
    И в таблице "РаботыДЗ" я нажимаю на кнопку 'Развернуть все'
    
Когда я выбираю одну строку с работой
    И в таблице "РаботыДЗ" я перехожу к строке:
    | 'Код WBS'|'Шифр позиции норматива'|
    | '1'|'11-010102-0308'|
    И в таблице "РаботыДЗ" я активизирую поле с именем "РаботыДЗКлючСтроки"
    И я запоминаю значение таблицы "РаботыДЗ" поля "РаботыДЗКлючСтроки" как "КлючСтроки1"    
   
и выделяю вторую строку с работой
    И В таблице  "РаботыДЗ" я перехожу на одну строку вниз с выделением
   
И выбираю из всплывающего меню или на панели команд "Связать последовательно"
    И в таблице "РаботыДЗ" я нажимаю на кнопку с именем 'РаботыДЗВзаимосвязи_СвязатьУказавТип'
    Тогда открылось окно 'Типы связей работ'
    И в таблице "Список" я перехожу к строке:
    | 'Ссылка'|
    |'<ТекущийТип>'|
    И в таблице "Список" я выбираю текущую строку
    Тогда открылось окно 'Управленческий график производства работ *'
    И в таблице "РаботыДЗ" я активизирую поле с именем "РаботыДЗКлючСтроки"
    И я запоминаю значение таблицы "РаботыДЗ" поля "РаботыДЗКлючСтроки" как "КлючСтроки2"
    И в таблице "РаботыДЗ" я перехожу к предыдущей строке

И я проверяю закладу "Связи работ"
    И я перехожу к закладке "Взаимосвязи работ"
    И пауза 1
    Тогда в таблице "ВзаимосвязиРаботПредшественники" количество строк "равно" 0
    И я перехожу к закладке "Последователи"
    И пауза 1
    Тогда в таблице "ВзаимосвязиРаботПоследователи" количество строк "больше" 0
    И в таблице "ВзаимосвязиРаботПоследователи" я перехожу к первой строке
    И в таблице "ВзаимосвязиРаботПоследователи" я выбираю текущую строку
    
И я проверяю корректность данных
    Тогда открылось окно 'Взаимосвязи работ УГПР'
    И элемент формы "Предшествующая работа" стал равен "Грунты 2 группы. Разработка с погрузкой на автомобили-самосвалы экскаваторами с ковшом вместимостью 0,65 м3"
    И элемент формы "Последующая работа" стал равен "Перевозка строительных грузов самосвалами вне карьеров. Грузоподъемность 20 т. Класс груза 1. Расстояние перевозки 3 км"
    И элемент формы "Тип связи" стал равен <ТекущийТип>
    И поле "Ключ строки предшествующей работы" равно переменной "КлючСтроки1"
    И поле  "Ключ строки последующей работы" равно переменной "КлючСтроки2"

И я устанавливаю значение поля "Запаздывание" равно "1"
    И в поле 'Запаздывание' я ввожу текст '1'
    И я нажимаю на кнопку 'Записать и закрыть'
    И я жду закрытия окна 'Взаимосвязи работ УГПР' в течение 20 секунд
    И в таблице "ВзаимосвязиРаботПоследователи" поле "Запаздывание" имеет значение "1"

И я пробую убрать связи
    И в таблице "ВзаимосвязиРаботПоследователи" я нажимаю на кнопку с именем 'РаботыДЗОтключитьОтборПоДереву7'
    Тогда в таблице "ВзаимосвязиРаботПоследователи" я выделяю все строки
    И в таблице "ВзаимосвязиРаботПоследователи" я нажимаю на кнопку с именем 'ВзаимосвязиРаботПоследователиУдалить'
    Затем Если появилось окно диалога я нажимаю на кнопку "Да"    
    И я перехожу к закладке "Предшественники"
    #Тогда в таблице "ВзаимосвязиРаботПредшественники" я выделяю все строки
    #И в таблице "ВзаимосвязиРаботПредшественники" я нажимаю на кнопку с именем 'ВзаимосвязиРаботПредшественникиУдалить'
    #И я удаляю все строки таблицы "ВзаимосвязиРаботПредшественники"
    #Затем Если появилось окно диалога я нажимаю на кнопку "Да"
    И в таблице "ВзаимосвязиРаботПредшественники" я нажимаю на кнопку с именем 'РаботыДЗОтключитьОтборПоДереву6'

Примеры:

|ТекущийТип|
|"Окончание-начало (ОН)"|
|"Окончание-окончание (ОО)"|
|"Начало-окончание (НО)"|
|"Начало-начало (НН)"|
