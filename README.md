# UI/UX Pro Max Skill

AI-powered design intelligence for web, mobile, and desktop interfaces. The most comprehensive UI design skill with 161 industry reasoning rules, auto-generated design systems, and 22 framework stacks.

## Features

- **79 UI styles** (50 active, 19 supplemental, 10 deprecated)
- **192 product palettes** and reasoning profiles
- **74 font pairings** with Google Fonts catalog
- **119 UX guidelines** including WCAG 2.2
- **105 curated icons** with Phosphor upstream catalog
- **17 GSAP motion presets**
- **25 chart types** with accessibility contracts
- **22 tech stacks** supported (React, Vue, Angular, Flutter, SwiftUI, etc.)
- **Design System Generator** with Master + Overrides pattern
- **3 design dials**: Variance, Motion, Visual Density

## Quick Start

### 1. Clone the repository

```bash
git clone https://github.com/lqh1314/ui-ux-pro-max-skill.git
cd ui-ux-pro-max-skill
```

### 2. Download complete dataset

The core scripts and small data files are included. To get the full dataset (~3.1MB), run:

```bash
chmod +x download_data.sh
./download_data.sh
```

This downloads:
- `data/styles.csv` (149KB) - 89 style definitions
- `data/ui-reasoning.csv` (77KB) - 192 reasoning profiles
- `data/products.csv` (76KB) - 192 product types
- `data/icons.csv` (58KB) - 105 curated icons
- `data/typography.csv` (50KB) - 74 font pairings
- `data/stacks/*.csv` (22 files) - Framework-specific guidelines
- `data/google-fonts.csv` (747KB) - Complete Google Fonts catalog
- `data/phosphor-icons-upstream.json` (824KB) - Phosphor icon catalog
- `data/google-font-licenses.json` (433KB) - Font license data

### 3. Install to your skills directory

```bash
# Copy to your skills folder
cp -r . ~/.user_skills/ui-ux-pro-max/

# Or use npx
npx skills add https://github.com/lqh1314/ui-ux-pro-max-skill
```

### 4. Verify installation

```bash
cd scripts
python3 validate_data.py
# Expected: OK: validated 12 domain files, 22 stack files, and ui-reasoning.csv
```

## Usage

The skill activates automatically when you request UI/UX work:

```
Build a landing page for my SaaS product
Design a fintech dashboard with dark mode
Create a mobile onboarding flow
```

### Generate a Design System

```bash
cd scripts
python3 design_system.py "fintech banking" --project-name "MyBank" --format markdown
```

### Search Design Patterns

```bash
python3 search.py "e-commerce checkout" --design-system -p "ShopFlow"
```

## Project Structure

```
ui-ux-pro-max-skill/
├── SKILL.md                    # Skill definition and usage guide
├── README.md                   # This file
├── LICENSE                     # MIT License
├── download_data.sh            # Complete dataset downloader
├── scripts/
│   ├── search.py               # Pattern search engine
│   ├── core.py                 # Core data loading and search
│   ├── design_system.py        # Design system generator
│   ├── reasoning_contract.py   # Decision rules parser
│   └── validate_data.py        # Data integrity validator
└── data/
    ├── styles.csv              # UI style definitions
    ├── ui-reasoning.csv        # Industry reasoning profiles
    ├── products.csv            # Product type catalog
    ├── colors.csv              # Color palettes
    ├── typography.csv          # Font pairings
    ├── icons.csv               # Curated icon library
    ├── ux-guidelines.csv       # UX best practices
    ├── landing.csv             # Landing page patterns
    ├── charts.csv              # Chart type guidelines
    ├── motion.csv              # GSAP motion presets
    ├── app-interface.csv       # Native app guidelines
    ├── react-performance.csv   # React performance tips
    ├── catalog-summary.json    # Dataset catalog summary
    ├── data-provenance.json    # Data source provenance
    ├── google-fonts.csv        # Google Fonts catalog
    ├── google-font-licenses.json # Font license data
    ├── phosphor-icons-upstream.json # Phosphor icon catalog
    └── stacks/                 # 22 framework-specific files
        ├── react.csv
        ├── vue.csv
        ├── angular.csv
        ├── flutter.csv
        ├── swiftui.csv
        └── ... (17 more)
```

## Design Dials

Fine-tune output with three 1-10 dials:

| Dial | 1 (Minimal) | 10 (Maximum) |
|------|-------------|--------------|
| **Variance** | Centered, safe | Bold, asymmetric |
| **Motion** | Static, instant | Animated, dynamic |
| **Density** | Spacious, airy | Dense, compact |

## Supported Frameworks

React, Next.js, Vue, Nuxt, Angular, Svelte, Astro, Flutter, React Native, SwiftUI, Jetpack Compose, Laravel, shadcn/ui, Nuxt UI, HTML+Tailwind, Three.js, Avalonia, UWP, WinUI, WPF, Uno, JavaFX

## License

MIT - Original work by NextLevelBuilder. This repository is a mirror with complete dataset retrieval support.

## Original Repository

https://github.com/nextlevelbuilder/ui-ux-pro-max-skill
