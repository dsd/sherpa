#ifndef __LLAMASHERPA_H
#define __LLAMASHERPA_H

#ifdef WIN32
   #define EXPORT __declspec(dllexport)
#else
   #define EXPORT extern "C" __attribute__((visibility("default"))) __attribute__((used))
#endif

typedef char *get_input_cb(void);
typedef void show_output_cb(const char *);

EXPORT int llamasherpa_process(const char *model_path, const char *_prompt, const char *_antiprompt, get_input_cb *get_input, show_output_cb *show_output);

#endif
