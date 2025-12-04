import java.util.Random;
import java.util.Scanner;

public class numberguessinggame {


    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);
        Random random = new Random();

        int playAgain = 1;

        while (playAgain == 1) {
            int number = random.nextInt(100) + 1;
            int attempts = 5;

            System.out.println("== NUMBER GUESSING GAME =====");
            System.out.println("I’ve selected a number between 1 and 100.");
            System.out.println("You have " + attempts + " attempts to guess it!");

            boolean guessedCorrectly = false;

            while (attempts > 0) {
                System.out.print("\nEnter your guess: ");
                int guess = scanner.nextInt();

                if (guess == number) {
                    System.out.println("Correct! You guessed the number!");
                    guessedCorrectly = true;
                    break;
                } else if (guess > number) {
                    System.out.println("Too High! Try a lower number.");
                } else {
                    System.out.println("Too Low! Try a higher number.");
                }

                attempts--;
                System.out.println("Attempts left: " + attempts);
            }

            if (!guessedCorrectly) {
                System.out.println("You ran out of attempts!");
                System.out.println("The number was: " + number);
            }

            System.out.print("\nPlay again? (1 = Yes, 0 = No): ");
            playAgain = scanner.nextInt();
        }

        System.out.println("\nThanks for playing!");
        scanner.close();
    }
}
