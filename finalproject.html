<div class="wrap">

  <section class="hero">
    <div style="flex:1 1 auto;">
      <h1>Final Project: CareTrace — A Consequence-Aware Neurosymbolic AI Agent for Pediatric Triage</h1>

      <p>
        We will build a working neurosymbolic AI agent that supports after-hours pediatric triage by producing
        a safe, actionable plan a caregiver can follow <em>tonight</em>, along with clear thresholds for when escalation
        is necessary.
      </p>

      <p>
        <em>Scenario (one sentence):</em> An after-hours caregiver consults the agent about a sick child (e.g., fever,
        vomiting, abdominal discomfort, low urine output) and needs an evidence-backed overnight plan plus explicit
        escalation criteria (urgent care vs ER).
      </p>
    </div>
  </section>

  <section>
    <h2>Introduction</h2>

    <p>
      This final project is a group project (teams of three). Our goal is to engineer an agent that is not merely
      “helpful in conversation,” but <em>trustworthy in high-consequence decision support</em>. In pediatric triage,
      the cost of a false negative can be serious, and caregivers often seek reassurance under time pressure and uncertainty.
      A trustworthy agent must therefore provide: (i) authoritative knowledge, (ii) explicit practice guidance, and
      (iii) calibrated judgment context—while avoiding information overload.
    </p>

    <p>
      In this project, triage means assigning the situation to exactly one disposition:
    </p>
    <ul>
      <li><strong>Emergency escalation</strong> (ER / emergency services) for conditions that may be time-critical</li>
      <li><strong>Same-day evaluation</strong> (urgent care / pediatrician same-day) for significant but stable symptoms</li>
      <li><strong>Routine follow-up</strong> (next-day pediatrician / telehealth) for non-urgent issues with safety-netting</li>
    </ul>

    <p>
      We will explicitly test the neurosymbolic hypothesis: combining structured clinical knowledge (SNOMED-backed concepts),
      executable practice logic (guideline-style rules), and controlled use of context priors can produce decisions that are
      more stable, auditable, and actionable than generation alone.
    </p>
  </section>

  <section>
    <h2>Required System Capabilities</h2>

    <p>
      To function effectively as a clinical triage tool, our system will provide the following core capabilities:
    </p>

    <ul>
      <li>
        <strong>Translate the caregiver voice into canonical clinical meaning.</strong>
        We will map free-form descriptions to structured case fields and canonical concepts (SNOMED IDs where appropriate),
        so paraphrases collapse to the same clinical representation.
      </li>

      <li>
        <strong>Recognize clinical significance and missingness.</strong>
        We will determine which details are decision-critical (e.g., hydration/urination, alertness, breathing effort),
        and we will drive targeted follow-up questions when required information is missing.
      </li>

      <li>
        <strong>Uphold established safety standards as executable practice logic.</strong>
        We will encode a scoped triage protocol as rules: escalation triggers, required checks (“must-ask”), and
        hard gates (“must-not-do”), including medication contraindications under specific conditions.
      </li>

      <li>
        <strong>Provide a verifiable rationale with an authority chain.</strong>
        We will generate a concise clinician-style explanation grounded in: (i) recognized concepts,
        (ii) the specific rule trace that fired, and (iii) authoritative reference artifacts (e.g., a curated dosing table
        tied to formulation + weight). The goal is not a narrative, but an auditable decision artifact.
      </li>
    </ul>
  </section>

  <section>
    <h2>Multi-Agent System Architecture</h2>

    <p>
      We will implement the system as a collaborative workflow where specialized agents handle distinct responsibilities.
      The emphasis is on <em>disciplined state</em> and <em>bounded outputs</em> rather than open-ended chat.
    </p>

    <ul>
      <li>
        <strong>Interpretation Agent (LLM)</strong>:
        Extracts structured fields from caregiver text, normalizes key mentions to candidate clinical concepts, and asks the next
        highest-value follow-up questions when the protocol requires missing information.
      </li>

      <li>
        <strong>Knowledge Retrieval Agent (KG)</strong>:
        Queries the team’s scoped Neo4j clinical graph to canonicalize meaning (concept IDs, hierarchy/IS_A),
        retrieve minimal supporting relationships, and supply an evidence bundle used for decision + explanation.
      </li>

      <li>
        <strong>Safety Logic Agent (Symbolic)</strong>:
        Executes triage and safety rules deterministically (obligations, contraindication gates, escalation triggers),
        and produces a rule trace that can be inspected and tested.
      </li>

      <li>
        <strong>Authority Agent (Medication / Reference Knowledge)</strong>:
        Computes exact medication recommendations only when required inputs are present (e.g., weight + formulation),
        and ties the output to a named reference artifact (e.g., dosing table row / constraint).
      </li>

      <li>
        <strong>Context Agent (Judgment Priors)</strong>:
        Injects “what’s going around” style priors from a provided/synthetic surveillance feed as explicitly labeled context,
        used to prioritize questions and frame likelihoods—never to override safety gates.
      </li>

      <li>
        <strong>Explanation Agent</strong>:
        Produces a caregiver-facing summary that is concise and actionable: tonight plan, go-now thresholds, and a short
        rationale grounded in the evidence bundle + rule trace + authority artifacts (not invented citations).
      </li>

      <li>
        <strong>Orchestration Agent</strong>:
        Coordinates the workflow as a stateful process (screen red flags → stabilize → dose (if allowed) → safety-net plan),
        preventing information bombardment and ensuring a consistent interaction pattern.
      </li>
    </ul>
  </section>

  <section>
    <h2>Technical Stack</h2>

    <p>We will implement our agents using a specialized Neurosymbolic AI stack:</p>

    <ul>
      <li><strong>Python</strong>: primary implementation environment for agent logic and integration</li>
      <li><strong>LLM API (GPT-class or equivalent)</strong>: language understanding, structured extraction, follow-up question generation, explanation drafting</li>
      <li><strong>LangGraph</strong>: orchestration as a stateful workflow graph with explicit agent transitions and shared state</li>
      <li><strong>Neo4j AuraDB</strong>: graph database storing and querying the scoped SNOMED-backed clinical substrate</li>
      <li><strong>PyDatalog</strong>: executable logic for deterministic triage rules, contraindication gates, and decision traces</li>
      <li><strong>Snowstorm / FHIR terminology endpoints</strong>: public terminology access used during curation to validate and label SNOMED concepts</li>
      <li><strong>Authority artifacts</strong>: a small curated dosing/contraindication reference (table/JSON) and a small local context feed (synthetic or provided)</li>
    </ul>
  </section>

  <section>
    <h2>Project Scope and Bounded Context</h2>

    <p>
      To keep the project realistic and implementable, we will work in a bounded context. Each team will choose a single
      pediatric presenting complaint cluster (e.g., fever + GI symptoms, cough/breathing concern, ear pain/URI), and will
      implement a scoped protocol and a scoped clinical knowledge substrate. Scope discipline is a core requirement for safety.
    </p>

    <ul>
      <li><strong>Bounded clinical substrate</strong>: a limited SNOMED-backed mini-KG relevant to the chosen complaint</li>
      <li><strong>Bounded protocol</strong>: a small set of executable rules (must-ask fields, escalation triggers, medication gates)</li>
      <li><strong>Bounded context priors</strong>: a small surveillance-style feed used only as labeled context, not as certainty</li>
      <li><strong>Bounded output</strong>: the agent must produce a short, decisional plan (not a long differential)</li>
    </ul>
  </section>

  <section>
    <h2>Baseline Comparison</h2>

    <p>
      We will compare our Neurosymbolic AI agent against a state-of-the-art LLM conversation baseline.
      The goal is to demonstrate, with concrete examples, where pure conversation can be confusing or falsely authoritative
      (especially around “local context” and “what guidelines say”), and how an explicit NeSy architecture delivers decisions
      with a verifiable authority chain and a reproducible trace.
    </p>
  </section>

</div>
