package edu.ncsu.csc.dbproject.workflow;

import edu.ncsu.csc.dbproject.util.Utils;
import edu.ncsu.csc.dbproject.impl.InfoProcessImpl;
import edu.ncsu.csc.dbproject.impl.ReportsImpl;

/*
 * Handles all operations that can be performed by staff belonging to 'Management' department
 */

public class Manager{

	String name;
	String deptName;
	String storeName;

	
	Manager(String login, String dept, String store){
		name = login;
		deptName = dept;
		storeName = store;
	}
	
	/*
	 * Start point for Manager. Displays all actions that can be performed by a manager and calls appropriate methods.
	 * Invokes appropriate method in the interfaces declared in edu.ncsu.csc.dbproject.api package 
	 */
	protected void initiateManagerWorkFlow(){
		String choice = "y";
		System.out.println("User: " + name);
		System.out.println("Department: " + deptName);
		System.out.println("Store: " + storeName);
		System.out.println("**************************************************************************************************");
		
		while(choice.equals("y")){

			System.out.println("Select action:");
			System.out.println("1.  View Customer orders & payments for a given period");
			System.out.println("2.  View Salesperson Report for a given period");
			System.out.println("3.  View Existing Vendor Details");
			System.out.println("4.  Add Vendor");
			System.out.println("5.  Extend Vendor Contract");
			System.out.println("6.  Delete Existing Vendor");
			System.out.println("7.  View Staff Member by Department");
			System.out.println("8.  Add New Staff Member");
			System.out.println("9.  Update Existing Staff member");
			System.out.println("10. Delete Existing Staff member");
			System.out.println("11. Exit");
			
			String option = Utils.readOptionFromCmdLine();
			if(option == null){
				System.out.println("Invalid action for manager. Exiting ...");
		    	System.exit(1);
			}
		    
		    int opt = Integer.parseInt(option);
		    System.out.println("User selected option " + option);
		    switch(opt){
		    
		    	case 1: customerHistoryReportMgr();
		    			break;
		    	case 2: salespersonReport();
		    			break;
		    	case 3: vendorReport();
		    			break;
		    	case 4: addVendor();		
    					break;
		    	case 5: extendVendorContract();		
    					break;
		    	case 6: deleteVendor();	
		    			break;
		    	case 7: searchStaff();
		    			break;
		    	case 8: addStaff();
		    			break;
		    	case 9: updateStaff();
		    			break;
		    	case 10: deleteStaff();
		    			break;
		    	case 11: Utils.printAndExit("");
		    	default: System.out.println("Invalid action for manager. Exiting ...");
		    			 System.exit(1);
		    
		    }
		    System.out.print("\nDo you want to perform more actions?(y/n) : ");
		    choice = Utils.readOptionFromCmdLine();
		}
		Utils.printAndExit("");
	    
	}
	
	/*
	 * Accepts input for action 'Customer orders & payments for a given period' and prints results
	 */
	 private void customerHistoryReportMgr(){

		System.out.println("Enter Customer Details");
		System.out.print("Name: ");
		String name = Utils.readOptionFromCmdLine();
		System.out.println();
		
		System.out.print("Phone Number: ");
		String phone = Utils.readOptionFromCmdLine();
		System.out.println();
		
		System.out.print("Start Date(ex - 01-JAN-12): ");
		String startDate = Utils.readOptionFromCmdLine();
		System.out.println();
		
		System.out.print("End Date(ex - 01-JAN-12): ");
		String endDate = Utils.readOptionFromCmdLine();
		System.out.println();
				
		ReportsImpl report = new ReportsImpl();
		report.getCustomerHistory(name, phone, startDate, endDate);
	}
	
   /*
	* Accepts input for action 'Salesperson Report for a given period' and prints results
	*/ 
	private void salespersonReport(){
		System.out.print("Enter Salesperson Name: ");
		String sName = Utils.readOptionFromCmdLine();
		System.out.println();
		System.out.print("Start Date(ex - 01-JAN-12): ");
		String startDate = Utils.readOptionFromCmdLine();
		System.out.println();
		System.out.print("End Date(ex - 01-JAN-12): ");
		String endDate = Utils.readOptionFromCmdLine();
		System.out.println();
		
		ReportsImpl report = new ReportsImpl();
		report.getSalespersonReport(sName, startDate, endDate);
	}
	
	/*
	 * Accepts input or action 'Existing Vendor Details' and prints results
	 */
	private void vendorReport(){
		System.out.print("Enter Vendor Name('all' for all vendors): ");
		String vendorName = Utils.readOptionFromCmdLine();

		ReportsImpl report = new ReportsImpl();
		if(vendorName.equals("all")){
			report.getAllVendorsReport();
		}else{
			report.getVendorReport(vendorName);
		}
	}
	
	/*
	 * Accepts input or action 'View Staff Member by Department' and prints results
	 */
	private void searchStaff(){
		System.out.print("Enter Department Name('all' for all departments): ");
		String deptName = Utils.readOptionFromCmdLine();
		//System.out.println("deptName " + deptName);
		ReportsImpl report = new ReportsImpl();
		if(deptName.equals("all")){
			report.getAllStaffGroupedByRole(storeName);
		}else{
			report.getStaffByRole(deptName, storeName);
		}
	}
	
