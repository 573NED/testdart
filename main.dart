void main () {
   List<int> array = [1, 2, 3, 4];
   List<int> array2 = [1, -2, 3, -4];
   List<int> arrayp = [];
   List<int> arrayn = [];
   String s = 'строка';
   print(redouble(array));
   print(nums(array2, arrayp, arrayn));
   print('$arrayp $arrayn');
   print(reverse(s));
}

// на вход приходит массив целых чисел и функция
// нужно к каждому элементу массива применить функцию
// и вернуть в качестве результаты новый массив
// input: [1, 2, 3, 4], (e) => e*2
// output: [2, 4, 6, 8]
List<int> redouble(List<int> brr) {   
   for (int i=0; i< brr.length; i++){
      brr[i] = brr[i] * 2;
   }
   return brr;
} 

// на вход приходит массив целых чисел 
// вернуть массива положительных чисел и массив отрицательных
// как вернуть пару элементов?
// input: [1, -2, 3, -4]
// output: [1, 3], [-2, -4]
List<int> nums(List<int> brr, List<int> pos, List<int> neg) {
   for (int i=0; i< brr.length; i++){
      if (brr[i] > 0) {
         pos.add(brr[i]);
      } else {
         neg.add(brr[i]);
      }
   }
   return brr;
}

// на входе строка
// на выходе та же строка, но в обратном порядке
String reverse(String input) {
  var chars = input.split('');
  return chars.reversed.join();
}