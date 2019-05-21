<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page session="false" %>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <title></title>
    <link rel="stylesheet" href="https://cdn.inflearn.com/dist/css/npm_tinymce.5476d2bb9a983cd9fc0c.css">
    <link rel="stylesheet" href="/res/css/MAIN.2300e926c1f7c59e6cc7.css">
    <link rel="stylesheet" href="https://cdn.inflearn.com/dist/vendor/bulma-accordion.min.css">
    <link rel="stylesheet" href="https://cdn.inflearn.com/dist/vendor/bulma-switch.min.css">
    <link rel="stylesheet" href="https://cdn.inflearn.com/dist/vendor/bulma-tooltip.min.css">
    <link rel="stylesheet" href="https://cdn.inflearn.com/dist/vendor/bulma-tooltip.min.css">
    <link rel="stylesheet" href="https://cdn.inflearn.com/font/font-awesome/css/all.min.css">
    <link href="https://vjs.zencdn.net/7.5.4/video-js.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/res/css/video-js.min.css"/>
    <script src="/res/js/video.min.js"></script>
<body id="inflearn" class="lecture">
<script>
    function init() {
        var player = videojs("my-video", {
            "preload": "auto", "autoplay": true,
            sources: [{
                src: 'https://s3.ap-northeast-2.amazonaws.com/finalproject001/Wildlife+Windows+7+Sample+Video.mp4',
                type: 'video/mp4'
            }]
        });
    }
    window.onload = init;
