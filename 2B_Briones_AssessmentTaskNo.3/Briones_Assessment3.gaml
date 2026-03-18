model Briones_Assessment3


global {
    init {
        create student number: 50;
    }
}

species student {
    int energy <- 8;
    int score <- 0;
    string status <- "active";
    rgb color <- #green;

    reflex participate when: status = "active" {
        if flip(0.35) {
            score <- score + 1;
            energy <- energy - 1;
        }
    }

    reflex update_status {
        if energy <= 0 {
            status <- "inactive";
            color <- #red;
        }
    }

    aspect base {
        draw circle(1) color: color;
    }
}

experiment class_sim type: gui {
    output {
        display "Classes" {
            agents "Students" value: student aspect: base;
        }

        monitor "Active Students"   value: student count (each.status = "active");
        monitor "Inactive Students" value: student count (each.status = "inactive");
        monitor "Average Score"     value: mean(student collect each.score);
        monitor "Average Energy"    value: mean(student collect each.energy);
        monitor "Total Steps"       value: cycle;
    }
}