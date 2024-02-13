#pragma once

namespace MenuStruct {
    struct MenuItem {
        const char* title;
        //указатель на функцию возвращающую константный указатель типа MenuItem с 
        //аргументом - константным указателем типа MenuItem
        const MenuItem* (*func) (const MenuItem* current); 
        const MenuItem* parent;

        //константый указатель на начало массива константных указателей
        const MenuItem* const* children;
        const int children_count;
    };
}