</script>
<div id="root">
    <div class="visually_hidden">
        <a class="skip" href="#main">본문 바로 가기</a>
    </div>
    <main id="main">
        <section class="lecture_container">
            <aside class="lecture_nav lecture_nav_left">
                <div class="lecture_nav_left_header">
                    <h5>자바스크립트로 알아보는 함수형 프로그래밍</h5>
                    <p><span class="is-bold">기간:</span> 무제한</p>
                    <div class="progress_container">

                        <div class="inf_progress">
                            <label>진도율: 0% | 총 22개 강좌중 0개 완료</label>
                            <progress class="progress is-primary" value="50" max="100">20%</progress>
                        </div>
                    </div>
                </div>
                <div class="curriculum">
                    <ul>
                        <li class="list unit unit_section   is_not_preview"
                            fxd-data='{"id":6770,"preview":false}'>
                            <span class="list-item unit_title">섹션 1. 함수형 프로그래밍 개요</span>
                        </li>
                        <li class="list unit unit_lecture   is_not_preview"
                            fxd-data='{"id":6771,"preview":false}'>
                            <span class="list-item unit_title">안내사항</span>
                            <span class="unit_checked icon"><svg width="16" aria-hidden="true" data-prefix="fas"
                                                                 data-icon="check-circle"
                                                                 class="svg-inline--fa fa-check-circle fa-w-16"
                                                                 role="img" xmlns="http://www.w3.org/2000/svg"
                                                                 viewBox="0 0 512 512"><path fill="currentColor"
                                                                                             d="M504 256c0 136.967-111.033 248-248 248S8 392.967 8 256 119.033 8 256 8s248 111.033 248 248zM227.314 387.314l184-184c6.248-6.248 6.248-16.379 0-22.627l-22.627-22.627c-6.248-6.249-16.379-6.249-22.628 0L216 308.118l-70.059-70.059c-6.248-6.248-16.379-6.248-22.628 0l-22.627 22.627c-6.248 6.248-6.248 16.379 0 22.627l104 104c6.249 6.249 16.379 6.249 22.628.001z"></path></svg></span>
                        </li>
                        <li class="list unit unit_lecture   is_not_preview"
                            fxd-data='{"id":6772,"preview":true}'>
                            <span class="list-item unit_title">함수형 프로그래밍 정의, 순수함수</span>
                            <span class="unit_checked icon"><svg width="16" aria-hidden="true" data-prefix="fas"
                                                                 data-icon="check-circle"
                                                                 class="svg-inline--fa fa-check-circle fa-w-16"
                                                                 role="img" xmlns="http://www.w3.org/2000/svg"
                                                                 viewBox="0 0 512 512"><path fill="currentColor"
                                                                                             d="M504 256c0 136.967-111.033 248-248 248S8 392.967 8 256 119.033 8 256 8s248 111.033 248 248zM227.314 387.314l184-184c6.248-6.248 6.248-16.379 0-22.627l-22.627-22.627c-6.248-6.249-16.379-6.249-22.628 0L216 308.118l-70.059-70.059c-6.248-6.248-16.379-6.248-22.628 0l-22.627 22.627c-6.248 6.248-6.248 16.379 0 22.627l104 104c6.249 6.249 16.379 6.249 22.628.001z"></path></svg></span>
                        </li>
                        <li class="list unit unit_lecture  is_now "
                            fxd-data='{"id":6773,"preview":true}'>
                            <span class="list-item unit_title">일급함수, add_maker, 함수로 함수 실행하기</span>
                            <span class="unit_checked icon"><svg width="16" aria-hidden="true" data-prefix="fas"
                                                                 data-icon="check-circle"
                                                                 class="svg-inline--fa fa-check-circle fa-w-16"
                                                                 role="img" xmlns="http://www.w3.org/2000/svg"
                                                                 viewBox="0 0 512 512"><path fill="currentColor"
                                                                                             d="M504 256c0 136.967-111.033 248-248 248S8 392.967 8 256 119.033 8 256 8s248 111.033 248 248zM227.314 387.314l184-184c6.248-6.248 6.248-16.379 0-22.627l-22.627-22.627c-6.248-6.249-16.379-6.249-22.628 0L216 308.118l-70.059-70.059c-6.248-6.248-16.379-6.248-22.628 0l-22.627 22.627c-6.248 6.248-6.248 16.379 0 22.627l104 104c6.249 6.249 16.379 6.249 22.628.001z"></path></svg></span>
                        </li>
                    </ul>
                </div>
            </aside>

            <div class="content_container center">
                <header class="content_header_nav" fxd-data='{"course_id":47893,"unit_id":6773}'>
                    <div class="toggle_left">
                        <a class="button is-outlined is-inverted is-link">
                            <svg width="16" aria-hidden="true" data-prefix="far" data-icon="list-ol"
                                 class="svg-inline--fa fa-list-ol fa-w-16" role="img" xmlns="http://www.w3.org/2000/svg"
                                 viewBox="0 0 512 512">
                                <path fill="currentColor"
                                      d="M500 124H140c-6.627 0-12-5.373-12-12V80c0-6.627 5.373-12 12-12h360c6.627 0 12 5.373 12 12v32c0 6.627-5.373 12-12 12zm12 148v-32c0-6.627-5.373-12-12-12H140c-6.627 0-12 5.373-12 12v32c0 6.627 5.373 12 12 12h360c6.627 0 12-5.373 12-12zm0 160v-32c0-6.627-5.373-12-12-12H140c-6.627 0-12 5.373-12 12v32c0 6.627 5.373 12 12 12h360c6.627 0 12-5.373 12-12zM3.263 148.428C3.263 155.905 7.18 160 14.836 160h67.293c7.655 0 11.572-4.095 11.572-11.572v-8.901c0-7.477-3.917-11.572-11.572-11.572H66.64V43.572C66.64 35.916 62.547 32 54.891 32H42.785c-6.053 0-9.97 1.602-14.42 5.697L6.646 57.635C1.128 62.798.771 68.673 6.112 74.014l5.518 6.231c5.162 5.519 11.216 5.341 15.666 1.068 1.069-1.068 2.848-3.738 2.848-3.738h.356s-.534 5.34-.534 10.503v39.878h-15.13c-7.656 0-11.573 4.094-11.573 11.572v8.9zm-1.052 160.19c0 7.354 5.078 11.382 12.083 11.382h67.939c7.529 0 11.557-4.028 11.557-11.382v-8.755c0-7.355-4.028-11.382-11.557-11.382H43.184c1.926-10.507 48.679-18.561 48.679-56.909 0-29.067-25.039-39.573-44.476-39.573-21.362 0-33.795 9.981-40.449 18.736-4.378 5.604-2.976 10.857 2.803 15.409l8.579 6.829c5.604 4.553 11.032 2.452 16.111-2.451 2.976-2.801 6.303-3.852 9.455-3.852 3.326 0 9.28 1.576 9.28 8.755 0 12.782-50.955 21.888-50.955 69.165v4.028zM8.28 470.545C15.984 475.272 27.54 480 44.176 480c34.145 0 48.503-22.763 48.503-44.126 0-14.358-9.105-29.767-28.716-34.845l17.509-20.137c3.678-4.377 5.079-8.405 5.079-14.183v-3.327c0-7.355-3.853-11.382-11.382-11.382H16.685c-7.53 0-11.383 3.852-11.383 11.382v8.755c0 7.354 3.853 11.382 11.383 11.382h12.957c8.405 0 12.608-1.051 12.608-1.051v.35s-5.428 5.078-12.257 13.483l-5.604 7.004c-4.028 5.078-5.253 10.156-2.801 14.884l1.05 1.926c2.978 5.779 6.304 7.88 12.258 7.88h4.728c10.33 0 15.934 2.452 15.934 9.106 0 4.728-4.203 8.23-14.358 8.23-4.729 0-9.457-1.051-14.359-3.152-6.479-3.852-11.732-3.502-15.584 3.152l-5.603 9.28c-3.678 6.128-3.153 11.731 2.626 15.934z"></path>
                            </svg>
                        </a>
                    </div>
                    <%--동영상 타이틀 제목--%>
                    <div class="unit_title">
                        <h1>일급함수, add_maker, 함수로 함수 실행하기</h1>
                    </div>
                    <%--우측 나가기 버튼--%>
                    <div class="right_buttons">
                        <button class="button go_out_course is-outlined is-inverted is-link">
                            <span><i class="fal fa-external-link"></i></span>
                            <span class="is-hidden-touch">나가기</span>
                        </button>
                    </div>
                </header>

                <div class="content unit_body">
                    <div class="note_container" style="padding:0px;">
                        <div class="video-js-box">
                            <video id="my-video" controls preload="auto" class="video-js"></video>
                        </div>
                    </div>

                    <footer class="content_footer_nav navbar">
                        <div class="navbar-item">

                            <button class="button is-link is-inverted is-outlined is_no_border is_completed">
                                <svg width="16" aria-hidden="true" data-prefix="far" data-icon="check"
                                     class="svg-inline--fa fa-check fa-w-16" role="img"
                                     xmlns="http://www.w3.org/2000/svg"
                                     viewBox="0 0 512 512">
                                    <path fill="currentColor"
                                          d="M435.848 83.466L172.804 346.51l-96.652-96.652c-4.686-4.686-12.284-4.686-16.971 0l-28.284 28.284c-4.686 4.686-4.686 12.284 0 16.971l133.421 133.421c4.686 4.686 12.284 4.686 16.971 0l299.813-299.813c4.686-4.686 4.686-12.284 0-16.971l-28.284-28.284c-4.686-4.686-12.284-4.686-16.97 0z"></path>
                                </svg>
                            </button>
                        </div>
                        <div class="navbar-item">

                            <button class="button is-link is-inverted is-outlined is_no_border complete_unit">
                                <i class="far fa-book fa-spin"></i> 봤어요
                            </button>
                        </div>
                        <div class="navbar-item">

                            <button class="button is-link is-inverted is-outlined is_no_border next_unit">
                                <svg width="16" aria-hidden="true" data-prefix="far" data-icon="step-forward"
                                     class="svg-inline--fa fa-step-forward fa-w-14" role="img"
                                     xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512">
                                    <path fill="currentColor"
                                          d="M372 32h-24c-6.6 0-12 5.4-12 12v183L116.5 39.4C95.9 22.3 64 36.6 64 64v384c0 27.4 31.9 41.8 52.5 24.6L336 283.9V468c0 6.6 5.4 12 12 12h24c6.6 0 12-5.4 12-12V44c0-6.6-5.4-12-12-12zM112 413.5V98.4l186.7 157.1-186.7 158z"></path>
                                </svg>
                                다음강좌
                            </button>
                        </div>
                    </footer>
                </div>
            </div>
        </section>
    </main>
    <div class="loading_spinner_container">
        <svg
                class="lds-spinner"
                id="loading_spinner"
                width="200"
                height="200"
                xmlns="http://www.w3.org/2000/svg"
                viewBox="0 0 100 100"
                preserveAspectRatio="xMidYMid"
        >
            <g transform="rotate(0 50 50)">
                <rect x="47" y="24" rx="9.4" ry="4.8" width="6" height="12" fill="#28292f">
                    <animate
                            attributeName="opacity"
                            values="1;0"
                            keyTimes="0;1"
                            dur="1s"
                            begin="-0.9166666666666666s"
                            repeatCount="indefinite"
                    ></animate>
                </rect>
            </g>
            <g transform="rotate(30 50 50)">
                <rect x="47" y="24" rx="9.4" ry="4.8" width="6" height="12" fill="#28292f">
                    <animate
                            attributeName="opacity"
                            values="1;0"
                            keyTimes="0;1"
                            dur="1s"
                            begin="-0.8333333333333334s"
                            repeatCount="indefinite"
                    ></animate>
                </rect>
            </g>
            <g transform="rotate(60 50 50)">
                <rect x="47" y="24" rx="9.4" ry="4.8" width="6" height="12" fill="#28292f">
                    <animate
                            attributeName="opacity"
                            values="1;0"
                            keyTimes="0;1"
                            dur="1s"
                            begin="-0.75s"
                            repeatCount="indefinite"
                    ></animate>
                </rect>
            </g>
            <g transform="rotate(90 50 50)">
                <rect x="47" y="24" rx="9.4" ry="4.8" width="6" height="12" fill="#28292f">
                    <animate
                            attributeName="opacity"
                            values="1;0"
                            keyTimes="0;1"
                            dur="1s"
                            begin="-0.6666666666666666s"
                            repeatCount="indefinite"
                    ></animate>
                </rect>
            </g>
            <g transform="rotate(120 50 50)">
                <rect x="47" y="24" rx="9.4" ry="4.8" width="6" height="12" fill="#28292f">
                    <animate
                            attributeName="opacity"
                            values="1;0"
                            keyTimes="0;1"
                            dur="1s"
                            begin="-0.5833333333333334s"
                            repeatCount="indefinite"
                    ></animate>
                </rect>
            </g>
            <g transform="rotate(150 50 50)">
                <rect x="47" y="24" rx="9.4" ry="4.8" width="6" height="12" fill="#28292f">
                    <animate
                            attributeName="opacity"
                            values="1;0"
                            keyTimes="0;1"
                            dur="1s"
                            begin="-0.5s"
                            repeatCount="indefinite"
                    ></animate>
                </rect>
            </g>
            <g transform="rotate(180 50 50)">
                <rect x="47" y="24" rx="9.4" ry="4.8" width="6" height="12" fill="#28292f">
                    <animate
                            attributeName="opacity"
                            values="1;0"
                            keyTimes="0;1"
                            dur="1s"
                            begin="-0.4166666666666667s"
                            repeatCount="indefinite"
                    ></animate>
                </rect>
            </g>
            <g transform="rotate(210 50 50)">
                <rect x="47" y="24" rx="9.4" ry="4.8" width="6" height="12" fill="#28292f">
                    <animate
                            attributeName="opacity"
                            values="1;0"
                            keyTimes="0;1"
                            dur="1s"
                            begin="-0.3333333333333333s"
                            repeatCount="indefinite"
                    ></animate>
                </rect>
            </g>
            <g transform="rotate(240 50 50)">
                <rect x="47" y="24" rx="9.4" ry="4.8" width="6" height="12" fill="#28292f">
                    <animate
                            attributeName="opacity"
                            values="1;0"
                            keyTimes="0;1"
                            dur="1s"
                            begin="-0.25s"
                            repeatCount="indefinite"
                    ></animate>
                </rect>
            </g>
            <g transform="rotate(270 50 50)">
                <rect x="47" y="24" rx="9.4" ry="4.8" width="6" height="12" fill="#28292f">
                    <animate
                            attributeName="opacity"
                            values="1;0"
                            keyTimes="0;1"
                            dur="1s"
                            begin="-0.16666666666666666s"
                            repeatCount="indefinite"
                    ></animate>
                </rect>
            </g>
            <g transform="rotate(300 50 50)">
                <rect x="47" y="24" rx="9.4" ry="4.8" width="6" height="12" fill="#28292f">
                    <animate
                            attributeName="opacity"
                            values="1;0"
                            keyTimes="0;1"
                            dur="1s"
                            begin="-0.08333333333333333s"
                            repeatCount="indefinite"
                    ></animate>
                </rect>
            </g>
            <g transform="rotate(330 50 50)">
                <rect x="47" y="24" rx="9.4" ry="4.8" width="6" height="12" fill="#28292f">
                    <animate
                            attributeName="opacity"
                            values="1;0"
                            keyTimes="0;1"
                            dur="1s"
                            begin="0s"
                            repeatCount="indefinite"
                    ></animate>
                </rect>
            </g>
        </svg>
    </div>
</div>
</body>
<script type="module" src="https://cdn.inflearn.com/dist/js/npm_date-fns.f9ca1dad068bd57d41ab.js"></script>
<script type="module" src="https://cdn.inflearn.com/dist/js/npm_sortable.ebb1496eb1c623bab6d1.js"></script>
<script type="module" src="https://cdn.inflearn.com/dist/js/npm_tinymce.5476d2bb9a983cd9fc0c.js"></script>
<script type="module" src="https://cdn.inflearn.com/dist/js/LECTURE_ACTION.cfd0f3aeb70a459a0df1.js"></script>
<script type="text/javascript" defer="defer" src="https://extend.vimeocdn.com/ga/13628830.js"></script>
</html>
