<template>
  <div class="container mt-3" id="app">
  <div class="row">
    <div class="col-md-3"></div>
    <div class="col-md-6">
      <div class="form-group">
        <label for="nome">Nome</label>
        <input type="text" id="nome" class="form-control" v-model="userData.nome">
      </div>
      <div class="form-group">
        <label for="raca">Raça</label>
        <input type="text" id="raca" class="form-control" v-model="userData.raca">
      </div>
      <div class="form-group">
        <label for="nascimento">Nascimento</label>
        <input type="text" id="nascimento" class="form-control" v-model="userData.data_nascimento">
      </div>
      <div class="form-group">
            <label for="falecimento">Falecimento</label>
            <input type="text" id="falecimento" class="form-control" v-model="userData.falecimento">
          </div>
    
      <div class="form-group radio-inline">
        <label for="masculino" class="radio-inline">
          <input type="radio" id="masculino" value="M" v-model="userData.sexo"> Masculino
        </label>
        <br>
        <label for="feminino" class="radio-inline">
          <input type="radio" id="feminino" value="F" v-model="userData.sexo"> Feminino
        </label>
      </div>
      <div class="form-group">
        <label for="especie">Espécie</label>
        <input type="text" id="especie" class="form-control" v-model="userData.especie">
      </div>
      <div class="form-group">
        <label for="chip">Chip</label>
        <input type="text" id="chip" class="form-control" v-model="userData.chip">
      </div>
      <div class="form-group">
        <button class="btn btn-primary" @click.prevent="submitted">Salvar!
        </button>
      </div>
    </div>
    <div class="col-md-3"><a style="cursor: pointer; text-decoration: underline" v-on:click="navigate()">Voltar</a></div>
  </div>
  </div>
</template>

<script>
  import router from '../router'
  import axios from 'axios'
  export default {
    name: 'Page2',
    data() {
      return {
        id: 0,
         userData: {
          nome: 'Elialber',
          raca: '',
          sexo: 'M',
          especie: '',
          chip: '',
          data_nascimento: '',
          data_falecimento: ''
        }
      }
    },
    created() {
      this.id = this.$route.params.id;
    },
    methods: {
      navigate() {
        router.go(-1);
      },
      submitted() {
        axios.post(`http://localhost:8081/update`, {
          id: this.id,
          nome: this.userData.nome,
          raca: this.userData.raca,
          sexo: this.userData.sexo,
          especie: this.userData.especie,
          chip: this.userData.chip,
          data_nascimento: this.userData.data_nascimento,
          data_falecimento: this.userData.data_falecimento
        })
          .then(response => {
            router.go('/')
          })
          .catch(e => {
            router.go('/')
          })
      }
    },
    mounted() {
          axios
            .get('http://localhost:8081/findone/'+ this.id)
            .then(response => {
              var d = response.data[0];
              this.userData.nome = d.nome;
              this.userData.raca = d.raca;
              this.userData.sexo = d.sexo;
              this.userData.especie = d.especie;
              this.userData.chip = d.chip;
              this.userData.data_nascimento = d.data_nascimento;
              this.userData.data_falecimento = d.data_falecimento;
            })
            .catch(error => {
              this.errored = true
            })
            .finally(() => this.loading = false)
        }
  }
</script>