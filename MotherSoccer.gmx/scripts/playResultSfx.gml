switch (global.result)
{
    case RESULT_NO_STRIKE: playSound(sfxResultInterceptado); break;
    case RESULT_GOAL: playSound(sfxResultGol); break;
    case RESULT_GOAL_STOPPED: playSound(sfxResultPortero); break;

    default: break;
}
