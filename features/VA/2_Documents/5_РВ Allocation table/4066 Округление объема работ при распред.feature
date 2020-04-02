﻿#language: ru
@tree

#report.epic=Документы 
#report.feature=Распред.ведомость
#report.story=Проверяем деление работы в  случаях нецелого деления

Функционал: Как пользователь УСП я хочу иметь возможность делить работу по исполнителям в случаях нецелого деления
    Поделить работу на исполнителей и автоматически разделить всю информацию работы

Контекст: 
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверяем деление работы в  случаях нецелого деления

#Зачищаем старые данные если есть
Допустим Я открываю основную форму списка документа "ИНАГРО_РаспределительнаяВедомость" по проекту "#4066 - Округление объема работ при распределении по периодам" удаляем данные "Истина"
 
Проверяем корректность УГПР после отмены разделения    
    Допустим Я открываю основную форму списка документа "ИНАГРО_УГПР"
    Тогда открылось окно 'Бюджет проекта переменных затрат'
    И Я очищаю фильтр на форме списка
    И из выпадающего списка с именем "КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Значение" я выбираю по строке '#4066 - Округление объема работ при распределении по периодам'    
    Когда Я убираю группировки в текущем списке
    И в таблице "Список" я перехожу к строке по шаблону:
    | 'Версия'      | 'Проект' | 
    | '(*) #4066' |  '#4066 - Округление объема работ при распределении по периодам' |
    И в таблице "Список" я выбираю текущую строку
    Когда открылось окно 'Бюджет проекта переменных затрат *'    
    И я нажимаю на кнопку "Записать"
    И я закрываю текущее окно
    И в таблице "Список" я выбираю текущую строку
    И я перехожу к закладке "Дерево работ"
    И в таблице "РаботыДЗ" я нажимаю на кнопку 'Развернуть все'
    Тогда таблица "РаботыДЗ" стала равной:
    | 'WBS'                                   | 'Объем'     |
    | 'Итоги'                                 | ''          |
    | 'Работа для проверки округления объема' | '21,240000' |
    И в таблице "РаботыПериод" я нажимаю на кнопку с именем 'РаботыДЗОтключитьОтборПоДереву'
    И пауза 2
    Тогда таблица "РаботыПериод" стала равной:
    | 'Вид работы'                            | 'Конец периода' | 'Начало периода' | 'Длительность' | 'Объем'    |
    | 'Работа для проверки округления объема' | '31.05.2019'    | '01.05.2019'     | '31'           | '2,687510' |
    | 'Работа для проверки округления объема' | '30.06.2019'    | '01.06.2019'     | '30'           | '2,600816' |
    | 'Работа для проверки округления объема' | '31.07.2019'    | '01.07.2019'     | '31'           | '2,687510' |
    | 'Работа для проверки округления объема' | '31.08.2019'    | '01.08.2019'     | '31'           | '2,687510' |
    | 'Работа для проверки округления объема' | '30.09.2019'    | '01.09.2019'     | '30'           | '2,600817' |
    | 'Работа для проверки округления объема' | '31.10.2019'    | '01.10.2019'     | '31'           | '2,687510' |
    | 'Работа для проверки округления объема' | '30.11.2019'    | '01.11.2019'     | '30'           | '2,600817' |
    | 'Работа для проверки округления объема' | '31.12.2019'    | '01.12.2019'     | '31'           | '2,687510' |
    И я закрываю текущее окно



