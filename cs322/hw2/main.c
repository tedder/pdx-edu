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
      //printf("h: %i\n", strlen(lines[h]));
      if (strlen(lines[h])!=w) {
        oops("lines have different lengths");
      }
      //h++;
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

int spaceCount(int* image) {
  int w=image[0], h=image[1];
  int spaces = 0;
  int i, j, p = 2;
  for (i=0; i<h; i++) {
    for (j=0; j<w; j++) {
      if (image[p++] == 32) { ++spaces; }
    }
  }

  return spaces;
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
      "x              x", //5
      "x    x    x    x",
      "x   xxx  xxx   x",
      "x    x    x    x",
      "x              x",
      "x     xxxx     x", //10
      "x      xx      x",
      "x   x      x   x",
      " x   xxxxxx   x ",
      "  x          x  ",
      "   x        x   ", //15
      "    xx    xx    ",
      "      xxxx      ", //17
      0 };
  int* image1 = makeImage(lines1);

  char* lines2[] = {
      "RRRRRRRRRRRR    ",
      "RR          RR  ",
      "RR           RR ",
      "RR            RR",
      "RR            RR", // 5
      "RR           RR ",
      "RR        RRRR  ",
      "RRRRRRRRRRRR    ",
      "RR        RRR   ",
      "RR          RR  ", // 10
      "RR           RR ",
      "RR            RR",
      "RR            RR",
      "RR            RR",
      "                ", //15
      "                ",
      "                ", //17
      0 };
  int* image2 = makeImage(lines2);

  char* lines3[] = { "ABC", "DEF", 0 };
  int* image3 = makeImage(lines3);

  char* lines4[] = {
    "abcdef",
    "ghijkl",
    "mnopqr",
    0 };
  int* image4 = makeImage(lines4);

  char* lines5[] = {
    "A CD F",
    " H  K ",
    "M OP R",
    0 };
  int* image5 = makeImage(lines5);

  printf("Here is the first image:\n");
  showImage(image1);

  printf("Here is the second image:\n");
  showImage(image2);

  printf("spaces in image1: %i\n\n", spaceCount(image1));
  printf("spaces in image2: %i\n\n", spaceCount(image2));
  printf("Here is the third image:\n");
  showImage(image3);


  printf("Result of call is %d\n", f(image1, image2));

  printf("Here is the first output image:\n");
  showImage(image1);

  printf("Here is the second output image:\n");
  showImage(image2);

  //printf("Here is the fourth output image:\n");
  //showImage(image4);

  return 0;
}

