﻿#language: ru

@tree
@exportscenarios
@IgnoreOnCIMainBuild

Функционал: Как пользователь УСП я хочу иметь возможность 
    создать эталонный УГПР для проверки расчета сетевого графика

  
Структура сценария:  Я устанавливаю связи между работами

Допустим я перехожу к закладке "Взаимосвязи работ"
Затем Если появилось окно диалога я нажимаю на кнопку "Да"
Тогда я жду открытия окна 'Управленческий график производства работ *' в течение 20 секунд
Создаю связь работы
    Когда в таблице "РаботыДЗ" я перехожу к строке:
    |'Код WBS'|
    |<КодТекущейРаботы>|
    И в таблице "ВзаимосвязиРаботПредшественники" я нажимаю на кнопку с именем 'ВзаимосвязиРаботПредшественникиСоздать'
    И я выбираю значение реквизита "Предшествующая работа" из формы списка    
    Тогда открылось окно 'WBS и работы проекта: Форма выбора элемента WBS'
    И в таблице "ДеревоWBS" я перехожу к строке:
    | 'Код WBS' |
    | <КодПредшественника>| 
    И в таблице "ДеревоWBS" я нажимаю на кнопку 'Выбрать'
    Тогда открылось окно 'Взаимосвязи работ УГПР (создание)'
    И я нажимаю на кнопку 'Записать и закрыть'
    И я жду закрытия окна 'Взаимосвязи работ УГПР (создание)' в течение 20 секунд

Примеры:
|КодТекущейРаботы | КодПредшественника| 
|'02'             | '01'              |
|'03'             | '02'              |
|'04'             | '02'              |
|'05'             | '02'              |
|'06'             | '04'              |
|'07'             | '04'              |
|'07'             | '05'              |
|'08'             | '03'              |
|'08'             | '05'              |
|'09'             | '06'              |
|'09'             | '07'              |
|'09'             | '08'              |
|'10'             | '09'              |
|'11'             | '09'              |
|'12'             | '10'              |
|'12'             | '11'              |
|'13'             | '12'              |