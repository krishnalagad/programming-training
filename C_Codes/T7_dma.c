#include <stdio.h>
#include <stdlib.h>

void accept(int arr[], int len, int index) {
    for (int i = index; i < len; i++){
        printf("Enter data %d: ", (i + 1));
        scanf("%d", &arr[i]);
    }
}

void display(int *arr, int len) {
    for (int i = 0; i < len; i++){
        printf("%d -> ", arr[i]);
    }
    printf("NULL\n");
}

int main(void) {
    
    int n;
    printf("How many elements you want to store: ");
    scanf("%d", &n);

    int *ptr = (int*) calloc(n, sizeof(int));

    accept(ptr, n, 0);
    display(ptr, n);

    int n1;
    printf("Want to allocate more memory? How many elements: ");
    scanf("%d", &n1);
    ptr = (int*) realloc(ptr, (n + n1) * sizeof(int));
    if (ptr == NULL) {
        printf("Memory allocation failed.\n");
        return 1;
    }

    accept(ptr, (n + n1), n);
    display(ptr, (n + n1));

    free(ptr);
    return 1;
}