module.exports = {
  updateChannel: 'canary',
  config: {
    fontSize: 17,
    fontFamily:
      '"Dank Mono", "Operator Mono", Menlo, "DejaVu Sans Mono", "Lucida Console", monospace',
    cursorColor: 'rgba(248,28,229,0.8)',
    cursorShape: 'BLOCK',
    padding: '10px',
    shell: '/bin/zsh',
    windowSize: [760, 540],
  },
  
  enableVibrancy: true,

  plugins: [
    'hyper-sierra',
    // 'hyper-dracula',
    // 'verminal',
    'hypercwd'
  ],

  // `~/.hyper_plugins/local/` and include it here
  localPlugins: []
}
