interface XComGameState_MissionLogic_API extends XComGameState_BaseObject;

delegate OnNoPlayableUnitsRemainingDelegate(XGPlayer TeamOutOfUnits);

function SetupMissionStartState(XComGameState StartState);
function RegisterEventHandlers();
function OnAlienTurnBegin(delegate<X2EventManager.OnEventDelegate> NewDelegate);
function OnAbilityActivated(delegate<X2EventManager.OnEventDelegate> NewDelegate);
function OnNoPlayableUnitsRemaining (delegate<OnNoPlayableUnitsRemainingDelegate> Listener);
function bool EventAbilityIs(string AbilityTemplateFilter, Object EventData, XComGameState GameState);
function ModifyMissionTimer(bool Show, int NumTurns = 0, string DisplayMsgTitle = "",
							string DisplayMsgSubtitle = "", TimerColors TimerColor = Normal_Blue);
