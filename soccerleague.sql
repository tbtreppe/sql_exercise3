DROP DATABASE IF EXISTS soccerleague;

CREATE DATABASE soccerleague;

\c soccerleague

CREATE TABLE players (
    id SERIAL,
    name TEXT
);

CREATE TABLE team (
    id SERIAL,
    teamname TEXT,
    player_id INTEGER REFERENCES players ON DELETE CASCADE
);

CREATE TABLE matches (
    id SERIAL, 
    team1 TEXT,
    team2 TEXT,
    referee TEXT,
    season_id INTEGER REFERENCES seasons ON DELETE CASCADE
);

CREATE TABLE goal (
    player_id INTEGER REFERENCES players ON DELETE CASCADE,
    match_id INTEGER REFERENCES matches ON DELETE CASCADE 
);

CREATE TABLE season (
    id SERIAL,
    start DATE,
    end DATE
);

CREATE TABLE results (
    id SERIAL,
    team_id INTEGER REFERENCES team ON DELETE CASCADE,
    match_id INTEGER REFERENCES matches ON DELETE CASCADE,
    result TEXT
);