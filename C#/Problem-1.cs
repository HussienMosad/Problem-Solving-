## Problem: Count Characters

### Approach:
Iterate over each character and classify using char methods.
Used else-if to ensure exclusive categorization.

### Complexity:
Time: O(n)
Space: O(1)

### Notes:
- Initial solution used multiple if statements → fixed to else-if
- Avoided indirect calculation for special characters

using System;

namespace MyProgram
{
    internal class Program
    {
        static string ReadString()
        {
            string Word;
            Console.Write("Please Enter Your String: ");
            Word = Console.ReadLine();
            return Word;
        }

        static void CountCharacters(string text)
        {
            if (string.IsNullOrEmpty(text))
            {
                Console.WriteLine("Empty input.");
                return;
            }

            int uppercase = 0, lowercase = 0, digits = 0, specialCharacters = 0;

            foreach (char c in text)
            {
                if (char.IsDigit(c))
                    digits++;
                else if (char.IsLower(c))
                    lowercase++;
                else if (char.IsUpper(c))
                    uppercase++;
                else
                    specialCharacters++;
            }

            Console.WriteLine($"Uppercase: {uppercase}");
            Console.WriteLine($"Lowercase: {lowercase}");
            Console.WriteLine($"Digits: {digits}");
            Console.WriteLine($"Special Characters: {specialCharacters}");
        }

        static void Main(string[] args)
        {
            string Word = ReadString();
            Console.WriteLine($"You entered: {Word}");
            CountCharacters(Word);

            Console.ReadKey();
        }
    }
}
