## An immune-related gene prognostic index for head and neck squamous cell carcinoma



### Introduction

the paper *An immune-related gene prognostic index for head and neck squamous cell carcinoma* showed multiple bioinformatics methods in data analysis. 

I am going to reproduce all the results in this paper to be familiar with the bioinformatics skills.

### Workflow

![](https://raw.githubusercontent.com/HuaZou/Image_Host/main/img/20210817170908.png)



### Procedures

#### Step1: Download Data

The Datasets, containing patients' information, expression profiles and database were published online

#### Step2: Differential Genes

DEGs were identified by limma package with Ad.Pvalue < 0.05 & |log2FC| > 0.5

#### Step3: Immune-related DEGs

The overlap between aforementioned DEGs and immune-related gene from InnateDB or ImmPort database were acquired 

#### Step4: Hub genes

To identify hub genes, WGCNA were performed

#### Step5: Immune-related gene prognostic index

Multivariate Cox regression analysis to identify the survival hub genes; Calculate prognostic score by the expression values and coefficient of Cox model



### Structure of Project

```bash
TCGA_HNSC
├── Assay
│   ├── 00.PrecessData
│   │   ├── GSE65858
│   │   └── TCGA_HNSC
│   ├── 01.Differential
│   │   ├── DEA_visualization.Rmd
│   │   ├── DEA_visualization.nb.html
│   │   ├── DifferentialAnalysis.Rmd
│   │   └── DifferentialAnalysis.nb.html
│   └── 02.ImmuneHubGenes
│       ├── HubGenes.Rmd
│       ├── HubGenes.nb.html
│       ├── ImmuneGenes.Rmd
│       └── ImmuneGenes.nb.html
├── README.md
├── Result
│   ├── Differential
│   │   ├── HNSC_limma_ImmuneGene.csv
│   │   └── HNSC_limma_gene.csv
│   ├── Figure
│   │   └── HNSC_volcano.pdf
│   ├── GeneSet
│   └── Profile
│       └── HNSC_ExprSet_ImmuneGene.RDS
└── Study
    ├── ImmuneRelatedGenes
    │   ├── Immport_GeneList.tsv
    │   ├── Immport_GeneListGOAnnotation.tsv
    │   ├── ImmuneRelatedGenes.tsv
    │   ├── Innatedb_curated_genes.tsv
    │   ├── gene_mouse2human.tsv
    │   ├── get_ImmuneRelatedGenes.pl
    │   ├── innatedb_curated_genes.xls
    │   └── work.sh
    ├── RNARelationship
    │   ├── raid.v2_rna-rna.txt
    │   └── raid.v2_rna-rna.zip
    ├── Reference
    │   └── An Immune-Related Gene Prognostic Index for Head and Neck Squamous Cell Carcinoma.pdf
    └── SeqData
        ├── GSE65858
        └── TCGA_HNSC
```





### contributors

1. Hua Zou (zouhua1@outlook.com)

 





   

