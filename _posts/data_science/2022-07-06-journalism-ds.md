---
title: "What Can Journalism Teach A Data Scientist? Part 1"
tags: Data_Science
---

## The 5 W's Of Journalism

>**Summary**: This article outlines steps and questions for a beginner Data Scientist to ask when putting a Exploratory Data Analysis together. The article highlights suggested areas of research that a new data scientist should be mindful of.

Being a scientist and biochemist for 15 years, I felt the desire to learn the field of Data Science. Growing mammalian cells, purifying proteins for vaccines and therapeutics, and working in biotech allowed me to learn statistical ideas such as factorial analysis and Design of Experiments, areas I enjoyed immensely. My past use and love of statistics made the transition an easy and logical step. 

Over the last several years, I have been using several on-line teaching sites to teach myself Data Science and increase my skills in Python, R, and SQL. Among the benefits of several on-line groups is building community and networking. I have found it helpful.

A journalist (who was teaching herself Data Science) I met on a learning platform started discussing the field. Her background was not statistics, so she asked several questions about Exploratory Data Analysis. The next several articles are offshoots from these conversations on Data Science.

To start, several questions were:

- Why is [Exploratory Data Analysis (EDA)](https://www.ibm.com/cloud/learn/exploratory-data-analysis) so important?
- [What should I be looking for?](https://www.ibm.com/cloud/learn/exploratory-data-analysis#toc-ibm-and-ex-cS-WKOfm)

On the <abbr title="U.S. Environmental Protection Agency ">EPA</abbr> website they have a great explanation complete with graphics. Paraphrasing,  they state:

>Exploratory Data Analysis (EDA) is an analysis approach that identifies general patterns in the data. These patterns include outliers and features of the data that might be unexpected.  
>[EPA Website](https://www.epa.gov/caddis-vol4/exploratory-data-analysis)

As I looked for commonalities between the two professions, the 5 W's of journalism popped into mind. Remember them?

1. [What](#what)
2. [Who](#who)
3. [When](#when)
4. [Where](#where)
5. [Why](#why)

I asked myself if the 5 W's of journalism could be useful to a journalist and a data scientist?

**YES**

Scientists and journalists both observe the world and collect data.

Both investigate a topic with skepticism hoping to tell a great story.

Journalists may interrogate and scrutinize their eye-witness interviews. They may analyze crime scene photographs for clues. They double-check the facts to ensure that their information is correct and up-to-date. Journalists even dig for new angles to better understand the issues involved. Then when the investigation is complete, they write up their findings for editorial review by their peers.

- Isn't this at its heart, the Scientific Method?

## The Scientific Method

<img src="\assets\img\scientific-method.png" alt="6 steps of the scientific method" width="600" height="300">

*Do journalists use something analogous?*

1. Ask a question
2. Observe the data
3. Generate a hypothesis
4. Query and experiment to test your theory/hypothesis
5. Analyze the results
6. State your conclusion(s)

**Note**: Whether you are a Data Analyst, Data Engineer, or Data Scientist, you are now working in the field of Data Science; therefore, I call all three scientists.

So, how can the 5 W's of journalism help us learn Data Science?

## What?

A clear and often simple question at the beginning can help steer your research.

- *What* question(s) are you interested in answering?

**Start Simple**. Asking small questions with a limited scope will make the exploration go more smoothly. When your variable of interest rises does your response also rise?

At the exploratory stage, it is common to ask whether there are correlations between variables and your target-response variable.

Remember, the journey of a thousand miles starts with one step.

After your questions have been well-thought-out, two questions come to my mind when I sum up *Exploratory Data Analysis*:

- *What* is wrong with your data? 
AND 
- *What* is right with your data?

**Ask yourself**:

- Do you have missing values?
- Do you have correct and consistent spelling, labels, and strings?
- Does your data come from a reputable source?
- Are the variables numbers, proportions, categories, or simply names?

As a scientist, you need to skeptically examine the positive and negative attributes of your data and record your observations.

## Who?

Often Data Scientists obtain their data from someone else. Ask yourself?

- *Who* prepared your data?

While journalists may reflect on conflicts of interest, a Data Scientist needs to consider bias and its sources.

**Consider investigating**:

- Confirmation Bias
- Sampling Bias,
- Selection Bias OR Self-selection Bias
- Omitted Variables Bias
- Observer Bias
- Funding Bias
- Response Bias

## When?

Are your measurements a snap-shot in time, or are the measurements ongoing and collected periodically? This leads us to the question:

- *When* was the data collected?

Was the data collected conscientiously every Monday from 8-5, or was the timing erratic?

If the data is not meant to cover vast periods but more of a snap-shot in time, **think about**:

- Blocking
- Nuisance Variables vs. Lurking Variables
- Completely Randomized Study Design
- Analysis of Variance (ANOVA)

If you are collecting measurements at the same interval every time? Then you may want to **explore**:

- Moving averages to smooth your data
- Seasonality
- Root Mean Squared Error
- Time Series Analysis
- ARIMA (autoregressive integrated moving average)

## Where?

*Where* was your data collected?

The classic example of **Where** being a problem is when you consider community polling. You are sent to the local supermarket to gather people's opinions on their political views. Was the supermarket you worked at in a poor, middle, or affluent neighborhood. Where were the interviews balanced, done with mostly men or women shoppers?

This type of bias is amusingly called *Convenience Bias*. Did you visit the supermarket that was conveniently in your area?

So do not forget the topic of Blocking. Wouldn't it be wise to choose supermarkets in a variety of neighborhoods with differing socio-economic strata.

**Consider Learning**:

- Convenience Bias
- Fisher's Exact Test
- Two Factor Design
- Designing Experiments (Design Of Experiment)
- Blocking
- Categorical Data Analysis

## Why?

The last **W** of journalism can be the hardest to tackle.

*Why* is your work important?

For the Data Journalist, Claire Miller, there are a number of areas that can make a good data story:

- Big, bigger, biggest (or small, smaller, smallest)
- Fastest growing, stalling, or being left behind
- Common vs. rare
- Hotspots and how we compare
- Correlations and connections
- Fact checks and explainers
- **AND WHY?**

## In conclusion

If the Five W's can help Journalists, then I feel Data Scientists can rely on these same questions to write tough, valuable stories for our clients and organizations.

---

### Resources

&#127775; - Represents Favorites

Try these *FREE* resources:

- &#127775;[Exploratory Data Analysis - IBM Cloud Learn Hub](https://www.ibm.com/cloud/learn/data-science)

- &#127775;[NIST Handbook of Statistical Methods](https://www.itl.nist.gov/div898/handbook/eda/section1/eda11.htm)

- &#127775;[OpenIntro Statistics](https://leanpub.com/os)

- [Introduction to Modern Statistics](https://leanpub.com/imstat)

- [Introductory Statistics with Randomization and Simulation](https://leanpub.com/isrs)

- [Design of Experiments](https://online.stat.psu.edu/stat503/)

---
