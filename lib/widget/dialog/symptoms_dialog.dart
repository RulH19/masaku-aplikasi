import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:masaku/views/kategori-screen/kategori_diabetes_screen.dart';
import 'package:masaku/widget/dialog/alert_berhenti_dialog.dart';

class SymptomsFormDialog extends StatefulWidget {
  @override
  _SymptomsFormDialogState createState() => _SymptomsFormDialogState();
}

class _SymptomsFormDialogState extends State<SymptomsFormDialog> {
  final List<String> symptoms = [
    'Apakah Anda sering merasa haus atau buang air kecil lebih sering dari biasanya?',
    'Apakah Anda sering merasa lelah atau lesu tanpa alasan yang jelas?',
    'Apakah Anda sering merasa mual atau muntah setelah makan?',
    'Apakah Anda sering merasakan nyeri atau rasa terbakar di bagian perut atas atau dada setelah makan?',
    'Apakah Anda sering merasakan sakit atau bengkak pada sendi, terutama pada malam hari atau setelah mengonsumsi makanan tertentu seperti daging merah atau makanan laut?',
    'Apakah Anda sering merasa pusing atau sakit kepala, terutama setelah bangun tidur?',
    'Apakah Anda pernah diukur tekanan darahnya dan hasilnya menunjukkan tekanan darah tinggi (misalnya di atas 140/90 mmHg)?',
    'Apakah Anda sering merasakan keringat berlebih atau tangan/kaki yang dingin?',
    'Apakah Anda pernah mengalami penurunan berat badan yang signifikan tanpa alasan yang jelas?',
    'Apakah Anda merasa sulit tidur karena sering merasa sesak atau nyeri di dada?'
  ];

  final Map<String, String> selectedAnswers = {};
  String errorMessage = '';
  String _checkDiagnosis() {
    int diabetesScore = (selectedAnswers[
                    'Apakah Anda sering merasa haus atau buang air kecil lebih sering dari biasanya?'] ==
                'Ya'
            ? 1
            : 0) +
        (selectedAnswers[
                    'Apakah Anda sering merasa lelah atau lesu tanpa alasan yang jelas?'] ==
                'Ya'
            ? 1
            : 0) +
        (selectedAnswers[
                    'Apakah Anda pernah mengalami penurunan berat badan yang signifikan tanpa alasan yang jelas?'] ==
                'Ya'
            ? 1
            : 0);

    int maagScore = (selectedAnswers[
                    'Apakah Anda sering merasa mual atau muntah setelah makan?'] ==
                'Ya'
            ? 1
            : 0) +
        (selectedAnswers[
                    'Apakah Anda sering merasakan nyeri atau rasa terbakar di bagian perut atas atau dada setelah makan?'] ==
                'Ya'
            ? 1
            : 0);

    int asamUratScore = (selectedAnswers[
                'Apakah Anda sering merasakan sakit atau bengkak pada sendi, terutama pada malam hari atau setelah mengonsumsi makanan tertentu seperti daging merah atau makanan laut?'] ==
            'Ya'
        ? 1
        : 0);

    int hipertensiScore = (selectedAnswers[
                    'Apakah Anda sering merasa pusing atau sakit kepala, terutama setelah bangun tidur?'] ==
                'Ya'
            ? 1
            : 0) +
        (selectedAnswers[
                    'Apakah Anda pernah diukur tekanan darahnya dan hasilnya menunjukkan tekanan darah tinggi (misalnya di atas 140/90 mmHg)?'] ==
                'Ya'
            ? 1
            : 0) +
        (selectedAnswers[
                    'Apakah Anda merasa sulit tidur karena sering merasa sesak atau nyeri di dada?'] ==
                'Ya'
            ? 1
            : 0);

    if (diabetesScore >= 2) {
      return "Diabetes";
    } else if (maagScore >= 2) {
      return "Maag";
    } else if (asamUratScore >= 1) {
      return "Asam Urat";
    } else if (hipertensiScore >= 2) {
      return "Hipertensi";
    } else {
      return "Tidak ada indikasi penyakit serius";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.r)),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Text(
                'Gejala yang dirasakan',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
              ),
              SizedBox(height: 10.h),
            ],
          ),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: symptoms.map((symptom) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(symptom, style: TextStyle(fontSize: 14.sp)),
                    DropdownButtonFormField<String>(
                      value: selectedAnswers[symptom] ?? 'Pilih',
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: BorderSide(
                                color: const Color(0xFFD0B8A8), width: 1.w)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: BorderSide(
                                color: const Color(0xFFD0B8A8), width: 1.w)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: BorderSide(
                                color: const Color(0xFFD0B8A8), width: 1.w)),
                      ),
                      items: ['Pilih', 'Ya', 'Tidak']
                          .map((answer) => DropdownMenuItem<String>(
                                value: answer,
                                child: Text(answer),
                              ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedAnswers[symptom] = value!;
                        });
                      },
                    ),
                    SizedBox(height: 10.h),
                  ],
                );
              }).toList(),
            ),
          ),
          actions: [
            if (errorMessage.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  errorMessage,
                  style: TextStyle(color: Colors.red, fontSize: 12.sp),
                ),
              ),
            GestureDetector(
              onTap: () {
                bool allSelected = true;
                setState(() {
                  errorMessage = ''; // Reset error message
                });
                for (var symptom in symptoms) {
                  if (selectedAnswers[symptom] == null ||
                      selectedAnswers[symptom] == 'Pilih') {
                    allSelected = false;
                  }
                }

                if (allSelected) {
                  final hasil = _checkDiagnosis();
                  Navigator.of(context).pop();
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (BuildContext context) => AlertBerhentiDialog(
                      hasil: hasil,
                    ),
                  );
                } else {
                  setState(() {
                    errorMessage =
                        'Harap jawab semua pertanyaan sebelum mengirim.';
                  });
                }
              },
              child: Container(
                width: 130.w,
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 25.w),
                decoration: BoxDecoration(
                  color: const Color(0xFFC5705D),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: const Center(
                  child: Text(
                    "Kirim",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          right: 50,
          top: 30,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Image.asset(
              "assets/close-circle.png",
              width: 25.w,
            ),
          ),
        ),
      ],
    );
  }
}
