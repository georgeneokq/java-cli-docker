package com.example;

import java.util.Scanner;

public class Main {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);

    System.out.println("What's your name?");
    String name = sc.next();
    System.out.println(String.format("Hi, %s!", name));
  }
}
