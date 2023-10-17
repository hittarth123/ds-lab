#include <iostream>
using namespace std;

struct Node {
    int data;
    Node* next;
};

Node* findMiddle(Node* head) {
    if (head == nullptr || head->next == nullptr) {
        return head;
    }
    Node* slow = head;
    Node* fast = head->next;
    while (fast != nullptr && fast->next != nullptr) {
        slow = slow->next;
        fast = fast->next->next;
    }
    return slow;
}

int main() {
    Node* head = new Node{1, nullptr};
    head->next = new Node{2, nullptr};
    head->next->next = new Node{3, nullptr};
    head->next->next->next = new Node{4, nullptr};
    head->next->next->next->next = new Node{5, nullptr};

    Node* middle = findMiddle(head);
    cout << "Middle element: " << middle->data << endl;

    // Clean up: Delete the nodes to free memory
    Node* current = head;
    while (current != nullptr) {
        Node* temp = current;
        current = current->next;
        delete temp;
    }

    return 0;
}
