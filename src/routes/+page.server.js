/** @type {import('./$types').PageServerLoad} */
export async function load() {
    return {
        items: [

            {
                title: 'Purchase Trams Scripts for Apollo Users',
                info: '<a class="text-sm underline text-blue-400" href="https://www.shelleyconsulting.com/cgi-bin/galOrderForm.aspx">New customers please complete Order Form first</a>',
                description: '',
                price: 575,
                selected: 'New Apollo User',
                token: '4'

            },
            {
                title: 'Purchase Trams Scripts Additional Branches',
                description: 'Branches - 1 - $30',
                price: 120,
                extra:
                {
                    field: 'price',
                    label: 'Branches',
                    value: [
                        {
                            title: '1 - $120',
                            price: 120
                        },
                        {
                            title: '2 - $240',
                            price: 240
                        },
                        {
                            title: '3 - $360',
                            price: 360
                        },
                        {
                            title: '4 - $400',
                            price: 360
                        }
                    ]
                },
                token:''
            },
            // {
            //     title: 'Trams Scripts for Apollo - Renew - Main Office',
            //     description: 'Agency Name - ',
            //     price: 175,
            //     extra: {
            //         field: 'text',
            //         label: 'Agency Name',
            //         value: '',
            //         required: true
            //     }

            // },
            // {
            //     title: 'Trams Scripts - Renew - Branches',
            //     description: 'Branches - 1 - $30',
            //     price: 30,
            //     extra:
            //     {
            //         field: 'price',
            //         label: 'Branches',
            //         value: [
            //             {
            //                 title: '1 - $30',
            //                 price: 30
            //             },
            //             {
            //                 title: '2 - $60',
            //                 price: 60
            //             },
            //             {
            //                 title: '3 - $90',
            //                 price: 90
            //             },
            //             {
            //                 title: '4 - $120',
            //                 price: 120
            //             }
            //         ]
            //     }

            // },
        ],
    };
}; 