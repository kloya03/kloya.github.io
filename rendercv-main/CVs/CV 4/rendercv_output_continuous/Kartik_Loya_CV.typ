// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Kartik Loya",
  title: "Kartik Loya - CV",
  footer: context { [#emph[Kartik Loya -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in Oct 2026] ],
  locale-catalog-language: "en",
  text-direction: ltr,
  page-size: "us-letter",
  page-top-margin: 0.6in,
  page-bottom-margin: 0.85in,
  page-left-margin: 0.7in,
  page-right-margin: 0.7in,
  page-show-footer: false,
  page-show-top-note: false,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 0, 0),
  colors-headline: rgb(0, 0, 0),
  colors-connections: rgb(0, 0, 0),
  colors-section-titles: rgb(0, 0, 0),
  colors-links: rgb(0, 0, 0),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.45em,
  typography-alignment: "left",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "XCharter",
  typography-font-family-name: "XCharter",
  typography-font-family-headline: "XCharter",
  typography-font-family-connections: "XCharter",
  typography-font-family-section-titles: "XCharter",
  typography-font-size-body: 10pt,
  typography-font-size-name: 25pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.2em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: false,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
  links-underline: true,
  links-show-external-link-icon: false,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.25cm,
  header-space-below-headline: 0.25cm,
  header-space-below-connections: 0.35cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: false,
  header-connections-display-urls-instead-of-usernames: true,
  header-connections-separator: "|",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_full_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.35cm,
  section-titles-space-below: 0.2cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.15cm,
  sections-space-between-regular-entries: 0.22cm,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: true,
  entries-short-second-row: false,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0.08cm,
  entries-highlights-bullet:  text(13pt, [•], baseline: -0.6pt) ,
  entries-highlights-nested-bullet:  text(13pt, [•], baseline: -0.6pt) ,
  entries-highlights-space-left: 0cm,
  entries-highlights-space-above: 0.08cm,
  entries-highlights-space-between-items: 0.08cm,
  entries-highlights-space-between-bullet-and-text: 0.3em,
  date: datetime(
    year: 2026,
    month: 10,
    day: 20,
  ),
)


= Kartik Loya

  #headline([Ph.D. in Mechanical Engineering])

