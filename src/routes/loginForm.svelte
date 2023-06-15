<script>
    export let loginInfo;
    export let handleLogin;
    export let onChange;

    const handleOnLogin=(e)=>{
        e.preventDefault();
        handleLogin();
    }

    const onInputChange=(e)=>{
        onChange(e);
    }
</script>
<form on:submit={handleOnLogin}>
    <table>
        <tbody>
            <tr>
                <td colspan="4">
                    <label for="email">Email</label>
                </td>
                <td colspan="8">
                    <input
                    type="email"
                    id="email"
                    required
                    name="email"
                    bind:value={loginInfo.email} 
                    on:change={onInputChange}
                    />
                </td>
            </tr>

            <tr>
                <td colspan="4">
                    <label for="password">Password</label>
                </td>
                <td colspan="8">
                    <input
                    type="password"
                    id="password"
                    required
                    name="password"
                    bind:value={loginInfo.password} 
                    on:change={onInputChange}
                    />
                </td>
            </tr>

            <tr>
                <td colspan="12">
                  <div class="justify-end flex item-center">
                    <button 
                    class="text-gray-700" 
                    type="submit"
                    >
                    Login
                    </button>
                  </div>
                </td>
              </tr>
        </tbody>
    </table>
</form>

<style lang="postcss">
    /* :global(html) {
      background-color: theme(colors.gray.100);
    } */
    button {
      @apply border p-2 rounded font-bold text-white bg-blue-500 hover:bg-blue-300 outline-none;
    }
    button[disabled=disabled], button:disabled {
      @apply bg-gray-300 cursor-not-allowed;
    }
    input {
      @apply border p-2 rounded border-gray-200 outline-none;
    }
    select {
      @apply border p-2 rounded border-gray-200 outline-none;
    }
    table {
      @apply border;
    }
    th,
    td {
      @apply border p-2;
    }
  </style>