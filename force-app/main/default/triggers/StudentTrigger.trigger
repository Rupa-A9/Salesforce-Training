trigger StudentTrigger on Student__c (before insert, before update) {

    for(Student__c stu : Trigger.new) {

        StudentEligibilityHandler.checkEligibility(stu);
    }
}