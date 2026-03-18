**Laboratory No. 3**

Name: Briones, Natalie D
Course & Section: BSCS 2B
Date: March 12, 2026
Submitted to: Sir Bernardino

PART 1 - Pre-Lab Concept Questions

Answer the following before running the simulation:

1. What is an agent in an Agent-Based Model?

- An agent in an Agent-Based Model is an individual entity in the simulation. It can represent a person, animal, object,
  or any unit being studied. Each agent has its own behavior and rules to follow. Agents can interact with other agents
  and their environment. Through these interactions, the model shows how complex systems work.

2. What is the difference between:
    global variables and species variables?
  
- Global variables are values that are shared by the whole model. They can be accessed and used by all agents in the simulation.
  Species variables, on the other hand, belong only to a specific type of agent. They describe the characteristics or properties
  of that particular group. Because of this, different agent types can have different variables.

3. What does this expression mean?

student mean_of each.attention

- The expression student mean_of each.attention means calculating the average attention level of all student agents.
  It collects the attention value from each student in the model. After collecting the values, it computes their mean or average.
  This helps show the overall attention level of the students. It is useful for analyzing the behavior of the group.

4. What happens if attention continuously decreases without a break?

- If attention continuously decreases without a break, the agents' attention level will keep getting lower over time.
  Eventually, it may reach zero or a very small value. When this happens, the agents may no longer perform their tasks properly.
  They may stop responding or participating in the simulation. This can affect the overall results of the model.

PART 3 - Data Observation Table Fill in the table after 100 cycles:

| **Metric**                | **Value**       |
| ------------------------- | --------------- |
| Average Attention         | 0.834340134     |
| ---                       | ---             |
| Average Performance       | 0.854772277     |
| ---                       | ---             |
| High Attention Count      | 25              |
| ---                       | ---             |
| Number of Breaks Occurred | 3               |
| ---                       | ---             |

PART 4 - Guided Code Analysis

Activity 1: Break Frequency

Original code: if (cycle mod 30 = 0)
Task: Change break interval to: 15 cycles

Questions:

1. Does attention increase faster?

- Yes, attention increased faster because breaks occurred more frequently, giving students less time to lose focus
  between recovery periods.

2. Does performance grow faster?

- Yes, performance grew faster because attention stayed consistently high, allowing the performance increment
  condition to be satisfied more often throughout the simulation.

3. Is the system more stable?

- Yes, the system is more stable because frequent breaks prevent attention from decaying too low,
  keeping students at high attention levels throughout the simulation.3

Activity 2: Attention Decay Rate

Original: attention <- max(0.0, attention - 0.02);
Task: Change decay rate to: 0.05

Observe:

1. Does attention collapse?

- Yes, attention dropped much faster. With a decay rate of 0.05, attention runs out quicker between breaks,
  causing students to lose focus faster compared to the original rate.

2. Does performance still improve? Explain why.

- No, performance doesn't improve that much because it becomes much slower. Since attention drops faster,
  it spends less time above the 0.6 needed for performance to grow, resulting in lower overall performance compared to the original rate.

Activity 3: Performance Growth Condition

Original: if (attention > 0.6)
Task: Change threshold to: 0.8

Questions:

1. Does performance improve slower?

- Yes, performance improved slower because fewer cycles satisfied the higher threshold of 0.8, reducing how often
  performance could increment.

2. What does this represent in real classroom settings?

- It represents that students need a higher level of focus and engagement to achieve meaningful learning gains,
  similar to how complex topics require deeper concentration to understand.

PART 5 - Experiment: Class Size Impact 

Use parameter: (100 CYCLES ONLY)
Initial number of students Test:

|   Students   |   Avg Attention   |   Avg Performance.  |
| ------------ | ----------------- | ------------------- |
| 10           |   0.838913658     |   0.860049505       |
| ---          | ---               | ---                 |
| 25           |   0.834340134     |   0.854772277       |
| ---          | ---               | ---                 |
| 60           |   0.821190679     |   0.844711221       |
| ---          | ---               | ---                 |
| 100          |   0.836408778     |   0.856509901       |
| ---          | ---               | ---                 |

Analysis Questions:

1. Does increasing class size affect average attention?

- Yes, slightly. Attention was highest with 10 students (0.838) and gradually decreased as class size grew,
  with 60 students having the lowest attention (0.821). However the difference is minimal since all class sizes
  maintained attention above 0.82.

2. Does mobility create more randomness?

- Yes. With more students moving around, there is more random variation in attention values.
  This is visible in the slight variation across different class sizes, such as 100 students (0.836) having slightly
  higher attention than 60 students (0.821), which shows random movement patterns affecting the results.

3. Is emergent behavior visible?

- Yes. No single student was programmed to produce the class average, yet a consistent attention and performance
  pattern emerged across all class sizes. All groups independently reached similar performance values (around 0.85)
  through the collective behavior of individual agents following simple rules, which is the definition of emergent behavior.

PART 6 - Data Analysis Task (Optional Python)

Using Excel or Power Query Editor

1. Load classroom_data.csv
2. Plot:
o Attention vs Cycle
o Performance vs Cycle
3. Identify break cycles.
4, Compute correlation between attention and performance.

- The correlation between attention and performance is -0.056

Question:

Is performance strongly dependent on attention?

- No, performance is not strongly dependent on attention. The correlation is −0.056, which is very close to 0.
  This means there is almost no relationship between attention and performance. So even if attention changes, performance does
  not change much because of it.

PART 7 - Critical Thinking Questions

1. Why does performance only increase when attention > 0.6?

- Because 0.6 represents the minimum level of focus needed for a student to actually learn. Below that level,
  students are too distracted to absorb the lesson and gain no performance improvement.

2. Is this model deterministic or stochastic?

- The model is stochastic. Student movement and initial positions are random, meaning each simulation run produces slightly
  different results even with the same rate.

3. What real-world classroom factors are missing?

- Several factors are missing such as teacher presence, peer influence, student motivation, subject difficulty,
  distractions like phones, and individual differences between students like learning pace and prior knowledge.

4. How would peer influence affect the system?

- If students near highly focused peers gained attention, average attention would increase overall.
  Students who are losing focus could be pulled back up by engaged classmates, resulting in higher performance and a
  more stable classroom environment.

PART 8 - Advanced Extension Tasks (Choose One)

Option C: Fatigue Model

Add:
• If attention < 0.3 for 10 cycles → performance decreases.

Option C adds a fatigue model where if a student's attention stays below 0.3 for 10 consecutive cycles, 
their performance begins to decrease. This represents real-world situations where students who are distracted for 
too long not only stop learning but also start to forget what they already knew.
