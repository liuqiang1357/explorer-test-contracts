import { HardhatUserConfig, vars } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox-viem";

const mnemonic = vars.get("MNEMONIC");

const config: HardhatUserConfig = {
  solidity: "0.8.24",
  networks: {
    sepolia: {
      url: "https://ethereum-sepolia-rpc.publicnode.com",
      accounts: {
        mnemonic,
      },
    },
    'neox-t4': {
      url: "https://testnet.rpc.banelabs.org	",
      accounts: {
        mnemonic,
      },
    },
  },
  etherscan: {
    apiKey: 'CDUBCX9Y3IJP8KSVEQ9DWEDI37K6MC4ITN',
    customChains: [
      {
        network: "sepolia",
        chainId: 11155111,
        urls: {
          apiURL: "https://eth-sepolia.blockscout.com/api",
          browserURL: "https://eth-sepolia.blockscout.com",
        },
      },
      {
        network: "neox-t4",
        chainId: 12227332,
        urls: {
          apiURL: "https://xt4scan.ngd.network:8877/api",
          browserURL: "https://neoxt4scan.ngd.network",
        },
      },
    ],
  },
  sourcify: {
    enabled: false,
  },
};

export default config;
