#  DAY 9 – Component Communication & Data Flow in Salesforce (LWC + Aura Concepts)

---

## Summary

The goal of Day 9 was to understand how components communicate in Salesforce applications and how data flows between UI, Apex, and database layers. This includes event-driven architecture, parent-child communication, and modular dashboard design used in enterprise systems.

This day also covered practical issues faced in Aura components such as controller creation, handler binding, and component rendering in Salesforce Developer Console.

---

## Topics Covered

---

## 1. Component Communication in Salesforce

In modern Salesforce applications, components do not work in isolation. They communicate in different ways:

### 1. Parent → Child Communication

* Parent component passes data to child component
* Used to display or configure child UI

Example:

* Dashboard → Contact List Component
* Account Page → MyContactList Component

---

### 2. Child → Parent Communication

* Child sends data or triggers event to parent
* Parent handles logic or updates UI

Example:

* Contact component → Dashboard update
* Form component → Save success notification

---

### 3. Event-Based Communication

* Components communicate using events
* No direct dependency between components

Benefits:

* Loose coupling
* Reusable components
* Scalable architecture

---

## 2. Data Flow in Salesforce Applications

Example process: Student Registration / Record Creation

### Step 1: UI Layer

* User enters data in form
* Clicks submit button

---

### Step 2: Validation Layer

* Frontend validation (required fields, format checks)
* Prevents invalid data entry

---

### Step 3: Component Layer (LWC/Aura)

* Data is captured in component logic
* Event is triggered to backend

---

### Step 4: Apex Controller (Backend)

* Receives request from UI
* Applies business logic
* Performs server-side validation

---

### Step 5: Database Layer

* Data is inserted/updated in Salesforce objects
* Example: Account, Contact, Student records

---

### Step 6: Response Layer

* Success or error returned to UI
* UI updates dynamically (table refresh, message display)

---

## 3. Dashboard Architecture Design Thinking

### Student Dashboard

* Student Profile Component
* Attendance Component
* Course List Component
* Notification Component

---

### Faculty Dashboard

* Attendance Management Component
* Marks Upload Component
* Student Tracking Component

---

### Admin Dashboard

* User Management Component
* Course Allocation Component
* Reports Component
* System Monitoring Component

---

## 4. Component Communication Structure

### Example: Student Dashboard

* Dashboard (Parent Component)

  * Sends data to child components
  * Controls layout

* Child Components:

  * Attendance Component → updates attendance data
  * Course Component → displays enrolled courses
  * Notification Component → shows alerts

---

## 5. Modern vs Legacy Salesforce UI

### Visualforce (Legacy)

* Page-based architecture
* Heavy rendering
* Limited flexibility

---

### Aura Components

* Component-based architecture
* Complex structure
* Moderate performance

---

### Lightning Web Components (LWC)

* Modern framework
* Faster performance
* Uses web standards (HTML, JS, ES6)
* Highly reusable and scalable

---

### Why Salesforce moved to LWC

* Better performance
* Cleaner architecture
* Easier development
* Industry-standard web practices
* Improved scalability

---

## 6. Why Modular Architecture is Important

Enterprise systems require modular design because:

* Applications are large and complex
* Multiple teams work on different components
* Code reuse reduces duplication
* Easier debugging and maintenance
* Scalable system design

---

## 7. Key Concepts Learned

* Components communicate using data binding and events
* Parent-child communication is essential in UI architecture
* Event-driven systems reduce dependency between components
* Data flows from UI → validation → Apex → database → response
* Dashboards are built using reusable components
* LWC is modern replacement for Aura
* Modular architecture improves scalability
* Separation of UI and backend is critical in enterprise systems

---

## Final Outcome 

Understood how components communicate using parent-child and event-based patterns, and how data flows through UI, Apex, and database in a modular Salesforce architecture. Gained clarity on building scalable, reusable, and event-driven enterprise applications using LWC principles.


