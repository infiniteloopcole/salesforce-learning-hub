# Salesforce Data Modeling, Security & Flow Architecture Notes

Designing scalable Salesforce solutions requires understanding the balance between declarative capabilities (Flows, Validation Rules) and programmatic extensions (Apex, LWC), while maintaining strict data access security across enterprise orgs.

> **Key Takeaway:** Always enforce least-privilege security at the Organization-Wide Default (OWD) level and grant access upward through Role Hierarchies and Sharing Rules.

## 1. Data Modeling: Master-Detail vs. Lookup Relationships

* **Master-Detail:** Tight coupling where the child record inherits security, sharing settings, and deletion lifecycle from the parent. Supports Roll-Up Summary fields.
* **Lookup:** Loose coupling where records exist independently. Security is managed separately, and Roll-Up Summary fields are not natively supported without Apex or Flow automation.

## 2. Salesforce Multi-Layered Security Model

* **Object-Level Security (Profiles / Permission Sets):** Determines who can Read, Create, Edit, or Delete (CRED) specific object types.
* **Field-Level Security (FLS):** Restricts visibility and editability of individual fields regardless of object permissions.
* **Record-Level Security:** Controls which specific records a user can see (OWD -> Role Hierarchy -> Sharing Rules -> Manual Sharing / Apex Sharing).

## 3. Automation Strategy: Clicks Before Code

* **Record-Triggered Flows:** Primary tool for declarative automation (Before-Save for field updates, After-Save for cross-object actions).
* **Apex Triggers:** Reserved for complex business logic, mass data operations exceeding governor limits, or advanced integration patterns.
