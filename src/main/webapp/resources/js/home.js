function updateClock() {
	const now = new Date();
	const timeStr = now.toLocaleTimeString('vi-VN');
	const dateStr = now.toLocaleDateString('vi-VN');
	document.getElementById('clock').textContent = `${timeStr} - ${dateStr}`;
}
setInterval(updateClock, 1000);
updateClock();

const radioButtons = document.getElementsByName('tripType');
const returnDateContainer = document.getElementById('returnDateContainer');
radioButtons.forEach(radio => {
	radio.addEventListener('change', () => {
		if (radio.value === 'roundtrip' && radio.checked) {
			returnDateContainer.style.display = 'block';
		} else {
			returnDateContainer.style.display = 'none';
		}
	});
});

function handleAutoSuggest(inputId, suggestionId) {
	const input = document.getElementById(inputId);
	const suggestionBox = document.getElementById(suggestionId);

	input.addEventListener('input', async function() {
		const keyword = input.value.trim();
		if (keyword.length < 1) {
			suggestionBox.innerHTML = '';
			suggestionBox.style.display = 'none';
			return;
		}

		try {
			const response = await fetch(`/TrainBooking/api/stations/search?keyword=${encodeURIComponent(keyword)}`);
			const data = await response.json();
			
			suggestionBox.innerHTML = '<ul>' + data.map(station => `
       <li data-id="${station.stationId}">${station.stationName}</li>
      `).join('') + '</ul>';

			suggestionBox.style.display = 'block';

			suggestionBox.querySelectorAll('li').forEach(li => {
				li.onclick = () => {
					input.value = li.textContent;
					const stationId = li.getAttribute('data-id');

					// Gán ID vào hidden input tương ứng
					if (inputId === 'fromStation') {
						document.getElementById('fromStationId').value = stationId;
					} else if (inputId === 'toStation') {
						document.getElementById('toStationId').value = stationId;
					}

					suggestionBox.innerHTML = '';
					suggestionBox.style.display = 'none';
				};
			});
		} catch (error) {
			console.error('Lỗi fetch gợi ý:', error);
		}
	});

	document.addEventListener('click', function(event) {
		if (!suggestionBox.contains(event.target) && event.target !== input) {
			suggestionBox.innerHTML = '';
			suggestionBox.style.display = 'none';
		}
	});
}

handleAutoSuggest('fromStation', 'fromStationSuggestions');
handleAutoSuggest('toStation', 'toStationSuggestions');