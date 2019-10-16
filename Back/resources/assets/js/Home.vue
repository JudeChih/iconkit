<template>
    <div class="wrapper" :class="{fixed : typeShow || iconCreateShow || iconEditShow}">
        <header>
            <div class="container">
                <div class="container-content">
                    <div class="menu-wrap">
                        <div class="btn-menu" v-if="menu" @click="menu = false"></div>
                        <div class="menu-close" v-else="menu" @click="menu = true"></div>
                        <div class="menu-box" v-if="menu == false">
                            <div class="menu-overflow">
                                <div class="menu-item">
                                    <a class="menu-item-title" href="javascript:void(0)" @click="currentList = 'NEW',menu = true,recordlist = false">NEW</a>
                                </div>
                                <div class="menu-item" v-for="(list, key) in listsData1">
                                    <a class="menu-item-title" href="javascript:void(0)" @click="currentList = list.type,menu = true,recordlist = false">{{list.type}}</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="logo" @click="recordlist = false"></div>
                    <a :href="asset +'logout'" class="btn-lougot" onclick="event.preventDefault(); document.getElementById('logout-form').submit();"></a>
                    <form id="logout-form" :action="asset +'logout'" method="POST" style="display: none;">
                            <input type="hidden" name="_token" :value="csrf">
                    </form>
                    <a class="btn-trans" href="javascript:void(0)" @click="showRecordList()"></a>
                    <a class="btn-wiki" href="https:\/\/wiki\/display\/KB\/06.+iconkit" target="_blank"></a>
                </div>
            </div>
            <div class="function-wrap" v-show="!recordlist">
                <div class="function-content">
                    <div class="btn_create_icon" @click="iconCreateBoxShow()">新增圖標</div>
                    <div class="btn_create_list" @click="typeBoxShow()">新增圖標集</div>
                    <div class="header-search" @click="searchBox()">
                        <i></i>
                        <input :class="{'error': iconAmount == 0}" ref="search-box" type="text" v-model="search" placeholder="請輸入關鍵字"/>
                        <div class="icon-warning" :class="{'error': iconAmount == 0}"></div>
                    </div>
                </div>
            </div>
        </header>
        <div class="transrecordlist" v-show="recordlist">
            <div class="title">異動紀錄列表</div>
            <ul>
                <li class="first-page" @click="recordListChengePage(recordData.first_page_url)"></li>
                <li v-if="recordData.prev_page_url" class="prev-page" @click="recordListChengePage(recordData.prev_page_url)"></li>
                <li v-else="recordData.prev_page_url" class="prev-page"></li>
                <!-- <li :class="{'current' : recordData.current_page == 1}">1</li>
                <li :class="{'current' : recordData.current_page == 2}">2</li>
                <li v-if="recordData.last_page > 5 && recordData.current_page > 3">...</li>

                <li class="current" v-if="recordData.current_page > 2 && recordData.current_page < recordData.last_page -1">{{recordData.current_page}}</li>

                <li v-if="recordData.last_page > 5 && recordData.current_page < recordData.last_page -2">...</li>
                <li :class="{'current' : recordData.current_page == recordData.last_page -1}" v-if="recordData.last_page > 4" @click="recordListChengePage(recordData.path + '?page=' + (recordData.last_page -1))">{{recordData.last_page -1}}</li>
                <li :class="{'current' : recordData.current_page == recordData.last_page}" v-if="recordData.last_page > 4" @click="recordListChengePage(recordData.path + '?page=' + recordData.last_page)">{{recordData.last_page}}</li> -->
                <li v-if="recordData.last_page < 6" :class="{'current' : recordData.current_page == 1}" @click="recordListChengePage(recordData.path + '?page=1')">1</li>
                <li v-if="recordData.last_page < 6" :class="{'current' : recordData.current_page == 2}" @click="recordListChengePage(recordData.path + '?page=2')">2</li>
                <li v-if="recordData.last_page < 6" :class="{'current' : recordData.current_page == 3}" @click="recordListChengePage(recordData.path + '?page=3')">3</li>
                <li v-if="recordData.last_page < 6" :class="{'current' : recordData.current_page == 4}" @click="recordListChengePage(recordData.path + '?page=4')">4</li>
                <li v-if="recordData.last_page < 6" :class="{'current' : recordData.current_page == 5}" @click="recordListChengePage(recordData.path + '?page=5')">5</li>

                <li v-if="recordData.last_page > 5 && recordData.current_page < 3" :class="{'current' : recordData.current_page == 1}" @click="recordListChengePage(recordData.path + '?page=1')">1</li>
                <li v-if="recordData.last_page > 5 && recordData.current_page < 3" :class="{'current' : recordData.current_page == 2}" @click="recordListChengePage(recordData.path + '?page=2')">2</li>
                <li v-if="recordData.last_page > 5 && recordData.current_page < 3" :class="{'current' : recordData.current_page == 3}" @click="recordListChengePage(recordData.path + '?page=3')">3</li>
                <li v-if="recordData.last_page > 5 && recordData.current_page < 3" :class="{'current' : recordData.current_page == 4}" @click="recordListChengePage(recordData.path + '?page=4')">4</li>
                <li v-if="recordData.last_page > 5 && recordData.current_page < 3" :class="{'current' : recordData.current_page == 5}" @click="recordListChengePage(recordData.path + '?page=5')">5</li>

                <li v-if="recordData.last_page > 5 && recordData.current_page == recordData.last_page" @click="recordListChengePage(recordData.path + '?page=' + (recordData.current_page-4))">{{recordData.current_page-4}}</li>
                <li v-if="recordData.last_page > 5 && recordData.current_page >= recordData.last_page -1" @click="recordListChengePage(recordData.path + '?page=' + (recordData.current_page-3))">{{recordData.current_page-3}}</li>
                
                <li v-if="recordData.last_page > 5 && recordData.current_page > 2" @click="recordListChengePage(recordData.path + '?page=' + (recordData.current_page-2))">{{recordData.current_page-2}}</li>
                <li v-if="recordData.last_page > 5 && recordData.current_page > 2" @click="recordListChengePage(recordData.path + '?page=' + (recordData.current_page-1))">{{recordData.current_page-1}}</li>
                <li class="current" v-if="recordData.last_page > 5 && recordData.current_page > 2">{{recordData.current_page}}</li>
                <li v-if="recordData.last_page > 5 && recordData.current_page > 2 && recordData.current_page +1 <=recordData.last_page" @click="recordListChengePage(recordData.path + '?page=' + (recordData.current_page+1))">{{recordData.current_page+1}}</li>
                <li v-if="recordData.last_page > 5 && recordData.current_page > 2 && recordData.current_page +2 <=recordData.last_page" @click="recordListChengePage(recordData.path + '?page=' + (recordData.current_page+2))">{{recordData.current_page+2}}</li>

                <li v-if="recordData.next_page_url" class="next-page" @click="recordListChengePage(recordData.next_page_url)"></li>
                <li v-else="recordData.next_page_url" class="next-page"></li>
                <li class="last-page" @click="recordListChengePage(recordData.last_page_url)"></li>
            </ul>
            <table>
                <thead>
                    <tr>
                        <th>編號</th>
                        <th>動作</th>
                        <th>內容</th>
                        <th>操作者</th>
                        <th>時間</th>
                    </tr>
                </thead>
                <tbody>
                    <tr v-for="(rd, key) in recordData.data">
                        <td>{{rd.tr_id}}</td>
                        <td v-if="rd.tr_action == 1">新增</td>
                        <td v-else-if="rd.tr_action == 2">修改</td>
                        <td v-else-if="rd.tr_action == 3">刪除</td>
                        <td v-else="rd.tr_action">未知的動作</td>
                        <td>{{rd.tr_content}}</td>
                        <td>{{rd.tr_user}}</td>
                        <td>{{rd.create_date}}</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <main :class="isShow" v-show="!recordlist">
            <div class="iconkit-group clearfix container">
                <div class="iconkit-title" v-if="search == ''">
                    <span>{{currentList}}</span><span>icons ({{iconAmount}})</span>
                </div>
                <div class="iconkit-title" v-else="search == ''">
                    <span>搜尋結果</span><span>icons ({{iconAmount}})</span>
                </div>
                <list :asset="asset" :item="iconsData" :itemList="listsData2" :itemSearch="search" @get-edit="updateEdit" @get-boolean="updateIconEditShow" @get-amount="updateIconAmount" :currentList="currentList"></list>
            </div>
        </main>
        <footer>
            <div class="container">
                <div class="copyright">2018 Copyright © iconKit Reserved</div>
                <div class="remark">有任何問題請詢問網頁設計部 - 開發組</div>
            </div>
        </footer>
        <!-- 新增/編輯圖標 區塊 -->
        <div class="none" :class="{'show' : iconEditShow || iconCreateShow,'icon-edit-overlay-wrap':iconEditShow,'icon-create-overlay-wrap':iconCreateShow}">
            <div :class="{'show' : iconEditShow || iconCreateShow,'iconkit-edit':iconEditShow,'iconkit-create':iconCreateShow}">
                <div class="title">
                    <h1 v-if="iconEditShow">編輯圖標</h1>
                    <h1 v-if="iconCreateShow">新增圖標</h1>
                    <button type="button" class="overlay-close" @click="closePage()"></button>
                </div>
                <div class="tips">
                    <p>※ 此欄位為必填、必選</p>
                </div>
                <form enctype="multipart/form-data" class="container">
                    <div class="form-group">
                        <div class="input-group edit-name">
                            <label for="name"><span>名稱</span></label>
                            <input type="text" name="name" id="name" class="iconkit-edit-name" v-model="iconName"/>
                        </div>

                        <div class="input-group edit-list">
                            <label for="select-list"><span>圖標集</span></label>
                            <div class="edit-select">
                                <el-select placeholder=""  v-model="icon.list">
                                    <el-option
                                        v-for="list in listsData1"
                                        :key="list.type"
                                        :label="list.type"
                                        :value="list.type">
                                    </el-option>
                                </el-select>
                            </div>
                            <div class="btn_create_list" @click="typeBoxShow()"></div>
                        </div>
                        <file :asset="asset" :item="icon.files" @get-type="updateType" @get-file="updateFiles" :itemType="icon.type" :edit="isShow.edit"></file>
                        <tag :item="icon.tagsData" @get-tag="updateTags" :edit="edit"></tag>
                    </div>

                    <div class="form-button">
                        <button @click="checkData()" type="button" class="form-button-create">確認</button>
                        <!-- <button @click="closePage()" type="button" class="form-button-cancel">取消</button> -->
                        <button v-if="iconEditShow" @click="deleteItem()" type="button" class="form-button-delete">刪除</button>
                    </div>
                </form>
            </div>
            <div class="overlay" @click="closePage()"></div>
        </div>
        <!-- 新增圖標集 區塊 -->
        <div class="icon-list-overlay-wrap" :class="{show : typeShow}">
            <iconList @get-list="updateLists" @get-boolean="updateTypeBoxShow"></iconList>
            <div class="overlay" @click="typeBoxShow()"></div>
        </div>
    </div>
