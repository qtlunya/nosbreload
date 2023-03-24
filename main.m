#include <stdio.h>
#include <spawn.h>
#include <sys/wait.h>

int main(int argc, char *argv[], char *envp[]) {
    pid_t pid;
    int status;
    const char* args[] = {"killall", "-9", "SpringBoard", NULL};
#ifndef ROOTLESS
    posix_spawn(&pid, "/usr/bin/killall", NULL, NULL, (char* const*) args, NULL);
#else
    posix_spawn(&pid, "/var/jb/usr/bin/killall", NULL, NULL, (char* const*) args, NULL);
#endif
    waitpid(pid, &status, WEXITED);
}
