#include "menu.hpp"
#include "menu_items.hpp"

int main(){
    const MenuStruct::MenuItem* current = &MenuItem::MAIN;
    do {
        current = current ->func(current);
    } while (true);
    
    return 0;
}
