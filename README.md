# Inventory and sales system 

A business management tool developed to handle product inventory, process automated transactions, and track stock levels.

##  Project overview
This project was built to practice foundational programming concepts, specifically structured programming and algorithmic logic, and memory data using arrays. It simulates a real-world business system where users can perform a data management and handle sales.

##  Technologies and concepts used
- **Language:** Portugol Studio (Structured programming)
- **Data structures:** Arrays / Matrices
- **Methodology:** Algorithmic logic and CRUD architectures

##  Implementation
* **CRUD support:** modular algorithmic functions to **C**reate, **R**ead, **U**pdate, and **D**elete product profiles such as names, prices, and quantities in memory structures.
* **Search and duplicate prevention:** implemented data-validation loops that search through arrays to prevent duplicate registrations and handle "product not found" exceptions.
* **Transactional logic:** programmed a secure checkout system that processes client sales, checks inventory levels, and updates the business's financial records.

##  Code Snippet Example

```portugol

se (quantidade_venda <= estoque[posicao]) {
    estoque[posicao] = estoque[posicao] - quantidade_venda
    escreva("Venda realizada com sucesso!")
} senao {
    escreva("Erro: Estoque insuficiente.")
}
