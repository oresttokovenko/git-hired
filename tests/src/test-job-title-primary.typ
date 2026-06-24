#import "../../src/lib.typ": *

#let name = "John Smith"
#let location = "Bay Area, CA"
#let email = "johnsmith@example.com"
#let github = "github.com/johnsmith"
#let linkedin = "linkedin.com/in/johnsmith"
#let phone = "+1 (415) 123-4567"
#let personal-site = "johnsmith.dev"
#let font-size = 10pt
#let work-format = "job-title-primary"

#show: resume.with(
  author: name,
  location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  phone: phone,
  personal-site: personal-site,
  font-size: font-size,
  work-format: work-format,
)

== Work Experience

#work(
  title: "Senior Software Engineer",
  location: "San Francisco, CA",
  company: "TechNova Inc.",
  dates: date-range(start-date: "Jun 2022", end-date: "Present"),
)
- Led migration from monolithic services to microservices using Kubernetes, improving scalability and deployment time by 60% across engineering environments
- Built and optimized ETL pipelines processing over 1B events per day using Apache Spark and Kafka for real-time data workflows
- Mentored 4 junior engineers, helping them grow into mid-level contributors and leading successful feature rollouts and sprints
- Implemented a new feature flag system that reduced deployment risk and improved feature rollout speed by 30% across teams

#work(
  title: "Software Engineer",
  location: "Mountain View, CA",
  company: "DataScape Labs",
  dates: date-range(start-date: "Jul 2020", end-date: "Jun 2022"),
)
- Designed and implemented a real-time analytics dashboard used by over 50 enterprise clients for operational decision making
- Improved system throughput by 40% via caching, indexing, and query optimization in PostgreSQL and Redis infrastructure layers
- Contributed to company-wide engineering best practices for CI/CD, code reviews, and incident response documentation
- Collaborated with product managers and designers to deliver features on time, resulting in a 25% increase in user engagement metrics

#work(
  title: "Software Engineering Intern",
  location: "Palo Alto, CA",
  company: "CloudBridge Systems",
  dates: date-range(start-date: "May 2019", end-date: "Aug 2019"),
)
- Developed internal developer tooling to automate integration testing using Docker and GitLab CI pipelines for backend services
- Built microservices in Go and deployed to Google Cloud Run, reducing manual test cycles by 70% and simplifying deployment
- Collaborated with cross-functional teams to gather requirements and deliver features on time across departments
- Participated in daily stand-ups and sprint planning, gaining experience in Agile methodologies and project tracking

#work(
  title: "Research Assistant",
  location: "Berkeley, CA",
  company: "UC Berkeley Computer Science Department",
  dates: date-range(start-date: "Sep 2018", end-date: "May 2020"),
)
- Assisted in research on distributed systems and cloud computing, publishing findings in peer-reviewed journals and conferences
- Developed a prototype for a distributed file system using Go, achieving 99.9% fault tolerance in controlled simulations
- Conducted experiments and analyzed performance metrics, contributing to a research paper presented at a major conference
- Collaborated with professors and graduate students on various research projects, enhancing my understanding of theoretical computer science concepts and applications

== Education

#edu(
  institution: "Harvard University",
  location: "Cambridge, MA",
  dates: "May 2024",
  degree: "PhD, Computer Science",
)

#edu(
  institution: "Stanford University",
  location: "Stanford, CA",
  dates: "May 2022",
  degree: "Master of Science, Computer Science",
)

#edu(
  institution: "University of California, Berkeley",
  location: "Berkeley, CA",
  dates: "May 2020",
  degree: "Bachelor of Science, Computer Science",
)

== Certifications

#certifications(
  name: "AWS Certified Solutions Architect",
  issuer: "Amazon Web Services",
  date: "Jan 2021",
)

== Skills

*Languages*: Python, Go, Java, SQL, JavaScript, TypeScript, Bash \
*Technologies*: React, Node.js, Docker, Kubernetes, PostgreSQL, Redis, AWS, GCP, Terraform \
*Frameworks*: Flask, Express, Spring Boot, Apache Spark \
*DevOps*: CI/CD, Git, Agile, Scrum, Microservices, REST APIs \
