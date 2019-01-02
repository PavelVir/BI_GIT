#language: ru

@Tree
@exportscenarios
@Ignore

Функционал: Под сценарий заполнения ограничений
 
Сценарий:  Я ограничиваю свойство "Парам1" Значением "Парам2" "Парам3" "Парам4"
  
И в таблице "ЗначенияСвойств" я перехожу к строке:
|'Свойство (новый справочник)'|
|"Парам1"|
И в таблице "ОграниченияСвойств" я нажимаю на кнопку с именем 'ОграниченияСвойствДобавить'
И в таблице "ОграниченияСвойств" я активизирую поле "Номер свойства ограничения"
И я нажимаю кнопку выбора у поля "Номер свойства ограничения"
И в таблице "ОграниченияСвойств" из выпадающего списка "Номер свойства ограничения" я выбираю точное значение "Парам2"
И в таблице "ОграниченияСвойств" я завершаю редактирование строки

И в таблице "ОграниченияСвойств" я активизирую поле "Вид сравнения"
И в таблице  "ОграниченияСвойств" я начинаю редактирование строки
И в таблице "ОграниченияСвойств" из выпадающего списка "Вид сравнения" я выбираю точное значение "Парам3"
И в таблице "ОграниченияСвойств" я завершаю редактирование строки

И в таблице "ОграниченияСвойств" я активизирую поле "Значение свойства ограничения"
И в таблице "ОграниченияСвойств" я начинаю редактирование строки
И в таблице "ОграниченияСвойств" я нажимаю кнопку выбора у реквизита "Значение свойства ограничения"
И в таблице "ОграниченияСвойств" из выпадающего списка "Значение свойства ограничения" я выбираю по строке "Парам4"
И в таблице "ОграниченияСвойств" я завершаю редактирование строки