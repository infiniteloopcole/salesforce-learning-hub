# Salesforce Data Cloud Learning Journal & Study Hub ☁️

Welcome to my personal Salesforce learning repository! This project serves as a central knowledge base for my hands-on experience, architecture patterns, and exam strategies across the Salesforce ecosystem—specifically focusing on Sales Cloud, Admin fundamentals, and Consulting practices.

As an engineer working with enterprise software, I built this hub to document real-world configuration logic, security boundaries, and automation best practices rather than relying solely on abstract concepts.

---

### 💡 Key Mindset Shifts for Salesforce Engineers & Consultants

Navigating the Salesforce ecosystem effectively requires balancing standard declarative capabilities with enterprise business requirements:

* **Clicks Before Code:** Always evaluate native, declarative capabilities (Flows, Validation Rules, Standard Objects) before opting for custom Apex or Lightning Web Components (LWC). Native features reduce technical debt and maintenance overhead.
* **Design for Data Quality & Governance:** A poorly configured data model leads to reporting inaccuracies and user adoption failure. Prioritize clear object relationships (Master-Detail vs. Lookup) and strict validation rules early in project setup.
* **Security Model Precision:** Master the nuances of Organization-Wide Defaults (OWD), Role Hierarchies, Sharing Rules, and Permission Sets. Always apply the principle of least privilege.

---

### 🎯 Core Functional Domains Covered

**1. Security & Data Access Control**
* **Organization-Wide Defaults (OWD):** Setting baseline privacy for standard and custom objects.
* **Role Hierarchy & Territory Management:** Vertical access expansion for upper management and specialized regional teams.
* **Permission Sets & Permission Set Groups:** Flexible, granular permission grants that minimize the reliance on multiple custom profiles.

**2. Business Process Automation**
* **Salesforce Flows:** Designing Record-Triggered, Schedule-Triggered, and Screen Flows to handle complex business logic without Apex.
* **Approval Processes:** Multi-step authorization workflows for discounting, deal approvals, and record locks.

**3. Data Management & Analytics**
* **Data Migration:** Best practices using Data Loader and Import Wizard while preserving record ownership and relationships.
* **Reports & Dashboards:** Building custom report types, summary formulas, and dynamic dashboard components for sales leadership.

---

## 📂 Repository Index & Learning Hub

### 📘 Certification Guides & Resources
* [`Salesforce-Sales-Con-201-Resources.md`](./Salesforce-Sales-Con-201-Resources.md) - Sales Cloud Consultant (Sales-Con-201) exam guide, data models, and practice scenarios.
* [`Salesforce-Plat-Admn-202-Resources.md`](./Salesforce-Plat-Admn-202-Resources.md) - Platform Administrator (202) study guide, security boundaries, and domain breakdowns.

### 📝 Salesforce Technical Notes
* [`notes/Salesforce-Architecture-Notes.md`](./notes/Salesforce-Architecture-Notes.md) - Master-Detail vs. Lookup trade-offs, multi-layered security model, and Flow architecture.

### 🛠️ Apex Enterprise Code Samples
* [`apex/AccountTriggerHandler.cls`](./apex/AccountTriggerHandler.cls) - Apex trigger handler demonstrating enterprise validation rules and governor limit management.

---

### ⏱️ Study & Implementation Checklist

- [x] Mastered object relationships (Master-Detail, Lookup, Junction Objects)
- [x] Practiced complex Record-Triggered Flow design with subflows
- [ ] Reviewed security sharing settings and manual sharing scenarios
- [ ] Built and scheduled custom multi-block reports and dashboards

---
*Thanks for stopping by! Feel free to star ⭐️ this repo if you're also on your Salesforce learning journey.*
