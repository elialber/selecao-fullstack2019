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
      <!-- <div class="form-group">
        <label for="falecimento">Falecimento</label>
        <input type="text" id="falecimento" class="form-control" v-model="userData.falecimento">
      </div> -->
   
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
    <div class="col-md-3"></div>
  </div>
 </div>


</template>

<script>
  import axios from 'axios'
  import router from 'vue-router';

  export default {
      data() {
        return {
          userData: {
            nome: '',
            raca: '',
            sexo: 'M',
            especie: '',
            chip: '',
            data_nascimento: '',
          }
        }
      },
      methods: {
        submitted() {
          axios.post(`http://localhost:8081/insert`, {
            nome: this.userData.nome,
            raca: this.userData.raca,
            sexo: this.userData.sexo,
            especie: this.userData.especie,
            chip: this.userData.chip,
            data_nascimento: this.userData.data_nascimento
          })
            .then(response => { 
            this.$router.go('/')
            })
            .catch(e => {
              this.$router.go('/')
            })
        }
      }
      
    }
</script>