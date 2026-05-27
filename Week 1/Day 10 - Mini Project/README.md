# College Management System – Salesforce Mini Project

## Project Overview

The College Management System is a Salesforce-based enterprise mini project developed to demonstrate CRM concepts, data modeling, automation, Apex programming, SOQL querying, triggers, and Lightning Web Components (LWC).

This project simulates how educational institutions manage students, faculty, departments, courses, attendance, and eligibility using Salesforce enterprise architecture.

The project integrates:

* CRM Concepts
* Salesforce Objects
* Relationships
* Validation Rules
* Formula Fields
* Flow Automation
* Apex Business Logic
* SOQL Queries
* Apex Triggers
* Lightning Web Components (LWC)
* Event-Driven Architecture

---

# Objectives

The main objective of this project is to understand how enterprise applications combine:

* Frontend UI
* Backend Business Logic
* Database Management
* Automation
* Event-Driven Processing

into one connected scalable system.

---

# CRM Concepts Used

| CRM Concept           | Salesforce Implementation |
| --------------------- | ------------------------- |
| Student Enquiry       | Lead                      |
| Registered Student    | Student Object            |
| Department Management | Department Object         |
| Course Enrollment     | Course Object             |
| Faculty Management    | Faculty Object            |

---

# Custom Objects Created

## Student

Stores student information.

Fields:

* Student Name
* Attendance Percentage
* Fees Paid
* Eligible
* Email
* Department

## Faculty

Stores faculty information.

Fields:

* Faculty Name
* Department
* Experience

## Course

Stores course information.

Fields:

* Course Name
* Total Seats
* Enrolled Students
* Remaining Seats

## Department

Stores department information.

Fields:

* Department Name
* HOD Name

---

# Relationships Implemented

| From Object | Relationship Type | To Object  |
| ----------- | ----------------- | ---------- |
| Student     | Lookup            | Department |
| Faculty     | Lookup            | Department |
| Course      | Lookup            | Faculty    |

These relationships help maintain connected enterprise data.

---

# Formula Fields

## Remaining Seats

Formula:

```text
Total_Seats__c - Enrolled_Students__c
```

Purpose:
Automatically calculates available course seats.

---

## Attendance Percentage

Formula:

```text
(Attended_Classes__c / Total_Classes__c) * 100
```

Purpose:
Automatically calculates attendance percentage.

---

# Validation Rules

## Email Mandatory

```text
ISBLANK(Email__c)
```

Purpose:
Prevents student registration without email.

---

## Seats Cannot Exceed Limit

```text
Enrolled_Students__c > Total_Seats__c
```

Purpose:
Prevents course overbooking.

---

## Attendance Cannot Be Negative

```text
Attendance_Percentage__c < 0
```

Purpose:
Prevents invalid attendance values.

---

# Flow Automation

## Student Registration Flow

Type:
Record-Triggered Flow

Automation:

* Automatically updates eligibility
* Runs when student record is created

Benefits:

* Reduces manual work
* Improves consistency
* Automates business workflow

---

# Apex Business Logic

## Apex Class

Class Name:

```text
StudentEligibilityHandler
```

Purpose:
Checks student eligibility based on:

* Attendance Percentage
* Fees Paid Status

Logic:

```text
IF attendance >= 75
AND fees paid = TRUE
THEN Eligible = TRUE
ELSE Eligible = FALSE
```

---

# Apex Trigger

Trigger Name:

```text
StudentTrigger
```

Trigger Events:

* before insert
* before update

Purpose:
Automatically executes eligibility logic whenever student records are created or updated.

---

# SOQL Query

Used inside Apex class to retrieve student records dynamically.

Example:

```sql
SELECT Id, Name, Attendance_Percentage__c,
Fees_Paid__c, Eligible__c
FROM Student__c
```

Purpose:

* Retrieve Salesforce data
* Display records in LWC dashboard
* Connect backend with frontend UI

---

# Lightning Web Components (LWC)

## Student Dashboard

Displays:

* Student Name
* Attendance Percentage
* Fees Status
* Eligibility Status

Features:

* Dynamic data retrieval
* Real-time UI updates
* Backend integration

---

## Faculty Dashboard

Displays:

* Faculty Name
* Department
* Courses Handling
* Status

Features:

* Modular UI design
* Reusable component architecture

---

# Complete System Architecture

```text
User Interface (LWC)
        ↓
Validation Rules
        ↓
Flow Automation
        ↓
Apex Business Logic
        ↓
Apex Trigger
        ↓
SOQL Query
        ↓
Salesforce Database
        ↓
Dynamic Response to UI
```

---

# Complete Data Flow

## Student Registration Process

### Step 1 – User Interface

Student enters registration details using LWC screen.

### Step 2 – Validation Layer

Validation Rules check:

* Required email
* Valid attendance
* Seat limits

### Step 3 – Flow Automation

Flow automatically updates eligibility process.

### Step 4 – Apex Trigger

Trigger automatically runs when record is inserted.

### Step 5 – Apex Logic

Apex checks:

* Attendance percentage
* Fees payment status

### Step 6 – Database Storage

Validated records are stored in Salesforce objects.

### Step 7 – Dynamic UI Response

LWC dashboard displays updated student information.

---

# Event-Driven Architecture

The system reacts automatically whenever business events occur.

Examples:

* Student registration
* Attendance updates
* Fee payment updates
* Eligibility recalculation

Benefits:

* Real-time automation
* Faster processing
* Reduced manual work
* Better scalability

---

# Scaling Challenges

If 50,000 students use the system:

Possible challenges:

## Performance Issues

Large data processing may slow down queries.

## Data Consistency Problems

Simultaneous updates may create incorrect records.

## Notification Overload

Large-scale automation may increase system load.

## Security Risks

Unauthorized access must be prevented.

## Governor Limits

Salesforce execution limits may affect poorly optimized automation.

Solutions:

* Bulkified Apex
* Optimized SOQL queries
* Async processing
* Proper indexing
* Secure architecture

---

# Security Concepts

The project follows secure Salesforce development practices:

* CRUD Security
* Field-Level Security
* Sharing Rules
* SOQL Injection Prevention
* Secure Backend Logic

---

# Key Learnings

* Understood enterprise application architecture
* Learned Salesforce CRM concepts
* Explored Salesforce data modeling
* Implemented Validation Rules and Formula Fields
* Built automation using Flow Builder
* Developed backend logic using Apex
* Used SOQL for database querying
* Built event-driven automation using Triggers
* Created reusable UI using Lightning Web Components
* Connected frontend, backend, and database layers
* Understood scalable enterprise system design

---

# Final Outcome

Successfully developed a Salesforce-based College Management System integrating CRM, data modeling, automation, Apex programming, SOQL querying, event-driven architecture, and Lightning Web Components.

The project demonstrates how modern enterprise applications combine frontend UI, backend business logic, automation, and database management into one scalable and modular system.

---

# Screenshots

## Salesforce Setup

* App Creation
* Tabs
* Custom Objects
* Relationships

## Data Modeling

* Student Object
* Faculty Object
* Course Object
* Department Object
* Schema Builder

## Validation & Formula

* Validation Rules
* Formula Fields

## Automation

* Flow Builder
* Flow Activated

## Apex Development

* Apex Class
* Trigger
* Deployment Success

## LWC

* Student Dashboard
* Faculty Dashboard
* App Builder
* VS Code Files

## Testing

* Student Records
* Eligibility TRUE case
* Eligibility FALSE case

---
