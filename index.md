---
layout: null
---

<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Neurosymbolic AI: Building Consequence-Aware Cognitive Agents</title>

  <style>
    :root{
      --text:#111;
      --muted:#444;
      --link:#0b57d0;
      --link-hover:#083a8c;
      --bg:#fff;
      --border:#e6e6e6;
      --card:#fafafa;
    }

    /* Reset: kill theme/browser oddities */
    * { box-sizing: border-box; }
    html, body { margin:0; padding:0; }
    body {
      background: var(--bg);
      color: var(--text);
      font-family: "Palatino Linotype", Palatino, Georgia, "Times New Roman", Times, serif;
      font-size: 16px;
      line-height: 1.65;
    }
    hr { display:none !important; }
    table, tr, td, th { border: 0 !important; }

    /* Layout */
    .wrap { max-width: 980px; margin: 0 auto; padding: 28px 18px 72px; }

    .hero {
      display:flex;
      gap:18px;
      align-items:flex-start;
      padding-bottom: 18px;
      border-bottom: 1px solid var(--border);
    }
    .hero img {
      width: 220px;
      max-width: 38vw;
      height: auto;
      display:block;
      border-radius: 12px;
    }

    h1 { font-size: 28px; line-height: 1.2; margin:0 0 8px 0; font-weight:700; }
    h2 { font-size: 18px; margin:0 0 10px 0; font-weight:700; }
    h3 { font-size: 16px; margin:18px 0 6px 0; font-weight:700; }

    p { margin: 10px 0; }
    .subtitle { margin:0 0 14px 0; color: var(--muted); }
    .note { margin:0; font-style: italic; color: var(--muted); }

    a { color: var(--link); text-decoration: none; }
    a:hover { color: var(--link-hover); text-decoration: underline; }

    .section { margin-top: 22px; padding-top: 18px; border-top: 1px solid var(--border); }
    .section:first-of-type { border-top: 0; padding-top: 0; margin-top: 18px; }

    ul { margin: 8px 0 0 0; padding-left: 18px; }
    li { margin: 6px 0; }

    .lecture {
      margin-top: 14px;
      padding: 14px 14px;
      border: 1px solid var(--border);
      border-radius: 12px;
      background: var(--card);
    }
    .lecture h3 { margin-top: 0; }
    .readings-title { margin: 10px 0 0 0; font-weight: 700; }

    .toc {
      display: flex;
      gap: 18px;
      flex-wrap: wrap;
      margin: 10px 0 0 0;
      padding: 0;
      list-style: none;
    }
    .toc li { margin: 0; }
    .toc a { display:inline-block; padding: 6px 10px; border:1px solid var(--border); border-radius: 999px; background:#fff; }

    /* Mobile */
    @media (max-width: 720px) {
      .hero { flex-direction: column; }
      .hero img { width: 220px; max-width: 70vw; }
      .toc { gap: 10px; }
    }
  </style>
</head>

<body>
  <main class="wrap">
    <div class="hero">
      <img src="images/nsai.png" alt="Neurosymbolic AI banner" />
      <div>
        <h2>Neurosymbolic AI: Building Consequence-Aware Cognitive Agents</h2>
        <i>
          This is an open-access resource for a subset (the course topics, specific readings, and lecture slides) of the course
          materials for DATASCI 290: Neurosymbolic AI: Building Consequence-Aware Cognitive Agents, offered at UC Berkeley Spring 2026.
          Lecture slides will be added progressively as we run through the Spring ’26 semester.
        </i>
        <a href="https://www.linkedin.com/in/naveenashish/">Naveen Ashish</a> (Instructor)
      </div>
    </div>

    <section class="section" id="course-description">
      <h2>Course Description</h2>
      <p>
        This course explores neurosymbolic artificial intelligence (AI), an emerging approach that integrates the
        statistical power of modern machine learning with the rigor and transparency of symbolic reasoning. While large
        language models excel at generating fluent responses, they often lack reliability, consistency, and grounding in
        verified knowledge. These limitations make them risky for use in domains such as healthcare, emergency response,
        and fact-checking, where errors or omissions can carry significant consequences. Neurosymbolic AI addresses these
        challenges by combining data-driven learning with explicit rules, logical inference, and structured knowledge to
        create AI systems that are both powerful and trustworthy.
      </p>
      <p>
        Designed for working professionals, this course equips students with the expertise to design and implement
        trustworthy cognitive agents. Participants will begin by exploring foundational theories of human reasoning,
        drawing on the work of Kahneman and Tversky on dual-process cognition and biases in judgment. Building on this
        foundation, the course dives into practical architectures for combining neural and symbolic components, with an
        emphasis on knowledge representation, logic programming, and deductive reasoning. Students will gain hands-on
        experience with modern frameworks, where they will learn to construct knowledge graphs, encode rules, and
        integrate large language models with symbolic verifiers. The course culminates in a team-based project where
        students develop an end-to-end neurosymbolic agent in a real-world domain, preparing them to critically assess
        and build next-generation AI solutions for high-consequence applications.
      </p>
    </section>

    <section class="section" id="quick-links">
      <h2>Quick Links</h2>
      <ul class="toc">
        <li><a href="#lecture-slides">Lecture Slides</a></li>
        <li><a href="#lectures">Lectures</a></li>
        <li><a href="#books">Books</a></li>
        <li><a href="https://datasciencey.github.io/datasci290-neurosymbolic-ai/finalproject.html">Final Project</a></li>
        <li><a href="https://github.com/datasciencey/datasci290-code">Lecture Notebooks &amp; Code Scaffolds</a></li>
      </ul>
    </section>

    <section class="section" id="books">
      <h2>Books</h2>
      <p>
        There isn't currently a textbook that provides good coverage of the topics of interest here. However, for some
        specific topics the following are good references:
      </p>
      <ul>
        <li><strong>Knowledge Graphs</strong> <a href="slides/Knowledge Graphs Book.pdf">Knowledge Graphs, Hogan et. al. (Chapter 2)</a></li>
        <li><strong>Datalog</strong> <a href="slides/Foundations of Databases Book.pdf">Foundations of Databases, Abiteboul, Hull &amp; Vianu (Chapter 12: Datalog)</a></li>
      </ul>
    </section>

    <section class="section" id="lecture-slides">
      <h2>Lecture Slides</h2>
      <ul>
        <li><strong>Lecture 1:</strong> <i>(Jan 5)</i> <a href="slides/DATASCI290_Lecture1.pdf">Introduction to Neurosymbolic AI and Consequence-Aware Cognitive Agents</a></li>
        <li><strong>Lecture 2:</strong> <i>(Jan 7)</i> <a href="slides/DATASCI290_Lecture2.pdf">Healthcare: A Compelling Need for Neurosymbolic AI Solutions</a></li>
        <li><strong>Lecture 3:</strong> <i>(Jan 12)</i> <a href="slides/DATASCI290_Lecture3.pdf">Trustworthiness, Cognitive Architectures, Language Agents</a></li>
        <li><strong>Lecture 4:</strong> <i>(Jan 14)</i> <a href="slides/DATASCI290_Lecture4.pdf">Can Knowledge Graphs Reduce Hallucinations in LLMs, and How So?</a></li>
        <li><strong>Lecture 5:</strong> <i>(Jan 21)</i> <a href="slides/DATASCI290_Lecture5.pdf">Knowledge Graphs: Foundations of Consequence-Aware AI Agents I</a></li>
        <li><strong>Lecture 6:</strong> <i>(Jan 26)</i> <a href="slides/DATASCI290_Lecture6.pdf">Knowledge Graphs: Foundations of Consequence-Aware AI Agents II</a></li>
        <li><strong>Lecture 7:</strong> <i>(Jan 28)</i> <a href="slides/DATASCI290_Lecture7.pdf">Final Project (CareTrace); Knowledge Graphs Lab Assignment; G-Retriever (Graph LLM)</a></li>
        <li><strong>Lecture 8:</strong> <i>(Feb 2)</i> <a href="slides/DATASCI290_Lecture8.pdf">Graph LLM: Algorithm Walkthrough; KG-RAG Inference: Implementation</a></li>
        <li><strong>Lecture 9:</strong> <i>(Feb 4)</i> <a href="slides/DATASCI290_Lecture9.pdf">Datalog: Let's get LOGICAL</a></li>
        <li><strong>Lecture 10:</strong> <i>(Feb 9)</i> <a href="https://github.com/datasciencey/datasci290-code/blob/main/Lecture%20Notebooks/Lecture%209:%20pyDatalog/Datalog%20Fundamentals.ipynb">Datalog Fundamentals (pyDatalog Notebook)</a></li>
        <li><strong>Lecture 11:</strong> <i>(Feb 11)</i> <a href="slides/DATASCI290_Lecture11.pdf">Neurosymbolic lowering methods: inference-time, deep integration of knowledge graphs with LLMs</a></li>
        <li><strong>Lecture 12:</strong> <i>(Feb 18)</i> <a href="https://datahub.berkeley.edu/hub/user-redirect/git-pull?repo=https%3A%2F%2Fgithub.com%2Fdatasciencey%2Fdatasci290-code&branch=main&urlpath=lab%2Ftree%2Fdatasci290-code%2FCode+Scaffolds%2FKG+LLM+Fusion%2FKnowledge+Fusion+by+Rewiring+Attention.ipynb">Knowledge Fusion by Rewiring Attention: Implementation (Teaching Notebook)</a> and the accompanying <a href="slides/DATASCI290_Lecture12.pdf">code explanation slides.</a> </li>
        <li><strong>Lecture 13:</strong> <i>(Feb 23)</i> <a href="slides/DATASCI290_Lecture13.pdf">Model Reasoning: Capabilities, Limitations, Reasonable Expectations</a></li>
        <li><strong>Lecture 14:</strong> <i>(Feb 25)</i> <a href="slides/DATASCI290_Lecture14.pdf">(How) Do Models Reason?</a></li>
        <li><strong>Lecture 15:</strong> <i>(Mar 2)</i> <a href="slides/DATASCI290_Lecture15.pdf">Graph Embeddings: Bridging Structured Knowledge and Neural Space</a>. Please also see the <a href="https://datahub.berkeley.edu/hub/user-redirect/git-pull?repo=https%3A%2F%2Fgithub.com%2Fdatasciencey%2Fdatasci290-code&branch=main&urlpath=lab%2Ftree%2Fdatasci290-code%2FLecture+Notebooks%2FLecture+15%2FNode2Vec.ipynb">Node2Vec</a> and <a href="https://datahub.berkeley.edu/hub/user-redirect/git-pull?repo=https%3A%2F%2Fgithub.com%2Fdatasciencey%2Fdatasci290-code&branch=main&urlpath=lab%2Ftree%2Fdatasci290-code%2FLecture+Notebooks%2FLecture+15%2FTransE_PyKeen.ipynb">TransE (in PyKEEN)</a> illustration notebooks </li>       </ul>
        <li><strong>Lecture 16:</strong> <i>(Mar 4)</i> <a href="slides/DATASCI290_Lecture16.pdf">FROM Clinical Guidelines TO Computable Logics FOR Neurosymbolic AI</a></li>
        <li><strong>Lecture 17:</strong> <i>(Mar 9)</i> <a href="slides/DATASCI290_Lecture17.pdf">LLMs, LRMs, and Reasoning: In the Domain of Medical AI</a></li>
         <li><strong>Lecture 18:</strong> <i>(Mar 11)</i> <a href="slides/DATASCI290_Lecture18.pdf"> Structuring Reasoning in LLMs, with Logic</a></li>
          <li><strong>Lecture 19:</strong> <i>(Mar 16)</i> <a href="slides/DATASCI290_Lecture19.pdf">The Science of Safe Clinical AI: Conjoining Neural Inference with Symbolic Control </a></li>
           <li><strong>Lecture 20:</strong> <i>(Mar 18)</i> <a href="slides/DATASCI290_Lecture20.pdf">Final Project Introduction: CareTrace - Building a Trustworthy Pediatric Care AI Agent, using a Neurosymbolic Approach</a></li>
    </section>

    <section class="section" id="lectures">
      <h2>Lectures</h2>

      <div class="lecture" id="lecture-01">
        <h3>Lecture 1: AI Agents, with Consequences</h3>
        <p>
          Establish why probabilistic accuracy alone is insufficient when decisions carry serious consequences.
          Demonstrate, through concrete examples (healthcare, safety-critical systems, regulatory domains), how LLM failures arise from missing constraints,
          weak traceability, and unclear accountability. Motivate the core requirement for explainability, consistency, and verifiable control in systems
          that affect human safety, legal compliance, and critical infrastructure.
        </p>
        <p class="readings-title">Readings</p>
        <ul>
          <li>Sheth, A., Roy, S., &amp; Gaur, M. (2023). <em>Neurosymbolic AI—Why, What, and How</em>. IEEE Intelligent Systems, 38(6), 14–26.</li>
        </ul>
      </div>

      <div class="lecture" id="lecture-02">
        <h3>Lecture 2: Engineering Consequence-Aware Cognitive Agents</h3>
        <p>
          Introduce a reference architecture for consequence-aware agents: perception → structured knowledge → rules/constraints → checking/repair → action.
          Position neurosymbolic AI as an engineering paradigm that combines neural fluency (pattern recognition, language understanding) with explicit knowledge
          (facts, ontologies, provenance) and verifiable control (rules, constraints, formal checks). Show how the architecture addresses the failures from
          Lecture 1 and frames the technical components the course will build.
        </p>
        <p class="readings-title">Readings</p>
        <ul>
          <li>Mehta, N., Hartvigsen, T., &amp; Koenecke, A. (2024). <em>A future role for health applications of large language models depends on regulators enforcing safety standards</em>. The Lancet Digital Health, 6(8), e585–e586.</li>
          <li>Gaur, M., &amp; Sheth, A. (2024). <em>Building trustworthy NeuroSymbolic AI Systems: Consistency, reliability, explainability, and safety</em>. AI Magazine, 45(1), 14–26.</li>
          <li>Kahneman, D., &amp; Tversky, A. (1974). <em>Judgment under uncertainty: Heuristics and biases</em>. Science, 185(4157), 1124–1131.</li>
        </ul>
      </div>

      <div class="lecture" id="lecture-03">
        <h3>Lecture 3: Trustworthiness, Cognitive Architectures, Language Agents</h3>
        <p>
          Modern LLMs excel at fast, fluent responses, but high-consequence domains demand deliberate, verifiable reasoning.
          This lecture translates dual-process cognitive theory into the course’s reference architecture: perception → structured knowledge → rules/constraints → verification → action.
          We examine failure modes when any layer is absent, using examples from healthcare and finance to show why each component is essential and why structured knowledge sits at the core.
        </p>
        <p class="readings-title">Readings</p>
        <ul>
          <li>Sumers, T. R., Ho, M. K., Hawkins, R. D., et al. (2023). <em>Cognitive Architectures for Language Agents (CoALA)</em>. Transactions on Machine Learning Research.</li>
        </ul>
      </div>

      <div class="lecture" id="lecture-04">
        <h3>Lecture 4: The Value of Structured Knowledge (Knowledge Graphs)</h3>
        <p>
          What form should structured knowledge take? This lecture builds the empirical case for knowledge graphs by enumerating requirements:
          explicit representation, compositional structure, constraint binding, traceability, evolvability, and queryability.
          We review evidence that structured knowledge reduces hallucinations, enables multi-hop reasoning, and supports accountability where alternatives like embeddings-only or unstructured text fall short.
        </p>
        <p class="readings-title">Readings</p>
        <ul>
          <li>Agrawal, G., Kumarage, T., Alghamdi, Z., &amp; Liu, H. (2024). <em>Can Knowledge Graphs Reduce Hallucinations in LLMs?: A Survey</em>. NAACL 2024, 3947–3960.</li>
          <li>Li, H., Appleby, G., Alperin, K., Gomez, S. R., &amp; Suh, A. (2025). <em>Mitigating LLM Hallucinations with Knowledge Graphs: A Case Study</em>.</li>
        </ul>
      </div>

      <div class="lecture" id="lecture-05">
        <h3>Lecture 5: Knowledge Graphs</h3>
        <p>
          A knowledge graph represents facts as entities connected by labeled relationships, which is fundamentally different from storing information in tables or documents.
          This lecture shows what graphs look like, how they capture networks of connections between facts, and why that structure matters for representing knowledge that agents can query and reason over.
          We connect the dual-process framework to concrete implementation choices, motivating graphs as an explicit, verifiable substrate.
        </p>
        <p class="readings-title">Readings</p>
        <ul>
          <li>Hogan, A., Blomqvist, E., Cochez, M., d’Amato, C., Melo, G. D., Gutierrez, C., Kirrane, S., Gayo, J. E. L., Navigli, R., &amp; Neumaier, S. (2021). <em>Knowledge Graphs</em>. Springer.</li>
        </ul>
      </div>

      <div class="lecture" id="lecture-06">
        <h3>Lecture 6: Why Consequence-Aware Agents Need Knowledge Graphs</h3>
        <p>
          Accountable agents must explain their reasoning, verify facts against trusted sources, and trace how they reached conclusions.
          This lecture shows why knowledge graphs are central: their explicit structure enables systematic verification, their relationships support reasoning chains, and their provenance mechanisms represent where facts came from.
          Without structured knowledge in graph form, agents may guess plausibly but cannot justify decisions with auditable evidence.
        </p>
        <p class="readings-title">Readings</p>
        <ul>
          <li>Balog et al. (2024). <em>Knowledge Graphs Meet Multi-Modal Learning: A Comprehensive Survey</em>. arXiv:2402.05391.</li>
        </ul>
      </div>

      <div class="lecture" id="lecture-07">
        <h3>Lecture 7: Introducing Knowledge Graph RAG and Querying Basics</h3>
        <p>
          Language models need external knowledge to answer questions accurately, but context windows cannot fit entire knowledge bases.
          Knowledge Graph RAG solves this by retrieving only the relevant facts from a graph and injecting them into the prompt as grounded context.
          This lecture shows the full retrieval loop: entity detection, graph navigation, subgraph extraction, and packaging evidence for generation.
        </p>
        <p class="readings-title">Readings</p>
        <ul>
          <li>He et al. (2024). <em>G-Retriever: Retrieval-Augmented Generation for Textual Graph Understanding and Question Answering</em>. NeurIPS 2024.</li>
          <li>Edge et al. (2024). <em>From Local to Global: A Graph RAG Approach to Query-Focused Summarization</em>. Microsoft Research.</li>
        </ul>
      </div>

      <div class="lecture" id="lecture-08">
        <h3>Lecture 8: Knowledge Graph RAG in Practice</h3>
        <p>
          Building on the retrieval mechanics from Lecture 7, this lecture walks through end-to-end examples showing how questions become answers through graph-grounded reasoning.
          The agent identifies relevant entities, retrieves connected facts, and generates responses that cite provenance.
          The goal is operational: systems that justify answers with explicit evidence rather than opaque pattern matching.
        </p>
        <p class="readings-title">Readings</p>
        <ul>
          <li>Zhu, X., Xie, Y., Liu, Y., Li, Y., &amp; Hu, W. (2025). <em>Knowledge Graph-Guided Retrieval Augmented Generation</em>. NAACL 2025.</li>
          <li>Zhang, Q., Dong, J., Chen, H., Zha, D., Yu, Z., &amp; Huang, X. (2024). <em>KnowGPT: Knowledge graph based prompting for large language models</em>. NeurIPS 37, 6052–6080.</li>
        </ul>
      </div>

      <div class="lecture" id="lecture-09">
        <h3>Lecture 9: Datalog Fundamentals</h3>
        <p>
          Introduce symbolic logic for neurosymbolic systems using Datalog as a database-oriented logic language.
          Cover extensional vs intensional databases (EDB/IDB), rules, safety, recursion, and fixpoint semantics.
          Motivate why Datalog is a natural bridge between knowledge graphs (facts) and executable rules (constraints, policies, clinical logic).
        </p>
        <p class="readings-title">Readings</p>
        <ul>
          <li>Abiteboul, S., Hull, R., &amp; Vianu, V. (1995). <em>Foundations of Databases</em>. Addison-Wesley. (selected chapters/sections)</li>
        </ul>
      </div>

      <div class="lecture" id="lecture-10">
        <h3>Lecture 10: Programming with Datalog Using pyDatalog</h3>
        <p>
          Hands-on implementation of Datalog concepts in Python using pyDatalog. Implement facts and rules, recursion, negation patterns (where supported),
          and explainable query outputs. Position pyDatalog as a lightweight “symbolic engine” that can be invoked by an agent and grounded against KG facts.
        </p>
        <p class="readings-title">References</p>
        <ul>
          <li>pyDatalog documentation and tutorials</li>
        </ul>
      </div>

      <div class="lecture" id="lecture-11">
        <h3>Lecture 11: Knowledge Graph-Guided Attention</h3>
        <p>
          Introduce “neurosymbolic lowering” methods that integrate structured knowledge directly into model computation at inference time (beyond prompt injection).
          Survey approaches including entity-aware attention, graph-augmented transformers, and constrained attention masks.
          Emphasize when deep integration helps (faithfulness, long-range structured dependencies) and where it adds complexity (alignment, maintenance, debugging).
        </p>
        <p class="readings-title">Readings</p>
        <ul>
          <li>Zhai, S., Qi, G., Wang, Y., &amp; Meng, Y. (2025). <em>Knowledge Fusion via Bidirectional Information Aggregation</em>. arXiv preprint arXiv:2507.08704.</li>
        </ul>
      </div>

      <div class="lecture" id="lecture-12">
        <h3>Lecture 12: Knowledge Graph-Guided Attention Implementation</h3>
        <p>
          Implementation-focused walkthrough of a KG-guided attention pipeline: data preparation, graph-to-model alignment (entity linking / concept IDs),
          attention modification hooks, debugging strategies, and evaluation. Connect the engineering steps to the conceptual promise: moving from “KG in the prompt”
          to “KG in the computation.”
        </p>
      </div>

      <div class="lecture" id="lecture-13">
        <h3>Lecture 13: Reasoning Capabilities and Limitations in Modern LLMs</h3>
        <p>
          Examine what reasoning patterns emerge naturally from frontier LLMs (via prompting, self-verification, planning) versus what requires external structure to guarantee correctness.
          Focus on failure modes in precise logic, long-horizon planning, and verifiable factuality. Use these boundaries to motivate hybrid architectures:
          LLMs for proposal generation and symbolic/graph systems for checking, enforcing constraints, and certifying outputs.
        </p>
        <p class="readings-title">Readings</p>
        <ul>
          <li>Mirzadeh et al. (2025). <em>GSM-Symbolic: Understanding the Limitations of Mathematical Reasoning in Large Language Models</em>. ICLR 2025.</li>
          <li>Valmeekam et al. (2025). <em>On the Self-Verification Limitations of Large Language Models on Reasoning and Planning Tasks</em>. ICLR 2025.</li>
          <li>Kambhampati, S., Stechly, K., & Valmeekam, K. (2025). <em>(How) Do reasoning models reason?.</em> Annals of the New York Academy of Sciences, 1547(1), 33-40.</li>
        </ul>
      </div>

      <div class="lecture" id="lecture-14">
        <h3>Lecture 14: Graph Embeddings and Representation Learning</h3>
        <p>
          Introduce embedding-based representations for graphs and how they complement symbolic representations. Cover random-walk methods (DeepWalk/node2vec),
          knowledge graph embeddings (TransE/RotatE-style families), and practical toolchains such as PyKeen. Discuss how embeddings support retrieval, similarity search,
          and prediction, and how to maintain accountability (link embeddings back to explicit facts and provenance). We will also take look at ClinVec (embeddings of clinical codes).
        </p>
      </div>

<!-- Lecture 15 -->
<div class="lecture" id="lecture-15">
  <h3>Lecture 15: Graph Embeddings: Bridging Structured Knowledge and Neural Space</h3>
  <p>
    Statistical learning methods capture correlations in data but struggle to represent structured relationships,
    constraints, and explicit reasoning chains required in domains like medicine. This lecture revisits graph
    embeddings as a bridge between symbolic knowledge graphs and neural models. We review Node2Vec for learning
    node representations via biased random walks and TransE for modeling relations as vector translations in
    knowledge graphs, with a brief PyKEEN code illustration. The lecture also highlights the limitations of
    embeddings for representing logical rules and decision constraints, motivating the need for neurosymbolic
    approaches.
  </p>
  <p class="readings-title">Readings</p>
  <ul>
    <li>Grover, A., &amp; Leskovec, J. (2016). <em>node2vec: Scalable feature learning for networks</em>. In Proceedings of the 22nd ACM SIGKDD International Conference on Knowledge Discovery and Data Mining.</li>
    <li>Bordes, A., Usunier, N., Garcia-Duran, A., Weston, J., &amp; Yakhnenko, O. (2013). <em>Translating embeddings for modeling multi-relational data</em>. Advances in Neural Information Processing Systems.</li>
  </ul>
</div>

<!-- Lecture 16 -->
<div class="lecture" id="lecture-16">
  <h3>Lecture 16: From Clinical Guidelines to Computable Decision Logic for Neurosymbolic AI</h3>
  <p>
    Clinical Practice Guidelines (CPGs) encode evidence-based medical recommendations but are typically written
    in narrative form and difficult to operationalize computationally. This lecture introduces approaches for
    converting guidelines into structured decision logic that machines can reason over. We examine Decision
    Knowledge Graphs and the Vadalog reasoning framework as two different approaches for representing guideline
    knowledge and patient pathways. The lecture highlights how neurosymbolic systems can combine knowledge graphs,
    rules, and machine learning to support explainable clinical decision support.
  </p>
  <p class="readings-title">Readings</p>
  <ul>
    <li>Kandula, Vasudhan Varma, &amp; Bhattacharyya, Pushpak. (2023). <em>Decision knowledge graphs: Construction of and usage in question answering for clinical practice guidelines</em>.</li>
    <li>Dwyer, Owen P., Baldazzi, Teodoro, Davies, Jim, Sallinger, Emanuel, &amp; Vlad, Adriano. (2023). <em>Reasoning over health records with Vadalog: a rule-based approach to patient pathways</em>.</li>
  </ul>
</div>

<!-- Lecture 17 -->
<div class="lecture" id="lecture-17">
  <h3>Lecture 17: Medical Reasoning</h3>
  <p>
    Medical reasoning requires structured diagnostic thinking, verification of intermediate conclusions, and the
    ability to justify decisions. This lecture examines how modern LLM reasoning techniques, such as chain-of-thought,
    intermediate reasoning tokens, and verification steps, attempt to approximate these processes. We analyze the
    reasoning behavior of medical LLMs using the “Critique of Impure Reason” framework and examine how systems like
    AMIE incorporate structured evaluation loops for diagnostic dialogue. The lecture also introduces the concept of
    verifiable reasoning tasks designed to train LLMs to produce reasoning steps that can be checked.
  </p>
  <p class="readings-title">Readings</p>
  <ul>
    <li>Sim, Shamus Zi Yang, &amp; Chen, Tyrone. (2025). <em>Critique of impure reason: Unveiling the reasoning behaviour of medical large language models</em>. eLife.</li>
    <li>Tu, Tao, Schaekermann, Mike, Palepu, Anil, Saab, Khaled, Freyberg, Jan, Tanno, Ryutaro, Wang, Amy, et al. (2025). <em>Towards conversational diagnostic artificial intelligence</em>. Nature.</li>
    <li>Chen, Junying, Cai, Zhenyang, Ji, Ke, Wang, Xidong, Liu, Wanlong, Wang, Rongsheng, &amp; Wang, Benyou. (2025). <em>Towards Medical Complex Reasoning with LLMs through Medical Verifiable Problems</em>. Findings of ACL.</li>
  </ul>
</div>

<!-- Lecture 18 -->
<div class="lecture" id="lecture-18">
  <h3>Lecture 18: Integrating Logic and LLMs</h3>
  <p>
    This lecture surveys emerging approaches for integrating symbolic logic with large language models to improve
    reasoning reliability. Topics include graph-based representations of reasoning chains, synthetic logic training
    corpora for improving logical consistency, and logic-augmented generation frameworks that combine symbolic
    reasoning structures with neural text generation. The goal is to combine the expressive capabilities of LLMs
    with the correctness guarantees of formal reasoning systems.
  </p>
  <p class="readings-title">Readings</p>
  <ul>
    <li>Alotaibi, F., Kulkarni, A., &amp; Zhou, D. (2024). <em>Graph of logic: Enhancing LLM reasoning with graphs and symbolic logic</em>. IEEE BigData.</li>
    <li>Morishita, T., Morio, G., Yamaguchi, A., &amp; Sogawa, Y. (2024). <em>Enhancing reasoning capabilities of LLMs via principled synthetic logic corpus</em>. NeurIPS.</li>
    <li>Xiao, Yilin, Zhou, Chuang, Zhang, Yujing, Zhang, Qinggang, Dong, Su, Chen, Shengyuan, Yang, Chang, &amp; Huang, Xiao. (2025). <em>LAG: Logic-augmented generation from a Cartesian perspective</em>.</li>
  </ul>
</div>

<!-- Lecture 19 -->
<div class="lecture" id="lecture-19">
  <h3>Lecture 19: Neural Proposes, Symbolic Disposes: The Science of Diagnostic Reasoning for CareTrace</h3>
  <p>
    This lecture presents the architectural principle underlying CareTrace: neural models generate candidate interpretations
    and diagnostic hypotheses, while symbolic mechanisms determine which conclusions are justified. We examine diagnostic
    reasoning as a structured process involving abductive hypothesis generation, inductive pattern recognition, deductive
    rule enforcement, and sequential information gathering under uncertainty. The lecture focuses on defining the boundary
    between hypothesis proposal and decision authorization, ensuring that diagnostic conclusions are supported by evidence
    and consistent with clinical constraints. The resulting reasoning pipeline enables clinical AI systems whose outputs are
    verifiable, traceable, and safe for decision support.
  </p>
</div>

<!-- Lecture 20 -->
<div class="lecture" id="lecture-20">
  <h3>Lecture 20: Putting It All Together: Designing Neurosymbolic Systems</h3>
  <p>
    This lecture synthesizes the major components developed throughout the course into a coherent neurosymbolic architecture.
    We revisit the progression from System-1 statistical models to System-2 symbolic reasoning, examining how knowledge graphs,
    KG-RAG pipelines, rule-based reasoning (Datalog), and logic-augmented LLM workflows can be combined in a single system.
    We also connect graph embeddings, large reasoning models, and clinical knowledge sources such as clinical practice guidelines
    to show how learning, knowledge representation, and formal reasoning interact. The lecture concludes with design principles
    for building trustworthy neurosymbolic systems that integrate neural proposal mechanisms with symbolic verification and
    structured knowledge.
  </p>
</div>

<!-- Lecture 21 -->
<div class="lecture" id="lecture-21">
  <h3>Lecture 21: Building Multi-Agent Systems</h3>
  <p>
    Production neurosymbolic systems typically require coordination between multiple specialized components. This lecture
    introduces the architecture of multi-agent AI systems composed of perception agents, retrieval agents, reasoning agents,
    verification agents, and action agents. We examine LangGraph as a framework for orchestrating these agents, maintaining
    shared state, and integrating external systems such as knowledge graphs and reasoning engines into robust pipelines.
  </p>
  <p class="readings-title">Readings</p>
  <ul>
    <li>LangGraph documentation</li>
  </ul>
</div>

<!-- Lecture 22 -->
<div class="lecture" id="lecture-22">
  <h3>Lecture 22: Final Project Workshop - CareTrace</h3>
  <p>
    This project-focused lecture translates the full neurosymbolic architecture into the CareTrace clinical reasoning system.
    Students will define the knowledge graph schema, outline data ingestion pipelines, identify guideline rules and reasoning
    constraints, and design a multi-agent workflow for decision generation and verification. The lecture also discusses
    evaluation criteria including correctness, safety, traceability, and evidence-backed outputs.
  </p>
</div>

<!-- Lecture 23 -->
<div class="lecture" id="lecture-23">
  <h3>Lecture 23: CareTrace Q&amp;A</h3>
  <p>
    Open discussion session for the CareTrace project. Students may ask questions about system architecture, knowledge graph
    design, rule modeling, LLM integration, evaluation strategies, and implementation challenges. The goal is to help teams
    refine their project plans and ensure that systems demonstrate clear reasoning, transparency, and verifiable outputs.
  </p>
</div>

<!-- Lecture 24 -->
<div class="lecture" id="lecture-24">
  <h3>Lecture 24: Guidance on Paper Presentations</h3>
  <p>
    This lecture provides guidance on how to critically read and present research papers in neurosymbolic AI and reasoning
    systems. Topics include identifying the research problem, understanding experimental methodology, interpreting evaluation
    metrics, and explaining technical contributions clearly. Students will also discuss how to connect individual papers to
    broader themes in reasoning, verification, and trustworthy AI.
  </p>
  <p class="readings-title">Readings</p>
  <ul>
    <li>Wang et al. (2023). <em>Self-Consistency Improves Chain of Thought Reasoning in Language Models</em>. ICLR 2023.</li>
    <li>Dhuliawala et al. (2024). <em>Chain-of-Verification Reduces Hallucination in Large Language Models</em>. ACL 2024 Findings.</li>
    <li>Ganguly et al. (2024). <em>Proof of Thought: Neurosymbolic Program Synthesis Allows Robust and Interpretable Reasoning</em>. NeurIPS 2024 Workshop on System-2 Reasoning.</li>
    <li>Besta et al. (2024). <em>Graph of Thoughts: Solving elaborate problems with large language models</em>. PVLDB 17(10), 2411–2425.</li>
    <li>Sun et al. (2024). <em>Think-on-Graph: Deep and Responsible Reasoning of Large Language Model on Knowledge Graph</em>. ICLR 2024.</li>
    <li>Hubert et al. (2025). <em>Olympiad-level formal mathematical reasoning with reinforcement learning (AlphaProof)</em>. Nature.</li>
    <li>Trinh et al. (2024). <em>AlphaGeometry: Solving olympiad geometry without human demonstrations</em>. Nature 630, 1042–1049.</li>
    <li>Li et al. (2025). <em>Proving Olympiad Inequalities by Synergizing LLMs and Symbolic Reasoning</em>. ICLR 2025.</li>
    <li>Balcan, Maria-Florina, Blum, Avrim, Li, Zhiyuan, &amp; Sharma, Dravyansh. (2025). <em>On learning verifiers for chain-of-thought reasoning</em>. arXiv preprint arXiv:2505.22650.</li>
    <li>Sikka, Varin, &amp; Sikka, Vishal. (2025). <em>Hallucination stations: On some basic limitations of transformer-based language models</em>. arXiv preprint arXiv:2507.07505.</li>
    <li>Domingos, P. (2025). <em>Tensor Logic: The Language of AI</em>. arXiv preprint arXiv:2510.12269.</li>
  </ul>
</div>  

    </section>

  </main>
</body>
</html>
