﻿#language: ru
@tree


Функционал: Как пользователь УСП я хочу иметь возможность рассчитать длительности работ
 для использования в дальнейших расчетах план -графика  работ


Сценарий: Я выполняю расчет длительности работ

Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
Дано Я создаю график проекта с названием "Основной тест" 
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
    И в таблице "РаботыДЗ" я перехожу к строке:
    | 'Код WBS'|'Шифр позиции норматива'|
    | '1'|'11-010102-0308'|
    И в таблице "РаботыДЗ" поле "Длительность, дн" имеет значение ""

Выполняем расчет
    И я нажимаю на кнопку с именем "РаботыДЗВзаимосвязи_РасчетДлительности"
    Тогда появилось предупреждение, содержащее текст "Будет выполнен перерасчет длительности"  
    Затем Если появилось окно диалога я нажимаю на кнопку "Да"
Проверям первую строку 
    Когда в таблице "РаботыДЗ" я перехожу к строке:
    | 'Код WBS'|'Шифр позиции норматива'|
    | '1'|'11-010102-0308'|        
    И я перехожу к закладке "Трудовые ресурсы"
    # время на установку отборов
    И пауза 1 
    Тогда таблица "РесурсыТрудовые" стала равной:
        | 'Вид ресурса'              |'Количество'   |  'Ресурс'                          | 'ЕдИзм' |
        | 'Затраты труда рабочих'    |  '267,678000' | 'Затраты труда рабочих-строителей' | 'чел-ч' |
        | 'Затраты труда машинистов' |  '776,102000' | 'Затраты труда машинистов'         | 'чел/ч' |   
        # 776 / 8 =  97
    И в таблице "РаботыДЗ" поле "Длительность, дн" имеет значение "97"
 

Структура сценария:  Проверяем результат расчет длительности


     И в таблице "РаботыДЗ" я перехожу к строке:
    | 'Код WBS'|'Шифр позиции норматива'|
    | <КодВБС> |<Шифр>                  |    
    И я перехожу к закладке "Трудовые ресурсы"
    # время на установку отборов
    И пауза 1 
    И в таблице "РаботыДЗ" поле "Длительность, дн" имеет значение <Длительность>

    Примеры:
    |КодВБС|Шифр            |Длительность|    
    | '2'  |'41-020103-1003'|''          | 
    | '3'  |'11-010102-0602'|'13'        | 
    | '4'  |'11-010105-0501'|'53'        | 
    | '8'  |'11-010102-0602'|'103'       | 
    | '10' |'11-010201-0102'|'499'       | 
    | '25' |'11-010102-0202'|'471'       | 


Сценарий: Я проверяю влияние количества ресурса на длительность работ

    #Проверка по эталонным данным
     Когда в таблице "РаботыДЗ" я перехожу к строке:
    | 'Код WBS'|'Шифр позиции норматива'|
    | '25'|'11-010102-0202'|        
    И я перехожу к закладке "Трудовые ресурсы"
    # время на установку отборов
    И пауза 1 
    Тогда таблица "РесурсыТрудовые" стала равной:
        | 'Вид ресурса'              |'Количество'     |  'Ресурс'                          | 'ЕдИзм' |'Количество ресурса' |
        | 'Затраты труда рабочих'    |  '1 167,431000' | 'Затраты труда рабочих-строителей' | 'чел-ч' |''                   |
        | 'Затраты труда машинистов' |  '3 769,912000' | 'Затраты труда машинистов'         | 'чел/ч' |''                   |  
        # 3770 / 8 =  471
    И в таблице "РаботыДЗ" поле "Длительность, дн" имеет значение "471"
    
    Когда в таблице "РесурсыТрудовые" я перехожу к строке:
    | 'Вид ресурса'|
    | 'Затраты труда машинистов' |   
    И в таблице "РесурсыТрудовые" в поле 'Количество ресурса' я ввожу текст '2'
    И в таблице "РесурсыТрудовые" я завершаю редактирование строки
    Тогда появилось предупреждение, содержащее текст "Хотите выполнить перерасчет"
    И я нажимаю на кнопку 'Да'
    Тогда открылось окно 'Управленческий график производства работ *'
    # 3770/ 2 / 8 =  236
    И в таблице "РаботыДЗ" поле "Длительность, дн" имеет значение "236"

    Когда в таблице "РесурсыТрудовые" я перехожу к строке:
    | 'Вид ресурса'|
    | 'Затраты труда машинистов' |   
    И в таблице "РесурсыТрудовые" в поле 'Количество ресурса' я ввожу текст '4'
    И в таблице "РесурсыТрудовые" я завершаю редактирование строки
    Тогда появилось предупреждение, содержащее текст "Хотите выполнить перерасчет"
    И я нажимаю на кнопку 'Да'
    Тогда открылось окно 'Управленческий график производства работ *'
    # 3770/ 4 / 8 =  118 но второй ресурс теперь больше 1167 / 1 / 8 = 146
    И в таблице "РаботыДЗ" поле "Длительность, дн" имеет значение "146"

    Проверяем одинаковость алгоритмов в общем и по строке
        И я нажимаю на кнопку с именем "РаботыДЗВзаимосвязи_РасчетДлительности" 
        Тогда появилось предупреждение, содержащее текст "Будет выполнен перерасчет длительности"  
        Затем Если появилось окно диалога я нажимаю на кнопку "Да"
        Когда в таблице "РаботыДЗ" я перехожу к строке:
        | 'Код WBS'|'Шифр позиции норматива'|
        | '25'|'11-010102-0202'|    
        # время на установку отборов
        И пауза 1 
        И в таблице "РаботыДЗ" поле "Длительность, дн" имеет значение "146"


    
