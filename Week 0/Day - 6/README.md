# Day 6 – SOQL, Apex Triggers, Event-Driven Architecture & CLI

## Problem Summary

The goal of Day 6 was to understand how Salesforce handles data querying, automation, and event-driven system behavior using SOQL, Apex Triggers, Platform Events, and Salesforce developer tools like CLI.

This day focused on understanding how enterprise systems react automatically to data changes, how developers query and retrieve records efficiently, and when to use declarative automation versus programmatic automation.

In addition, foundational concepts of command-line workflows, developer tooling, and enterprise search systems were explored.

---

# Topics Covered

## Database & Query Concepts

* Understanding Salesforce data storage
* Introduction to SOQL
* Introduction to SOSL
* Querying Salesforce records
* DML operations
* Retrieving and filtering records

## Apex Triggers

* What Apex Triggers are
* Trigger events
* Before vs After triggers
* Event-driven automation
* Trigger lifecycle
* Real-world automation examples

## Event-Driven Architecture

* Platform Events
* Asynchronous communication
* Publisher and Subscriber model
* Enterprise notification systems
* Automatic reactions to data changes

## Salesforce CLI & Developer Tools

* Introduction to Command-Line Interface
* Importance of terminal-based workflows
* Developer productivity tools
* VS Code and Salesforce Extensions
* Basic command-line concepts

## Search Systems

* Salesforce search functionality
* Efficient record retrieval
* Enterprise search optimization

---

# What is SOQL?

SOQL (Salesforce Object Query Language) is Salesforce’s query language used to retrieve records from Salesforce objects.

It is similar to SQL but designed specifically for Salesforce data and relationships.

SOQL allows developers to:

* Retrieve records
* Filter data
* Query related objects
* Sort and limit results
* Access specific fields

Example use cases:

* Find all students enrolled in a course
* Retrieve faculty information
* Identify students with low attendance

---

# What is SOSL?

SOSL (Salesforce Object Search Language) is used to search text across multiple Salesforce objects at the same time.

Unlike SOQL, which retrieves structured records from a single object, SOSL is optimized for search operations.

Use cases:

* Global search functionality
* Searching names, emails, or keywords
* Searching across multiple objects together

---

# What is an Apex Trigger?

An Apex Trigger is Apex code that executes automatically when records are inserted, updated, deleted, or restored.

Triggers allow Salesforce systems to react automatically to business events.

Triggers are commonly used for:

* Data validation
* Automatic updates
* Notifications
* Record creation
* Business process automation

---

# Trigger Events

## Before Triggers

Execute before records are saved to the database.

Used for:

* Validation
* Modifying field values
* Preventing invalid data

Examples:

* Before Insert
* Before Update
* Before Delete

## After Triggers

Execute after records are saved to the database.

Used for:

* Creating related records
* Sending notifications
* Updating external systems

Examples:

* After Insert
* After Update
* After Delete

---

# Difference Between Flow and Trigger

| Flow                               | Apex Trigger                 |
| ---------------------------------- | ---------------------------- |
| Declarative automation             | Programmatic automation      |
| No-code/low-code                   | Requires coding              |
| Easier to maintain                 | Better for complex logic     |
| Best for simple business processes | Best for advanced automation |
| User-friendly                      | Developer-oriented           |
| Faster to build                    | More flexible and powerful   |

## When to Use Flow

* Email notifications
* Simple field updates
* Approval workflows
* Guided automation

## When to Use Trigger

* Complex calculations
* Large-scale automation
* Advanced validations
* External API integration
* Multi-object processing

---

# Difference Between Before and After Trigger

| Before Trigger              | After Trigger                     |
| --------------------------- | --------------------------------- |
| Runs before database save   | Runs after database save          |
| Used for validation         | Used for related actions          |
| Can modify records directly | Used when record ID is required   |
| Faster for field updates    | Best for creating related records |

---

# Trigger Use Cases for College Management System

## 1. Student Registration

### Event

After a new student record is created.

### Automatic Action

Send a welcome email and generate student credentials.

### Recommended Automation

Flow

### Reason

Simple notification and record creation logic.

---

## 2. Course Capacity Full

### Event

After course enrollment count reaches maximum capacity.

### Automatic Action

Notify faculty and prevent additional registrations.