#connections(
  [Clemson, SC, USA],
  [#link("mailto:Kloya@clemson.edu", icon: false, if-underline: false, if-color: false)[Kloya\@clemson.edu]],
  [#link("https://linkedin.com/in/kartikloya", icon: false, if-underline: false, if-color: false)[#box(baseline: 15%)[#image("icons/linkedin.svg", height: 0.9em)] #h(0.15em) LinkedIn]],
  [#link("https://github.com/kloya03", icon: false, if-underline: false, if-color: false)[#box(baseline: 15%)[#image("icons/github.svg", height: 0.9em)] #h(0.15em) GitHub]],
  [#link("https://scholar.google.com/citations?user=sKZu4_EAAAAJ&hl=en", icon: false, if-underline: false, if-color: false)[#box(baseline: 15%)[#image("icons/google-scholar.svg", height: 0.9em)] #h(0.15em) Google Scholar]],
  [#link("https://kloya03.github.io/kloya.github.io/", icon: false, if-underline: false, if-color: false)[#box(baseline: 15%)[#image("icons/website.svg", height: 0.9em)] #h(0.15em) kloya03.github.io]],
)

== Summary

Ph.D. in Mechanical Engineering with hands-on experience in robotics, dynamics, perception, and control. I build and test robotic systems, combining sensing, physics-based modeling, and learning-based methods to develop reliable autonomy for real-world environments. My work spans system identification, state estimation, planning, and real-time control, with a growing interest in Physical AI, reinforcement learning, and learning-based approaches for intelligent robotic behavior.

== Education

#education-entry(
  [
    #strong[Clemson University], Ph.D. in Mechanical Engineering -- Clemson, SC, USA

  ],
  [
    2021-08 - 2026-12

  ],
  main-column-second-row: [
    - GPA: 4.00\/4.00

  ],
)

#education-entry(
  [
    #strong[Clemson University], M.S. in Mechanical Engineering -- Clemson, SC, USA

  ],
  [
    Aug 2018 – Aug 2021

  ],
  main-column-second-row: [
    - GPA: 3.87\/4.00.

  ],
)

#education-entry(
  [
    #strong[Maharashtra Institute of Technology, Pune University], B.E. in Mechanical Engineering -- Pune, India

  ],
  [
    Aug 2014 – May 2018

  ],
  main-column-second-row: [
  ],
)

== Skills

#strong[Programming:] Python, MATLAB, C++

#strong[Robotics & Machine Learning:] ROS, ROS2, PyTorch, OpenCV, MuJoCo

#strong[Simulation & Optimization:] Project Chrono, CasADi, IPOPT, GPOPS-II, SolidWorks

#strong[Embedded Computing:] Linux, Git, Docker, Raspberry Pi, Radxa, NVIDIA Jetson Nano, ESP32

#strong[Sensors & Perception:] IMU, GPS, LiDAR, RGB\/depth cameras, Intel RealSense, pressure sensors, wheel encoders

#strong[Actuation & Communication:] BLDC motors, servo motors, motor drivers, encoder feedback, CAN, UART, I2C, SPI, RF communication

== Research Experience

#regular-entry(
  [
    #strong[Graduate Research Assistant], Virtual Prototyping of Ground Vehicle Systems Center (VIPR-GS) -- Clemson, SC, USA

  ],
  [
    Sept 2024 – present

  ],
  main-column-second-row: [
    #summary[Advisor: Prof. Phanindra Tallapragada]

    - Developed a physics-informed machine learning framework for off-road autonomy on deformable terrain, learning fast vehicle-dynamics predictors from large-scale simulation data for real-time control.

    - Built terrain-specific dynamics models using scalable Koopman identification, demonstrating strong performance degradation across unseen soil conditions and motivating terrain-adaptive learning and control.

    - Integrated learned dynamics with constrained MPC for aggressive trajectory tracking under steering and torque limits, achieving real-time control at 0.085s per optimization step.

    - Currently deploying the framework on a 1\/10th-scale autonomous off-road vehicle, integrating depth camera, wheel encoders, IMU, and GPS for onboard perception, state estimation, terrain-aware modeling, and closed-loop control.

  ],
)

#regular-entry(
  [
    #strong[Graduate Research Assistant], Applied Dynamical Systems Lab -- Clemson, SC, USA

  ],
  [
    Aug 2021 – May 2024

  ],
  main-column-second-row: [
    #summary[Advisor: Prof. Phanindra Tallapragada]

    - Designed, built, and field-tested a fish-like underwater robot in pool and lake environments, integrating BLDC internal-rotor propulsion, servo-actuated flexible tail, IMU, pressure sensors, GPS, onboard compute, and overhead vision-based marker tracking for localization and state estimation.

    - Developed a physics-based nonlinear simulator capturing hydrodynamics, underactuation, and coupled body–tail dynamics for scalable data generation, system identification, and controller development.

    - Studied roll stability of the bio-inspired fish robot, showing how periodic body motion and fluid interaction can amplify roll oscillations and identifying operating conditions that affect stability.

    - Built sim-to-real learning pipelines using Koopman learning and differentiable reinforcement learning (RL), combining large-scale simulation with limited real-world data to learn transferable dynamics models and control policies.

    - Developed online model adaptation that selectively incorporates informative streaming sensor data, enabling efficient learning across changing dynamical regimes while reducing redundant data and computation.

    - Deployed real-time MPC and learned controllers on the physical robot, with low-level BLDC motor and servo control, achieving speeds up to 2 body lengths\/s and 1.8–6.3 cm cross-track RMSE in closed-loop trajectory tracking.

  ],
)

