
#Область ОбработчикиСобытийФормы

&НаСервере
Процедура Расш1_ПриСозданииНаСервереПосле(Отказ, СтандартнаяОбработка)
	Расш1_ПроверитьОписаниеМетаданныхКонвертации(Объект.Конвертация);
КонецПроцедуры

#КонецОбласти

#Область ОбработчикиСобытийЭлементовТаблицыФормыПравилаОбработкиДанных

&НаКлиенте
Процедура ПравилаОбработкиДанныхВыборПосле(Элемент, ВыбраннаяСтрока, Поле, СтандартнаяОбработка)
	Расш1_ОбработкаВыбораПродолжение(СтандартнаяОбработка, "Справочник.ПравилаОбработкиДанных.Форма.ФормаЭлемента", ВыбраннаяСтрока);
КонецПроцедуры

#КонецОбласти

#Область ОбработчикиСобытийЭлементовТаблицыФормыПравилаКонвертацииОбъектов

&НаКлиенте
Процедура ПравилаКонвертацииОбъектовВыборПосле(Элемент, ВыбраннаяСтрока, Поле, СтандартнаяОбработка)
	Расш1_ОбработкаВыбораПродолжение(СтандартнаяОбработка, "Справочник.ПравилаКонвертацииОбъектов.Форма.ФормаЭлемента", ВыбраннаяСтрока);
КонецПроцедуры

#КонецОбласти

#Область ОбработчикиСобытийЭлементовТаблицыФормыАлгоритмы

&НаКлиенте
Процедура АлгоритмыВыборПосле(Элемент, ВыбраннаяСтрока, Поле, СтандартнаяОбработка)
	Расш1_ОбработкаВыбораПродолжение(СтандартнаяОбработка, "Справочник.Алгоритмы.Форма.ФормаЭлемента", ВыбраннаяСтрока);
КонецПроцедуры

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

&НаСервереБезКонтекста
Процедура Расш1_ПроверитьОписаниеМетаданныхКонвертации(Знач Конвертация)
	
	ОписаниеМетаданных = Расш1_КоллекцияМетаданных.ПолучитьОписаниеМетаданных(Конвертация);
	Если ОписаниеМетаданных = Неопределено Тогда
		
		// Загружаем описание.
		Релиз = ОбщегоНазначения.ЗначениеРеквизитаОбъекта(Конвертация, "Конфигурация");
		Расш1_КоллекцияМетаданных.ОбновитьОписаниеМетаданных(Релиз);
		
	КонецЕсли;
	
КонецПроцедуры

&НаКлиенте
Процедура Расш1_ОбработкаВыбораПродолжение(СтандартнаяОбработка, ИмяФормы, ВыбраннаяСтрока)
	
	СтандартнаяОбработка = Ложь;
	
	ПараметрыОткрытия = Новый Структура;
	ПараметрыОткрытия.Вставить("Конвертация", Объект.Конвертация);
	ПараметрыОткрытия.Вставить("Ключ", ВыбраннаяСтрока);
	ОткрытьФорму(ИмяФормы, ПараметрыОткрытия, ЭтотОбъект);
	
КонецПроцедуры

#КонецОбласти