### Recommended Automation

Trigger

### Reason

Requires validation and complex enrollment checking.

---

## 3. Low Attendance Warning

### Event

After attendance percentage falls below 75%.

### Automatic Action

Send warning notification to student and parents.

### Recommended Automation

Flow

### Reason

Simple condition-based notification process.

---

## 4. Fee Eligibility Verification

### Event

After fee payment or scholarship update.

### Automatic Action

Calculate eligibility for examinations or hall tickets.

### Recommended Automation

Trigger

### Reason

Requires complex calculations and validations.

---

## 5. External Payment Confirmation

### Event

After online payment succeeds.

### Automatic Action

Update payment status and notify finance system.

### Recommended Automation

Trigger

### Reason

External API integration and transaction handling required.

---

# Query Thinking Examples

## Student Queries

* Find all students enrolled in Course A
* Find students whose attendance is below 75%
* Find students who have pending fee payments
* Find students registered this semester

## Course Queries

* Find all available courses
* Find courses with maximum enrollments
* Find courses handled by Faculty X

## Faculty Queries

* Find faculty handling more than three courses
* Find faculty assigned to final-year students
* Find faculty members from the Computer Science department

---

# Reflection: Why Enterprise Systems Need Event-Driven Behavior

Enterprise systems manage large amounts of real-time business data and operations. Manual monitoring is inefficient and slow.

Event-driven systems allow applications to react automatically whenever important business events occur. This improves:

* Automation
* Scalability
* Real-time communication
* System efficiency
* User experience

Examples:

* Payment notifications
* Shipment updates
* Attendance alerts
* Fraud detection
* Inventory updates

Without event-driven behavior, systems would require constant polling and manual intervention, making enterprise applications slower and harder to maintain.

---

# Platform Event Thinking

## Real-Life Example

### Student Registration System

When a student successfully registers:

* Finance system receives payment details
* Faculty receives enrollment notification
* Student receives confirmation email
* Analytics system updates dashboards

One event automatically notifies multiple systems simultaneously.

---

# CLI Reflection

Developers prefer command-line tools because they provide faster workflows, automation capabilities, and better integration with development tools.

CLI tools also help developers:

* Run scripts quickly
* Manage projects efficiently
* Automate deployments
* Improve productivity

---

# Search Reflection

Fast and accurate search is critical in enterprise systems because organizations store massive amounts of data.

Efficient search helps:

* Improve user productivity
* Reduce time spent finding records
* Increase operational efficiency
* Improve decision-making

---

# Reflective Questions

## 1. Why do systems need triggers?

Triggers allow systems to automatically react to important business events without manual intervention.

## 2. Difference between polling and event-driven systems?

Polling continuously checks for updates, while event-driven systems react only when events occur.

## 3. Why are database queries important?

Queries help retrieve, filter, and process required business data efficiently.

## 4. When should Flows be preferred over Triggers?

Flows should be preferred for simple automation that does not require complex programming logic.

## 5. What problems happen if automation logic becomes too complex?

Complex automation becomes difficult to maintain, debug, test, and scale.

## 6. Why should developers think carefully before automating actions?

Poor automation design can create performance issues, incorrect data processing, and system instability.

---

# Modules Completed

## Trailhead Modules

* Database & .NET Basics
* Apex Triggers
* Search Solution Basics
* Agentforce 360 Platform Events Basics
* Command-Line Interface

---

# Key Learnings

## Database & .NET Basics

Learned how Salesforce retrieves and processes data using SOQL and DML operations.

## Apex Triggers

Learned how systems automatically react to data changes using event-driven logic.

## Search Solution Basics

Learned the importance of efficient search systems in enterprise applications.

## Platform Events Basics

Learned how asynchronous event communication works between systems.

## Command-Line Interface

Learned why developers use terminal-based workflows and automation tools.

---

# One Doubt / Question

How can developers decide the best balance between declarative automation (Flows) and programmatic automation (Triggers) in large enterprise systems?

---

# End of Day Outcome

By the end of Day 6, the following concepts were clearly understood:

* Salesforce data querying with SOQL
* Event-driven system architecture
* Apex Trigger automation
* Platform Events and asynchronous communication
* Declarative vs programmatic automation
* Enterprise search systems
* Salesforce CLI and developer tooling workflows

