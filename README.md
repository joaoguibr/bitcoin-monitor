# Bitcoin Price Fetcher

This is a simple Ruby script that fetches the current Bitcoin price using the [API Ninjas Crypto Price API](https://api-ninjas.com/api/cryptoprice).

## Requirements

- Ruby (version 3.x recommended)
- Bundler (for managing dependencies)

## Installation

1. **Clone the repository:**
   ```sh
   git clone https://github.com/your-username/bitcoin-price-fetcher.git
   cd bitcoin-price-fetcher
   ```

2. **Install dependencies:**
   ```sh
   bundle install
   ```

3. **Create a `.env` file in the root directory:**
   ```sh
   touch .env
   ```
   Then open `.env` and add your API key:
   ```sh
   API_KEY=your_api_key_here
   ```

4. **Run the script:**
   ```sh
   ruby bitcoin.rb
   ```

## Environment Variables

This script uses an API key stored in a `.env` file. You must obtain an API key from [API Ninjas](https://api-ninjas.com/) and add it to your `.env` file as follows:

```
API_KEY=your_api_key_here
```

## Dependencies

This project uses the following gems:
- `net/http` (for making HTTP requests)
- `json` (for parsing API responses)
- `dotenv` (for loading environment variables)

All dependencies are listed in the `Gemfile`. To install them, simply run:
```sh
bundle install
```

## License

This project is open-source and available under the MIT License.

---

**Author:** João Guilherme
**GitHub:** [joaoguibr](https://github.com/joaoguibr)
