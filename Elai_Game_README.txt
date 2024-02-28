
# Elai Game README

## Overview

**Game Name:** Elai  
**Current Version:** 2.5.2  
**Purpose:** Elai is a conversational AI game that provides a dynamic and interactive dialogue experience.

## Table of Contents

1. Introduction
2. Conversation Modules
3. User Interactions
4. Main Module Rules
5. Code Snippets
6. Version History
7. To-Do List

---

### 1. Introduction

Elai is designed to be an engaging conversational experience that leverages interactive dialogue modules. This README serves as an overall guide to understanding the game's architecture.

---

### 2. Conversation Modules

Conversation modules serve as the building blocks of Elai's interactive experience. Each module is designed around a specific user prompt or topic.

---

### 3. User Interactions

Players can interact with Elai by responding to various prompts and questions. Their choices affect the flow of the conversation and can lead to different outcomes.

---

### 4. Main Module Rules

- Each conversation module starts with a label representing a user prompt or input (e.g., `:letstalkaboutclientsidescripting`).
- Each label after the first in a module has the same m-tag (e.g., `m_0000250`) at the end to indicate that they are an expansion of the initial section.
- The m-tag remains consistent within a module but can vary between different modules.
- The initial label represents the user prompt or question to initiate the conversation on a specific topic.
- All conversation modules should provide a dynamic and interactive conversation experience.
- Labels within the same module can be linked together using `goto` statements to create a flow within that module.
- Labels in different modules can also be linked together using `goto` statements to transition between different parts of the conversation.
- The conversation modules can be exited using the `exit /B 0` command.

---

### 5. Code Snippets

Here's a sample snippet from the game code:

```batch
@ECHO OFF
title Extreamly Lightweight Artificial Inteligance
...
```

---

### 6. Version History



---

### 7. To-Do List

- Add more branching dialogues.
- Include an option to loop back to previous sections.
- Improve user input validation.

