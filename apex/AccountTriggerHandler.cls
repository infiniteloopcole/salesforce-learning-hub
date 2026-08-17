/**
 * @description Account Trigger Handler enforcing enterprise data quality 
 *              and automated rating assignment for Sales Cloud workloads.
 */
public with sharing class AccountTriggerHandler {
    
    public static void handleBeforeInsert(List<Account> newAccounts) {
        for (Account acc : newAccounts) {
            // Automatically set Rating based on Industry classification
            if (acc.Industry == 'Technology' && acc.Rating == null) {
                acc.Rating = 'Hot';
            }
            
            // Prevent insertion if Description is missing on High Revenue accounts
            if (acc.AnnualRevenue != null && acc.AnnualRevenue > 10000000 && String.isBlank(acc.Description)) {
                acc.Description.addError('Enterprise accounts exceeding $10M revenue require an executive summary in the Description field.');
            }
        }
    }
}
