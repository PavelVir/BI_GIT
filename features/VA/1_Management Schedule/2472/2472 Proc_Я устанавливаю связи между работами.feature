﻿#language: ru

@tree
@exportscenarios
@IgnoreOnCIMainBuild

Функционал: Как пользователь УСП я хочу иметь возможность 
    создать эталонный УГПР для проверки расчета сетевого графика

  
Сценарий: Я устанавливаю связи между работами код "Парам1" предшественник "Парам2"

Допустим я перехожу к закладке "Взаимосвязи работ"
Затем Если появилось окно диалога я нажимаю на кнопку "Да"
Тогда я жду открытия окна 'Управленческий график производства работ *' в течение 20 секунд
Создаю связь работы
    Когда в таблице "РаботыДЗ" я перехожу к строке:
    |'Код WBS'|
    |"Парам1"|
    И я нажимаю на кнопку с именем "ВзаимосвязиРаботПредДобавитьСвязь"
    И я выбираю значение реквизита "Предшествующая работа" из формы списка    
    Тогда открылось окно 'WBS и работы проекта: Форма выбора элемента WBS'
    И в таблице "ДеревоWBS" я перехожу к строке:
    |'Код WBS'|
    |"Парам2"| 
    И в таблице "ДеревоWBS" я нажимаю на кнопку 'Выбрать'
    Тогда открылось окно 'Форма взаимосвязи работ'
    И я нажимаю на кнопку 'Записать и закрыть'
    И я жду закрытия окна 'Форма взаимосвязи работ' в течение 20 секунд