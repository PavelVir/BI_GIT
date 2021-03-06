﻿#language: ru
@tree

#report.epic=Документы 
#report.feature=Условия с заказчиком
#report.story=Проверяем контроль перезаполнение существующих данных если есть распред ведомость по этой версии с делением работы

Функционал: Как пользователь УСП я хочу иметь возможность делить работу по исполнителям
    и после этого гарантировать неисзменность данных условий

Контекст: 
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Я Проверяю перезаполнение существующих данных УпДсЗ


*Зачищаем старые данные если есть
    Допустим Я открываю основную форму списка документа "ИНАГРО_РаспределительнаяВедомость" по проекту "#3994 - Условия по договору с заказчиком - запретить перезаполнение" удаляем данные "Истина"
    
*Допустим я открываю документ Условия по договору с заказчиком 
*И проверяю что он доступен для редактирования
    Допустим Я открываю основную форму списка документа "ИНАГРО_УсловияПоДоговоруСЗаказчиком" по проекту "#3994 - Условия по договору с заказчиком - запретить перезаполнение" удаляем данные "Ложь"    
    И в таблице "Список" я перехожу к последней строке
    И в таблице "Список" я выбираю текущую строку
    Тогда открылось окно "Условия по договору *"
    И элемент формы с именем "Проект" доступен
    И представление элемента с именем "Проект" стало равно "#3994 - Условия по договору с заказчиком - запретить перезаполнение"
    И я перехожу к закладке с именем "ГруппаРаботы"
    И элемент формы с именем "ЗаполнитьРаботы" доступен
    И я закрываю текущее окно

*Я создаю новый документ распред ведомость 
    И я открываю основную форму списка документа "ИНАГРО_РаспределительнаяВедомость"
    Когда открылось окно 'Распределительная ведомость'
    И я нажимаю на кнопку с именем 'ФормаСоздать'
    Тогда открылось окно 'Распределительная ведомость (создание)'
    И из выпадающего списка "Проект" я выбираю по строке '#3994 - Условия по договору с заказчиком - запретить перезаполнение'
    И я перехожу к закладке "Распределение WBS"
    И в таблице "РаботыДЗ" я нажимаю на кнопку 'Заполнить работы'
    Затем Если появилось окно диалога я нажимаю на кнопку 'Да'
    Тогда открылось окно 'Распределительная ведомость (создание) *'
    И в таблице "РаботыДЗ" я перехожу к строке:
        | 'Вид работы' | 'Ед.Изм' |  'Объем'      | 
        | 'Работа 1'   | 'шт'     |  '200,000000' |

*Я разделяю работу проекта на 2 части 
    И в таблице "РаботыДЗ" я нажимаю на кнопку 'Разделить строку'
    Тогда открылось окно 'Разделение работы: Форма разделения строки'
    И в поле 'Объем 1' я ввожу текст '100,000000'
    И я нажимаю на кнопку 'Ок'
    Тогда открылось окно 'Распределительная ведомость (создание) *'
*И я провожу документ "распред ведомость" 
    И я нажимаю на кнопку 'Провести и закрыть'
    И я жду закрытия окна 'Распределительная ведомость (создание) *' в течение 20 секунд
*Я открываю документ "Условия по договору с заказчиком" 
    И В панели открытых я выбираю 'Условия по договору с заказчиком'
*И документ открыт только на просмотр
    И в таблице "Список" я перехожу к последней строке
    И в таблице "Список" я выбираю текущую строку
    Тогда открылось окно "Условия по договору *"      
    И элемент формы с именем "ПредупреждениеТолькоПросмотр" присутствует на форме   
    И я перехожу к закладке с именем "ГруппаРаботы"    
*И перезаполнить документ невозможно    
    Когда Проверяю шаги на Исключение:
        |'И я нажимаю на кнопку с именем "ЗаполнитьРаботы""'|
*И есть сообщене на форме "По данным заказчика выполнены распределения, редактирование данных документа невозможно"
    Тогда элемент формы с именем "ПредупреждениеТолькоПросмотр" стал равен 'По данным заказчика выполнены распределения, редактирование данных документа невозможно!'
*И я закрываю документ "Условия по договору с заказчиком" 
    И я закрываю текущее окно
*Когда я отменяю последний документ "Распред ведомость" 
    И В панели открытых я выбираю 'Распределительная ведомость'
    Если в таблице "Список" количество строк "Больше" 0 Тогда
        И для каждой строки таблицы "Список" я выполняю
            И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюУстановитьПометкуУдаления' на элементе формы с именем "Список"
            Затем Если появилось окно диалога я нажимаю на кнопку 'Да'
*тогда я открываю документ Условия по договору с заказчиком 
    И В панели открытых я выбираю 'Условия по договору с заказчиком'
    И в таблице "Список" я перехожу к последней строке
    И в таблице "Список" я выбираю текущую строку
    Тогда открылось окно "Условия по договору *"
*и есть возможность редактировать документ и заполнить его
    И элемент формы с именем "Проект" доступен
    И представление элемента с именем "Проект" стало равно "#3994 - Условия по договору с заказчиком - запретить перезаполнение"
    И я перехожу к закладке с именем "ГруппаРаботы"
    И элемент формы с именем "ЗаполнитьРаботы" доступен
    И я закрываю текущее окно