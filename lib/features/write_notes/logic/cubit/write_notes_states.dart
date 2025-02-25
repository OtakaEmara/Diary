abstract class WriteNotesStates{}

class WriteNotesInitialStates extends WriteNotesStates{}

//create notes states
class CreateWriteNotesSuccessStates extends WriteNotesStates{}
class CreateWriteNotesErrorStates extends WriteNotesStates{}

//insert notes states
class InsertWriteNotesLoadingStates extends WriteNotesStates{}
class InsertWriteNotesSuccessStates extends WriteNotesStates{}
class InsertWriteNotesErrorStates extends WriteNotesStates{}

