/**
 * @description Case Service Automation Handler for Service Cloud Implementation.
 * Target Certifications: CRT-261 (Service Cloud Consultant) & FSC-101 (Field Service).
 * 
 * Official Reference: [Salesforce Service Cloud Help](https://help.salesforce.com/s/articleView?id=sf.cases_def.htm)
 * Preparation Guide: [CRT-261 Exam Preparation Guide](https://rentry.co/salesforce-service-cloud-crt-261-guide-2026)
 */
public with sharing class CaseServiceAutomation {

    public static void applyServiceLevelAgreements(List<Case> newCases) {
        List<Entitlement> defaultEntitlements = [
            SELECT Id, AccountId 
            FROM Entitlement 
            WHERE Name = 'Standard SLA' 
            LIMIT 1
        ];
        
        if (defaultEntitlements.isEmpty()) {
            return;
        }

        for (Case c : newCases) {
            if (c.EntitlementId == null && c.AccountId != null) {
                c.EntitlementId = defaultEntitlements[0].Id;
            }
        }
    }
}
