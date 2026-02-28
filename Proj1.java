package PROJNEW;
import java.util.Random;
import java.util.Scanner;

public class Proj1 {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		
		System.out.println("  UNIVERSITY EXAM MANAGEMENT SYSTEM");
		System.out.println("University Code: " + ExamProcess.UNIVERSITY_CODE);
		System.out.println("Min Attendance Required: " + ExamProcess.MIN_ATTENDANCE_PERCENTAGE + "%\n");
		
		boolean continueProgram = true;
		
		while (continueProgram) {
			System.out.println("\n----- STUDENT REPORT CARD GENERATION -----");
			
			// Get student name
			System.out.print("Enter student name: ");
			String studentName = scanner.nextLine().trim();
			
			if (studentName.isEmpty()) {
				System.out.println("Student name cannot be empty!");
				continue;
			}
			
			// Get attendance
			int attendance = -1;
			while (attendance < 0 || attendance > 100) {
				System.out.print("Enter attendance (0-100): ");
				try {
					attendance = Integer.parseInt(scanner.nextLine().trim());
					if (attendance < 0 || attendance > 100) {
						System.out.println("Please enter attendance between 0 and 100!");
					}
				} catch (NumberFormatException e) {
					System.out.println("Invalid input! Please enter a number.");
					attendance = -1;
				}
			}
			
			// Get subject code
			System.out.print("Enter subject code: ");
			String subjectCode = scanner.nextLine().trim();
			if (subjectCode.isEmpty()) {
				subjectCode = "CS101";
			}
			
			// Get exam type
			System.out.println("\nSelect Exam Type:");
			System.out.println("1. Midterm Exam");
			System.out.println("2. Lab Practical Exam");
			System.out.println("3. Final Semester Exam");
			System.out.print("Enter exam type (1-3): ");
			
			int examType = 0;
			try {
				examType = Integer.parseInt(scanner.nextLine().trim());
			} catch (NumberFormatException e) {
				System.out.println("Invalid input!");
				continue;
			}
			
			// Create student and generate report
			Student student = new Student(studentName, attendance, subjectCode);
			ExamProcess exam = null;
			
			switch (examType) {
				case 1:
					exam = new MidtermExam(subjectCode);
					break;
				case 2:
					exam = new LabPracticalExam(subjectCode + "-LAB");
					break;
				case 3:
					exam = new FinalSemesterExam(subjectCode + "-FINAL");
					break;
				default:
					System.out.println("Invalid exam type!");
					continue;
			}
			
			// Generate report card
			System.out.println("");
			student.generateReportCard(exam);
			
			System.out.print("\nGenerate another report? (yes/no): ");
			String response = scanner.nextLine().trim().toLowerCase();
			if (!response.equals("yes") && !response.equals("y")) {
				continueProgram = false;
			}
		}
		
		System.out.println("\nThank you for using University Exam Management System!");
		scanner.close();
	}
}

abstract class ExamProcess {
	// static shared constants
	public static final String UNIVERSITY_CODE = "UNI123";
	public static final int MIN_ATTENDANCE_PERCENTAGE = 75;

	// static Random for generating random hall tickets
	private static Random random = new Random();

	protected String subjectCode;
	protected String hallTicketNo;

	public ExamProcess(String subjectCode) {
		this.subjectCode = subjectCode;
		this.hallTicketNo = generateHallTicket();
	}

	// static utility to generate random hall ticket numbers
	public static String generateHallTicket() {
		// generate random 5-digit number
		int randomNumber = 10000 + random.nextInt(90000);
		return UNIVERSITY_CODE + "-HT" + randomNumber;
	}

	
	public final void startExamWorkflow() {
		validateEligibility();
		allocateHallTicket();
		conductExam();           // subclass-specific
		evaluate();              // subclass-specific
		publishResult();         // final, shared logic
	}

	private void validateEligibility() {
		System.out.println("[" + subjectCode + "] Validating eligibility (attendance >= "
				+ MIN_ATTENDANCE_PERCENTAGE + "%)...");
	}

	private void allocateHallTicket() {
		System.out.println("[" + subjectCode + "] Allocating hall ticket: " + hallTicketNo);
	}

	protected abstract void conductExam();
	protected abstract void evaluate();

	protected final void publishResult() {
		System.out.println("[" + subjectCode + "] Result published in standard format.");
	}
	
	public String getSubjectCode() {
		return subjectCode;
	}
	
	public String getHallTicket() {
		return hallTicketNo;
	}
}

class MidtermExam extends ExamProcess {
	public MidtermExam(String subjectCode) {
		super(subjectCode);
	}

	@Override
	protected void conductExam() {
		System.out.println("[" + subjectCode + "] Conducting midterm theory exam...");
	}

	@Override
	protected void evaluate() {
		System.out.println("[" + subjectCode + "] Evaluating midterm answers (pen-and-paper)...");
	}
}

class LabPracticalExam extends ExamProcess {
	public LabPracticalExam(String subjectCode) {
		super(subjectCode);
	}

	@Override
	protected void conductExam() {
		System.out.println("[" + subjectCode + "] Conducting lab practical with equipment...");
	}

	@Override
	protected void evaluate() {
		System.out.println("[" + subjectCode + "] Evaluating lab performance using checklist...");
	}
}

class FinalSemesterExam extends ExamProcess {
	public FinalSemesterExam(String subjectCode) {
		super(subjectCode);
	}

	@Override
	protected void conductExam() {
		System.out.println("[" + subjectCode + "] Conducting final semester comprehensive exam...");
	}

	@Override
	protected void evaluate() {
		System.out.println("[" + subjectCode + "] Evaluating final exam with grading norms...");
	}
}

// Student class to store student information
class Student {
	private String name;
	private int attendance;
	private String subjectCode;
	
	public Student(String name, int attendance, String subjectCode) {
		this.name = name;
		this.attendance = attendance;
		this.subjectCode = subjectCode;
	}
	
	public void generateReportCard(ExamProcess exam) {
		boolean isEligible = attendance >= ExamProcess.MIN_ATTENDANCE_PERCENTAGE;
		String status = isEligible ? "ELIGIBLE" : "INELIGIBLE";
		
		System.out.println("########## REPORT CARD ##########");
		System.out.println("University: " + ExamProcess.UNIVERSITY_CODE);
		System.out.println("Student Name: " + name);
		System.out.println("Subject Code: " + subjectCode);
		System.out.println("Hall Ticket: " + exam.getHallTicket());
		System.out.println("Attendance: " + attendance + "%");
		System.out.println("Min Required: " + ExamProcess.MIN_ATTENDANCE_PERCENTAGE + "%");
		System.out.println("---------------------------------");
		
		if (isEligible) {
			System.out.println("Status: " + status);
			System.out.println("Exam Workflow:");
			exam.startExamWorkflow();
		} else {
			System.out.println("Status: " + status);
			System.out.println("ERROR: Student not eligible for exam!");
			System.out.println("Reason: Attendance below " + ExamProcess.MIN_ATTENDANCE_PERCENTAGE + "%");
		}
		
		System.out.println("#################################");
	}
}

