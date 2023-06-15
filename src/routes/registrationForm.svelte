<script>
    export let registarInfo
    export let handleChange
    export let submitForm
    

    // City Lists With Label & Value
    const cityLists=[
        {
        value:'AK',label:'AK'
        },
        {
        value:'AZ',label:'AZ'
        },
        {
        value:'AR',label:'AR'
        },
        {
        value:'CA',label:'CA'
        },
        {
        value:'CO',label:'CO'
        },
        {
        value:'CT',label:'CT'
        },
        {
        value:'DE',label:'DE'
        },
        {
        value:'DC',label:'DC'
        },
        {
        value:'HI',label:'HI'
        },
        {
        value:'GA',label:'GA'
        },
        {
        value:'ID',label:'ID'
        },
        {
        value:'IL',label:'IL'
        },
        {
        value:'IN',label:'IN'
        },
        {
        value:'IA',label:'IA'
        },
        {
        value:'KS',label:'KS'
        },
        {
        value:'KY',label:'KY'
        },
        {
            value:'LA',label:'LA'
        },
        {
        value:'ME',label:'ME'
        },
        {
        value:'MD',label:'MD'
        },
        {
        value:'MA',label:'MA'
        },
        {
        value:'MI',label:'MI'
        },
        {
        value:'MN',label:'MN'
        },
        {
        value:'MS',label:'MS'
        },
        {
        value:'MO',label:'MO'
        },
        {
        value:'MT',label:'MT'
        },
        {
        value:'NE',label:'NE'
        },
        {
        value:'NV',label:'NV'
        },
        {
        value:'NH',label:'NH'
        },
        {
        value:'NJ',label:'NJ'
        },
        {
        value:'NM',label:'NM'
        },
        {
        value:'NY',label:'NY'
        },
        {
        value:'NC',label:'NC'
        },
        {
        value:'ND',label:'ND'
        },
        {
        value:'OH',label:'OH'
        },
        {
        value:'OK',label:'OK'
        },
        {
        value:'OR',label:'OR'
        },
        {
        value:'PA',label:'PA'
        },
        {
        value:'RI',label:'RI'
        },
        {
        value:'SC',label:'SC'
        },
        {
        value:'SD',label:'SD'
        },
        {
        value:'TN',label:'TN'
        },
        {
        value:'TX',label:'TX'
        },
        {
        value:'UT',label:'UT'
        },
        {
        value:'VT',label:'VT'
        },
        {
        value:'VA',label:'VA'
        },
        {
        value:'WA',label:'WA'
        },
        {
        value:'WV',label:'WV'
        },
        {
        value:'WI',label:'WI'
        },
        {
        value:'WY',label:'WY'
        }
    ]


    const handleInputChange=(e)=> {
        handleChange(e)
    }

    const handleOnSubmit=(e)=>{
        e.preventDefault();
        submitForm();
    }
    
</script>
<form on:submit={handleOnSubmit}>
    <table>
      <tbody>
        <tr>
          <td colspan="2">
            <label for="agencyName">Agency Name</label>
          </td>
          <td colspan="4">
            <input
            name="agencyName"
            id="agencyName"
            on:change={handleInputChange}
            bind:value={registarInfo.agencyName}
            maxlength="60"
            required
            />
          </td>

          <td colspan="2">
            <label for="workstations">Workstations</label>
          </td>
          <td colspan="4">
            <input
            name="workstations"
            id="workstations"
            type="number"
            bind:value={registarInfo.workstations}
            on:change={handleInputChange}
            maxlength="3"
            />
          </td>
        </tr>

        <tr>
          <td colspan="4">
            <label for="address">Address</label>
          </td>
          <td colspan="8">
            <textarea rows="3"
            required
            name="address"
            id="address"
            bind:value={registarInfo.address} 
            on:change={handleInputChange}
            class={`block p-2.5 w-full text-sm text-gray-900 bg-white-50 rounded-lg border outline-0`}
            />
          </td>
        </tr>

        <tr>
          <td colspan="2">
            <label for="city">City</label>
          </td>
          <td colspan="4">
            <select
            maxlength="25"
            required
            name='city'
            id="city"
            on:change={handleInputChange}
            bind:value={registarInfo.city}
          >
            <option value="">Select City</option>
            {#each cityLists as p}
              <option value={p.value}>{p.label}</option>
            {/each}
          </select>
          </td>

          <td colspan="2">
            <label for="zipCode">Zip</label>
          </td>
          <td colspan="4">
            <input
            maxlength="15"
            required
            bind:value={registarInfo.zipCode}
            on:change={handleInputChange}
            name="zipCode"
            id="zipCode"
            />
          </td>
        </tr>

        <tr>
          <td colspan="2">
            <label for="contactName">Contact Name</label>
          </td>
          <td colspan="4">
            <input
            bind:value={registarInfo.contactName}
            on:change={handleInputChange}
            name="contactName"
            id="contactName"
            maxlength="40"
            required
            />
          </td>

          <td colspan="2">
            <label for="title">Title</label>
          </td>
          <td colspan="4">
            <input
            bind:value={registarInfo.title}
            on:change={handleInputChange}
            name="title"
            id="title"
            />
          </td>
        </tr>

        <tr>
          <td colspan="2">
            <label for="email">Email Address</label>
          </td>
          <td colspan="4">
            <input
            type="email"
            bind:value={registarInfo.email}
            on:change={handleInputChange}
            name="email"
            id="email"
            maxlength="100"
            required
            />
          </td>

          <td colspan="2">
            <label for="referredBy">Referred By</label>
          </td>
          <td colspan="4">
            <input
            bind:value={registarInfo.referredBy}
            on:change={handleInputChange}
            name="referredBy"
            id="referredBy"
            />
          </td>
        </tr>

        <tr>
          <td colspan="2">
            <label for="pseudoCity"> Pseudo City</label>
          </td>
          <td colspan="4">
            <input
            maxlength="9"
            required
            bind:value={registarInfo.pseudoCity}
            on:change={handleInputChange}
            name="pseudoCity"
            id="pseudoCity"
            />
          </td>

          <td colspan="2">
            <label for="arc">ARC #</label>
          </td>
          <td colspan="4">
            <input
            bind:value={registarInfo.arc}
            on:change={handleInputChange}
            name="arc"
            id="arc"
            />
          </td>
        </tr>

        <tr>
          <td colspan="2">
            <label for="phone"> Phone</label>
          </td>
          <td colspan="4">
            <input
            bind:value={registarInfo.phone}
            on:change={handleInputChange}
            name="phone"
            id="phone"
            />
          </td>

          <td colspan="2">
            <label for="fax">Fax</label>
          </td>
          <td colspan="4">
            <input
            bind:value={registarInfo.fax}
            on:change={handleInputChange}
            name="fax"
            id="fax"
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
              Submit
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
  