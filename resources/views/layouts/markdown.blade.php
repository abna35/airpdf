<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>{{ config('app.name', 'Laravel') }}</title>
        <meta name="description" content="airpdf - Ubah Cara Anda Membaca PDF" />

        <!-- Open Graph Meta Tags -->
        <meta property="og:title" content="airpdf - Ubah Cara Anda Membaca PDF">
        <meta property="og:description" content="Gali Informasi Lebih Cepat. airpdf membantu Anda menggali informasi penting dengan mudah. Ajukan pertanyaan, dapatkan jawaban instan.">
        <meta property="og:image" content="https://4qeksi706g.ucarecd.net/10dfaa81-29b1-449e-8890-adcbc255ef49/ScreenshotFrom20251028030346.png">
        <meta property="og:url" content="{{ url()->current() }}">
        <meta property="og:type" content="website">
        <meta property="og:locale" content="id_ID">
        <meta property="og:site_name" content="airpdf">

        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.bunny.net">
        <link href="https://fonts.bunny.net/css?family=figtree:400,500,600&display=swap" rel="stylesheet" />
        <script defer data-domain="airpdf.com" src="https://vince.ngooding.com/js/script.js"></script>

        <!-- Scripts -->
        @vite(['resources/css/app.css', 'resources/js/app.js'])
    </head>
    <body class="font-sans text-neutral-900 antialiased dark:bg-neutral-800 dark:text-neutral-300">
        <x-public-navigation />

        <div class="py-12">
            <div class="max-w-5xl mx-auto p-6 lg:p-8">
                <div class="prose max-w-none dark:prose-invert">
                    {!! $content ?? '' !!}
                </div>
            </div>
        </div>

        <x-public-footer />
        @stack('scripts')
        <script>
            function updateDarkMode() {
                if (window.matchMedia('(prefers-color-scheme: dark)').matches) {
                    document.documentElement.classList.add('dark');
                } else {
                    document.documentElement.classList.remove('dark');
                }
            }

            updateDarkMode();
            window.matchMedia('(prefers-color-scheme: dark)').addEventListener('change', updateDarkMode);
        </script>
    </body>
</html>
