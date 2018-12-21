class profile:agent_nodes {
  include dockeragents
  dockeragent:node {'web.puppet.vm':}
  dockeragent:node {'db.puppet.vm':}
}
