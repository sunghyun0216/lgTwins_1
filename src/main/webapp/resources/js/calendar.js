/**
 * 
 */

const cal = new Date();

const today = {
  year: cal.getFullYear(),
  month: cal.toLocaleString('ko-KR', {month: 'short'}),
  date: cal.getDate(),
  day: cal.toLocaleString('ko-KR', {weekday: 'short'}),
}

for (let key in today) {
    document.getElementById(key).textContent = today[key];    
}

