/*
sorry i didn't discuss my plan with you,
i noticed a bit too late that i needed to talk with you,
around the week i'd already planned it,
i may have mentioned it but it was too early,
and once i was supposed to come in to tell you i was out sick.
Do as you must, i didn't see myself making a GOOD game with this much time.

The idea was to have a gradually growing rainbow ball on the mouse
that explodes into a bunch of tiny balls and shrinks when clicked,
and if the ball got too big the game would go black signifying the end of the game.
*/

ParticleSystem ps;

void setup() {
  size(640, 360);
  ps = new ParticleSystem(new PVector(width/2, 50));
}

void draw() {
  background(0);
  ps.addParticle();
  ps.run();
}
