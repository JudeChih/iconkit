<template>
    <div id="mainBody" :class="{animation: pageFirst, first: pageFirst, pack: pageList, paused : headerAni}" @click="">
        <div class="first-page-header-wrap" v-if="pageFirst">
            <div class="menu-wrap first">
                <div class="btn-menu" v-if="menu" @click="menu = false"></div>
                <div class="menu-close" v-else="menu" @click="menu = true"></div>
                <div class="menu-box" v-if="menu == false">
                    <div class="menu-overflow">
                        <div class="menu-item" v-for="(list, key) in lists">
                            <a class="menu-item-title" :href="asset+'list/'+ list.id">{{list.type}}</a>
                        </div>
                    </div>
                </div>
            </div>
            <a href="" class="logo" ><img :src="asset+'image/logo.png'" @click.stop.prevent="firstPageFun()"/></a>
        </div>
        <!-- page-header  -->
        <div id="page-header" :class="{pageList: pageList, pageSingle: pageSingle, pageListIcon: pageListIcon}">
            <div class="header-wrap">
                <template v-if="pageFirst">
                    <div class="cloud01"></div>
                    <div class="cloud02"></div>
                    <div class="boat"></div>
                    <div class="first-iconkit-title"></div>
                    <p class="first-iconkit-content">功能操作再進化，即刻掌握所需ICON。只要你想要的，都能輕鬆辦到</p>
                    <div class="search">
                        <input id="searchInput" class="placeholder" type="text" placeholder="請輸入關鍵字搜尋" ref="searchInput" @focus="headerAni = true" @blur="headerAni = false" v-model="searchTemp" @keyup.enter="searchFun()"/>
                        <input class="search-btn" type="submit" @click="searchFun()"/>
                    </div>
                </template>
                <template v-else>
                    <div class="header-main">
                        <div class="list-menu-wrap" v-if="!pageFirst">
                            <div class="btn-menu" v-if="menu" @click="menu = false"></div>
                            <div class="menu-close" v-else="menu" @click="menu = true"></div>
                            <div class="menu-box" v-if="menu == false">
                                <div class="menu-overflow">
                                    <div class="menu-item" v-for="(list, key) in lists">
                                        <a class="menu-item-title" :href="asset+'list/'+ list.id">{{list.type}}</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a href="" class="logo"><img :src="asset+'image/logo.png'" width="100%" @click.stop.prevent="firstPageFun()"/></a>
                        <div class="search">
                            <input id="searchInput" class="placeholder" :class="{'error' : notFound}" type="text" placeholder="請輸入關鍵字搜尋" ref="searchInput" @focus="headerAni = true" @blur="headerAni = false" v-model="searchTemp" @input="searchFun()" @compositionstart="listen_input_start()" @compositionend="listen_input_end()">
                            <div class="icon-warning" :class="{'error' : notFound}"></div>
                            <div class="custom-select">
                                <div class="show-box select" @click="showBoxOrNot()">
                                    {{searchSelect}}
                                </div>
                                <div class="select-box" v-if="clickShowBox">
                                    <div :class="{'current': searchSelect == '單一'}" @click="searchSelect = '單一',clickShowBox = false,changeSearchPage()">單一</div>
                                    <div :class="{'current': searchSelect == '圖標集'}" @click="searchSelect = '圖標集',clickShowBox = false,changeSearchPage()">圖標集</div>
                                    <div :class="{'current': searchSelect == '單一圖標集'}" @click="searchSelect = '單一圖標集',clickShowBox = false,changeSearchPage()">單一圖標集</div>
                                </div>
                            </div>
                            <input class="search-btn" type="submit" @click="searchFun()"/>
                        </div>
                        <a v-if="pageSingle && haveSelected" @click="downloadAll()" href="#" class="btn_download">下載({{selectedAmount}})</a>
                        <a v-if="pageSingle && haveSelected" @click="clearAndRefresh('selectedToDownload')" href="#" class="btn_clear">清除</a>
                    </div>
                </template>
            </div>
        </div>
        <!-- page-container -->
        <div id="page-container">
            <template>
                <div class="title-bar-pageList" v-if="pageList">
                    <div class="title-bar-pageList-wrap">
                        <span v-if="searchCompu && !notFound">找到{{searchCompu.length}}個</span>
                        <h1 v-if="!notFound && searchTemp">{{searchTemp}}</h1>
                        <h1 v-else="!notFound && searchTemp">全部</h1>
                        <span>圖標集</span>
                        <div class="related">
                            <div class="related-title">相關連結: </div>
                            <a class="related-link" href="" v-for="(tag, index) in tags" @click.stop.prevent="tagSearchFun(tag)">{{tag}}</a>
                        </div>
                    </div>
                </div>
                <div class="title-bar-pageListIcon" v-if="pageListIcon">
                    <div class="title-bar-pageListIcon-wrap">
                        <div class="title-bar-content">
                            <h1>{{listType}}</h1>
                            <span v-if="searchCompu">icons ({{searchCompu.length}})</span>
                            <div class="pack-download">
                                <a :href="currentURL+ '/zip/'+ listID" @click="typeUpdate(listID)"></a>
                            </div>
                            <a v-if="haveSelected" @click="downloadAll()" href="#" class="btn_download">下載({{selectedAmount}})</a>
                            <a v-if="haveSelected" @click="clearAndRefresh('selectedToDownload')" href="#" class="btn_clear">清除</a>
                        </div>
                    </div>
                    <div class="related-wrap">
                        <div class="related-content">
                            <div class="related">
                                <div class="related-title">相關連結: </div>
                                <a class="related-link" href="" v-for="(tag, index) in tags" @click.stop.prevent="tagSearchFun(tag)">{{tag}}</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="title-bar-pageSingle" v-if="pageSingle">
                    <div class="title-bar-pageSingle-wrap">
                        <h1 v-if="!notFound && searchTemp">{{searchTemp}}</h1>
                        <h1 v-else="!notFound && searchTemp">全部</h1>
                        <span v-if="searchCompu">icons ({{searchCompu.length}})</span>
                        <div class="related">
                            <div class="related-content">
                                <div class="related-title">相關連結: </div>
                                <a class="related-link" href="" v-for="(tag, index) in tags" @click.stop.prevent="tagSearchFun(tag)">{{tag}}</a>
                            </div>
                        </div>
                    </div>
                </div>
            </template>
            <div id="page-body">
                 <template v-if="pageFirst">
                    <div class="first-title">精選圖標集</div>
                    <div class="first-pack-list">
                        <ul class="clearfix">
                            <li class="first-pack" v-for="(list, key) in lists" v-if="list.png">
                                <a class="first-pack-pic clearfix" :href="asset+'list/'+ list.id">
                                    <img v-for="(img, index) in list.png" v-if="index < 9 && list.png" :src="currentURL + img" />
                                </a>
                                <a class="first-pack-title" :href="asset+'list/'+ list.id">{{list.type}}</a>
                                <div class="first-pack-subtitle" v-if="list.png">{{list.png.length}} icons</div>
                                <div class="first-pack-subtitle" v-else="list.png">0 icons</div>
                                <a class="first-pack-download" :href="currentURL+ '/zip/'+ list.id" @click="typeUpdate(list.id)"></a>
                            </li>
                        </ul>
                    </div>
                 </template>
                 <template v-else-if="pageList">
                    <div class="pack-list pageList">
                        <ul class="clearfix">
                            <template v-if="searchCompu">
                                <li class="pack" v-for="(list, key) in searchCompu">
                                    <a class="pack-pic clearfix" :href="asset+'/list/'+ list.id">
                                        <img v-for="(img, index) in list.png" v-if="index < 9 && list.png" :src="currentURL + img" />
                                    </a>
                                    <a class="pack-title" :href="asset+'/list/'+ list.id">{{list.type}}</a>
                                    <div class="pack-subtitle" v-if="list.png">{{list.png.length}} icons</div>
                                    <div class="pack-subtitle" v-else="list.png">0 icons</div>
                                    <a class="pack-download" :href="currentURL+ '/zip/'+ list.id" @click="typeUpdate(list.id)"></a>
                                </li>
                            </template>
                             <template v-else>
                                <span>搜尋不到相關圖標或圖標集</span>
                            </template>
                        </ul>
                    </div>
                 </template>
                 <template v-else-if="pageListIcon">
                    <div class="icon-list grid pageListIcon">
                        <ul class="clearfix">
                            <!-- <li class="mix icon" :class="{'selected':checkSelect(list.id)}" v-for="(list, key) in listTypeCompu" :data-id=list.id>
                                <div class="icon-pic select" @click="selectIcon(list.id)"><a href="" @click.stop.prevent="showlistIcon(key)"><img :src="currentURL + list.files[0]"/></a></div>
                                <div class="icon-title" @click="selectIcon(list.id)"><a href="" @click.stop.prevent="showlistIcon(key)">{{list.name}}</a></div>
                                <div class="icon-download">
                                    <a :href="currentURL + '/downloadicon?id=' + list.id + '&type=PNG'">PNG</a>
                                    <a :href="currentURL + '/downloadicon?id=' + list.id + '&type=FW'" v-if="list.type.fw">FW</a>
                                    <a :href="currentURL + '/downloadicon?id=' + list.id + '&type=PSD'" v-if="list.type.psd">PSD</a>
                                </div>
                            </li> -->
                            <template v-if="searchCompu">
                                <li class="mix icon" :class="{'selected':checkSelect(list.id)}" v-for="(list, key) in searchCompu" :data-id=list.id>
                                    <div class="icon-pic select" @click="selectIcon(list.id)"><a href="" @click.stop.prevent="showSingleIcon(key)"><img :src="currentURL + list.files[0]"/></a></div>
                                    <div class="icon-title" @click="selectIcon(list.id)"><a href="" @click.stop.prevent="showSingleIcon(key)">{{list.name}}</a></div>
                                    <div class="icon-download">
                                        <a :href="currentURL + '/downloadicon?id=' + list.id + '&type=PNG'">PNG</a>
                                        <a :href="currentURL + '/downloadicon?id=' + list.id + '&type=FW'" v-if="list.type.fw">FW</a>
                                        <a :href="currentURL + '/downloadicon?id=' + list.id + '&type=PSD'" v-if="list.type.psd">PSD</a>
                                    </div>
                                </li>
                            </template>
                            <template v-else>
                                <span>搜尋不到相關圖標或圖標集</span>
                            </template>
                        </ul>
                    </div>
                 </template>
                 <template v-else-if="pageSingle">
                    <div class="icon-list grid pageSingle">
                        <ul class="clearfix">
                            <template v-if="searchCompu">
                                <li class="mix icon" :class="{'selected':checkSelect(list.id)}" v-for="(list, key) in searchCompu" :data-id=list.id>
                                    <div class="icon-pic select" @click="selectIcon(list.id)"><a href="" @click.stop.prevent="showSingleIcon(key)"><img :src="currentURL + list.files[0]"/></a></div>
                                    <div class="icon-title" @click="selectIcon(list.id)"><a href="" @click.stop.prevent="showSingleIcon(key)">{{list.name}}</a></div>
                                    <div class="icon-download">
                                        <a :href="currentURL + '/downloadicon?id=' + list.id + '&type=PNG'">PNG</a>
                                        <a :href="currentURL + '/downloadicon?id=' + list.id + '&type=FW'" v-if="list.type.fw">FW</a>
                                        <a :href="currentURL + '/downloadicon?id=' + list.id + '&type=PSD'" v-if="list.type.psd">PSD</a>
                                    </div>
                                </li>
                            </template>
                            <template v-else>
                                <span>搜尋不到相關圖標或圖標集</span>
                            </template>
                        </ul>
                    </div>
                 </template>
            </div>
        </div>
        <!-- 因為footer是懸空的所以塞一個假區塊撐出高度 -->
        <div class="fake-block"></div>
        <!-- page-footer -->
        <div id="page-footer">
            <div class="copyright">2019 Copyright &copy; iconKit Reserved</div>
            <div class="footer-title">有任何問題請詢問網頁設計部 - 開發組</div>
        </div>
        <!-- 彈跳視窗 -->
        <div class="cover">
            <div class="close"></div>
            <div class="close-block"></div>
            <template v-if="icon.name">
                <div class="page-block">
                    <div class="page-show" :class="{mask: showIconMask}">
                        <div class="page-show-group">
                            <div class="page-show-head clearfix">
                                <div class="page-show-title">{{icon.name}}</div>
                                <div class="page-show-note">更多icon在<a :href="asset + 'list/'+ iconListID">{{icon.list}}</a>這圖標集裡面</div>
                            </div>
                            <div class="page-show-pic">
                                <div class="page-show-bPic"><img :src="currentURL + icon.files[0]" /></div>
                            </div>
                            <div class="page-show-tag">
                                <span>相關連結:</span>
                                <a href="" v-for="(tag, key) in icon.tagsData" @click.stop.prevent="tagSearchFun(tag)">{{tag}}</a>
                            </div>
                            <div class="page-show-download">
                                <a :href="currentURL + '/downloadicon?id=' + icon.id + '&type=PNG'">PNG</a>
                                <a :href="currentURL + '/downloadicon?id=' + icon.id + '&type=FW'" v-if="icon.type.fw">FW</a>
                                <a :href="currentURL + '/downloadicon?id=' + icon.id + '&type=PSD'" v-if="icon.type.psd">PSD</a>
                            </div>
                            <div class="page-show-title sub-title">{{icon.list}} <span> ({{showList.length}}) icons</span><div class="page-show-packDownload"><a :href="currentURL+ '/zip/'+ iconListID" @click="typeUpdate(iconListID)"></a></div></div>
                            <div class="page-show-iconList">
                                <ul class="clearfix">
                                    <template v-for="(list, index) in showList">
                                        <li class="page-show-icon" v-if="index < 14">
                                            <a href="#" @click.stop.prevent="showIcon(index)"><img :src="currentURL + list.files[0]"/></a>
                                        </li>
                                    </template>
                                </ul>
                            </div>
                            <div class="page-show-all"><a :href="asset + 'list/'+ iconListID">查看所有icon</a></div>
                        </div>
                    </div>
                </div>
                <div class="page-show-arrow">
                    <p class="arrow-left" @click="showL()"></p>
                    <p class="arrow-right" @click="showR()"></p>
                </div>
            </template>
        </div>
    </div>
