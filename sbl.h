#ifndef SBL_H
#define SBL_H

/* Exit */
#define DIE(msg) \
    do { \
        fprintf(stderr, "[%s:%d] %s: %s\n", __FILE__, __LINE__, msg, strerror(errno)); \
        exit(EXIT_FAILURE); \
    } while(0)

/* Error check */
#define CHECK(x, err_msg) do { \
  int retval = (x); \
  if (retval != 0) { \
    fprintf(stderr, "Runtime error: %s returned %d at %s:%d", #x, retval, __FILE__, __LINE__); \
    DIE(err_msg); \
  } \
} while (0)

#endif // SBL_H