#regular-entry(
  [
    #strong[Graduate Research Assistant], Virtual Prototyping of Ground Vehicle Systems Center (VIPR-GS) -- Clemson, SC, USA

  ],
  [
    Jan 2020 – Aug 2021

  ],
  main-column-second-row: [
    #summary[Advisor: Dr. Mohammad Naghnaeian]

    - Designed energy-efficient planning and control strategies for UAV fleets in resource-constrained environments.

    - Used MPC to enhance UAV energy efficiency, factoring in disturbances, wind effects, and morphed UAV for improved performance.

  ],
)

== Work Experience

#regular-entry(
  [
    #strong[Engineering Intern], Thermax Ltd. -- Pune, India

  ],
  [
    Oct 2017 – May 2018

  ],
  main-column-second-row: [
    - Surveyed and optimized the steel utilization in the plant.

    - Developed a Python program for remote online performance analysis for the Vapour Absorption chiller plants.

    - Capstone Project: Design and manufacturing of boiler panel cutting machine to replace the existing flame cutting method used in repairing boilers to avoid the development of heat-affected zones.

  ],
)

#regular-entry(
  [
    #strong[Engineering Intern], Elite Techno Group -- Pune, India

  ],
  [
    June 2016 – June 2016

  ],
  main-column-second-row: [
    - Designed ATV on Solidworks and performed crash analysis on it.

    - Manufactured the ATV and tested its performance on a road-track.

  ],
)

== Selected Publications

  #regular-entry(
  [
    #strong[Learning Koopman operators for path tracking by a fish-like robot]

  ],
  [
  ],
  main-column-second-row: [
    #emph[Kartik Loya], P. Chivkula, R. Varikuti, P. Tallapragada

    (Submitted to IEEE Transactions on Robotics)

  ],
)

  #regular-entry(
  [
    #strong[Differentiable Reinforcement Learning for Path Tracking by an Agile Fish-Like Robot]

  ],
  [
  ],
  main-column-second-row: [
    P. Chivkula, #emph[Kartik Loya], R. Varikuti, P. Tallapragada

    (IEEE\/RSJ International Conference on Intelligent Robots and Systems (IROS))

  ],
)

  #regular-entry(
  [
    #strong[Koopman Operator Framework for Modeling and Control of Off-Road Vehicle on Deformable Terrain]

  ],
  [
  ],
  main-column-second-row: [
    #emph[Kartik Loya], P. Tallapragada

    (ASME Journal of Autonomous Vehicles and Systems (JAVS))

  ],
)

  #regular-entry(
  [
    #strong[Agile 3-D Motion Primitives in an Underactuated Fish-like Robot]

  ],
  [
  ],
  main-column-second-row: [
    P. Chivkula, #emph[Kartik Loya], P. Tallapragada

    (IEEE Robotics and Automation - Letters)

  ],
)

  #regular-entry(
  [
    #strong[Parametric roll oscillations of a hydrodynamic Chaplygin sleigh]

  ],
  [
  ],
  main-column-second-row: [
    #emph[Kartik Loya], P. Tallapragada

    (Nonlinear Dynamics 111 (22), 20699-20713)

  ],
)

  #regular-entry(
  [
    #strong[Online learning of Koopman operator using streaming data from different dynamical regimes]

  ],
  [
  ],
  main-column-second-row: [
    #emph[Kartik Loya], P. Tallapragada

    (IFAC-PapersOnLine 58.28, 90-95)

  ],
)

  #regular-entry(
  [
    #strong[Koopman operator-based predictive control uses a data archive of observables]

  ],
  [
  ],
  main-column-second-row: [
    #emph[Kartik Loya], J. Buzhardt, P. Tallapragada

    (ASME Letters in Dynamic Systems and Control 3 (3))

  ],
)

  #regular-entry(
  [
    #strong[Stabilization of an Inverted Pendulum on a Nonholonomic System]

  ],
  [
  ],
  main-column-second-row: [
    #emph[Kartik Loya], P. Tallapragada

    (IFAC-PapersOnLine 55 (37), 764-769)

  ],
)

== Competitions

