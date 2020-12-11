<template>
  <div class="row">
    <div class="col-lg-8 offset-lg-2">
      <div class="card text-black bg-light">
        <div class="card-body">
          <form @submit.prevent="submit">
            <h2>Register</h2>
            <p>Please provide required information to create an account.</p>

            <div class="form-group">
              <label>Email</label>
              <input
                v-validate="'required|email'"
                v-model="form.model.email"
                class="form-control"
                type="text"
                autocomplete="email"
                placeholder="E-mail"
                name="email">
              <span
                v-if="errors.has('email')"
                class="invalid-feedback"
                v-html="errors.first('email')" />

            </div>

            <div class="form-group">
              <label>Nickname</label>
              <input
                v-model="form.model.name"
                class="form-control"
                type="text"
                placeholder="Nickname"
                name="nickname">
              <span
                v-if="errors.has('nickname')"
                class="invalid-feedback"
                v-html="errors.first('nickname')" />
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
                name="password"
                >
              <span
                v-if="errors.has('password')"
                class="invalid-feedback"
                v-html="errors.first('password')" />
            </div>

            <div class="form-group">
              <label>Confirm Password</label>
              <input
                v-validate="'required|confirmed:password'"
                v-model="form.model.confirmPassword"
                class="form-control"
                type="password"
                autocomplete="new-password"
                placeholder="Confirm Password"
                name="confirmPassword"
                >
              <span
                v-if="errors.has('confirmPassword')"
                class="invalid-feedback"
                v-html="errors.first('confirmPassword')" />
            </div>

            <input
              :disabled="errors.any()"
              class="btn btn-primary btn-block"
              type="submit"
              value="Register">

            <br>
<!--            <input v-validate="'required'" name="password" type="password" :class="{'is-danger': errors.has('password')}" placeholder="Password" ref="password">-->
<!--            <span v-show="errors.has('password')" class="help is-danger">{{ errors.first('password') }}</span>-->

<!--            <input v-validate="'required|confirmed:password'" name="password_confirmation" type="password" :class="{'is-danger': errors.has('password_confirmation')}" placeholder="Password, Again" data-vv-as="password">-->
<!--            <span v-show="errors.has('password_confirmation')" class="help is-danger">{{ errors.first('password_confirmation') }}</span>-->

            <router-link
              class="btn-link"
              to="/auth/login">
              Already have an account?
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
          confirmPassword: '',
          email: '',
          name: '',
        },
      },
    }
  },
  methods: {
    ...mapActions(['register']),

    submit() {
      this.$validator.validateAll().then(res => {
        if (res) {
          this.register(this.form.model)
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
