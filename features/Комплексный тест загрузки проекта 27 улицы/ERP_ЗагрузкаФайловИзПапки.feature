﻿#language: ru
@tree
@exportscenarios


Функционал: Загрузка списка файлов из файлов в документ УГПР

	Хочу чтобы всё работало без ошибок!

Контекст:

	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

  
Сценарий: Я загружаю файлы из каталога с помощью обработки загрузки
	
	Допустим я создаю тестовую организацию
	Тогда Я создаю тестовый проект
	И я создаю тестовую версию проекта	
	Когда В командном интерфейсе я выбираю 'Управление строительным производством' 'Загрузка из kenml *'
	Тогда открылось окно 'Мастер формирования УГПР из xml: Загрузка из kenml *'
	И из выпадающего списка "Проект" я выбираю по строке 'Автотест'
	И для каждого файла "ИмяФайла" из каталога 'E:/DOCUMENTS/Mega/ПРОЕКТЫ/BI_GIT/features/Комплексный тест загрузки проекта 27 улицы/kenml'	 
		И я вывожу значение переменной "ИмяФайла"		
		И я буду выбирать внешний файл '"E:/DOCUMENTS/Mega/ПРОЕКТЫ/BI_GIT/features/Комплексный тест загрузки проекта 27 улицы/kenml/"+$ИмяФайла$' 
		И я нажимаю на кнопку 'Выбрать файл'	
		Тогда открылось окно 'Мастер формирования УГПР из xml: Загрузка из kenml *'	
		И элемент формы с именем "Формат" стал равен "556"
		И я нажимаю на кнопку 'Создать УГПР'
		Тогда открылось окно 'Управленческий график производства работ (создание)*'
		И из выпадающего списка "Версия" я выбираю по строке 'Базовая'
		И я перехожу к закладке "Дерево работ"
		И я жду, что в таблице "РаботыДЗ" количество строк будет "больше" 0 в течение 20 секунд
		И я нажимаю на кнопку 'Провести и закрыть'
		И я жду закрытия окна 'Управленческий график производства работ (создание) *' в течение 20 секунд
	И Я нажимаю кнопку командного интерфейса 'Управленческий график производства работ'
	Тогда открылось окно 'Управленческий график производства работ'
	И из выпадающего списка "КомпоновщикНастроекПользовательскиеНастройкиЭлемент4Значение" я выбираю точное значение 'Автотестирование загрузки 27 улицы'
	И я жду, что в таблице "Список" количество строк будет "больше" 0 в течение 20 секунд

	






