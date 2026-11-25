use qtbridge::{QApp, qobject};

#[derive(Default)]
pub struct Backend {}

#[qobject(Singleton)]
impl Backend {
    #[qslot]
    fn say_hello(&self) {
        println!("Hello from Rust!");
    }

    #[qslot]
    fn button_clicked(&self) {
        println!("Button clicked! Rust backend is working.");
    }
}

fn main() {
    QApp::new()
        .register::<Backend>()
        .load_qml(include_bytes!("../qml/Main.qml"))
        .run();
}
