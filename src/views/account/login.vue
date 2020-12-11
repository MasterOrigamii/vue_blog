<template>
  <div class="row">
    <div class="col-lg-8 offset-lg-2">
      <div class="card text-black bg-light">
        <div class="card-body">
          <form @submit.prevent="submit">
            <h2>Sign In</h2>
            <p>Please provide required information to continue.</p>

            <div class="form-group">
              <label>Email</label>
              <input
                v-validate="'required|email'"
                v-model="form.model.email"
                class="form-control"
                type="text"
                autocomplete="email"
                placeholder="E-mail address"
                name="email">
              <span
                v-show="errors.has('email')"
                class="invalid-feedback"
                v-html="errors.first('email')" />
            </div>

            <div class="form-group">
              <label>Password</label>
              <input
                v-validate="'required|min:6|max:16'"
                v-model="form.model.password"
                class="form-control"
                type="password"
                autocomplete="new-password"
                placeholder="Password"
                name="password">
              <span
                v-show="errors.has('password')"
                class="invalid-feedback"
                v-html="errors.first('password')" />
            </div>

            <input
              :disabled="errors.any()"
              class="btn btn-primary btn-block"
              type="submit"
              value="Sign In">

            <br>

            <router-link
              class="btn-link"
              to="/auth/register">
              Don't have an account?
            </router-link>
          </form>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { mapActions } from 'vuex'

export default {
  data() {
    return {
      form: {
        model: {
          password: '',
          email: '',
        },
      },
    }
  },
  methods: {
    ...mapActions(['login']),

    submit() {
      this.$validator.validateAll().then(res => {
        if (res) {
          //调用store中user的login
          this.login(this.form.model)
        } else {
          swal(
            'Not so fast!',
            'Please provide required data in valid format',
            'warning',
          )
        }
      })
    },
  },
}
</script>

<style lang='stylus'>
</style>