#regular-entry(
  [
    #strong[AI for Industry Challenge - Intrinsic × Open Robotics] -- #strong[Team ASIMOV]

  ],
  [
    May 2026 – Aug 2026

  ],
  main-column-second-row: [
    - Ranked 21st globally and advanced to Phase 1 (Top 30 of 160+ teams) in a worldwide robotics competition focused on autonomous manipulation of deformable cables and precision connector insertion.

    - Developed the manipulation solution using Intrinsic Flowstate, integrating Vision-Language-Action (VLA) models, reinforcement learning, and OpenCV-based perception for task planning, visual understanding, and robot control.

    - Designed and tested reusable robot skills for perception and manipulation within the Flowstate workflow, combining learning-based approaches with task-specific robotic behaviors.

  ],
)

#regular-entry(
  [
    #strong[iGRADS (Graduate Research and Discovery Symposium)]

  ],
  [
    Mar 2026 – Apr 2026

  ],
  main-column-second-row: [
    - Advanced to the final round of Clemson’s university-wide graduate research competition, presenting doctoral research to a broad, nontechnical audience.

  ],
)

== Honors and Awards

#regular-entry(
  [
    #strong[ME Excellence Award - Ph.D.] -- #strong[Clemson University]

  ],
  [
    Apr 2026

  ],
  main-column-second-row: [
    - Recognized by the Department of Mechanical Engineering for excellence as a Ph.D. graduate student.

  ],
)

#regular-entry(
  [
    #strong[Graduate Travel Grant] -- #strong[Clemson Graduate Student Government]

  ],
  [
    June 2024

  ],
  main-column-second-row: [
    - Awarded competitive graduate travel funding to attend the IEEE International Conference on Robotics and Automation (ICRA 2024).

  ],
)

== Talks and Presentations

- #strong[IROS 2026] — Talk & Demo: \"Differentiable Reinforcement Learning for Path Tracking by an Agile Fish-Like Robot.

- #strong[Modeling, Estimation and control Conference (MECC)] — 2022: \"Stabilization of an Inverted Pendulum on a Nonholonomic System\"

- #strong[Modeling, Estimation and control Conference (MECC)] — 2023: \"Koopman Operator Based Predictive Control With a Data Archive of Observables\"

- #strong[Modeling, Estimation and control Conference (MECC)] — 2024: \"Online learning of Koopman operator using streaming data from different dynamical regimes\"

- #strong[SIAM Conference on Applications of Dynamical Systems (DS25)] — Talk: Model-based learning of Koopman operator for complex mechanical systems (May 2025).

- #strong[ISTVS 2025 (55th Conference)] — Talk: Data-driven Koopman control-oriented learning framework for improved autonomous off-road mobility (Oct 9, 2025).

- #strong[ICRA 2025] — Poster: \"Batch learning\/updates of Koopman operators from streaming off-road vehicle data with terrain dynamics\" (Summer 2025).

- #strong[ICRA 2025] — Late Breaking Results: \"Learning PID Gains for Planar Tracking of Bio-Inspired Swimming Robots Using Simplified Models\"

- #strong[Clemson VIPR Annual Meeting 2025] — Poster Presentation: \"Koopman-Based Modelling and Control of Off-Road Vehicles on Deformable Terrain\"

- #strong[Clemson Graduate Student Seminar (GSR)] — Research talk: 2023 \"Parametric Roll Oscillation of a Hydrodynamic Chaplygin Sleigh\"

- #strong[Clemson Graduate Student Seminar (GSR)] — Research talk: 2025 \"Data-driven Koopman Control-Oriented Learning Framework for Improved Autonomous Off-road Mobility.\"

== Coursework

#strong[Graduate Coursework:] Intermediate Dynamics | Nonlinear Dynamics & Chaos | Robot Multibody Dynamics | Advanced Nonlinear Dynamics | Advance Engineering Mathematics | Linear Analysis | Control Systems Engineering | Advanced Nonlinear control | Random Processes and Application | Applied Optimal Control | Networked Dynamical systems | Advanced Estimation | Control of Cyber-Physical Systems | Autonomy: Science & Systems | Reinforcement Learning | Advanced Machine Learning | Theory of Elasticity