Я делаю распределительную ведомость с частью работ на субподряд
    Я создаю и заполняю документ     
        Допустим Я открываю основную форму списка документа "ИНАГРО_РаспределительнаяВедомость" по проекту "#4066 - Округление объема работ при распределении по периодам" удаляем данные "Ложь"
        И я нажимаю на кнопку с именем 'ФормаСоздать'
        Тогда не появилось окно предупреждения системы
        Тогда открылось окно 'Распределительная ведомость (создание)'
        И я перехожу к закладке "Распределение WBS"
        И в таблице "РаботыДЗ" я нажимаю на кнопку 'Заполнить работы'
        Затем Если появилось окно диалога я нажимаю на кнопку "Да"
        Тогда открылось окно 'Распределительная ведомость (создание) *'

    Я делю работы на три части
        И в таблице "РаботыДЗ" я перехожу к строке:
        | 'Вид работы'                            | 'Ед.Изм'  | 'Объем'     |  
        | 'Работа для проверки округления объема' | 'шт'      |  '21,240000' | 
        И в таблице "РаботыДЗ" я нажимаю на кнопку 'Разделить строку'
        Тогда открылось окно 'Разделение работы: Форма разделения строки'
        И в поле 'Объем 1' я ввожу текст '14,160000'
        И я нажимаю на кнопку 'Ок'
        Тогда открылось окно 'Распределительная ведомость (создание) *' 
        И в таблице "РаботыДЗ" я завершаю редактирование строки
        И в таблице "РаботыДЗ" я перехожу к строке:
        | 'Вид работы'                            | 'Ед.Изм'  | 'Объем'     |  
        | 'Работа для проверки округления объема' | 'шт'      |  '14,160000' | 
        И в таблице "РаботыДЗ" я нажимаю на кнопку 'Разделить строку'
        Тогда открылось окно 'Разделение работы: Форма разделения строки'
        И в поле 'Объем 1' я ввожу текст '7,080000'
        И я нажимаю на кнопку 'Ок'
        Тогда открылось окно 'Распределительная ведомость (создание) *'                         

    Я провожу документ
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Распределительная ведомость (создание) *' в течение 20 секунд
        Тогда открылось окно 'Распределительная ведомость'

 
Я проверяю результат деления в УГПР
    Допустим Я открываю основную форму списка документа "ИНАГРО_УГПР"
    Тогда открылось окно 'Бюджет проекта переменных затрат'    
    И в таблице "Список" я перехожу к строке по шаблону:
    | 'Версия'      | 'Проект' | 
    | '(*) #4066'   |  '#4066 - Округление объема работ при распределении по периодам' | 
    И в таблице "Список" я выбираю текущую строку
    Когда открылось окно 'Бюджет проекта переменных затрат *'
    И я перехожу к закладке "Дерево работ"
    И в таблице "РаботыДЗ" я нажимаю на кнопку 'Развернуть все'    
    Тогда в таблице "РаботыДЗ" количество строк "равно" 4
    И в таблице "РаботыДЗ" я перехожу к первой строке
    И в таблице "РаботыДЗ" я перехожу к следующей строке
    И в таблице "РаботыПериод" я перехожу к первой строке
    И Я запоминаю значение выражения "0" в переменную "ЗначениеСуммы"
    И для каждой строки таблицы "РаботыПериод" я выполняю
        И в таблице "РаботыПериод" я активизирую поле "Объем"
        И я запоминаю значение текущего поля как "ТекОбъем"        
        И Я запоминаю значение выражения "Строка(Число(Контекст.ЗначениеСуммы)+Число(Контекст.ТекОбъем))" в переменную "ЗначениеСуммы"    
    Тогда переменная "ЗначениеСуммы" имеет значение "7,08"

    И в таблице "РаботыДЗ" я перехожу к следующей строке
    И в таблице "РаботыПериод" я перехожу к первой строке
    И Я запоминаю значение выражения "0" в переменную "ЗначениеСуммы"
    И для каждой строки таблицы "РаботыПериод" я выполняю
        И в таблице "РаботыПериод" я активизирую поле "Объем"
        И я запоминаю значение текущего поля как "ТекОбъем"
        И Я запоминаю значение выражения "Строка(Число(Контекст.ЗначениеСуммы)+Число(Контекст.ТекОбъем))" в переменную "ЗначениеСуммы"    
    Тогда переменная "ЗначениеСуммы" имеет значение "7,08"

    И в таблице "РаботыДЗ" я перехожу к следующей строке
    И в таблице "РаботыПериод" я перехожу к первой строке
    И Я запоминаю значение выражения "0" в переменную "ЗначениеСуммы"
    И для каждой строки таблицы "РаботыПериод" я выполняю
        И в таблице "РаботыПериод" я активизирую поле "Объем"
        И я запоминаю значение текущего поля как "ТекОбъем"
        И Я запоминаю значение выражения "Строка(Число(Контекст.ЗначениеСуммы)+Число(Контекст.ТекОбъем))" в переменную "ЗначениеСуммы"    
    Тогда переменная "ЗначениеСуммы" имеет значение "7,08"
    И я закрываю текущее окно











