<template>
    <div class="iconkit-list clearfix">
        <ul>
            <li v-for="(icon, key) in searchIcon">
                <div class="icon-pic">
                    <img v-if="icon.files[0]" :src="currentURL + icon.files[0]">
                    <img v-else src="images/file_upload.svg" style="min-height: 120px">
                </div>
                <div class="icon-title">{{ icon.name }}</div>
                <div class="icon-download">
                    <div class="png">PNG</div>
                    <div v-if="icon.type.fw" :class="{fw: icon.type.fw}">FW</div>
                    <div v-if="icon.type.psd" :class="{psd: icon.type.psd}">PSD</div>
                </div>
                <button class="icon-edit" @click="editIcon(key)"></button>
            </li>
        </ul>
    </div>

</template>
<script>
    import Vue from 'vue'
    import { Select, Option } from 'element-ui'
    Vue.component(Select.name, Select)
    Vue.component(Option.name, Option)
    export default {
        props: ['asset', 'item', 'itemList', 'itemSearch', 'currentList'],
        components: {},
        data() {
            return {
                current: '',
                iconsData: [],
                search: '',
                iconID:'',
                currentURL: '',
                list: [],
                id: null,
            }
        },
        mounted() {
            let vm = this;
            vm.currentURL = vm.asset.slice(0, -1);
        },
        watch: {
            itemSearch() {
                let vm = this;
                vm.search = vm.itemSearch;
            },
            item() {
                let vm = this;
                vm.iconsData = vm.item;
            },
            itemList() {
                let vm = this;
            },
            currentList() {
                let vm = this;
                vm.current = vm.currentList;
            }
        },
        computed: {
            searchList(){
                let vm = this;
                if (vm.iconsData !== null) {
                    if(vm.search){
                        return vm.iconsData;
                    }else{
                        if(vm.current == 'NEW'){
                            return vm.iconsData;
                        }else{
                            return vm.iconsData.filter((icon) => {
                                let searchList = icon.list.toLowerCase().match(vm.current.toLowerCase());
                                return searchList;
                            });
                        }
                    }
                }
            },
            searchName() {
                let vm = this;
                vm.search = vm.search.replace(/\\/g,'')
                if (vm.search) {
                    return vm.iconsData.filter((icon) => {
                        let searchName = icon.name.toLowerCase().match(vm.search.toLowerCase());
                        return searchName;
                    });
                } else {
                    return null;
                }
            },
            searchIcon() {
                let vm = this;
                if (vm.search) {
                    return vm.searchList.filter((icon) => {
                        let searchName = icon.name.toLowerCase().match(vm.search.toLowerCase());
                        vm.$emit('get-amount', vm.searchName.length);
                        return searchName;
                    });
                } else {
                    if(vm.current.length && vm.current !== 'NEW') {
                        vm.$emit('get-amount', vm.searchList.length);
                        return vm.searchList;
                    } else {
                        var array = vm.searchList.slice(0, 12);
                        vm.$emit('get-amount', array.length);
                        return array;
                    }
                }
            },
        },
        created() {},
        methods: {
            editIcon(key) {
                let vm = this;
                vm.id = vm.searchIcon[key].id
                vm.$emit('get-edit', vm.id);
                vm.$emit('get-boolean', true);
            },
        }
    }
</script>