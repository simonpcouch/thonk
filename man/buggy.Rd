% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/buggy.R
\name{buggy}
\alias{buggy}
\alias{buggy_enable}
\alias{buggy_explain}
\alias{buggy_fix}
\title{Troubleshoot errors with LLMs}
\usage{
buggy_enable(chat = getOption(".buggy_chat"))

buggy_explain()

buggy_fix()
}
\arguments{
\item{chat}{An ellmer Chat object to use for interacting with the language model.
If not provided, uses the value from \code{getOption(".buggy_chat")}.
Set e.g. \code{options(.buggy_chat = ellmer::chat_claude(model = "claude-3-7-sonnet-latest"))}
in your .Rprofile.}
}
\description{
The buggy package provides tools for automatically explaining and fixing R
errors using large language models (LLMs). When an error occurs, buggy can
analyze the error message, backtrace, and context to provide a human-friendly
explanation and suggest fixes.
\itemize{
\item \code{buggy_enable()}: Attaches a global error handler that captures errors
and provides clickable options to explain or fix them.
\item \code{buggy_explain()}: Explains the most recent error using an LLM, offering
detailed context about what went wrong and why.
\item \code{buggy_fix()}: Attempts to automatically fix the most recent error by
generating and applying a code fix. If buggy can find the relevant file
lines, it will modify the lines directly. Regardless, it will print the
proposed fix out to the console.
}
}
\examples{
\dontrun{
# Attach the error handler at the start of your session:
buggy_enable()

# Code that will error:
sum(1, "n")

# If an error occurs, you'll get interactive links to explain or fix
# Alternatively, you can call these functions directly:
buggy_explain()
buggy_fix()
}

}