	/*
	 * Accepts input or action 'Add New Staff Member' and prints results
	 */
	private void addStaff(){
		System.out.println("Enter New Staff Member's details");
		System.out.print("Name: ");
		String staffName = Utils.readOptionFromCmdLine();
		System.out.println();
		
		System.out.print("Department Name(Management/Accounts/Sales): ");
		String deptName = Utils.readOptionFromCmdLine();
		System.out.println();
		
		System.out.print("Job Title: ");
		String jobTitle = Utils.readOptionFromCmdLine();
		System.out.println();
		
		System.out.print("Salary: ");
		String salary = Utils.readOptionFromCmdLine();
		System.out.println();

		System.out.print("Date of Birth(ex - 01-JAN-90): ");
		String dob = Utils.readOptionFromCmdLine();
		System.out.println();
		
		System.out.print("SSN: ");
		String ssn = Utils.readOptionFromCmdLine();
		System.out.println();
		
		System.out.print("Gender(Male/Female): ");
		String gender = Utils.readOptionFromCmdLine();
		System.out.println();
		
		System.out.print("Address: ");
		String address = Utils.readOptionFromCmdLine();
		System.out.println();
		
		System.out.print("Phone Number: ");
		String phone = Utils.readOptionFromCmdLine();
		System.out.println();
		
		InfoProcessImpl infoProcess = new InfoProcessImpl();
		infoProcess.enterStaff(staffName, salary, jobTitle, deptName, storeName, dob, ssn, gender, address, phone);
		
	}
	
	/*
	 * Accepts input or action 'Update Existing Staff member' and prints results
	 */
	private void updateStaff(){
		System.out.println("Enter New Staff Member's details");
		
		System.out.print("Name: ");
		String staffName = Utils.readOptionFromCmdLine();
		System.out.println();
		
		System.out.print("Phone Number: ");
		String phone = Utils.readOptionFromCmdLine();
		System.out.println();
		
		System.out.print("Department Name(Management/Accounts/Sales): ");
		String deptName = Utils.readOptionFromCmdLine();
		System.out.println();
		
		System.out.print("Job Title: ");
		String jobTitle = Utils.readOptionFromCmdLine();
		System.out.println();
		
		System.out.print("Salary: ");
		String salary = Utils.readOptionFromCmdLine();
		System.out.println();
		
		System.out.print("Address: ");
		String address = Utils.readOptionFromCmdLine();
		System.out.println();
		
		InfoProcessImpl infoProcess = new InfoProcessImpl();
		infoProcess.updateStaff(staffName, jobTitle, deptName, salary, address, phone);
	}
	
	/*
	 * Accepts input or action 'Delete Existing Staff member' and prints results
	 */
	private void deleteStaff(){
		System.out.println("Enter Details of Staff Member to be deleted");
		System.out.print("Name: ");
		String staffName = Utils.readOptionFromCmdLine();
		System.out.println();
		
		System.out.print("Phone Number: ");
		String phone = Utils.readOptionFromCmdLine();
		System.out.println();
		
		InfoProcessImpl infoProcess = new InfoProcessImpl();
		infoProcess.deleteStaff(staffName, phone);
	}	
	
	/*
	 * Accepts input or action 'Add Vendor' and prints results
	 */
	private void addVendor(){
		System.out.println("Enter New Vendor's details");
		System.out.print("Name: ");
		String vendorName = Utils.readOptionFromCmdLine();
		System.out.println();
		
		System.out.print("Phone Number: ");
		String phone = Utils.readOptionFromCmdLine();
		System.out.println();
		
		System.out.print("Address: ");
		String address = Utils.readOptionFromCmdLine();
		System.out.println();
		
		System.out.println("Vendor Contract starts from today");

		System.out.print("Contract End Date(ex - 01-JAN-90): ");
		String endDate = Utils.readOptionFromCmdLine();
		System.out.println();
		
		InfoProcessImpl infoProcess = new InfoProcessImpl();
		infoProcess.enterVendor(vendorName, address, phone, endDate);
	}
	
	/*
	 * Accepts input or action 'Extend Vendor Contract' and prints results
	 */
	private void extendVendorContract(){
		
		System.out.print("Vendor Name: ");
		String vendorName = Utils.readOptionFromCmdLine();
		System.out.println();
		
		System.out.print("New Contract End Date(ex - 01-JAN-90): ");
		String endDate = Utils.readOptionFromCmdLine();
		System.out.println();
		
		InfoProcessImpl infoProcess = new InfoProcessImpl();
		infoProcess.updateContractEndDate(vendorName, endDate);
		
	}
	
	/*
	 * Accepts input or action 'Delete Existing Vendor' and prints results
	 */
	private void deleteVendor(){
		System.out.print("Enter Name of Vendor to be deleted: ");
		String vendorName = Utils.readOptionFromCmdLine();
		System.out.println();
		
		InfoProcessImpl infoProcess = new InfoProcessImpl();
		infoProcess.deleteVendor(vendorName);
	}
	

}
