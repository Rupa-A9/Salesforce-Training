# Day 8 – Lightning Web Components (LWC) Basics & Secure Development

## Summary

The goal of Day 8 was to understand Lightning Web Components (LWC), modern Salesforce UI architecture, reusable component-based development, frontend vs backend responsibilities, and basic enterprise security concepts.

This day focused on understanding how modern Salesforce applications are built using reusable UI components and how secure development practices help protect enterprise systems.

---

# Topics Covered

## Lightning Web Components (LWC)

* What is LWC
* Component-based architecture
* HTML, JavaScript, and Metadata files
* Reusable UI components
* Modern Salesforce frontend development
* Event-driven communication
* Component composition

## LWC for Aura Developers

* Aura vs LWC overview
* Why Salesforce moved toward LWC
* Better performance
* Web standards adoption
* Simplified development model
* Modern UI architecture

## Secure Server-Side Development

* Importance of security in enterprise applications
* Sharing rules
* CRUD and FLS protection
* SOQL Injection prevention
* CSRF protection
* SSRF protection
* Safe coding practices

---

# What is Lightning Web Components (LWC)?

Lightning Web Components (LWC) is Salesforce’s modern UI framework used for building fast, reusable, and scalable user interfaces on the Salesforce platform.

LWC is built using:

* HTML
* JavaScript
* CSS
* Web Standards

Each component is modular and reusable.

---

# Basic LWC Component Structure

A Lightning Web Component mainly contains:

| File       | Purpose                 |
| ---------- | ----------------------- |
| HTML       | UI structure            |
| JavaScript | Logic and functionality |
| Meta XML   | Component configuration |
| CSS        | Styling                 |

Example structure:

studentDashboard/

* studentDashboard.html
* studentDashboard.js
* studentDashboard.js-meta.xml

---

# Why Salesforce Uses LWC

Salesforce moved toward LWC because modern enterprise applications require:

* Faster performance
* Reusable architecture
* Better maintainability
* Modern browser standards
* Improved scalability
* Cleaner development workflows

LWC is based on native web standards, making applications more efficient and lightweight compared to older frameworks.

---

# Why Component-Based UI is Important

Modern enterprise systems are large and complex.

Instead of building one huge UI page, developers divide the interface into smaller reusable components.

Benefits:

* Reusability
* Easier maintenance
* Faster development
* Better scalability
* Cleaner architecture
* Easier debugging
* Improved collaboration between teams

---

# UI Thinking Exercise – College Management System

## 5 Important UI Screens/Components

### 1. Student Registration Form

Used for:

* Student signup
* Course selection
* Personal information entry

### 2. Course Dashboard

Displays:

* Available courses
* Enrollment statistics
* Course schedules

### 3. Attendance View

Shows:

* Student attendance percentage
* Subject-wise attendance
* Eligibility status

### 4. Faculty Panel

Used by faculty to:

* Manage attendance
* Upload marks
* View student details

### 5. Notifications Widget

Displays:

* Announcements
* Exam alerts
* Fee reminders
* Event updates

---

# Component Thinking Exercise

## Selected Screen: Student Dashboard

### Reusable Components Breakdown

### 1. Header Component

Contains:

* College logo
* Navigation menu
* User profile section

### 2. Student Information Component

Displays:

* Student name
* Roll number
* Department
* Semester

### 3. Attendance Component

Displays:

* Attendance percentage
* Attendance warnings
* Subject-wise attendance

### 4. Course List Component

Displays:

* Enrolled courses
* Faculty information
* Course timings

### 5. Notification Component

Displays:

* Recent notifications
* Alerts
* Important announcements

---

# Why Reusable Components are Useful

Reusable components help developers:

* Avoid duplicate code
* Build UI faster
* Maintain consistency
* Simplify updates
* Improve scalability
* Reduce development effort

If one component is updated, every screen using that component automatically gets updated behavior.

---

# Frontend vs Backend Thinking

## Frontend (UI) Responsibilities

Frontend handles:

* User interaction
* Displaying data
* Button clicks
* Form input
* Navigation
* Notifications display

Examples:

* Clicking Submit button
* Showing attendance charts
* Displaying validation messages

---

## Backend (Apex) Responsibilities

Backend handles:

* Business logic
* Database operations
* Security checks
* Validation processing
* Calculations
* Automation

Examples:

* Fee calculation
* Attendance processing
* Database insert/update
* Access control validation

---

# Example Separation

| Task                    | Frontend | Backend |
| ----------------------- | -------- | ------- |
| Button Click            | ✓        |         |
| Display Notification    | ✓        |         |
| Data Validation         | ✓        | ✓       |
| Fee Calculation         |          | ✓       |
| Database Storage        |          | ✓       |
| Attendance Display      | ✓        |         |
| Access Permission Check |          | ✓       |

---

# Secure Development Concepts

## Why Security Matters

Enterprise applications store sensitive information such as:

* Student records
* Financial data
* Faculty information
* Internal reports

Weak security can lead to:

* Data leaks
* Unauthorized access
* System compromise
* Loss of trust

---

# Important Security Concepts Learned

## 1. Sharing Rules

Control which users can access records.

Keywords:

* with sharing
* without sharing
* inherited sharing

---

## 2. CRUD & Field-Level Security

Protect:

* Create access
* Read access
* Update access
* Delete access

---

## 3. SOQL Injection Prevention

Prevent attackers from manipulating queries.

Techniques:

* Bind variables
* Typecasting
* Allowlisting
* String.escapeSingleQuotes()

---

## 4. CSRF Protection

Prevent malicious websites from performing actions on behalf of users.

Protection methods:

* Anti-CSRF tokens
* Origin validation
* Avoid state-changing GET requests

---

## 5. SSRF Protection

Prevent servers from making unauthorized internal requests.

Protection methods:

* URL validation
* Allowlisting trusted endpoints
* Input sanitization

---

# Why Salesforce Moved Toward LWC

Salesforce adopted LWC because:

* Aura was heavier and more complex
* LWC uses modern browser standards
* Better performance
* Faster rendering
* Cleaner code structure
* Improved developer productivity
* Easier scalability

LWC provides a modern frontend architecture similar to industry-standard web development.

---

# Reflection

Modern enterprise systems use component-based UI architecture because applications are extremely large and require modular, scalable, and maintainable designs.

Reusable components allow teams to:

* Work independently
* Reuse common functionality
* Reduce duplicate code
* Improve maintainability
* Build scalable applications faster

Separating frontend and backend logic is important because:

* UI remains simple and responsive
* Business logic stays secure
* Systems become easier to manage
* Development becomes more organized

Security awareness is critical because enterprise systems manage sensitive business and customer data.

---

# Key Learnings

* LWC is Salesforce’s modern UI framework
* LWC uses component-based architecture
* Components contain HTML, JavaScript, and Metadata
* Reusable UI improves scalability and maintenance
* Modern enterprise systems rely on modular design
* Frontend handles UI interactions
* Backend handles business logic and security
* Salesforce moved from Aura to LWC for better performance
* Secure coding is essential in enterprise development
* CRUD, FLS, and sharing rules protect data
* SOQL Injection can be prevented using bind variables
* CSRF attacks are prevented using tokens and validation
* SSRF attacks are prevented using URL validation and allowlisting
* Enterprise applications require scalable and secure architecture

---

# Final Outcome

Successfully understood Lightning Web Components (LWC), component-based UI architecture, frontend vs backend separation, reusable UI thinking, and secure Salesforce development concepts for enterprise applications.

