<a name="readme-top"></a>

<div align="center">
<!-- <img src="./app/assets/images/logo_white.png" width="150px"> -->
  <h1><b>Search-Engine | Project</b></h1>
</div>


<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [ ♦ Kanban Board](#kanban-board)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
    <!-- - [🚀 Live Demo](#live-demo) -->
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#triangular_flag_on_post-deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

---

<!-- PROJECT DESCRIPTION -->

#  Search-Engine <a name="about-project"></a>

**"Search-Engine"** is a searcher web app like google application to search everything you want. This project is a JS Vanilla application, and it allows users to register and log in with their credentials, see all the items registered, and add or delete items to the inventory.

Two repositories were created for its construction:
- [A backend repository](https://github.com/Zven94/Article-Searcher-API) with an API built with the [Ruby on Rails](https://rubyonrails.org/) Framework with a [PostgreSQL](https://www.postgresql.org/) database.
- [A frontend repository](https://github.com/Zven94/Article-Searcher) with a React/Redux Toolkit application from which the created API is consumed.

Additionally, the API documentation is available [here](https://rent-for-a-day.onrender.com/api-docs/index.html).

---
<br>
<br>

![photo_2023-11-09_16-45-50](https://github.com/Zven94/Article-Searcher/blob/development/searcher-engine-1.PNG)

<br>
<br>

![FireShot Capture 407 - View 1 · Rent For A Day - github com](https://github.com/Zven94/Article-Searcher/blob/development/searcher-engine-2.PNG)

<br>
<br>


---


## 🛠 Built With <a name="built-with"></a>

### Tech Stack

The project is built using the following technologies:

* Ruby on Rails.
* PostgreSQL.
* RSpec.
* Rubocop.

<br>

---

<!-- Features -->

### Key Features <a name="key-features"></a>

- [x] Differents repos: This help to split and manage responsibilities.
- [x] On going search: The user can write and the search is trigger it automatically.
- [x] User-Friendly Interface: Navigate with ease.
- [x] Analytics tab: The API return you the 10 most searched terms.


<ul>
  <li>Ruby on Rails</li>
  <li>Linters
    <ul>
      <li>Rubocop</li>
    </ul>
  </li>
  <li>Follow list of Rails and JS best practices</li>
</ul>

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 🚀 Live Demo <a name="live-demo"></a>

- 🎤 [Project presentation: video demo](https://www.loom.com/share/dde6635af14a4d25a62d517863f3d928)
- [Live Demo Link](https://article-searcher-g017.onrender.com/)


<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites
In order to run this project you need to have:

- Installed Ruby and Ruby on Rails.
- If you're using Windows, have installed WSL.
- If you're using MacOS, an option is using UTM.

### Setup
To clone this repository to your desired folder, run the following command: <br>

```
git clone https://github.com/Zven94/Article-Searcher.git
```

Navigate to the cloned repository and run the following command to install the necessary gems:
```
cd Article-Searcher
bundle install
```
Before continue you will need to create your own credentials file. To do so, first remove config/master.key and config/credentials.yml.enc if they exist.

run the following command:
```
EDITOR=code rails credentials:edit 
```
You can close the editor that opens. This command will create a new master.key and credentials.yml.enc if they do not exist. Now you can continue.

## Usage
Initialize it with
```
rails server
```
Then open `http://localhost:3000` in your browser.

Now you need to create the database, run the following command:
```
rails db:create
```
Then migrate the database:
```
rails db:migrate
```

### Test
To run the tests try the following command:
```
rspec spec
```


<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Nicolas Bolañez**
-   GitHub: [@Zven94](https://github.com/Zven94)
-   LinkedIn: [Nico](https://www.linkedin.com/in/nicolas-emiliano/)


<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

Upcoming improvements:

- [ ] More analytics about searched data.
- [ ] Responsive desing for moviles and tablets.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Zven94/Article-Searcher/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project and know someone who might find it helpful, please share it.
Or give it a **star** ⭐️

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I thank Microverse for this fantastic opportunity, and the code reviewers for their advice and time.

Original design idea by [Emil Hajric](https://www.linkedin.com/in/emilhajric/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---
