#Область ПрограммныйИнтерфейс

// Получить макет внешнего объекта по работе с консолью кода в поле HTML.
// 
// Возвращаемое значение:
//   - Строка - адрес макета во временном хранилище.
//
Функция ПолучитьМакетКонсоли() Экспорт
	
	Макет = ПолучитьОбщийМакет("bsl_console");
	АдресМакета = ПоместитьВоВременноеХранилище(Макет, Новый УникальныйИдентификатор);
	
	Возврат АдресМакета;
	
КонецФункции

Функция ПолучитьОписаниеОбъектаМетаданныхJSON(Знач ПараметрыЗапроса, АдресОбновления, Знач Конвертация) Экспорт
	
	Если ТипЗнч(Конвертация) = Тип("СправочникСсылка.Конвертации") Тогда
		Релиз = ОбщегоНазначения.ЗначениеРеквизитаОбъекта(Конвертация, "Конфигурация");
	Иначе
		Релиз = Конвертация;
	КонецЕсли;
	
	Если СтрНайти(ПараметрыЗапроса, ".") Тогда
		Возврат Расш1_КоллекцияМетаданных.ПолучитьОписаниеОбъектаМетаданных(ПараметрыЗапроса, АдресОбновления, Релиз);
	Иначе
		Возврат Расш1_КоллекцияМетаданных.ПолучитьСписокОбъектовМетаданных(ПараметрыЗапроса, АдресОбновления, Релиз);
	КонецЕсли;
	
КонецФункции

#КонецОбласти



//ИСПОЛЬЗОВАНИЕ VAEditor.
//&НаСервере
//Procedure VanessaEditorLoad()
//	
//	Макет = ПолучитьОбщийМакет("VanessaEditor");
//	ИмяВременногоФайла = ПолучитьИмяВременногоФайла();
//	УдалитьФайлы(ИмяВременногоФайла);
//	СоздатьКаталог(ИмяВременногоФайла);
//	
//	ЧтениеZipФайла = Новый ЧтениеZipФайла(Макет.OpenStreamForRead());
//	Для Каждого ФайлАрхива In ЧтениеZipФайла.Элементы Цикл
//		ЧтениеZipФайла.Извлечь(ФайлАрхива, ИмяВременногоФайла, РежимВосстановленияПутейФайловZIP.Восстанавливать);
//		ДвоичныеДанные = Новый ДвоичныеДанные(ИмяВременногоФайла + ПолучитьРазделительПути() + ФайлАрхива.ПолноеИмя);
//		ПередКонвертациейHTML = GetInfoBaseURL() + "/" + ПоместитьВоВременноеХранилище(ДвоичныеДанные, УникальныйИдентификатор)
//			+ "&localeCode=" + Лев(ТекущийЯзыкСистемы(), 2);
//	КонецЦикла;
//	УдалитьФайлы(ИмяВременногоФайла);

//EndProcedure


