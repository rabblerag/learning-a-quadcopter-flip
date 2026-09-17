from quad_velocity_env import QuadcopterVelocityEnv

env = QuadcopterVelocityEnv(obs_mode="full")

obs, info = env.reset(
    seed=0,
    options={
        "target_velocity": [1.0, 0.0, 0.3],
    },
)

for _ in range(1000):
    action = env.action_space.sample()

    obs, reward, terminated, truncated, info = env.step(action)

    if terminated or truncated:
        obs, info = env.reset()