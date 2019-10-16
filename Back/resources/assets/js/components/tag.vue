<template>
    <div class="input-group edit-tag">
        <label>Tag</label>
        <div class="tag-wrapper">
            <input type="text" id="exist-values" class="tagged" data-removeBtn="true" name="tag-2" :value="item" ref="taginput">
            <span class="input-prompt">※ 輸入完關鍵字後按下「Enter」來區隔。例如: Casino(Enter鍵)</span>
        </div>
    </div>
</template>
<script>
    import Vue from 'vue'
    export default {
        props: ["item", "edit"],
        components: {
        },
        data() {
            return {
            }
        },
        mounted() {
            let vm = this;
        },
        watch: {
            item() {
                let vm = this;
                vm.$emit('get-tag', vm.item);
                if (!vm.edit && !vm.item.length) {
                     setTimeout(function() { 
                        vm.destroy();
                        vm.Tags('.tagged');  
                    }, 10);
                }
            },
            edit() {
                let vm = this;
                if(vm.edit || vm.edit == 'change') {
                     setTimeout(function() { 
                        vm.destroy();
                        vm.Tags('.tagged');  
                    }, 10);
                } else {

                }
            },
        },
        created() { 
            let vm = this;
            setTimeout(function() { 
                vm.Tags('.tagged');  
            }, 10);
        },
        methods: {
            TagAll(selectors, context) {
                return (typeof selectors === 'string') ? (context || document).querySelectorAll(selectors) : [selectors];
            },
            Tag$(selector, context) {
                return (typeof selector === 'string') ? (context || document).querySelector(selector) : selector;
            },
            create(tag, attr) {
                var element = document.createElement(tag);
                if (attr) {
                    for (var name in attr) {
                        if (element[name] !== undefined) {
                            element[name] = attr[name];
                        }
                    }
                }
                return element;
            },
            whichTransitionEnd() {
                var root = document.documentElement;
                var transitions = {
                    'transition': 'transitionend',
                    'WebkitTransition': 'webkitTransitionEnd',
                    'MozTransition': 'mozTransitionEnd',
                    'OTransition': 'oTransitionEnd otransitionend'
                };
                for (var t in transitions) {
                    if (root.style[t] !== undefined) {
                        return transitions[t];
                    }
                }
                return false;
            },
            oneListener(el, type, fn, capture) {
                capture = capture || false;
                el.addEventListener(type, function handler(e) {
                    fn.call(this, e);
                    el.removeEventListener(e.type, handler, capture)
                }, capture);
            },
            hasClass(cls, el) {
                return new RegExp('(^|\\s+)' + cls + '(\\s+|$)').test(el.className);
            },
            addClass(cls, el) {
                if (!this.hasClass(cls, el))
                    return el.className += (el.className === '') ? cls : ' ' + cls;
            },
            removeClass(cls, el) {
                el.className = el.className.replace(new RegExp('(^|\\s+)' + cls + '(\\s+|$)'), '');
            },
            toggleClass(cls, el) {
                (!this.hasClass(cls, el)) ? this.addClass(cls, el): this.removeClass(cls, el);
            },
            Tags(tag) {
                var vm = this
                var el = vm.Tag$(tag);
                if (el.instance) return;
                el.instance = vm;
                var type = el.type;
                var transitionEnd = vm.whichTransitionEnd();
                var tagsArray = [];
                var KEYS = {
                    ENTER: 13,
                    COMMA: 188,
                    BACK: 8
                };
                var isPressed = false;
                var timer;
                var wrap;
                var field;
                function init() {
                    // create and add wrapper
                    wrap = vm.create('div', {
                        'className': 'tags-container',
                    });
                    field = vm.create('input', {
                        'type': 'text',
                        'className': 'tag-input',
                        'placeholder': el.placeholder || '',
                    });
                    wrap.appendChild(field);

                    if (el.value.trim() !== '') {
                        hasTags();
                    }
                    el.type = 'hidden';
                    el.parentNode.insertBefore(wrap, el.nextSibling);
                    wrap.addEventListener('click', btnRemove, false);
                    wrap.addEventListener('keydown', keyHandler, false);
                    wrap.addEventListener('keyup', backHandler, false);
                }
                function hasTags() {
                    var arr = el.value.trim().split(',');
                    arr.forEach(function(item) {
                        item = item.trim();
                        if (~tagsArray.indexOf(item)) {
                            return;
                        }
                        var tag = createTag(item);
                        tagsArray.push(item);
                        wrap.insertBefore(tag, field);
                    });
                }
                function createTag(name) {
                    var tag = vm.create('div', {
                        'className': 'tag',
                        'innerHTML': '<span class="tag__name">' + name + '</span>' +
                            '<button class="tag__remove">&times;</button>'
                    });
                    return tag;
                }
                function btnRemove(e) {
                    e.preventDefault();
                    if (e.target.className === 'tag__remove') {
                        var tag = e.target.parentNode;
                        var name = vm.Tag$('.tag__name', tag);
                        wrap.removeChild(tag);
                        tagsArray.splice(tagsArray.indexOf(name.textContent), 1);
                        vm.item.splice(tagsArray.indexOf(name.textContent), 1);
                        el.value = tagsArray.join(',')
                    }
                    field.focus();
                }
                function keyHandler(e) {
                    if (e.target.tagName === 'INPUT' && e.target.className === 'tag-input') {
                        var target = e.target;
                        var code = e.which || e.keyCode;
                        if (field.previousSibling && code !== KEYS.BACK) {
                            vm.removeClass('tag--marked', field.previousSibling);
                        }
                        var name = target.value.trim();
                        if (code === KEYS.ENTER) {
                            target.blur();
                            addTag(name);

                            if (timer) clearTimeout(timer);
                            timer = setTimeout(function() {
                                target.focus();
                            }, 100);
                        } else if (code === KEYS.BACK) {
                            if (e.target.value === '' && !isPressed) {
                                isPressed = true;
                                removeTag();
                            }
                        }
                    }
                }
                function backHandler(e) {
                    isPressed = false;
                }
                function addTag(name) {
                    // delete comma if comma exists
                    name = name.toString().replace(/,/g, '').trim();
                    if (name === '') return field.value = '';
                    if (~tagsArray.indexOf(name)) {
                        var exist = vm.TagAll('.tag', wrap);
                        Array.prototype.forEach.call(exist, function(tag) {
                            if (tag.firstChild.textContent === name) {
                                vm.addClass('tag--exists', tag);
                                if (transitionEnd) {
                                    vm.oneListener(tag, transitionEnd, function() {
                                        vm.removeClass('tag--exists', tag);
                                    });
                                } else {
                                    vm.removeClass('tag--exists', tag);
                                }
                            }
                        });
                        return field.value = '';
                    }
                    var tag = createTag(name);
                    wrap.insertBefore(tag, field);
                    tagsArray.push(name);
                    field.value = '';
                    el.value += (el.value === '') ? name : ',' + name;
                    vm.item.push(name);
                }
                function removeTag() {
                    if (tagsArray.length === 0) return;
                    var tags = vm.TagAll('.tag', wrap);
                    var tag = tags[tags.length - 1];
                    if (!vm.hasClass('tag--marked', tag)) {
                        vm.addClass('tag--marked', tag);
                        return;
                    }
                    tagsArray.pop();
                    vm.item.pop();
                    wrap.removeChild(tag);
                    el.value = tagsArray.join(',');
                }
                init();
                /* Public API */
                this.getTags = function() {
                    return tagsArray;
                }
                this.clearTags = function() {
                    if (!el.instance) return;
                    tagsArray.length = 0;
                    vm.item.length = 0;
                    el.value = '';
                    wrap.innerHTML = '';
                    wrap.appendChild(field);
                }
                this.addTags = function(name) {
                    if (!el.instance) return;
                    if (Array.isArray(name)) {
                        for (var i = 0, len = name.length; i < len; i++) {
                            addTag(name[i])
                        }
                    } else {
                        addTag(name);
                    }
                    return tagsArray;
                }
                this.destroy = function() {
                    if (!el.instance) return;
                    wrap.removeEventListener('click', btnRemove, false);
                    wrap.removeEventListener('keydown', keyHandler, false);
                    wrap.removeEventListener('keyup', keyHandler, false);
                    wrap.parentNode.removeChild(wrap);
                    tagsArray = null;
                    timer = null;
                    wrap = null;
                    field = null;
                    transitionEnd = null;
                    delete el.instance;
                    el.type = type;
                }
            },
        }
    }
</script>