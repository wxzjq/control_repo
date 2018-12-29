class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web.puppet.lab':}
  dockeragent::node {'db.puppet.lab':}
}
