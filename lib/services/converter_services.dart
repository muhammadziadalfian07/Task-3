part of 'services.dart';

class ConvertServices {
  static double convertUnit(
    double nilai1,
    double nilai2,
    String satuan1,
    String satuan2,
  ) {
    double nilai;

    if (satuan1 == "KM" && satuan2 == "KM") {
      nilai = nilai2 = nilai1;
    } else if (satuan1 == "KM" && satuan2 == "HM") {
      nilai = nilai1 * 10;
    } else if (satuan1 == "KM" && satuan2 == "DAM") {
      nilai = nilai1 * 100;
    } else if (satuan1 == "KM" && satuan2 == "M") {
      nilai = nilai1 * 1000;
    } else if (satuan1 == "KM" && satuan2 == "DM") {
      nilai = nilai1 * 10000;
    } else if (satuan1 == "KM" && satuan2 == "CM") {
      nilai = nilai1 * 100000;
    } else if (satuan1 == "KM" && satuan2 == "MM") {
      nilai = nilai1 * 1000000;
    }

    // HM
    else if (satuan1 == "HM" && satuan2 == "KM") {
      nilai = nilai1 / 10;
    } else if (satuan1 == "HM" && satuan2 == "HM") {
      nilai = nilai1 * 1;
    } else if (satuan1 == "HM" && satuan2 == "DAM") {
      nilai = nilai1 * 10;
    } else if (satuan1 == "HM" && satuan2 == "M") {
      nilai = nilai1 * 100;
    } else if (satuan1 == "HM" && satuan2 == "DM") {
      nilai = nilai1 * 1000;
    } else if (satuan1 == "HM" && satuan2 == "CM") {
      nilai = nilai1 * 10000;
    } else if (satuan1 == "HM" && satuan2 == "MM") {
      nilai = nilai1 * 10000;
    }

    // DAM
    else if (satuan1 == "DAM" && satuan2 == "KM") {
      nilai = nilai1 / 100;
    } else if (satuan1 == "DAM" && satuan2 == "HM") {
      nilai = nilai1 / 10;
    } else if (satuan1 == "DAM" && satuan2 == "DAM") {
      nilai = nilai1 * 1;
    } else if (satuan1 == "DAM" && satuan2 == "M") {
      nilai = nilai1 * 10;
    } else if (satuan1 == "DAM" && satuan2 == "DM") {
      nilai = nilai1 * 100;
    } else if (satuan1 == "DAM" && satuan2 == "CM") {
      nilai = nilai1 * 1000;
    } else if (satuan1 == "DAM" && satuan2 == "MM") {
      nilai = nilai1 * 10000;
    }

    // M
    else if (satuan1 == "M" && satuan2 == "KM") {
      nilai = nilai1 / 1000;
    } else if (satuan1 == "M" && satuan2 == "HM") {
      nilai = nilai1 / 100;
    } else if (satuan1 == "M" && satuan2 == "DAM") {
      nilai = nilai1 / 10;
    } else if (satuan1 == "M" && satuan2 == "M") {
      nilai = nilai1 * 1;
    } else if (satuan1 == "M" && satuan2 == "DM") {
      nilai = nilai1 * 10;
    } else if (satuan1 == "M" && satuan2 == "CM") {
      nilai = nilai1 * 100;
    } else if (satuan1 == "M" && satuan2 == "MM") {
      nilai = nilai1 * 1000;
    }

    // DM
    else if (satuan1 == "DM" && satuan2 == "KM") {
      nilai = nilai1 / 10000;
    } else if (satuan1 == "DM" && satuan2 == "HM") {
      nilai = nilai1 / 1000;
    } else if (satuan1 == "DM" && satuan2 == "DAM") {
      nilai = nilai1 / 100;
    } else if (satuan1 == "DM" && satuan2 == "M") {
      nilai = nilai1 / 10;
    } else if (satuan1 == "DM" && satuan2 == "DM") {
      nilai = nilai1 * 1;
    } else if (satuan1 == "DM" && satuan2 == "CM") {
      nilai = nilai1 * 10;
    } else if (satuan1 == "DM" && satuan2 == "MM") {
      nilai = nilai1 * 100;
    }

    // CM
    else if (satuan1 == "CM" && satuan2 == "KM") {
      nilai = nilai1 / 100000;
    } else if (satuan1 == "CM" && satuan2 == "HM") {
      nilai = nilai1 / 10000;
    } else if (satuan1 == "CM" && satuan2 == "DAM") {
      nilai = nilai1 / 1000;
    } else if (satuan1 == "CM" && satuan2 == "M") {
      nilai = nilai1 / 100;
    } else if (satuan1 == "CM" && satuan2 == "DM") {
      nilai = nilai1 / 10;
    } else if (satuan1 == "CM" && satuan2 == "CM") {
      nilai = nilai1 * 1;
    } else if (satuan1 == "CM" && satuan2 == "MM") {
      nilai = nilai1 * 10;
    }

    // MM
    else if (satuan1 == "MM" && satuan2 == "KM") {
      nilai = nilai1 / 1000000;
    } else if (satuan1 == "MM" && satuan2 == "HM") {
      nilai = nilai1 / 100000;
    } else if (satuan1 == "MM" && satuan2 == "DAM") {
      nilai = nilai1 / 10000;
    } else if (satuan1 == "MM" && satuan2 == "M") {
      nilai = nilai1 / 1000;
    } else if (satuan1 == "MM" && satuan2 == "DM") {
      nilai = nilai1 / 100;
    } else if (satuan1 == "MM" && satuan2 == "CM") {
      nilai = nilai1 / 10;
    } else if (satuan1 == "MM" && satuan2 == "CM") {
      nilai = nilai1 * 1;
    }

    return nilai;
  }
}
