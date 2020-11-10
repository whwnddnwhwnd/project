		//  지도의 첫화면에 좌표를 설정한다
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(37.560821, 126.969026), // 지도의 중심좌표
			level : 3, // 지도의 확대 레벨
			mapTypeId : kakao.maps.MapTypeId.ROADMAP
		// 지도종류
		};

		// 지도를 생성한다 
		var map = new kakao.maps.Map(mapContainer, mapOption);
		// 마커 클러스터러를 생성한다 
		var clusterer = new kakao.maps.MarkerClusterer({
			map : map, // 마커들을 클러스터로 관리하고 표시할 지도 객체 
			averageCenter : true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정 
			minLevel : 10
		// 클러스터 할 최소 지도 레벨 
		});

		var data = [
				[ 37.559075, 126.965231,
						'<div style="padding 5px">인포윈도우 표시</div>' ],
				[ 37.563579, 126.975410,
						'<div style="padding 5px">인포윈도우 표시2</div>' ] ]

		// 마커들을 클러스트러에 저장하기 위해 마커들을 묶을 변수를 저장한다
		var markers = [];
		for (var i = 0; i < data.length; i++) {
			// 지도에 마커를 생성하고 표시한다
			var marker = new kakao.maps.Marker({
				position : new kakao.maps.LatLng(data[i][0], data[i][1]),
				map : map
			// 마커를 표시할 지도 객체
			});

			var iwContent = data[i][2]; // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능하다

			// 인포윈도우를 생성합니다
			var infowindow = new kakao.maps.InfoWindow({
				content : iwContent
			});

			markers.push(marker); // 매번 생성된 마커들을 markers안으로 push 해준다.
			
			// 마커에 mouseover 이벤트와 mouseout 이벤트를 등록한다
			// 이벤트 리스너로는 클로저를 만들어 등록한다 
			// for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록된다
			kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(
					map, marker, infowindow));
			kakao.maps.event.addListener(marker, 'mouseout',
					makeOutListener(infowindow));
		}

		clusterer.addMarkers(markers); // 마커들을 cluster 에 넣어 지도에 표시해준다.
		
		// 인포윈도우를 표시하는 클로저를 만드는 함수
		function makeOverListener(map, marker, infowindow) {
		    return function() {
		        infowindow.open(map, marker);
		    };
		}

		// 인포윈도우를 닫는 클로저를 만드는 함수
		function makeOutListener(infowindow) {
		    return function() {
		        infowindow.close();
		    };
		}