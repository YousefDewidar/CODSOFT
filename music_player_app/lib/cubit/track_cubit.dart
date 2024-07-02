import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_player_app/cubit/track_state.dart';
import 'package:music_player_app/model/track_model.dart';

class TrackCubit extends Cubit<TrackState> {
  TrackCubit() : super(InitState());

  Track? myTrack;
  AudioPlayer player = AudioPlayer();

  setFloatingTrack(Track track) {
    myTrack = track;
    emit(InitState());
  }

  setRecList() {
    emit(InitState());
  }

}
