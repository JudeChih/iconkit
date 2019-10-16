<template>
    <div class="iconkit-edit-list show">
        <div class="container">
            <div class="list-header">
                <div class="list-title">圖標集列表</div>
                <button type="button" class="overlay-close" @click="closePage()"></button>
            </div>
            <div class="list-search">
                <div class="list-create" @click="addRow()">新增圖標集</div>
                <input class="list-search-input" v-model="search" type="text" placeholder="圖標集搜尋">
            </div>
            <div class="list-wrap">
                <ul>
                    <li v-for="(list, key) in searchList" @click="focusInput(key)" :class="{editing : edit[key]}">
                        <div class="list-name" >
                                <input :ref="'field-'+key" v-if="edit[key]" type="text" v-model="listNameTemp" @keyup.enter="checkType(key)">
                                <input v-else type="text" :value="list.type" disabled>
                        </div>
                        <div class="list-button">

                            <template v-if="newOne[key]">
                                <button type="button" class="list-button-create" @click="checkType(key)"><span>新增</span></button>
                                <button type="button" class="list-button-cancel" @click="deleteType(key)"></button>
                            </template>
                            <template v-else>
                                <template v-if="edit[key]">
                                    <button type="button" class="list-button-delete" @click="deleteType(key)"><span>刪除</span></button>
                                    <button type="button" class="list-button-modify" @click="checkType(key)"><span>確定</span></button>
                                    <button type="button" class="list-button-cancel" @click="cancelRow(key)"></button>
                                </template>
                                <template v-else>
                                    <button type="button" class="list-button-edit" @click="editRow(key)"></button>
                                </template>
                            </template>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</template>
<script>
    export default {
        data() {
            return {
                search: '',
                listsData: null,
                edit: null,
                listName: '',
                listSelect: '',
                newOne: null,
                checkGood: true,
                listNameTemp: '',
                listNew: []
            }
        },
        mounted() {
            this.getList();
        },
        watch: {
            listNameTemp() {
                let vm = this
                vm.checkGood = true
                for (let index = 0; index < vm.listsData.length; index++) {
                    if (vm.listNameTemp == vm.listsData[index].type) {
                        vm.checkGood = false
                        return false
                    }
                }
            }
        },
        computed: {
            searchList(){
                if (this.listsData !== null) {
                    return this.listsData.filter((list) => {
                        let searchList = list.type.toLowerCase().match(this.search.toLowerCase())
                        return searchList
                    });
                }
            }
        },
        created() {
            let vm = this
        },
        methods: {
            closePage() {
                let vm = this;
                vm.$emit('get-boolean', false);
            },
            addRow() {
                if (this.listsData == null) {
                    this.listsData= [];
                    this.edit = [];
                    this.newOne = [];
                    this.listsData.push({type: ''});
                    this.edit.push(true);
                }
                var boolean = true;
                for(var i = 0 ; i < this.edit.length ; i++){
                    if(this.edit[i]){
                        boolean = false;
                    }
                }
                if(boolean){
                    if(!this.newOne[0]) {
                        for (let index = 0; index < this.edit.length; index++) {
                            this.edit.splice(index, 1, false);
                        }
                        this.listsData.splice(0, 0, {type: ''});
                            this.edit.splice(0, 0, true);
                            this.newOne.splice(0, 0, true);
                            this.$nextTick(() => {
                                this.$refs["field-0"][0].focus()
                            })
                    } else {
                        swal("一次僅能新增一個ICON")
                        .then((value) => {
                            this.$refs["field-0"][0].focus()
                        });
                    }
                }else{
                    swal({
                        title: "一次僅能執行一個動作",
                        text: "請先取消新增或編輯動作",
                        icon: "warning",
                        dangerMode: true,
                    })
                }
            },
            editRow(key) {
                if(!this.newOne[0]) {
                    for (let index = 0; index < this.edit.length; index++) {
                        this.edit.splice(index, 1, false);
                    }
                    this.listName = this.listNameTemp = this.listsData[key].type;
                    this.edit.splice(key, 1, true);
                    this.$nextTick(() => {
                        this.$refs["field-" + key][0].focus()
                    })
                } else {
                    swal("請先取消新增動作");
                }
            },
            cancelRow(key) {
                this.listsData[key].type = this.listName;
                this.listName = ''
                this.listNameTemp = ''
                this.edit.splice(key, 1, false);
            },
            checkType(key) {
                let vm = this
                if(vm.checkGood) {
                    vm.submitRow(key)
                } else if(vm.listNameTemp == vm.listsData[key].type){
                    vm.cancelRow(key)
                } else {
                    swal({
                        title: "名稱重複",
                        text: "請重新輸入",
                        icon: "warning",
                        dangerMode: true,
                    })
                }
            },
            submitRow(key) {
                let vm = this
                vm.listsData[key].type = vm.listNameTemp
                if(vm.listsData[key].type.length) {
                    vm.listName = ''
                    vm.listNameTemp = ''
                    if(vm.newOne[key]) {
                        vm.newType(key);
                        vm.newOne.splice(key, 1, false);
                    } else {
                        vm.editType(key)
                        vm.edit.splice(key, 1, false);
                    }
                } else {
                    swal({
                        title: "名稱不能為空",
                        text: "請輸入文字",
                        icon: "warning",
                        dangerMode: true,
                    })
                }
            },
            newType(key) {
                let vm = this;
                axios.post('types', vm.listsData[key])
                    .then(function(response) {
                        vm.getList();
                    })
                    .catch(function(error) {
                        vm.errors = error.response.data.errors
                    });
            },
            editType(key) {
                let vm = this;
                let id = vm.listsData[key].id
                axios.put('types/'+ id, vm.listsData[key])
                    .then(function(response) {
                        vm.getList();
                    })
                    .catch(function(error) {
                        vm.errors = error.response.data.errors
                    });
            },
            getList() {
                let vm = this;
                axios.get('types')
                    .then(function(response) {
                        vm.listsData = response.data
                        vm.listsData.reverse();
                        vm.listNew = [{type:'NEW'}]
                        vm.listNew = vm.listNew.concat(vm.listsData)
                        vm.$emit('get-list', [vm.listsData, vm.listNew]);
                        if (vm.listsData !== null) {
                            vm.edit= []
                            vm.newOne= []
                            vm.listName = ''
                            vm.listNameTemp = ''
                            for (let index = 0; index < vm.listsData.length; index++) {
                                vm.edit.push(false);
                                vm.newOne.push(false);
                            }
                        }
                    })
                    .catch(function(error) {
                        vm.errors = error.response.data.errors
                    });
            },
            deleteType(key) {
                let vm = this;
                let id = vm.listsData[key].id
                if(!this.newOne[0]) {
                    swal({
                        title: "刪除將無法查詢到該圖標集的icon",
                        text: "確定要刪除嗎？",
                        icon: "warning",
                        buttons: true,
                        dangerMode: true,
                    })
                    .then((willDelete) => {
                        if (willDelete) {
                            swal("刪除成功", {
                            icon: "success",
                            });
                            axios.delete('types/ '+ id)
                            .then(function(response) {
                                vm.getList();
                            })
                            .catch(function(error) {
                                vm.errors = error.response.data.errors
                            });
                        }
                    });
                } else {
                    vm.getList();
                }
            },
            focusInput(key) {
                if(this.edit[key]) {
                    this.$nextTick(() => {
                        this.$refs["field-"+key][0].focus()
                    })
                }
            }
        }
    }
</script>