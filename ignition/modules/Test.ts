import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

const TestModule = buildModule("TestModule", (m) => {

  const testCalls = m.contract("TestCalls");

  return { testCalls };
});

export default TestModule;
