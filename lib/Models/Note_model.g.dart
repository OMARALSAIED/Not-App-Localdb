part of 'Note_model.dart';

class NoteModelAdpter extends TypeAdapter<NotModel> {
  @override
  final int typeId = 0;

  @override
  NotModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fileds = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read()
    };

    return NotModel(
        data: fileds[3] as String,
        color: fileds[2] as int,
        subtitle: fileds[1] as String,
        title: fileds[0] as String);
  }

  @override
  void write(BinaryWriter writer, NotModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.subtitle)
      ..writeByte(2)
      ..write(obj.data)
      ..write(3)
      ..writeByte(obj.color);
  }

  @override
  int get hashCode => typeId.hashCode;

  
 @override
  // ignore: override_on_non_overriding_member
  bool operator ==(Object other)=>    identical(this, other) ||
       other is NoteModelAdpter &&
             runtimeType== other.runtimeType &&
             typeId==other.typeId;
  

}
