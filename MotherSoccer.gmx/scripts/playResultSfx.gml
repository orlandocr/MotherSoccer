switch (global.result)
{
    case RESULT_NO_STRIKE: playSound(sfxInterceptado); break;
    case RESULT_GOAL_STOPPED: playSound(sfxPortero); break;
    case RESULT_GOAL: playSound(sfxGol); break;
    default: break;
}
