//Harsh Vardhan 
//20bce2266

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/shm.h>
#include <string.h>

int main(){
    int i;
    void *shared_memory;
    char buff[100];
    int shmid;

    shmid = shmget((key_t)2345, 1024, 0666|IPC_CREAT);
    printf("Key of shared memory is %d\n", shmid);

    shared_memory = shmat(shmid, NULL, 0);
    printf("process attached at %p\n", shared_memory); //print address 
    printf("Enter some data:\n");
    read(0, buff, 100);
    strcpy(shared_memory, buff);
    printf("you wrote: %s\n", (char *)shared_memory);
    return 0;
}