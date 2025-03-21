@isTest
public class EventAttendeeTriggerTest {
	
    @testSetup
    public static void setupData(){
        
        Event_Organizer__c  org = new Event_Organizer__c (
            Name = 'Jishnudeep Borah',
            Phone__c = '8822978435',
            Email__c = 'jishnudeepborah@gmail.com',
            Alternative_Phone__c  = '8822978435',
            Alternative_Email__c ='jishnudeepborah@gmail.com'
        );
        
        insert org;
        
        Event__c event = new Event__c(
            Name__c = 'Sporty Fit Campaign',
            Event_Organizer__c  = org.Id,
            Event_Type__c = 'Virtual',
            Frequency__c  = 'Weekly',
            Max_Seats__c  = 199,
            Recurring__c = true,
            Live__c = true,
            Start_DateTime__c = System.now(),
            End_Date_Time__c  = System.now().addDays(3)
        );
        insert event;
        Attendee__c att = new Attendee__c(
            Name = 'Amandeep Kalita',
            Email__c = 'krisos.717@gmail.com',
            Phone__c = '8822164319'
        );
        
        insert att;
        
        Event_Attendee__c evtAtt = new Event_Attendee__c(Event__c = event.Id, Attendee__c = att.Id);
        insert evtAtt;
    }
    
    @isTest
    static void sendEmailTest(){
        Test.startTest();
        try{
            integer i = 10/0;
        }catch(System.Exception ex ){
            
        }
        Test.stopTest();
    }
}