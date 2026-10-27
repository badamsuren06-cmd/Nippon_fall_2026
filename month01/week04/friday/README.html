<!DOCTYPE html>
<html lang="mn">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Малчин ХАБ - Мал ач ахуй, Бэлчээрийн Менежмент</title>
  
  <!-- Tailwind CSS CDN -->
  <script src="https://cdn.tailwindcss.com"></script>
  
  <!-- Chart.js CDN -->
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  
  <!-- FontAwesome Icons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap');
    body {
      font-family: 'Roboto', sans-serif;
      background-color: #f3f4f6;
    }
    .active-nav {
      background-color: #1e3a8a;
      color: #ffffff;
      border-left: 4px solid #3b82f6;
    }
  </style>
</head>
<body class="flex h-screen bg-gray-100 overflow-hidden">

  <!-- Sidebar Navigation -->
  <aside class="w-64 bg-slate-900 text-slate-200 flex flex-col justify-between hidden md:flex z-10 shadow-lg">
    <div>
      <!-- App Header -->
      <div class="p-5 border-b border-slate-800 flex items-center space-x-3">
        <div class="w-10 h-10 rounded-lg bg-emerald-600 flex items-center justify-center text-white font-bold text-xl">
          <i class="fa-solid fa-horse"></i>
        </div>
        <div>
          <h1 class="font-bold text-lg leading-tight text-white">Малчин ХАБ</h1>
          <p class="text-xs text-slate-400">Цахим Бэлчээр & Мал Сүрэг</p>
        </div>
      </div>

      <!-- Nav Links -->
      <nav class="mt-4 px-2 space-y-1">
        <button onclick="switchTab('dashboard')" id="nav-dashboard" class="nav-item w-full flex items-center px-4 py-3 text-sm font-medium rounded-lg transition-colors active-nav">
          <i class="fa-solid fa-chart-pie w-6"></i>
          <span>Хянах Самбар</span>
        </button>
        <button onclick="switchTab('herd')" id="nav-herd" class="nav-item w-full flex items-center px-4 py-3 text-sm font-medium rounded-lg text-slate-300 hover:bg-slate-800 transition-colors">
          <i class="fa-solid fa-list-check w-6"></i>
          <span>Мал Бүртгэл</span>
        </button>
        <button onclick="switchTab('pasture')" id="nav-pasture" class="nav-item w-full flex items-center px-4 py-3 text-sm font-medium rounded-lg text-slate-300 hover:bg-slate-800 transition-colors">
          <i class="fa-solid fa-map-location-dot w-6"></i>
          <span>Бэлчээрийн Зураглал</span>
        </button>
        <button onclick="switchTab('weather')" id="nav-weather" class="nav-item w-full flex items-center px-4 py-3 text-sm font-medium rounded-lg text-slate-300 hover:bg-slate-800 transition-colors">
          <i class="fa-solid fa-cloud-sun-rain w-6"></i>
          <span>Цаг Агаар & Зудын Мэдээ</span>
        </button>
        <button onclick="switchTab('vet')" id="nav-vet" class="nav-item w-full flex items-center px-4 py-3 text-sm font-medium rounded-lg text-slate-300 hover:bg-slate-800 transition-colors">
          <i class="fa-solid fa-syringe w-6"></i>
          <span>Мал Эмнэлгийн Тэмдэглэл</span>
        </button>
      </nav>
    </div>

    <!-- Offline Status Toggle Indicator -->
    <div class="p-4 border-t border-slate-800">
      <div class="bg-slate-800 p-3 rounded-lg flex items-center justify-between">
        <div class="flex items-center space-x-2">
          <div id="status-dot" class="w-3 h-3 rounded-full bg-emerald-500"></div>
          <span id="status-text" class="text-xs font-medium text-slate-300">Онлайн холболттой</span>
        </div>
        <button onclick="toggleOfflineMode()" class="text-xs text-blue-400 hover:underline">Солих</button>
      </div>
    </div>
  </aside>

  <!-- Main Content Area -->
  <div class="flex-1 flex flex-col overflow-y-auto">

    <!-- Top Mobile / Global Header -->
    <header class="bg-white border-b border-gray-200 px-6 py-4 flex items-center justify-between sticky top-0 z-20">
      <div class="flex items-center space-x-4">
        <span class="text-xl font-bold text-gray-800" id="header-title">Хянах Самбар</span>
      </div>
      <div class="flex items-center space-x-4">
        <span class="text-sm text-gray-600 bg-gray-100 px-3 py-1.5 rounded-full flex items-center space-x-2">
          <i class="fa-solid fa-location-dot text-red-500"></i>
          <span>Архангай аймаг, Цэнхэр сум</span>
        </span>
        <button onclick="openModal()" class="bg-emerald-600 hover:bg-emerald-700 text-white px-4 py-2 rounded-lg text-sm font-medium flex items-center space-x-2 shadow-sm transition">
          <i class="fa-solid fa-plus"></i>
          <span class="hidden sm:inline">Шинэ Мал Бүртгэх</span>
        </button>
      </div>
    </header>

    <!-- Page Content Container -->
    <main class="p-6 space-y-6">

      <!-- ================= 1. DASHBOARD SECTION ================= -->
      <section id="sec-dashboard" class="space-y-6">
        <!-- Stat Cards -->
        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-5">
          <div class="bg-white p-5 rounded-xl border border-gray-200 shadow-sm flex items-center space-x-4">
            <div class="p-3 bg-blue-100 text-blue-600 rounded-lg text-2xl">
              <i class="fa-solid fa-hippo"></i>
            </div>
            <div>
              <p class="text-xs text-gray-500 font-medium">Нийт Малын Тоо</p>
              <h3 class="text-2xl font-bold text-gray-800">1,240 head</h3>
              <p class="text-xs text-emerald-600 mt-0.5"><i class="fa-solid fa-arrow-up"></i> +4.2% сүүлийн сард</p>
            </div>
          </div>

          <div class="bg-white p-5 rounded-xl border border-gray-200 shadow-sm flex items-center space-x-4">
            <div class="p-3 bg-emerald-100 text-emerald-600 rounded-lg text-2xl">
              <i class="fa-solid fa-seedling"></i>
            </div>
            <div>
              <p class="text-xs text-gray-500 font-medium">Бэлчээрийн Гарц (NDVI)</p>
              <h3 class="text-2xl font-bold text-emerald-600">0.68 - Сайн</h3>
              <p class="text-xs text-gray-500 mt-0.5">Даац тохиромжтой</p>
            </div>
          </div>

          <div class="bg-white p-5 rounded-xl border border-gray-200 shadow-sm flex items-center space-x-4">
            <div class="p-3 bg-amber-100 text-amber-600 rounded-lg text-2xl">
              <i class="fa-solid fa-triangle-exclamation"></i>
            </div>
            <div>
              <p class="text-xs text-gray-500 font-medium">Зудын Эрсдэл</p>
              <h3 class="text-2xl font-bold text-amber-600">Дунд зэрэг</h3>
              <p class="text-xs text-amber-700 mt-0.5">Цасны зузаан: 12см</p>
            </div>
          </div>

          <div class="bg-white p-5 rounded-xl border border-gray-200 shadow-sm flex items-center space-x-4">
            <div class="p-3 bg-purple-100 text-purple-600 rounded-lg text-2xl">
              <i class="fa-solid fa-notes-medical"></i>
            </div>
            <div>
              <p class="text-xs text-gray-500 font-medium">Үзлэг / Тарилга</p>
              <h3 class="text-2xl font-bold text-purple-700">98%</h3>
              <p class="text-xs text-gray-500 mt-0.5">Төлөвлөгөөт тун хийгдсэн</p>
            </div>
          </div>
        </div>

        <!-- Charts Grid -->
        <div class="grid grid-cols-1 lg:grid-cols-2 gap-6">
          <div class="bg-white p-5 rounded-xl border border-gray-200 shadow-sm">
            <h3 class="font-bold text-gray-800 mb-4 flex items-center space-x-2">
              <i class="fa-solid fa-chart-pie text-emerald-600"></i>
              <span>Таван Түмэн Малын Бүтэц (Таван хошуу мал)</span>
            </h3>
            <div class="h-64 relative">
              <canvas id="chartLivestock"></canvas>
            </div>
          </div>

          <div class="bg-white p-5 rounded-xl border border-gray-200 shadow-sm">
            <h3 class="font-bold text-gray-800 mb-4 flex items-center space-x-2">
              <i class="fa-solid fa-wheat-awn text-amber-600"></i>
              <span>Өвс, Тежээлийн Нөөц (Сар бүрээр / Тонн)</span>
            </h3>
            <div class="h-64 relative">
              <canvas id="chartFodder"></canvas>
            </div>
          </div>
        </div>
      </section>

      <!-- ================= 2. HERD REGISTER SECTION ================= -->
      <section id="sec-herd" class="space-y-4 hidden">
        <div class="bg-white p-4 rounded-xl border border-gray-200 shadow-sm flex flex-col md:flex-row justify-between items-center gap-4">
          <div class="flex items-center space-x-2 w-full md:w-auto">
            <input type="text" id="herd-search" onkeyup="filterHerdTable()" placeholder="Ээмэгний дугаар эсвэл төрлөөр хайх..." class="border border-gray-300 rounded-lg px-4 py-2 text-sm w-full md:w-64 focus:outline-none focus:ring-2 focus:ring-emerald-500">
          </div>
          <div class="flex items-center space-x-3 w-full md:w-auto justify-end">
            <select id="herd-filter-type" onchange="filterHerdTable()" class="border border-gray-300 rounded-lg px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-emerald-500">
              <option value="">Бүх мал</option>
              <option value="Адуу">Адуу</option>
              <option value="Үхэр">Үхэр</option>
              <option value="Тэмээ">Тэмээ</option>
              <option value="Хони">Хони</option>
              <option value="Ямаа">Ямаа</option>
            </select>
          </div>
        </div>

        <div class="bg-white rounded-xl border border-gray-200 shadow-sm overflow-x-auto">
          <table class="w-full text-left text-sm text-gray-600">
            <thead class="bg-slate-50 border-b border-gray-200 text-slate-700 font-semibold">
              <tr>
                <th class="p-4">Ээмэгний ID</th>
                <th class="p-4">Малын Төрөл</th>
                <th class="p-4">Нас/Хүйс</th>
                <th class="p-4">Эрүүл Мэндийн Төлөв</th>
                <th class="p-4">Сүүлчийн Тарилга</th>
                <th class="p-4">Үйлдэл</th>
              </tr>
            </thead>
            <tbody id="herd-table-body" class="divide-y divide-gray-200">
              <!-- Rendered via JS -->
            </tbody>
          </table>
        </div>
      </section>

      <!-- ================= 3. PASTURE SATELLITE SECTION ================= -->
      <section id="sec-pasture" class="space-y-6 hidden">
        <div class="bg-white p-5 rounded-xl border border-gray-200 shadow-sm space-y-4">
          <div class="flex flex-col sm:flex-row justify-between items-start sm:items-center gap-4">
            <div>
              <h3 class="font-bold text-gray-800 text-lg">Сэргээгдэх Бэлчээрийн Хиймэл Дагуулын Зураглал (NDVI)</h3>
              <p class="text-xs text-gray-500">Бэлчээрийн гарц болон усны эх үүсвэрийн бодит хуваарилалт</p>
            </div>
            <div class="flex items-center space-x-2">
              <span class="text-xs font-semibold px-2 py-1 rounded bg-emerald-100 text-emerald-800">Ногоон: Илчлэг ихтэй</span>
              <span class="text-xs font-semibold px-2 py-1 rounded bg-amber-100 text-amber-800">Шар: Дунд</span>
              <span class="text-xs font-semibold px-2 py-1 rounded bg-red-100 text-red-800">Улаан: Талхлагдсан</span>
            </div>
          </div>

          <!-- Interactive Simulated Canvas Map -->
          <div class="relative w-full h-80 bg-slate-800 rounded-lg overflow-hidden border border-slate-700">
            <canvas id="mapCanvas" class="w-full h-full cursor-pointer"></canvas>
            <div class="absolute bottom-3 left-3 bg-slate-900/80 backdrop-blur text-white text-xs p-3 rounded border border-slate-700 space-y-1">
              <p class="font-bold">Бэлчээрийн Бүс A2 (Ар Цан)</p>
              <p>Нийт талбай: 420 га</p>
              <p>Даацын хэтрэлт: <span class="text-emerald-400">Хэвийн (62%)</span></p>
            </div>
          </div>

          <!-- Rotation Calculator -->
          <div class="bg-slate-50 p-4 rounded-lg border border-gray-200 flex flex-col md:flex-row items-center justify-between gap-4">
            <div>
              <h4 class="font-bold text-gray-800 text-sm">Бэлчээр Сэлгэн Бэлчээрлэлтийн Тооцоолуур</h4>
              <p class="text-xs text-gray-500">Одоогийн сүргийн тоонд үндэслэн бэлчээрийн хоног тооцох</p>
            </div>
            <div class="flex items-center space-x-3">
              <span class="text-sm font-medium text-gray-700">Тооцсон хоног: <strong class="text-blue-600 text-lg">14 хоног</strong></span>
              <button class="bg-blue-600 hover:bg-blue-700 text-white text-xs px-3 py-2 rounded-lg">Сэлгэх хуваарь харах</button>
            </div>
          </div>
        </div>
      </section>

      <!-- ================= 4. WEATHER & DZUD RISK SECTION ================= -->
      <section id="sec-weather" class="space-y-6 hidden">
        <!-- Dzud Alert Banner -->
        <div class="bg-amber-50 border-l-4 border-amber-500 p-4 rounded-r-xl shadow-sm flex items-start space-x-3">
          <i class="fa-solid fa-triangle-exclamation text-amber-600 text-2xl mt-0.5"></i>
          <div>
            <h4 class="font-bold text-amber-800">Цагаан Зудын Аюулын Анхааруулга (Ойрын 5 хоног)</h4>
            <p class="text-sm text-amber-700 mt-1">
              Архангай аймгийн нутгаар цасан шуурга шуурч, агаарын температура -32°C хүртэл хүйтрэх тул мал сүргийг уруудахаас сэргийлж, нөмөр нөөлөг өвөлжөөнд бэлтгэнэ үү.
            </p>
          </div>
        </div>

        <!-- 5-Day Forecast Grid -->
        <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-5 gap-4">
          <div class="bg-white p-4 rounded-xl border border-gray-200 text-center shadow-sm">
            <p class="text-xs font-semibold text-gray-500">Өнөөдөр</p>
            <i class="fa-solid fa-snowflake text-blue-500 text-3xl my-3"></i>
            <p class="text-lg font-bold text-gray-800">-22°C</p>
            <p class="text-xs text-gray-500">Цас багатай</p>
          </div>
          <div class="bg-white p-4 rounded-xl border border-gray-200 text-center shadow-sm">
            <p class="text-xs font-semibold text-gray-500">Маргааш</p>
            <i class="fa-solid fa-wind text-gray-500 text-3xl my-3"></i>
            <p class="text-lg font-bold text-gray-800">-26°C</p>
            <p class="text-xs text-gray-500">Шуургатай</p>
          </div>
          <div class="bg-white p-4 rounded-xl border border-gray-200 text-center shadow-sm">
            <p class="text-xs font-semibold text-gray-500">Пүрэв</p>
            <i class="fa-solid fa-snowflake text-blue-600 text-3xl my-3"></i>
            <p class="text-lg font-bold text-gray-800">-31°C</p>
            <p class="text-xs text-gray-500">Их цас</p>
          </div>
          <div class="bg-white p-4 rounded-xl border border-gray-200 text-center shadow-sm">
            <p class="text-xs font-semibold text-gray-500">Баасан</p>
            <i class="fa-solid fa-cloud-sun text-amber-500 text-3xl my-3"></i>
            <p class="text-lg font-bold text-gray-800">-20°C</p>
            <p class="text-xs text-gray-500">Шүлхийн нар</p>
          </div>
          <div class="bg-white p-4 rounded-xl border border-gray-200 text-center shadow-sm">
            <p class="text-xs font-semibold text-gray-500">Бямба</p>
            <i class="fa-solid fa-sun text-amber-500 text-3xl my-3"></i>
            <p class="text-lg font-bold text-gray-800">-18°C</p>
            <p class="text-xs text-gray-500">Тогтуун</p>
          </div>
        </div>
      </section>

      <!-- ================= 5. VETERINARY LOG SECTION ================= -->
      <section id="sec-vet" class="space-y-6 hidden">
        <div class="bg-white p-5 rounded-xl border border-gray-200 shadow-sm space-y-4">
          <h3 class="font-bold text-gray-800 text-lg">Мал Эмнэлгийн Туулга & Тарилгын Тэмдэглэл</h3>
          
          <form id="vet-form" onsubmit="addVetLog(event)" class="grid grid-cols-1 md:grid-cols-4 gap-4">
            <input type="text" id="vet-tag" placeholder="Ээмэгний дугаар..." required class="border border-gray-300 rounded-lg px-3 py-2 text-sm focus:ring-2 focus:ring-emerald-500">
            <select id="vet-type" class="border border-gray-300 rounded-lg px-3 py-2 text-sm focus:ring-2 focus:ring-emerald-500">
              <option value="Шүлхий Вакцин">Шүлхий Вакцин</option>
              <option value="Паразит Туулга">Паразит Туулга</option>
              <option value="Боом Түмэн Тун">Боом Түмэн Тун</option>
              <option value="Эрүүл Мэндийн Үзлэг">Эрүүл Мэндийн Үзлэг</option>
            </select>
            <input type="date" id="vet-date" required class="border border-gray-300 rounded-lg px-3 py-2 text-sm focus:ring-2 focus:ring-emerald-500">
            <button type="submit" class="bg-purple-600 hover:bg-purple-700 text-white rounded-lg px-4 py-2 text-sm font-medium transition">
              Тэмдэглэл Нэмэх
            </button>
          </form>

          <div class="mt-4 border-t border-gray-200 pt-4">
            <ul id="vet-log-list" class="space-y-3">
              <!-- Rendered via JS -->
            </ul>
          </div>
        </div>
      </section>

    </main>
  </div>

  <!-- Register Animal Modal -->
  <div id="modal-register" class="fixed inset-0 bg-black/50 backdrop-blur-sm hidden flex items-center justify-center z-50">
    <div class="bg-white rounded-xl shadow-xl w-full max-w-md p-6 space-y-4">
      <div class="flex justify-between items-center border-b border-gray-200 pb-3">
        <h3 class="font-bold text-gray-800 text-lg">Шинэ Мал Бүртгэх</h3>
        <button onclick="closeModal()" class="text-gray-400 hover:text-gray-600"><i class="fa-solid fa-xmark text-xl"></i></button>
      </div>

      <form onsubmit="saveNewAnimal(event)" class="space-y-3">
        <div>
          <label class="block text-xs font-semibold text-gray-600 mb-1">Ээмэгний Дугаар (ID)</label>
          <input type="text" id="modal-tag" placeholder="MN-2026-XXXX" required class="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm focus:ring-2 focus:ring-emerald-500">
        </div>
        <div>
          <label class="block text-xs font-semibold text-gray-600 mb-1">Малын Төрөл</label>
          <select id="modal-type" class="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm focus:ring-2 focus:ring-emerald-500">
            <option value="Хоной">Хоной</option>
            <option value="Ямаа">Ямаа</option>
            <option value="Үхэр">Үхэр</option>
            <option value="Адуу">Адуу</option>
            <option value="Тэмээ">Тэмээ</option>
          </select>
        </div>
        <div>
          <label class="block text-xs font-semibold text-gray-600 mb-1">Нас / Хүйс</label>
          <input type="text" id="modal-age" placeholder="Жишээ: 3 настай, Эм" required class="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm focus:ring-2 focus:ring-emerald-500">
        </div>
        <div class="flex justify-end space-x-2 border-t border-gray-200 pt-3">
          <button type="button" onclick="closeModal()" class="px-4 py-2 border border-gray-300 rounded-lg text-sm text-gray-600 hover:bg-gray-50">Цуцлах</button>
          <button type="submit" class="px-4 py-2 bg-emerald-600 hover:bg-emerald-700 text-white rounded-lg text-sm font-medium">Хадгалах</button>
        </div>
      </form>
    </div>
  </div>

  <!-- JavaScript App Logic -->
  <script>
    // Initial State Data
    let herdData = [
      { id: "MN-88401", type: "Адуу", age: "5 настай, Азарга", status: "Эрүүл", vetDate: "2026-09-10" },
      { id: "MN-88402", type: "Үхэр", age: "4 настай, Үнээ", status: "Эрүүл", vetDate: "2026-08-15" },
      { id: "MN-88403", type: "Тэмээ", age: "6 настай, Ингэ", status: "Эрүүл", vetDate: "2026-07-22" },
      { id: "MN-88404", type: "Хоной", age: "2 настай, Эм", status: "Хянаж байна", vetDate: "2026-10-01" },
      { id: "MN-88405", type: "Ямаа", age: "3 настай, Эм", status: "Эрүүл", vetDate: "2026-09-28" }
    ];

    let vetLogs = [
      { tag: "MN-88401", type: "Шүлхий Вакцин", date: "2026-09-10" },
      { tag: "MN-88404", type: "Паразит Туулга", date: "2026-10-01" }
    ];

    let isOffline = false;

    // Navigation Switcher
    function switchTab(tabId) {
      const sections = ['dashboard', 'herd', 'pasture', 'weather', 'vet'];
      sections.forEach(s => {
        document.getElementById(`sec-${s}`).classList.add('hidden');
        document.getElementById(`nav-${s}`).classList.remove('active-nav');
        document.getElementById(`nav-${s}`).classList.add('text-slate-300');
      });

      document.getElementById(`sec-${tabId}`).classList.remove('hidden');
      document.getElementById(`nav-${tabId}`).classList.add('active-nav');

      const titles = {
        dashboard: "Хянах Самбар",
        herd: "Мал Бүртгэлийн Машинтай Жороо",
        pasture: "Бэлчээрийн Зураглал & Даац",
        weather: "Цаг Агаарын Мэдээ & Зудын Эрсдэл",
        vet: "Мал Эмнэлгийн Тэмдэглэл"
      };
      document.getElementById('header-title').innerText = titles[tabId];

      if(tabId === 'pasture') drawMap();
    }

    // Render Herd Table
    function renderHerdTable(data = herdData) {
      const tbody = document.getElementById('herd-table-body');
      tbody.innerHTML = '';
      data.forEach(item => {
        const tr = document.createElement('tr');
        tr.className = "hover:bg-slate-50 transition";
        tr.innerHTML = `
          <td class="p-4 font-semibold text-slate-800">${item.id}</td>
          <td class="p-4">${item.type}</td>
          <td class="p-4">${item.age}</td>
          <td class="p-4">
            <span class="px-2.5 py-1 rounded-full text-xs font-semibold ${item.status === 'Эрүүл' ? 'bg-emerald-100 text-emerald-700' : 'bg-amber-100 text-amber-700'}">
              ${item.status}
            </span>
          </td>
          <td class="p-4 text-xs text-gray-500">${item.vetDate}</td>
          <td class="p-4">
            <button onclick="deleteAnimal('${item.id}')" class="text-red-500 hover:text-red-700 text-xs font-medium">Усгах</button>
          </td>
        `;
        tbody.appendChild(tr);
      });
    }

    // Filter Herd Table
    function filterHerdTable() {
      const query = document.getElementById('herd-search').value.toLowerCase();
      const typeFilter = document.getElementById('herd-filter-type').value;

      const filtered = herdData.filter(item => {
        const matchesQuery = item.id.toLowerCase().includes(query) || item.type.toLowerCase().includes(query);
        const matchesType = typeFilter === "" || item.type === typeFilter;
        return matchesQuery && matchesType;
      });

      renderHerdTable(filtered);
    }

    // Render Vet Logs
    function renderVetLogs() {
      const list = document.getElementById('vet-log-list');
      list.innerHTML = '';
      vetLogs.forEach(log => {
        const li = document.createElement('li');
        li.className = "p-3 bg-slate-50 rounded-lg border border-gray-200 flex justify-between items-center text-sm";
        li.innerHTML = `
          <div>
            <span class="font-bold text-gray-800">${log.tag}</span> - <span class="text-purple-700 font-medium">${log.type}</span>
          </div>
          <span class="text-xs text-gray-500">${log.date}</span>
        `;
        list.appendChild(li);
      });
    }

    // Add Vet Log
    function addVetLog(e) {
      e.preventDefault();
      const tag = document.getElementById('vet-tag').value;
      const type = document.getElementById('vet-type').value;
      const date = document.getElementById('vet-date').value;

      vetLogs.unshift({ tag, type, date });
      renderVetLogs();
      document.getElementById('vet-form').reset();
    }

    // Modal Control
    function openModal() { document.getElementById('modal-register').classList.remove('hidden'); }
    function closeModal() { document.getElementById('modal-register').classList.add('hidden'); }

    function saveNewAnimal(e) {
      e.preventDefault();
      const id = document.getElementById('modal-tag').value;
      const type = document.getElementById('modal-type').value;
      const age = document.getElementById('modal-age').value;

      herdData.unshift({ id, type, age, status: "Эрүүл", vetDate: "Бүртгэгдээгүй" });
      renderHerdTable();
      closeModal();
    }

    function deleteAnimal(id) {
      herdData = herdData.filter(i => i.id !== id);
      renderHerdTable();
    }

    // Toggle Offline Simulation
    function toggleOfflineMode() {
      isOffline = !isOffline;
      const dot = document.getElementById('status-dot');
      const text = document.getElementById('status-text');

      if (isOffline) {
        dot.className = "w-3 h-3 rounded-full bg-amber-500";
        text.innerText = "Офлайн (Сүлжээгүй)";
      } else {
        dot.className = "w-3 h-3 rounded-full bg-emerald-500";
        text.innerText = "Онлайн холболттой";
      }
    }

    // Canvas Map Simulation
    function drawMap() {
      const canvas = document.getElementById('mapCanvas');
      if (!canvas) return;
      const ctx = canvas.getContext('2d');
      canvas.width = canvas.offsetWidth;
      canvas.height = canvas.offsetHeight;

      // Background Pasture Grid
      ctx.fillStyle = '#1e293b';
      ctx.fillRect(0, 0, canvas.width, canvas.height);

      // Green Zones
      ctx.fillStyle = 'rgba(16, 185, 129, 0.4)';
      ctx.beginPath();
      ctx.arc(canvas.width * 0.3, canvas.height * 0.4, 80, 0, Math.PI * 2);
      ctx.fill();

      // Amber Zone
      ctx.fillStyle = 'rgba(245, 158, 11, 0.4)';
      ctx.beginPath();
      ctx.arc(canvas.width * 0.7, canvas.height * 0.6, 90, 0, Math.PI * 2);
      ctx.fill();

      // River path
      ctx.strokeStyle = '#3b82f6';
      ctx.lineWidth = 4;
      ctx.beginPath();
      ctx.moveTo(0, canvas.height * 0.2);
      ctx.bezierCurveTo(canvas.width * 0.4, canvas.height * 0.1, canvas.width * 0.5, canvas.height * 0.8, canvas.width, canvas.height * 0.7);
      ctx.stroke();
    }

    // Initialize Charts on Load
    window.addEventListener('DOMContentLoaded', () => {
      renderHerdTable();
      renderVetLogs();

      // Chart 1: Livestock Breakdown
      const ctx1 = document.getElementById('chartLivestock').getContext('2d');
      new Chart(ctx1, {
        type: 'doughnut',
        data: {
          labels: ['Хони', 'Ямаа', 'Үхэр', 'Адуу', 'Тэмээ'],
          datasets: [{
            data: [550, 420, 140, 110, 20],
            backgroundColor: ['#10b981', '#3b82f6', '#f59e0b', '#8b5cf6', '#ec4899']
          }]
        },
        options: { responsive: true, maintainAspectRatio: false }
      });

      // Chart 2: Fodder Reserve
      const ctx2 = document.getElementById('chartFodder').getContext('2d');
      new Chart(ctx2, {
        type: 'bar',
        data: {
          labels: ['10 сар', '11 сар', '12 сар', '1 сар', '2 сар', '3 сар'],
          datasets: [{
            label: 'Нөөцөлсөн тэжээл (Тонн)',
            data: [45, 40, 32, 22, 12, 5],
            backgroundColor: '#3b82f6'
          }]
        },
        options: { responsive: true, maintainAspectRatio: false }
      });
    });
  </script>
</body>
</html>