#include <iostream>
using namespace std;

struct Node {
    int data;
    Node* next;
};

Node* mergeSortedLists(Node* l1, Node* l2) {
    if (l1 == nullptr) return l2;
    if (l2 == nullptr) return l1;

    Node* merged = nullptr;
    if (l1->data < l2->data) {
        merged = l1;
        merged->next = mergeSortedLists(l1->next, l2);
    } else {
        merged = l2;
        merged->next = mergeSortedLists(l1, l2->next);
    }
    return merged;
}

int main() {
    Node* l1 = new Node{1, nullptr};
    l1->next = new Node{3, nullptr};
    l1->next->next = new Node{5, nullptr};

    Node* l2 = new Node{2, nullptr};
    l2->next = new Node{4, nullptr};
    l2->next->next = new Node{6, nullptr};

    Node* mergedList = mergeSortedLists(l1, l2);

    // Print merged list
    Node* temp = mergedList;
    while (temp != nullptr) {
        cout << temp->data << " ";
        temp = temp->next;
    }
    cout << endl;

    // Clean up: Delete the nodes to free memory
    delete l1;
    delete l2;
    while (mergedList != nullptr) {
        Node* temp = mergedList;
        mergedList = mergedList->next;
        delete temp;
    }

    return 0;
}
