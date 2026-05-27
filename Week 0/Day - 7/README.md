# Day 7 – Apex Testing, Asynchronous Apex & Salesforce DX

## Summary

The goal of Day 7 was to understand why testing is critical in enterprise applications, how asynchronous processing improves system performance, and how modern Salesforce development workflows use DX, CLI, and GitHub for scalable team development.

This day focused on understanding how professional developers build reliable systems using structured workflows, automated testing, version control, and source-driven development.

---

# Topics Covered

## Apex Testing

* Importance of testing in enterprise systems
* Apex test classes
* Unit testing concepts
* Assertions
* Code coverage
* Trigger testing
* Bulk testing
* Test utility classes
* Regression testing

---

## Asynchronous Apex

* Synchronous vs asynchronous processing
* Future Methods
* Queueable Apex
* Batch Apex
* Scheduled Apex
* Background processing
* Higher governor limits

---

## Salesforce DX & Developer Workflow

* Salesforce DX overview
* Scratch Orgs
* Dev Hub
* Source-driven development
* Salesforce CLI
* GitHub integration
* VS Code workflow
* Team collaboration

---

# Why Testing Matters

Testing ensures that enterprise applications behave correctly and reliably.

Without proper testing:

* Bugs may reach production
* Incorrect data may be stored
* Automation can fail
* Business workflows may break
* User trust can decrease

Testing helps developers:

* Verify business logic
* Prevent regressions
* Improve software quality
* Ensure stable deployments

---

# Apex Unit Testing

## Purpose of Unit Tests

Apex unit tests are used to:

* Test Apex classes and triggers
* Validate expected behavior
* Detect bugs early
* Ensure safe future updates

---

## Important Salesforce Requirement

Before deployment:

* Minimum 75% code coverage is required
* All test classes must pass
* Every trigger should have coverage

---

# Assertions in Apex

Assertions verify expected output.

Common assertions:

* `Assert.areEqual()`
* `Assert.isTrue()`
* `Assert.isFalse()`
* `Assert.isNull()`

Assertions help confirm whether code behaves correctly.

---

# Trigger Testing

Trigger testing usually includes:

1. Creating test data
2. Performing DML operations
3. Verifying expected results

Important scenarios:

* Valid insert
* Invalid insert
* Valid update
* Invalid update
* Bulk record processing

---

# Bulk Testing Importance

Salesforce triggers execute on collections of records.

Developers must test:

* Single-record operations
* Bulk operations

Without bulk testing:

* Governor limit failures may occur
* Large data operations may fail

---

# Test Utility Classes

Test utility classes help create reusable test data.

Benefits:

* Reduces duplicate code
* Improves maintainability
* Simplifies test methods
* Supports scalable testing

---

# What is Asynchronous Apex?

Asynchronous Apex allows processes to run in the background without making users wait.

Instead of processing everything immediately, tasks can execute later when resources are available.

---

# Synchronous vs Asynchronous Processing

| Synchronous               | Asynchronous                  |
| ------------------------- | ----------------------------- |
| User waits for completion | Runs in background            |
| Sequential execution      | Parallel/background execution |
| Slower for heavy tasks    | Better performance            |

---

# Benefits of Asynchronous Processing

## 1. Better User Experience

Users can continue working while background processing executes.

---

## 2. Scalability

Systems can process larger workloads efficiently.

---

## 3. Higher Governor Limits

Async Apex provides higher execution limits than synchronous Apex.

---

# Types of Asynchronous Apex

| Type           | Purpose                 |
| -------------- | ----------------------- |
| Future Methods | Background callouts     |
| Queueable Apex | Chained background jobs |
| Batch Apex     | Large data processing   |
| Scheduled Apex | Timed execution         |

---

# Future Methods

Used for:

* Background processing
* External API callouts

---

# Queueable Apex

Used for:

* Sequential job chaining
* Complex background operations

Queueable Apex is generally preferred over Future Methods.

---

# Batch Apex

Used for:

* Processing huge datasets
* Data cleanup
* Archiving operations

---

