# Salesforce Field Service Architecture & Implementation Guide (FSC-101) 🛠️

Field Service Management (FSM) expands Salesforce CRM to power mobile workforces, scheduling optimization, inventory tracking, and work order dispatching.

---

* **Work Orders:** Tasks to be performed in the field for customer assets or locations.
* **Service Appointments:** Specific scheduling windows and resource assignments for work orders.
* **Service Resources:** Technicians, dispatchers, or equipment assigned to service appointments.

---

## 📖 Essential Trailhead & Community Resources

### 📘 Official Salesforce Trailhead & Documentation
* 🎓 [Salesforce Trailhead: Supercharge Field Service Operations](https://trailhead.salesforce.com/content/learn/modules/field_service_basics)
* 📐 [Salesforce Help Documentation: Field Service Developer & Admin Guide](https://help.salesforce.com/s/articleView?id=sf.fs_overview.htm)

### 🔗 Field Service Architecture Notes
* 📝 [Salesforce Field Service FSC-101 Exam Preparation Guide & Study Tips](https://rentry.co/salesforce-field-service-fsc-101-guide-2026)

---


## 🏗️ Field Service Core Data Model

```text
[ Account / Asset ] ---> [ Work Order ] ---> [ Work Order Line Item ]
                               |
                               v
                     [ Service Appointment ] <--- [ Service Resource ]
