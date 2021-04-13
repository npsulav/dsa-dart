// this whole Stack depends on dart:core List
import 'dart:core';

class Stack {
    // [Stack] is a data structure which follows 
    // LIFO (Last In First Out) principal
    //
    // It has following operations
    // 1. push(element) pushes a new element at the top of stack
    // 2. pop() pops the firstest element from the Stack
    // 3. size() returns the size of the Stack
    // 4. peek() returns the firstest element of Stack without removing it


    // this list can be of any type but must me all same!
    List listItems = []; 


    // Constructor accepts the initial list as the Stack element
    Stack(listItem){
        listItems = listItem.reversed.toList();
    }



    List push(element) {
        // push(element) pushes a new element at the top of stack
        
        // IMPLEMENTATION
        // [1,2,3,4,5]
        // add(6) => [1,2,3,4,5,6]
        listItems.add(element);
        return listItems.reversed.toList();
    }

    int pop() {
        // pop() pops the firstest element from the Stack
        listItems.removeAt(size()-1);
        return size();
    }

    int size() {
        // size() returns the size of the Stack
        return listItems.length;
    }

    peek() {
        // peek() retuns the lastest element of list
        // which is the firstest element of Stack
        return listItems[size()-1];
    }

    List printStack() {
        return listItems.reversed.toList();
    }


}

void main() {
    Stack stack = new Stack([1,2,3]);
    print('Push element in stack');
    print(stack.push(5));

    print('Pops element in stack');
    print(stack.pop());


    print('Read element in stack');
    print(stack.printStack());

    print('Get the Size of stack');
    print(stack.size());

    print('Peeks the Stack');
    print(stack.peek());

}