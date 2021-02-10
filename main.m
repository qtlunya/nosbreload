#include <stdio.h>
#include <spawn.h>
#include <sys/wait.h>

int main(int argc, char *argv[], char *envp[]) {
    pid_t pid;
    int status;
    const char* args[] = {"killall", "-9", "SpringBoard", NULL};
    posix_spawn(&pid, "/usr/bin/killall", NULL, NULL, (char* const*) args, NULL);
    waitpid(pid, &status, WEXITED);
}
