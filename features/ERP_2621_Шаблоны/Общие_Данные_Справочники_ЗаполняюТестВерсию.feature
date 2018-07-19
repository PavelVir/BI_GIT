﻿#language: ru
@tree
@exportscenarios
@IgnoreOnCIMainBuild

Функционал: Я создаю тестовую версию проекта для использования в тесте

Как разработчик я хочу повторяющиеся шаги использовать в виде подключаемых сценариев

Контекст:

Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: Я заполняю данные тестовой версии

Тогда открылось окно 'Версии проектов (создание)'
И в поле 'Наименование' я ввожу текст 'Шаблон'
#И из выпадающего списка "Проект" я выбираю по строке 'Шаблон сметы 4-1' - проект автозаполнение по связанному полю
И элемент формы "Проект" стал равен шаблону 'Шаблон сметы 4-1'
И из выпадающего списка "Вид версии" я выбираю точное значение 'Базовая'
И я нажимаю на кнопку 'Записать и закрыть'
И я жду закрытия окна 'Версии проектов  (создание) *' в течение 2 секунд



