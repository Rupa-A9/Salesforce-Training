public with sharing class StudentEligibilityHandler {

    @AuraEnabled(cacheable=true)

    public static List<Student__c> getStudents() {

        return [
            SELECT Id,
                   Name,
                   Attendance_Percentage__c,
                   Fees_Paid__c,
                   Eligible__c
            FROM Student__c
            LIMIT 5
        ];
    }

    public static void checkEligibility(Student__c stu) {

        if(stu.Attendance_Percentage__c >= 75
            && stu.Fees_Paid__c == true) {

            stu.Eligible__c = true;
        }
        else {

            stu.Eligible__c = false;
        }
    }
}