#include <stdio.h>
#include <stdlib.h>
#include <string.h>

extern int f(int*, int*);

void oops(char *msg) {
  fprintf(stderr, "Error: %s\n", msg);
  exit(1);
}

int* makeImage(char* lines[]) {
  int* buf = 0;
  if (lines==0) {
    oops("empty image");
  } else {
    int w = strlen(lines[0]);
    int h = 1;
    int i, j, p;
    for (; lines[h]!=0; h++) {
      if (strlen(lines[h])!=w) {
        oops("lines have different lengths");
      }
      h++;
    }
    printf("Image has width %d and height %d\n", w, h);
    buf = malloc(sizeof(int) * (2 + w*h));
    if (buf==0) {
      oops("Out of memory");
    }
    buf[0] = w;
    buf[1] = h;
    p      = 2;
    for (i=0; i<h; i++) {
      for (j=0; j<w; j++) {
        buf[p++] = (int)(lines[i][j]);
      }
    }
  }
  return buf;
}

void showImage(int* image) {
  int w=image[0], h=image[1];
  int i, j, p = 2;
  for (i=0; i<h; i++) {
    for (j=0; j<w; j++) {
      putchar((char)image[p++]);
    }
    printf("\n");
  }
}

int main(int argc, char* argv[]) {
  char* lines1[] = {
      "    xxxxxxxx    ",
      "   x        x   ",
      "  x          x  ",
      " x            x ",
      "x              x",
      "x    x    x    x",
      "x   xxx  xxx   x",
      "x    x    x    x",
      "x              x",
      "x     xxxx     x",
      "x      xx      x",
      "x   x      x   x",
      " x   xxxxxx   x ",
      "  x          x  ",
      "   x        x   ",
      "    xx    xx    ",
      "      xxxx      ",
      0 };
  int* image1 = makeImage(lines1);

  char* lines2[] = {
      "RRRRRRRRRRRR    ",
      "RR          RR  ",
      "RR           RR ",
      "RR            RR",
      "RR            RR",
      "RR           RR ",
      "RR        RRRR  ",
      "RRRRRRRRRRRR    ",
      "RR        RRR   ",
      "RR          RR  ",
      "RR           RR ",
      "RR            RR",
      "RR            RR",
      "RR            RR",
      "                ",
      "                ",
      "                ",
      0 };
  int* image2 = makeImage(lines2);

  printf("Here is the first image:\n");
  showImage(image1);

  printf("Here is the second image:\n");
  showImage(image2);

  printf("Result of call is %d\n", f(image1, image2));

  printf("Here is the first output image:\n");
  showImage(image1);

  printf("Here is the second output image:\n");
  showImage(image2);

  return 0;
}