# Scheduled Apex

Used for:

* Daily jobs
* Weekly jobs
* Timed automation

---

# Salesforce DX

## What is Salesforce DX?

Salesforce DX is a modern development framework for Salesforce applications.

It supports:

* Source-driven development
* Team collaboration
* Version control integration
* Automated workflows

---

# Scratch Orgs

Scratch Orgs are temporary Salesforce environments used for:

* Development
* Testing
* Experimentation
* Team collaboration

Benefits:

* Isolated environments
* Easy setup
* Disposable after use

---

# Dev Hub

Dev Hub is the main Salesforce org used to:

* Create scratch orgs
* Manage DX projects
* Authenticate development environments

---

# Salesforce CLI

Salesforce CLI allows developers to:

* Create scratch orgs
* Deploy metadata
* Run commands quickly
* Automate workflows
* Improve productivity

---

# Why Developers Use GitHub, DX & CLI

Professional developers use structured workflows because enterprise systems are large and complex.

Benefits include:

* Version control
* Team collaboration
* Easier deployments
* Better automation
* Faster development
* Safer code management

Browser-only development becomes difficult to manage in large teams.

---

# Complete System Workflow

## College Management System Example

### Step 1 – Student Registration

A student submits registration details.

---

### Step 2 – Validation Rules

Validation Rules check:

* Required fields
* Invalid email formats
* Duplicate data

Invalid data is blocked immediately.

---

### Step 3 – Flow Automation

A Flow sends:

* Welcome email
* Registration confirmation

---

### Step 4 – Apex Trigger

Trigger automatically:

* Updates course enrollment count
* Validates course capacity

---

### Step 5 – Formula Calculation

Formula fields automatically:

* Recalculate remaining seats
* Update attendance percentage

---

### Step 6 – Platform Event

Platform Event sends notifications to:

* Faculty system
* Finance system
* Analytics system

---

### Step 7 – Database Storage

Validated records are stored safely in Salesforce.

---

### Step 8 – Reports & Dashboards

Reports display:

* Student analytics
* Attendance statistics
* Enrollment summaries

---

# Important Test Cases

## 1. Invalid Email Validation

### Problem if not tested:

Incorrect student contact information may be stored.

---

## 2. Duplicate Registration

### Problem if not tested:

Students may register multiple times for the same course.

---

## 3. Course Overbooking

### Problem if not tested:

Course capacity may exceed limits.

---

## 4. Attendance Calculation

### Problem if not tested:

Incorrect attendance percentages may affect eligibility.

---

## 5. Trigger Execution

### Problem if not tested:

Automation may fail silently and create incorrect data.

---

# Async Processing Examples

## 1. Sending Bulk Emails

Better in background to avoid slowing user operations.

---

## 2. Large Report Generation

Heavy processing should run asynchronously.

---

## 3. Data Synchronization

External system synchronization should happen in background.

---

# Reflection

Enterprise software development requires structured workflows because large systems involve:

* Multiple developers
* Large datasets
* Complex automation
* Frequent updates
* Continuous deployments

Using GitHub, DX, and CLI helps teams:

* Work collaboratively
* Track code changes
* Maintain reliability
* Deploy safely
* Scale development efficiently

---

# Key Learnings

* Testing is critical for enterprise reliability
* Apex tests prevent bugs and regressions
* Salesforce requires minimum 75% code coverage
* Bulk testing is important for triggers
* Test utility classes improve reusable testing
* Asynchronous Apex improves performance
* Queueable Apex is preferred for advanced async operations
* Batch Apex handles large datasets
* Scheduled Apex automates timed jobs
* Salesforce DX supports modern development workflows
* Scratch Orgs provide isolated development environments
* CLI improves developer productivity
* GitHub enables version control and collaboration
* Enterprise systems rely on structured workflows
* Flows, Triggers, Validation Rules, and Events work together in real systems
* Professional development requires automation, testing, and scalable workflows

# Final Outcome

Successfully understood the importance of Apex Testing, Asynchronous Apex, and Salesforce DX in enterprise Salesforce development.