</template>
<script>
    import iconList from './components/iconList.vue'
    import file from './components/file.vue'
    import tag from './components/tag.vue'
    import list from './components/list.vue'
    export default {
        props: ["asset"],
        components: {
            iconList,
            file,
            tag,
            list
        },
        mounted() {
            this.getData();
        },
        data() {
            return {
                csrf: document
                    .querySelector('meta[name="csrf-token"]')
                    .getAttribute("content"),
                search: '',
                editId: null,
                edit: false,
                lists: [],
                listsData1: [],
                listsData2: [],
                iconsData:[],
                typeShow: false,
                iconCreateShow: false,
                iconEditShow: false,
                filesCheck: true,
                isShow: {
                    create: true,
                    edit: false
                },
                icon: {
                    name: '',
                    tagsData: [],
                    files: null,
                    list: '',
                    type: {
                        fw: false,
                        psd: false,
                    },
                },
                listFiles: [],
                listID: null,
                iconName: '',
                menu: true,
                currentList:'NEW',
                iconAmount:'',
                recordlist: false,
                recordData: [],
            };
        },
        created: function(){
            let self = this;

            window.addEventListener('click', function(e){
                var string = e.target.className;
                if (string.indexOf('menu') == -1){
                    self.menu = true;
                }
            })
        },
        methods: {
            updateIconAmount(obj){
                this.iconAmount = obj;
            },
            updateTypeBoxShow(obj) {
                this.typeShow = obj;
            },
            updateIconEditShow(obj) {
                this.iconEditShow = obj;
            },
            updateTags(obj) {
                this.icon.tagsData = obj;
            },
            updateFiles(obj) {
                this.icon.files = obj;
            },
            updateType(obj) {
                this.icon.type = obj;
            },
            updateLists(obj) {
                this.lists = obj;
                this.listsData1 = this.lists[0];
                this.listsData2 = this.lists[1];
            },
            updateEdit(obj) {
                let vm = this
                // if(vm.isShow.create || vm.isShow.edit) {
                    // if(vm.editId !== obj) {
                        // swal({
                        //     title: "確定切換編輯功能?",
                        //     text: "是否切換?",
                        //     icon: "warning",
                        //     buttons: true,
                        //     dangerMode: true,
                        // })
                        // .then((willDelete) => {
                            // if (willDelete) {
                                // swal("切換到編輯嘍！", {
                                // icon: "success",
                                // });
                                vm.editId = obj;
                                vm.isShow.edit = true
                                vm.isShow.create = false
                                for (let index = 0; index < vm.iconsData.length; index++) {
                                    if(vm.iconsData[index].id == vm.editId) {
                                        vm.icon = vm.iconsData[index];
                                        vm.iconName = vm.iconsData[index].name
                                    }
                                }

                                if(vm.edit == 'change') {
                                    vm.edit = true
                                } else{
                                    vm.edit = 'change'
                                }
                                // $("html, body").animate({ scrollTop: "0"}, 200 ,'swing');
                //             } else {
                //                 swal("好險你沒亂按");
                //             }
                //         });
                //     } else {
                //         swal("我認為你要編輯的是同一個圖標");
                //     }
                // } else {
                //     vm.editId = obj;
                //     vm.isShow.edit = true
                //     vm.edit = true
                //     for (let index = 0; index < vm.iconsData.length; index++) {
                //         if(vm.iconsData[index].id == vm.editId) {
                //             vm.icon = vm.iconsData[index];
                //             vm.iconName = vm.iconsData[index].name
                //         }
                //     }
                // }
            },
            showRecordList() {
                let vm = this;
                axios.get(vm.asset+'transrecordlist')
                    .then(function (response) {
                        vm.recordlist = true;
                        vm.recordData = response.data;
                    })
                    .catch(function (response) {
                        vm.errors = error.response.data.errors
                        swal("資料抓取失敗", {
                            icon: "warning",
                            buttons:false
                        });
                        setTimeout(function(){
                            $('.swal-overlay').removeClass('swal-overlay--show-modal');
                        },1000);
                    });
            },
            recordListChengePage(url){
                let vm = this;
                axios.get(url)
                    .then(function (response) {
                        vm.recordlist = true;
                        vm.recordData = response.data;
                    })
                    .catch(function (response) {
                        vm.errors = error.response.data.errors
                        swal("資料抓取失敗", {
                            icon: "warning",
                            buttons:false
                        });
                        setTimeout(function(){
                            $('.swal-overlay').removeClass('swal-overlay--show-modal');
                        },1000);
                    });
            },
            showEdit() {
                let vm = this;
                vm.isShow.edit = true
                vm.isShow.create = false
                vm.icon = {
                    name: '',
                    tagsData: [],
                    files: null,
                    list: '',
                    type: {
                        fw: false,
                        psd: false,
                    },
                }
                vm.iconName = ''
                vm.edit = true
                // $("html, body").animate({ scrollTop: "0"}, 200 ,'swing');

            },
            closePage() {
                let vm = this;
                // if(vm.isShow.create && !vm.icon.name.length && !vm.icon.tagsData.length && vm.icon.files == null && !vm.icon.list.length) {
                //     vm.isShow.edit = false
                //     vm.isShow.create = false
                // }else {
                    swal({
                        title: "取消會將更改的資料都清掉",
                        text: "是否確定取消？",
                        icon: "warning",
                        buttons: ['取消','確定'],
                        dangerMode: true,
                    })
                    .then((willDelete) => {
                        if (willDelete) {
                            vm.iconCreateShow = false;
                            vm.iconEditShow = false;
                            vm.getData();
                            vm.isShow.edit = false
                            vm.isShow.create = false
                            vm.icon = {
                                name: '',
                                tagsData: [],
                                files: null,
                                list: '',
                                type: {
                                    fw: false,
                                    psd: false,
                                },
                            }
                            vm.edit = false
                            vm.iconName = ''
                        }
                    });
                // }

            },
            checkData() {
                let vm = this;
                vm.filesCheck = false
                var pngCheck = false;
                if(vm.icon.files) {
                    for (let index = 0; index < vm.icon.files.length; index++) {
                        if (!vm.icon.files[index]) {
                            vm.filesCheck = false
                        } else {
                            vm.filesCheck = true
                        }
                        if(vm.icon.files[index].split(".").includes('png') && !vm.icon.files[index].split(".").includes('fw')){
                            pngCheck = true;
                        }
                    }
                }

                $('.input-group').removeClass('error');
                switch (true) {
                    case (!vm.iconName):
                        $('.edit-name').addClass('error');
                        break;
                    case (!vm.icon.list):
                        $('.edit-list').addClass('error');
                        break;
                    case (!vm.filesCheck):
                        $('.edit-flieUpload').addClass('error');
                        break;
                    case (!pngCheck):
                        $('.edit-flieUpload').addClass('error');
                        swal({
                            title: "png圖檔必須上傳",
                            text: "請選擇一個png圖檔",
                            icon: "warning",
                            buttons: '確定',
                            dangerMode: true,
                        })
                        break;
                    case (!vm.icon.tagsData.length):
                        $('.edit-tag').addClass('error');
                        break;
                    default:
                        !vm.edit ? vm.createData() : vm.updateData();
                }
            },
            createData() {
                let vm = this;
                swal({
                    title: "將要新增一個新的icon",
                    text: "是否確定新增？",
                    icon: "warning",
                    buttons: ['取消','確定'],
                    dangerMode: true,
                })
                .then((willDelete) => {
                    if (willDelete) {
                        swal("新增成功", {
                            icon: "success",
                            buttons:false
                        });
                        setTimeout(function(){
                            $('.swal-overlay').removeClass('swal-overlay--show-modal');
                        },1000);
                        vm.icon.name = vm.iconName;
                        axios.post("icons", vm.icon)
                            .then(function(response) {
                                vm.iconCreateShow = false;
                                vm.iconEditShow = false;
                                vm.getData();
                                vm.isShow.edit = false
                                vm.isShow.create = false
                                setTimeout(()=>{
                                    vm.typeFiles()
                                    vm.icon = {
                                        name: '',
                                        tagsData: [],
                                        files: null,
                                        list: '',
                                        type: {
                                            fw: false,
                                            psd: false,
                                        },
                                    }
                                    vm.iconName = ''
                                },1000)

                            })
                            .catch(function(error) {
                                vm.errors = error.response.data.errors
                            });
                    } else {
                        swal("有問題需要協助嗎?");
                    }
                });
            },
            getData() {
                let vm = this;
                axios.get('icons')
                    .then(function(response) {
                        vm.iconsData = response.data.reverse()
                        var modelL = response.data.length
                        for (var i = 0; i < modelL; i++) {
                            vm.iconsData[i] = response.data[i]
                            vm.iconsData[i].tagsData = JSON.parse(response.data[i].tagsData)
                            vm.iconsData[i].files = JSON.parse(response.data[i].files)
                            vm.iconsData[i].type = JSON.parse(response.data[i].type)
                        }
                    })
                    .catch(function(error) {
                        vm.errors = error.response.data.errors
                    });
            },
            updateData() {
                let vm = this;
                swal({
                    title: "將要更新此icon資料",
                    text: "是否確定更新？",
                    icon: "warning",
                    buttons: ['取消','確定'],
                    dangerMode: true,
                })
                .then((willDelete) => {
                    if (willDelete) {
                        let id = vm.editId
                        vm.icon.name = vm.iconName
                        axios.put("icons/" + id, vm.$data.icon)
                            .then(function(response) {
                                setTimeout(()=>{
                                    vm.typeFiles()
                                },1000)
                                swal("更新成功", {
                                    icon: "success",
                                    buttons:false
                                });
                                setTimeout(function(){
                                    $('.swal-overlay').removeClass('swal-overlay--show-modal');
                                    vm.iconCreateShow = false;
                                    vm.iconEditShow = false;
                                    vm.getData();
                                    vm.isShow.edit = false
                                    vm.isShow.create = false
                                    vm.icon = {
                                        name: '',
                                        tagsData: [],
                                        files: null,
                                        list: '',
                                        type: {
                                            fw: false,
                                            psd: false,
                                        },
                                    }
                                    vm.edit = false
                                    vm.iconName = ''
                                },1000);
                            })
                            .catch(function(error) {
                                vm.errors = error.response.data.errors
                                swal("更新失敗", {
                                    icon: "warning",
                                    buttons:false
                                });
                                setTimeout(function(){
                                    $('.swal-overlay').removeClass('swal-overlay--show-modal');
                                },1000);
                            });
                    }
                });
            },
            deleteItem() {
                let vm = this;
                swal({
                    title: "將要刪除這個icon",
                    text: "是否確定刪除？",
                    icon: "warning",
                    buttons: ['取消','確定'],
                    dangerMode: true,
                })
                .then((willDelete) => {
                    if (willDelete) {
                        swal("刪除成功", {
                            icon: "success",
                            buttons:false
                        });
                        setTimeout(function(){
                            $('.swal-overlay').removeClass('swal-overlay--show-modal');
                        },1000);
                        let id = vm.editId
                        axios.delete("icons/" + id)
                            .then(function(response) {
                                vm.iconCreateShow = false;
                                vm.iconEditShow = false;
                                vm.isShow.edit = false
                                vm.isShow.create = false
                                vm.edit = false
                                vm.getData();
                                setTimeout(()=>{
                                    vm.typeFiles()
                                    vm.icon = {
                                        name: '',
                                        tagsData: [],
                                        files: null,
                                        list: '',
                                        type: {
                                            fw: false,
                                            psd: false,
                                        },
                                    }
                                    vm.iconName = ''
                                },1000)
                            })
                            .catch(function(error) {
                                vm.errors = error.response.data.errors
                            });
                    }
                });
            },
            searchBox() {
                this.$refs["search-box"].focus()
            },
            typeBoxShow() {
                this.typeShow ? this.typeShow = false : this.typeShow = true
            },
            iconCreateBoxShow() {
                let vm = this;
                vm.iconCreateShow ? vm.iconCreateShow = false : vm.iconCreateShow = true;
                if(vm.iconCreateShow){
                    vm.isShow.create = true;
                    if(vm.iconEditShow){
                        vm.iconEditShow = false;
                        vm.isShow.edit = false;
                    }
                }else{
                    vm.isShow.create = false;
                    vm.getData();
                    vm.isShow.edit = false
                    vm.isShow.create = false
                    vm.icon = {
                        name: '',
                        tagsData: [],
                        files: null,
                        list: '',
                        type: {
                            fw: false,
                            psd: false,
                        },
                    }
                    vm.edit = false
                    vm.iconName = ''
                }
            },
            iconEditBoxShow() {
                let vm = this;
                vm.iconEditShow ? vm.iconEditShow = false : vm.iconEditShow = true;
                if(vm.iconEditShow){
                    vm.isShow.edit = true;
                    if(vm.iconCreateShow){
                        vm.iconCreateShow = false;
                        vm.isShow.create = false;
                    }
                }else{
                    vm.isShow.edit = false;
                    vm.getData();
                    vm.isShow.edit = false
                    vm.isShow.create = false
                    vm.icon = {
                        name: '',
                        tagsData: [],
                        files: null,
                        list: '',
                        type: {
                            fw: false,
                            psd: false,
                        },
                    }
                    vm.edit = false
                    vm.iconName = ''
                }
            },
            typeFiles() {
                let vm = this;
                vm.listFiles = {
                    type: vm.icon.list,
                    png: [],
                    fw: [],
                    psd: []
                }

                for (let index = 0; index < vm.iconsData.length; index++) {
                    if(vm.iconsData[index].list == vm.listFiles.type) {
                        for (let index2 = 0; index2 < vm.iconsData[index].files.length; index2++) {
                            if(vm.iconsData[index].files[index2].split(".").includes('png') &&  !vm.iconsData[index].files[index2].split(".").includes('fw')) {
                            vm.listFiles.png.push(vm.iconsData[index].files[index2])
                            }
                            if(vm.iconsData[index].files[index2].split(".").includes('fw')) {
                                vm.listFiles.fw.push(vm.iconsData[index].files[index2])
                            }
                            if(vm.iconsData[index].files[index2].split(".").includes('psd')) {
                                vm.listFiles.psd.push(vm.iconsData[index].files[index2])
                            }
                        }

                    }
                }
                for (let index = 0; index < vm.listsData1.length; index++) {
                    if(vm.listFiles.type == vm.listsData1[index].type) {
                        vm.listID = vm.listsData1[index].id
                    }
                }
                if( !vm.listFiles.png.length) vm.listFiles.png = null
                if( !vm.listFiles.fw.length) vm.listFiles.fw = null
                if( !vm.listFiles.psd.length) vm.listFiles.psd = null

                if(vm.listID) {
                    vm.typeUpdate()
                }
            },
            typeUpdate() {
                let vm = this;
                axios.put('types/'+ vm.listID, vm.listFiles)
                    .then(function(response) {
                        vm.listID = null
                    })
                    .catch(function(error) {
                        vm.errors = error.response.data.errors
                    });
            },
            zipTest(key) {
                let id = this.listsData1[key].id
                location.href = "zip/" + id
            },
            clearData(){

            }

        }
    };
</script>