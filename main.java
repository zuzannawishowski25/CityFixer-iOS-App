import java.util.Scanner;

class Main {
    public static void main(String[] args) {
        System.out.print("Press RETURN to start");

        Scanner sc = new Scanner(System.in);
        String select_location = sc.nextLine();
        System.out.println("Welcome to City Fixer!");
        System.out.println("What's your location?");
        System.out.println("Queens, Brooklyn, Manhattan, Bronx, Staten Island");
        select_location = sc.nextLine();

        System.out.println(select_location);
        System.out.println("Got it!, we'll be right on it.");

        Scanner keyboard = new Scanner(System.in);

        String choice = keyboard.nextLine(); 
        String issues, SideWalk, Other;

 
        System.out.println("Hello, what issue are you reporting about?, Please indicate your answer below");

        System.out.print("\nFire, Car crash, Leaky Pipe, Over Filled Crash Can, SideWalk Problem, Other : "); // identify the problem choices
        issues = keyboard.nextLine();

        if (issues.equals("Fire")) {
            System.out.println("User chooses Fire - Thank you for your response and keeping your safe!"); // The user can enter(press) the issue and get a response back 
        }
        if (issues.equals("Car Crash")){
            System.out.println("Useer chooses Car Crash - Thank you for your response and keeping your city safe!");
        }
        if (issues.equals("Leaky Pipe")) {
            System.out.println("User chooses Leaky Pipe - Thank you for your response and keeping your city safe!");
        }
        if (issues.equals("Over Filled Crash Can")) {
            System.out.println("User chooses Over Filled Crash Can - Thank you for your response and keeping your city safe!");
        }
        if (issues.equals("SideWalk Problem")) {
            System.out.print("Please state the issue regarding the Sidewalk: "); // there could be multiple problems with a sidewalk
            SideWalk = keyboard.nextLine();
            System.out.println("Thank you for your response and keeping your city safe!");
        }
        if (issues.equals("Other")) {
            System.out.println("User chooses Other");
            System.out.print("Please state your issue: ");
            Other = keyboard.nextLine();
            System.out.println("Thank you for your response and keeping your city safe!");        
        }
    }
}