</template>

<script>
    export default {
        props: ["asset","cms","fw"],
        data() {
            return {
                pageFirst: true,
                pageList: false,
                pageListIcon: false,
                pageSingle: false,
                headerAni : false,
                grid : true,
                showIconMask: true,
                listID: null,
                iconListID: null,
                currentURL: "",
                downloadURL:"",
                returnURL:"",
                listType : '',
                searchTemp: '',
                search: '',
                searchError: '',
                select: '',
                searchSelect: '單一',
                tags: [],
                showSameIcon: [],
                showList: [],
                lists: [],
                iconsData: [],
                ListIcon: [],
                icon: {},
                menu: true,
                composing:true,
                clickShowBox:false,
                selectedToDownload:'',
                haveSelected:false,
                selectedAmount:0,
                selectedToDownload:'',
                notFound:false,
            };
        },
        created: function(){
            let self = this;

            let url = new URL(location.href);
            if(url.hostname.indexOf('192.168') > -1){
                self.currentURL = "http://192.168.160.227:8082";
                self.downloadURL = "http://192.168.160.227:8082/downloadall";
                self.returnURL = "http://192.168.160.227:8081"
            }else{
                self.currentURL = "http://iconkit-wms.bbinpartner.com";
                self.downloadURL = "http://iconkit-wms.bbinpartner.com/downloadall";
                self.returnURL = "http://iconkit.bbinpartner.com"
            }
        
            console.log(url.hostname.indexOf('e'))

            window.addEventListener('click', function(e){
                var string = e.target.className;
                if (string.indexOf('menu') == -1){
                    self.menu = true;
                }
                if(string.indexOf('select') == -1){
                    self.clickShowBox = false;
                }
            })

            var string = self.getCookie('selectedToDownload');
            var array = [];
            if(string != null){
                array = JSON.parse(decodeURIComponent(string));
            }
            if(array.length > 0){
                self.haveSelected = true;
            }

            self.changeSelectedAmount();
        },
        computed: {
            searchCompu() {
                let vm = this;
                if(vm.searchSelect == '圖標集'){
                    vm.select = 'list';
                }else if(vm.searchSelect == '單一'){
                    vm.select = 'icon';
                }else{
                    vm.select = 'listicon'
                }
                if (vm.searchTemp.length > 0) {
                    vm.searchTemp = vm.searchTemp.replace(/\+/g,'');
                    vm.searchTemp = vm.searchTemp.replace(/\*/g,'');
                    if(vm.select == 'list') {
                        vm.pageList = true;
                        vm.pageListIcon = false;
                        vm.pageSingle = false;
                        var qq = vm.lists.filter((list) => {
                            let searchCompu = list.type.toLowerCase().match(vm.searchTemp.toLowerCase())

                            if (searchCompu) {
                                return searchCompu
                            }else {
                                vm.searchError = vm.searchTemp
                            }
                        });
                        if(qq.length > 0){
                            vm.notFound = false;
                            return qq;
                        }else{
                            vm.notFound = true;
                            return vm.lists;
                        }
                    } else if(vm.select == 'icon') {
                        vm.pageList = false;
                        vm.pageListIcon = false;
                        vm.pageSingle = true;
                        let searchName = vm.iconsData.filter((icon) => {
                            let searchCompu = icon.name.toLowerCase().match(vm.searchTemp.toLowerCase())
                            if (searchCompu) {
                                return searchCompu
                            }else {
                                vm.searchError = vm.searchTemp
                            }
                        });
                        let searchTags = vm.iconsData.filter((icon) => {
                            let searchCompu = icon.tagsData.toString().toLowerCase().match(vm.searchTemp.toLowerCase())
                            if (searchCompu) {
                                return searchCompu

                            }else {
                                vm.searchError = vm.searchTemp
                            }
                        });

                        let uniq = (arrArg) => {
                            return arrArg.filter((elem, pos, arr) => {
                                return arr.indexOf(elem) == pos;
                            });
                        }
                        let searchTwice = uniq(searchName.concat(searchTags))
                        if(searchTwice.length > 0){
                            vm.notFound = false;
                            return searchTwice;
                        }else{
                            vm.notFound = true;
                            return vm.iconsData;
                        }
                    } else if(vm.select == 'listicon') {
                        vm.pageList = false;
                        vm.pageListIcon = true;
                        vm.pageSingle = false;
                        let searchList = vm.iconsData.filter((icon) => {
                            let searchCompu = icon.list.toLowerCase().match(vm.listType.toLowerCase())
                            if (searchCompu) {
                                return searchCompu
                            }
                        });
                        let searchName = searchList.filter((icon) => {
                            let searchCompu = icon.name.toLowerCase().match(vm.searchTemp.toLowerCase())
                            if (searchCompu) {
                                return searchCompu
                            }
                        });
                        let searchTags = searchList.filter((icon) => {
                            let searchCompu = icon.tagsData.toString().toLowerCase().match(vm.searchTemp.toLowerCase())
                            if (searchCompu) {
                                return searchCompu
                            }
                        });

                        let uniq = (arrArg) => {
                            return arrArg.filter((elem, pos, arr) => {
                                return arr.indexOf(elem) == pos;
                            });
                        }

                        let searchTwice = uniq(searchName.concat(searchTags))

                        if(searchTwice.length > 0){
                            vm.notFound = false;
                            return searchTwice;
                        }else{
                            vm.notFound = true;
                            return searchList;
                        }
                    }
                } else {
                    if(vm.searchSelect == '圖標集'){
                        vm.notFound = false;
                        return vm.lists;
                    }else if(vm.searchSelect == '單一'){
                        vm.notFound = false;
                        return vm.iconsData;
                    }else if(vm.searchSelect == '單一圖標集'){
                        vm.notFound = false;
                        return vm.iconsData.filter((icon) => {
                            let searchCompu = icon.list.toLowerCase().match(vm.listType.toLowerCase())
                            if (searchCompu) {
                                return searchCompu
                            }
                        });
                    }
                }
            },
            tagsRandom() {
                let vm = this;
                if(vm.iconsData) {
                    if(vm.select == 'list') {
                        var aa = vm.iconsData.filter((icon) => {
                            let tagsRandom = icon.list.toLowerCase().match(vm.searchTemp.toLowerCase())
                            return tagsRandom
                        })
                        if(aa.length > 0){
                            return aa;
                        }else{
                            var bb = '';
                            return vm.iconsData.filter((icon) => {
                                let tagsRandom = icon.list.toLowerCase().match(bb.toLowerCase())
                                return tagsRandom
                            })
                        }
                    } else if(vm.select == 'icon') {
                        let nameFilter = vm.iconsData.filter((icon) => {
                            let tagsRandom = icon.name.toLowerCase().match(vm.searchTemp.toLowerCase())
                            return tagsRandom
                        });
                        let tagFilter = vm.iconsData.filter((icon) => {
                            let iconTag = icon.tagsData.toString()
                            let tagsRandom = iconTag.toLowerCase().match(vm.searchTemp.toLowerCase())
                            return tagsRandom
                        });

                        let uniqEs6 = (arrArg) => {
                            return arrArg.filter((elem, pos, arr) => {
                                return arr.indexOf(elem) == pos;
                            });
                        }
                        let tagTwice = uniqEs6(nameFilter.concat(tagFilter));
                        if(tagTwice.length > 0){
                            return tagTwice
                        }else{
                            var bb = '';
                            let nameFilter = vm.iconsData.filter((icon) => {
                                let tagsRandom = icon.name.toLowerCase().match(bb.toLowerCase())
                                return tagsRandom
                            });
                            let tagFilter = vm.iconsData.filter((icon) => {
                                let iconTag = icon.tagsData.toString()
                                let tagsRandom = iconTag.toLowerCase().match(bb.toLowerCase())
                                return tagsRandom
                            });

                            let uniqEs6 = (arrArg) => {
                                return arrArg.filter((elem, pos, arr) => {
                                    return arr.indexOf(elem) == pos;
                                });
                            }
                            let tagTwice = uniqEs6(nameFilter.concat(tagFilter));
                            return tagTwice;
                        }
                    } else if(vm.select == 'listicon'){
                        let listFilter = vm.iconsData.filter((icon) => {
                            let tagsRandom = icon.list.toLowerCase().match(vm.listType.toLowerCase())
                            return tagsRandom
                        });
                        let nameFilter = listFilter.filter((icon) => {
                            let tagsRandom = icon.name.toLowerCase().match(vm.searchTemp.toLowerCase())
                            return tagsRandom
                        });
                        let tagFilter = listFilter.filter((icon) => {
                            let iconTag = icon.tagsData.toString()
                            let tagsRandom = iconTag.toLowerCase().match(vm.searchTemp.toLowerCase())
                            return tagsRandom
                        });

                        let uniqEs6 = (arrArg) => {
                            return arrArg.filter((elem, pos, arr) => {
                                return arr.indexOf(elem) == pos;
                            });
                        }
                        let tagTwice = uniqEs6(nameFilter.concat(tagFilter));

                        if(tagTwice.length > 0){
                            return tagTwice
                        }else{
                            let listFilter = vm.iconsData.filter((icon) => {
                                let tagsRandom = icon.list.toLowerCase().match(vm.listType.toLowerCase())
                                return tagsRandom
                            });
                            return listFilter;
                        }
                    }
                }
            },
            listTypeCompu() {
                let vm = this;
                if (vm.listType.length > 0) {
                    return vm.iconsData.filter((icon) => {
                        let listTypeCompu = icon.list.toLowerCase().match(vm.listType.toLowerCase());
                        return listTypeCompu
                    });
                } else {
                    return null
                }
            },

        },
        watch: {
            searchSelect() {
                this.$refs.searchInput.focus();
            },
        },
        mounted() {
            let vm = this;
            vm.listIconPage();
            vm.$nextTick(() => {
                vm.locationSearch();
                vm.getData();
                vm.getList();
            })
            setTimeout(() =>{
                vm.mixitupUser();
                $(".close").click(function() {
                    $(".cover").fadeOut(300);
                    $("#mainBody").removeClass('maxHeight');
                });
                $(".close-block").click(function() {
                    $(".cover").fadeOut(300);
                    $("#mainBody").removeClass('maxHeight');
                });
            },100)
        },
        methods: {
            clearAndRefresh(name){
                let self = this;
                var urlstring = "http://"+window.location.host + window.location.pathname;
                if(self.pageListIcon){
                    self.delCookie(name);
                    window.location = urlstring;
                }else{
                    var ipos = urlstring.indexOf("public");
                    var str1 = urlstring.substring(0,ipos+6); //取前部分
                    self.delCookie(name);
                    window.location = str1+'?icon=';
                }
            },
            changeSelectedAmount() {
                let self = this;
                var string = self.getCookie('selectedToDownload');
                var array = [];
                if(string != null){
                    array = JSON.parse(decodeURIComponent(string));
                    self.selectedAmount = array.length;
                }else{
                    self.selectedAmount = 0;
                }
            },
            downloadAll(){
                let self = this;
                // 新增一個dom元素a並點擊觸發下載
                var link = document.createElement('a');
                var string = self.getCookie('selectedToDownload');
                self.delCookie('selectedToDownload');
                link.classList.add("image_download");
                link.style.display = 'none';
                link.setAttribute('href',self.downloadURL+'?selectedToDownload='+string);
                document.body.appendChild(link);
                link.click();
                document.body.removeChild(link);

                setTimeout(function(){
                    window.location = self.returnURL+'?icon=';
                },2000);
            },
            selectIcon(id){
                let self = this;
                var string = self.getCookie('selectedToDownload');
                var array = [];
                if(string != null){
                    array = JSON.parse(decodeURIComponent(string));
                }

                var target = $('.icon-list li[data-id='+id+']');
                if(target.hasClass('selected')){
                    target.removeClass('selected');
                    for (var i = 0; i < array.length; i++) {
                        if(array[i] == id){
                            array.splice(i,1);
                        }
                    }
                }else{
                    target.addClass('selected');
                    array.push(id);
                }
                self.setCookie('selectedToDownload',JSON.stringify(array),1);
                self.changeSelectedAmount();
                if(array.length > 0){
                    self.haveSelected = true;
                }else{
                    self.haveSelected = false;
                }
            },
            checkSelect(id){
                let self = this;
                var string = self.getCookie('selectedToDownload');
                var array = [];
                if(string != null){
                    array = JSON.parse(decodeURIComponent(string));
                }else{
                    return false;
                }
                if(array.length > 0){
                    var boolean = false;
                    for (var i = 0; i < array.length; i++) {
                        if(array[i] == id){
                            boolean = false;
                            return true;
                        }
                        if(boolean && i == array.length -1){
                            return false;
                        }
                    }
                }else{
                    return false;
                }
            },
            getCookie(name) {
                let self = this;
                var arr, reg = new RegExp("(^| )" + name + "=([^;]*)(;|$)");
                if (arr = document.cookie.match(reg)){
                    return (arr[2]);
                }else{
                    return null;
                }
            },
            delCookie (name) {
                let self = this;
                var exp = new Date();
                exp.setTime(exp.getTime() - 1);
                var cval = self.getCookie(name);
                if (cval != null){
                    document.cookie = name + "=" + cval + ";path=/" + ";expires=" + exp.toGMTString();
                }
            },
            setCookie (name, value, expiredays) {
                let self = this;
                var exdate = new Date();
                exdate.setDate(exdate.getDate() + expiredays);
                document.cookie = name + "=" + escape(value) + ";path=/" + ((expiredays == null) ? "" : ";expires=" + exdate.toGMTString());
            },
            changeSearchPage(){
                let vm = this;
                if(vm.searchSelect == '圖標集'){
                    vm.pageList = true;
                    vm.pageListIcon = false;
                    vm.pageSingle = false;
                }else if (vm.searchSelect == '單一'){
                    vm.pageList = false;
                    vm.pageListIcon = false;
                    vm.pageSingle = true;
                }else if (vm.searchSelect == '單一圖標集'){
                    vm.pageList = false;
                    vm.pageListIcon = true;
                    vm.pageSingle = false;
                }
                setTimeout(() =>{
                    vm.changeTags();
                },100);
            },
            showBoxOrNot(){
                let vm = this;
                if(vm.clickShowBox){
                    vm.clickShowBox = false;
                }else{
                    vm.clickShowBox = true;
                }
            },
            //監聽搜尋框 注音輸入開始
            listen_input_start:function(){
                let self = this;
                self.composing = false;
            },
            //監聽搜尋框 注音輸入結束
            listen_input_end:function(){
                let self = this;
                self.composing = true;
            },
            compare(a, b) {
                const numA = a.num;
                const numB = b.num;
                let comparison = 0;
                if (numA < numB) {
                    comparison = 1;
                } else if (numA > numB) {
                    comparison = -1;
                }
                return comparison;
            },
            getData() {
                let vm = this;
                axios.get(vm.asset+'icons')
                    .then(function(response) {
                        vm.iconsData = response.data.reverse()
                        let modelL = response.data.length
                        for (let i = 0; i < modelL; i++) {
                            vm.iconsData[i] = response.data[i]
                            vm.iconsData[i].tagsData = JSON.parse(response.data[i].tagsData)
                            let files = JSON.parse(response.data[i].files)
                            vm.iconsData[i].type = JSON.parse(response.data[i].type)
                            vm.iconsData[i].files = []
                            for (let j = 0; j < files.length; j++) {
                                let fileType = files[j].split(".").reverse()
                                if(fileType[0] == 'png' && fileType.length == 2) {
                                    vm.iconsData[i].files[0] = files[j]
                                }
                                if(fileType[0] == 'png' && fileType.length == 3) {
                                    vm.iconsData[i].files[2] = files[j]
                                }
                                if(fileType[0] == 'psd' && fileType.length == 2) {
                                    vm.iconsData[i].files[1] = files[j]
                                }
                            }
                        }
                    })
                    .catch(function(error) {
                        vm.errors = error.response.data.errors
                    });
            },
            getList() {
                let vm = this;
                axios.get(vm.asset+'types')
                    .then(function(response) {
                        let modelL = response.data.length
                        for (let i = 0; i < modelL; i++) {
                            vm.lists[i] = response.data[i]
                            if(response.data[i].png) {
                                vm.lists[i].png = JSON.parse(response.data[i].png)
                            }
                            if(response.data[i].fw) {
                                vm.lists[i].fw = JSON.parse(response.data[i].fw)
                            }
                            if(response.data[i].psd) {
                                vm.lists[i].psd = JSON.parse(response.data[i].psd)
                            }
                        }
                        vm.lists = vm.lists.sort(vm.compare)
                        let listUrl = location.pathname.split("/").reverse();
                         for (let i = 0; i < vm.lists.length; i++) {
                            if(listUrl[0] == vm.lists[i].id) {
                                vm.listType = vm.lists[i].type
                                vm.listID = vm.lists[i].id
                            }
                        }
                        setTimeout(() =>{
                            vm.tagsFun();
                        },100)
                    })
                    .catch(function(error) {
                        vm.errors = error.response.data.errors
                    });
            },
            typeUpdate(key) {
                let vm = this;
                for (let i = 0; i < vm.lists.length; i++) {
                    if(key == vm.lists[i].id) {
                        vm.lists[i].num = vm.lists[i].num + 1
                         vm.$nextTick(() => {
                            let listsUpate = vm.lists[i]
                            axios.put(vm.asset+'types/'+ key, listsUpate)
                                .then(function(response) {
                                    // response.redirect('/contact')
                                })
                                .catch(function(error) {
                                    vm.errors = error.response.data.errors
                                });
                         })
                    } else {
                    }
                }
            },
            searchFun() {
                let vm = this;
                if(vm.composing){
                    if(vm.pageFirst){
                        if(vm.searchTemp) {
                            if( vm.searchSelect == '圖標集') {
                                let list = vm.asset + "?list="+ vm.searchTemp.replace(/\\/g,'')
                                location.href = list;
                            } else if ( vm.searchSelect == '單一') {
                                let icon = vm.asset + "?icon="+ vm.searchTemp.replace(/\\/g,'')
                                location.href = icon;
                            } else if ( vm.searchSelect == '單一圖標集'){
                                let listicon = vm.asset + "?icon="+ vm.searchTemp.replace(/\\/g,'') + "&list=" + vm.listType;
                                location.href = listicon;
                            }
                        }
                    }else if(vm.pageListIcon){
                        
                    }else{
                        if(vm.searchSelect == '圖標集'){
                            // $('.selected').removeClass('selected');
                            // $('.btn_download').hide();
                            vm.pageList = true;
                            vm.pageListIcon = false;
                            vm.pageSingle = false;
                        }else{
                            // $('.selected').removeClass('selected');
                            // $('.btn_download').hide();
                            vm.pageList = false;
                            vm.pageListIcon = false;
                            vm.pageSingle = true;
                        }
                    }
                    vm.changeTags();
                }
            },
            changeTags(){
                let vm = this;
                let tags = [];
                for (let i = 0; i < vm.tagsRandom.length; i++) {
                    if(vm.tagsRandom.length == 1) {
                        tags = vm.tagsRandom[i].tagsData
                    }
                    if( i < vm.tagsRandom.length) {
                        for(let j = 0; j < vm.tagsRandom[i].tagsData.length; j++){
                            if(tags.indexOf(vm.tagsRandom[i].tagsData[j]) == -1){
                                tags.push(vm.tagsRandom[i].tagsData[j])
                            }
                        }
                    }
                }
                let randomItem = (arrArg) => {
                    return arrArg[Math.floor(Math.random()*arrArg.length)];
                }
                let arr = [];
                for(let i = 0; i < 10; i++){
                    let r = randomItem(tags)
                    if(arr.indexOf(r) == -1 && arr.length < 3){
                        arr.push(r)
                    }
                }
                vm.tags = arr;
            },
            tagSearchFun(key) {
                let vm = this;
                let icon = vm.asset + "?icon="+ key
                location.href = icon
            },
            changePage(page) {
                let vm = this;
                if(page == 'first') {
                    vm.pageFirst = true
                    vm.pageList = false
                }else if( page == 'pack') {
                    vm.pageFirst = false
                    vm.pageList = true
                }
            },
            firstPageFun() {
                location.href = this.asset
            },
            locationSearch() {
                let vm = this;
                let strUrl = location.search;
                let getPara, ParaVal;
                let aryPara = [];
                if (strUrl.indexOf("?") != -1) {
                    let getSearch = strUrl.split("?");
                    getPara = getSearch[1].split("&");
                    for (let i = 0; i < getPara.length; i++) {
                    ParaVal = getPara[i].split("=");
                    aryPara.push(ParaVal[0]);
                    aryPara[ParaVal[0]] = decodeURIComponent(ParaVal[1]);
                    }
                }

                if(aryPara[0] == 'list') {
                    vm.pageFirst = false
                    vm.pageSingle = false
                    vm.pageList = true
                    vm.search = aryPara.list
                    vm.searchTemp = aryPara.list
                    vm.searchSelect = '圖標集'
                    vm.select = "list"
                }
                if(aryPara[0] == 'icon') {
                    vm.pageFirst = false
                    vm.pageList = false
                    vm.pageSingle = true
                    vm.search = aryPara.icon
                    vm.searchTemp = aryPara.icon
                    vm.searchSelect = '單一'
                    vm.select = "icon"
                }
            },
            tagsFun() {
                let vm = this
                let tags = []
                if(vm.listTypeCompu !== null && vm.pageListIcon ) {
                    for (let i = 0; i < vm.listTypeCompu.length; i++) {
                        if(vm.listTypeCompu.length == 1) {
                            tags = vm.listTypeCompu[i].tagsData
                        }
                        if( i < vm.listTypeCompu.length) {
                            for(let j = 0; j < vm.listTypeCompu[i].tagsData.length; j++){
                                if(tags.indexOf(vm.listTypeCompu[i].tagsData[j]) == -1){
                                    tags.push(vm.listTypeCompu[i].tagsData[j])
                                }
                            }
                        }
                    }
                } else if(vm.tagsRandom !== null && !vm.pageFirst) {

                    for (let i = 0; i < vm.tagsRandom.length; i++) {
                        if(vm.tagsRandom.length == 1) {
                            tags = vm.tagsRandom[i].tagsData
                        }
                        if( i < vm.tagsRandom.length) {
                            for(let j = 0; j < vm.tagsRandom[i].tagsData.length; j++){
                                if(tags.indexOf(vm.tagsRandom[i].tagsData[j]) == -1){
                                    tags.push(vm.tagsRandom[i].tagsData[j])
                                }
                            }
                        }
                    }
                }
                let randomItem = (arrArg) => {
                    return arrArg[Math.floor(Math.random()*arrArg.length)];
                }
                for(let i = 0; i < 10; i++){
                    let r = randomItem(tags)
                    if(vm.tags.indexOf(r) == -1 && vm.tags.length < 3){
                        vm.tags.push(r)
                    }
                }
            },
            listIconPage () {
                let vm = this
                let listUrl = location.pathname.split("/").reverse()
                if(listUrl[1] == 'list'){
                    vm.pageFirst = false
                    vm.pageList = false
                    vm.pageListIcon = true
                    vm.searchSelect = '單一圖標集'
                    vm.select = 'listicon'
                }
            },
            gridToggle() {
                let vm = this
                vm.grid? vm.grid = false : vm.grid = true
            },
            showIconFun() {
                let vm = this
                for (let i = 0; i < vm.lists.length; i++) {
                    if(vm.icon.list == vm.lists[i].type) {
                        vm.iconListID = vm.lists[i].id
                    }
                }
                vm.showSameIcon =  vm.iconsData.filter((icon) => {
                    let showSameIcon = icon.name.toLowerCase().match(vm.icon.name.toLowerCase());
                        return showSameIcon
                });
                for (let i = 0; i < vm.showSameIcon.length; i++) {
                    if( vm.icon.id == vm.showSameIcon[i].id) {
                       vm.showSameIcon.splice(i, 1);
                    }
                }
                vm.showSameIcon.unshift(vm.icon)

                if(vm.showSameIcon.length == 1) {
                    vm.showSameIcon = []
                }

                vm.showList =  vm.iconsData.filter((icon) => {
                    let showList = icon.list.toLowerCase().match(vm.icon.list.toLowerCase());
                        return showList
                });

                for (let i = 0; i < vm.showSameIcon.length; i++) {
                   if(i < 4) {
                       setTimeout(() => {
                        // console.log(vm.$refs['sameIcon-'+i][0])
                        vm.$refs['sameIcon-'+i][0].className = ''
                        vm.$refs['sameIcon-0'][0].className = 'current'
                    });
                   }
                }
                $(".cover").fadeIn(300);
                $("#mainBody").addClass('maxHeight');
            },
            showSingleIcon(key) {
                let vm = this
                vm.icon = vm.searchCompu[key]
                vm.listType = vm.icon.list
                vm.showIconFun()
            },
            showlistIcon(key) {
                let vm = this
                vm.icon = vm.listTypeCompu[key]
                vm.showIconFun()
            },
            showChangIcon(key) {
                let vm = this
                vm.showIconMask = false
                setTimeout(() => {
                    vm.showIconMask = true
                }, 200);
                vm.icon = vm.showList[key]
                vm.showSameIcon =  vm.iconsData.filter((icon) => {
                    let showSameIcon = icon.name.toLowerCase().match(vm.icon.name.toLowerCase());
                        return showSameIcon
                });

                if(vm.showSameIcon.length == 1) {
                    vm.showSameIcon = []
                }

                for (let i = 0; i < vm.showSameIcon.length; i++) {
                    if(i > 0) {
                        if( vm.icon.id == vm.showSameIcon[i].id) {
                            vm.showSameIcon.splice(i, 1);
                            vm.showSameIcon.unshift(vm.icon)
                        }
                    }
                }

               for (let i = 0; i < vm.showSameIcon.length; i++) {
                   if(i < 4) {
                       setTimeout(() => {
                        // console.log(vm.$refs['sameIcon-'+i][0])
                        vm.$refs['sameIcon-'+i][0].className = ''
                        vm.$refs['sameIcon-0'][0].className = 'current'
                    });
                   }
                }
            },
            showIcon(key) {
                let vm = this

                // console.log(key)
                vm.icon = vm.showList[key]
                vm.showSameIcon =  vm.iconsData.filter((icon) => {
                    let showSameIcon = icon.name.toLowerCase().match(vm.icon.name.toLowerCase());
                        return showSameIcon
                });
                vm.showChangIcon(key)
            },
            showIconSame(key) {
                let vm = this
                vm.showIconMask = false
                setTimeout(() => {
                    vm.showIconMask = true
                }, 200);
                vm.icon = vm.showSameIcon[key]
                vm.showList =  vm.iconsData.filter((icon) => {
                    let showList = icon.list.toLowerCase().match(vm.icon.list.toLowerCase());
                        return showList
                });

                for (let i = 0; i < vm.lists.length; i++) {
                    if(vm.icon.list == vm.lists[i].type) {
                        vm.iconListID = vm.lists[i].id
                    }
                }

                // console.log(key)
                for (let i = 0; i < vm.showSameIcon.length; i++) {
                    if(i < 4) { 
                        vm.$refs['sameIcon-'+i][0].className = ''
                    }
                }
                vm.$refs['sameIcon-'+key][0].className = 'current'
            },
            showR() {
                let vm = this
                let key = null
                for (let i = 0; i < vm.showList.length; i++) {
                    if(vm.icon.id == vm.showList[i].id) {
                        if(vm.showList.length == i+1 ) {
                            key = 0
                        } else {
                            key = i+1
                        }
                    }
                }
                vm.showChangIcon(key)
            },
            showL() {
                let vm = this
                let key = null
                for (let i = 0; i < vm.showList.length; i++) {
                    if(vm.icon.id == vm.showList[i].id) {
                        if(i == 0 ) {
                            key = vm.showList.length - 1
                        } else {
                            key = i-1
                        }
                    }
                }
                vm.showChangIcon(key)
            },
            mixitupUser() {
                let layout = 'list', // Store the current layout as a letiable
                    gridbtn = $("#gridbtn"),
                    listbtn = $("#listbtn"),
                    $container = $('.icon-list') // Cache the MixItUp container

                    gridbtn.prop("checked", true);
                    listbtn.prop("checked", false);
                $('.icon-list').mixItUp({
                    animation: {
                        animateChangeLayout: true, // Animate the positions of targets as the layout changes
                        animateResizeTargets: true, // Animate the width/height of targets as the layout changes
                    },
                    selectors: {
                        target: '.icon',
                        filter: '.filter'
                    },
                    layout: {
                        containerClass: 'grid' // Add the class 'list' to the container on load
                    },
                    callbacks: {
                        onMixEnd: function(state) {
                        }
                    },
                });

                $('input:radio[name=ChangeLayout]').click(function() {
                    let value = $(this).val();
                    if (layout == 'list') {

                        if ($(this).val() == "gridbtn") {
                            layout = 'grid';
                            gridbtn.prop("checked", true);
                            listbtn.prop("checked", false);
                        } else {
                            layout = 'list';
                            gridbtn.prop("checked", false);
                            listbtn.prop("checked", true);
                        }
                        // $changeLayout.text('List'); // Update the button text

                        $container.mixItUp('changeLayout', {
                            containerClass: layout // change the container class to "grid"
                        }, function(state) {
                            // callback function
                            // console.log('skiftat till' + layout);
                        });

                        // Else if the current layout is a grid, change to list:

                    } else {

                        if ($(this).val() == "listbtn") {
                            layout = 'list';
                            gridbtn.prop("checked", false);
                            listbtn.prop("checked", true);
                        } else {
                            layout = 'grid';
                            gridbtn.prop("checked", true);
                            listbtn.prop("checked", false);
                        }

                        $container.mixItUp('changeLayout', {
                            containerClass: layout // Change the container class to 'list'
                        }, function(state) {
                            // callback function
                            // console.log('skiftat till' + layout);
                        });
                    }
                });
            },
        }
    };
</script>
