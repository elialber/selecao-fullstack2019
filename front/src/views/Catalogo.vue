<template>
  <div class="container mt-3" id="app">
    <section v-if="errored">
      <p>Pedimos desculpas, não estamos conseguindo recuperar as informações no momento. Por favor, tente
        novamente mais tarde.</p>
    </section>

    <section v-else>
      <div v-if="loading">Carregando...</div>

      <div class="row" v-else>
        <div class="col-12 col-md-3 mt-2" v-for="item in info">
          <div class="rounded p-3 bg-card">
            <!-- <button type="button" @click="teste(item)">
                Editar
              </button> -->
            <div class="card-body">
              <h5 class="card-title">{{ item.nomeanimal }}</h5>
              <p class="card-text"> {{item.idade}} anos </p>
              <div class="card-detail"><b>Sexo:</b> {{item.sexo}}</div>
              <div class="card-detail"><b>Raça:</b> {{item.nomeraca}}</div>
              <div class="card-detail"><b>Nº chip:</b> {{item.chip}}</div>
              <div class="card-detail"><b>Nascimento:</b> {{item.data_nascimento}}</div>
            </div>
          </div>
        </div>
      </div>
    </section>

  </div>
</template>

<script>

  import axios from 'axios'
  export default {
    data() {
      return {
        info: null,
        loading: true,
        errored: false
      }
    },
    methods: {
      teste(item) {
      },
    },
    mounted() {
      axios
        .get('http://localhost:8081/views')
        .then(response => {
          this.info = [];
          response.data.forEach((element) => {
            if (element['data_falecimento'] !== '0000-00-00') {
              this.info.push(element);
            }
          });
        })
        .catch(error => {
          this.errored = true
        })
        .finally(() => this.loading = false)
    }
  }
</script>
<style scoped lang="scss">
  .card-detail {
    font-size: 12px;
  }

  .bg-card {
    background-color: #ffffff;
  }

  .die {

    background: #d3d3d3;
    -webkit-transition: background 0.5s ease-out;
    -moz-transition: background 0.5s ease-out;
    -o-transition: background 0.5s ease-out;
    -ms-transition: background 0.5s ease-out;
  }
</style>