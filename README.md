# git-hired

[![Typst](https://img.shields.io/badge/typst-239DAD?logo=typst&logoColor=white)](https://typst.app)
[![License](https://img.shields.io/github/license/oresttokovenko/git-hired)](https://github.com/oresttokovenko/git-hired/blob/main/LICENSE)
[![Build](https://img.shields.io/github/actions/workflow/status/oresttokovenko/git-hired/build.yml)](https://github.com/oresttokovenko/git-hired/actions)

See an [example resume](https://github.com/oresttokovenko/git-hired/blob/main/tests/pdf/test-job-title-primary.pdf) to get a feel for the template.

A clean, minimal resume template built in [Typst](https://typst.app), designed to be highly customizable and visually professional. Strongly inspired by [stuxf's basic-typst-resume-template](https://github.com/stuxf/basic-typst-resume-template).

## Features

- Clean, ATS-friendly design with ligatures disabled
- Customizable fonts, colors, and spacing
- Flexible work experience format (job-title-primary or company-primary)
- Support for multiple roles at the same company

## Work Experience Format

The template supports two formats for displaying work experience via the `work-format` parameter:

### Job Title Primary (default)

```
Senior Software Engineer                    Jun 2022 - Present
TechNova Inc.                              San Francisco, CA
```

Use this when your job titles are more impressive or relevant than the company names.

### Company Primary

```
TechNova Inc.                              San Francisco, CA
Senior Software Engineer                    Jun 2022 - Present
```

Use this when:
- You work for a well-known company and want to highlight that
- You have career progression within a single company (multiple roles are grouped under the company name)

### Configuration

```typst
#show: resume.with(
  author: "Jane Doe",
  work-format: "company-primary",  // or "job-title-primary"
  ...
)
```

### Multiple Roles at One Company

With `company-primary`, you can show promotions by omitting company/location on subsequent entries:

```typst
#work(
  company: "TechNova Inc.",
  location: "San Francisco, CA",
  title: "Senior Software Engineer",
  dates: date-range(start-date: "Jun 2022", end-date: "Present"),
)
- Accomplishment 1
- Accomplishment 2

#work(
  title: "Software Engineer",
  dates: date-range(start-date: "Jun 2020", end-date: "Jun 2022"),
)
- Accomplishment 1
- Accomplishment 2
```

## PDF Standard

We recommend compiling with the [PDF/A-2u](https://www.loc.gov/preservation/digital/formats/fdd/fdd000321.shtml) standard. This guarantees that all text in the PDF has Unicode mappings, which ensures reliable text extraction by Applicant Tracking Systems (ATS). Typst does not currently support setting the PDF standard within the document itself, so you need to pass it as a CLI flag:

```bash
typst compile resume.typ --pdf-standard a-2u
```

Note that if you are using the Typst web app or another editor, the PDF standard depends on your export settings. Check your tool's documentation for how to configure this.

## Installation & Usage

See [USAGE.md](USAGE.md) for installation instructions and development setup.

## License

[MIT](LICENSE)
