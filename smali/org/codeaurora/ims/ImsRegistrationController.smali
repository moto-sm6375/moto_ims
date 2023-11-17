.class public Lorg/codeaurora/ims/ImsRegistrationController;
.super Ljava/lang/Object;
.source "ImsRegistrationController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsRegistrationController$Listener;
    }
.end annotation


# static fields
.field private static final IKEv2_AUTH_FAILURE:I = 0x5


# instance fields
.field private final CODE_IS_NOT_PS_ONLY_ATTACHED:I

.field private final CODE_IS_PS_ONLY_ATTACHED:I

.field private final EVENT_GEO_LOCATION_DATA_STATUS:I

.field private final EVENT_IMS_STATE_CHANGED:I

.field private final EVENT_IMS_STATE_DONE:I

.field private final EVENT_REGISTRATION_BLOCK_STATUS:I

.field private final EVENT_SRV_DOMAIN_CHANGED:I

.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mContext:Landroid/content/Context;

.field private mDeregisteredInfo:Landroid/telephony/ims/ImsReasonInfo;

.field private mErrorCode:I

.field private mHandler:Landroid/os/Handler;

.field private mIsQueryingRegState:Z

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsRegistrationController$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mRegistrationStatus:I

.field private mSelfIndentityUris:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mSrvDomain:I


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;)V
    .locals 1
    .param p1, "imsSenderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p2, "context"    # Landroid/content/Context;

    .line 97
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/codeaurora/ims/ImsRegistrationController;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Landroid/os/Looper;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 7
    .param p1, "imsSenderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 58
    iput-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSelfIndentityUris:Ljava/util/HashSet;

    .line 59
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    .line 61
    const/4 v1, 0x0

    iput v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSrvDomain:I

    .line 62
    const/4 v2, 0x2

    iput v2, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mRegistrationStatus:I

    .line 63
    iput v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mErrorCode:I

    .line 64
    iput-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mDeregisteredInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 70
    const/4 v3, 0x1

    iput v3, p0, Lorg/codeaurora/ims/ImsRegistrationController;->EVENT_REGISTRATION_BLOCK_STATUS:I

    .line 71
    iput v2, p0, Lorg/codeaurora/ims/ImsRegistrationController;->EVENT_GEO_LOCATION_DATA_STATUS:I

    .line 72
    const/4 v4, 0x3

    iput v4, p0, Lorg/codeaurora/ims/ImsRegistrationController;->EVENT_IMS_STATE_CHANGED:I

    .line 73
    const/4 v5, 0x4

    iput v5, p0, Lorg/codeaurora/ims/ImsRegistrationController;->EVENT_IMS_STATE_DONE:I

    .line 74
    const/4 v5, 0x5

    iput v5, p0, Lorg/codeaurora/ims/ImsRegistrationController;->EVENT_SRV_DOMAIN_CHANGED:I

    .line 78
    const/16 v6, 0xfa1

    iput v6, p0, Lorg/codeaurora/ims/ImsRegistrationController;->CODE_IS_PS_ONLY_ATTACHED:I

    .line 79
    const/16 v6, 0xfa2

    iput v6, p0, Lorg/codeaurora/ims/ImsRegistrationController;->CODE_IS_NOT_PS_ONLY_ATTACHED:I

    .line 83
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mIsQueryingRegState:Z

    .line 102
    iput-object p1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 103
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    .line 104
    iput-object p2, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mContext:Landroid/content/Context;

    .line 106
    iget-object v6, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v6, v1, v3, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForRegistrationBlockStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 107
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v2, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForGeoLocationDataStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 108
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v4, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 109
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v5, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForSrvDomainChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 110
    return-void
.end method

.method private handleGeoLocationDataStatus(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 328
    const-string v0, "handleGeoLocationDataStatus"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    if-eqz p1, :cond_1

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 334
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 335
    .local v0, "geoLocationStatus":I
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v2, 0x3e8

    const-string v3, ""

    invoke-direct {v1, v2, v0, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 337
    .local v1, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    const/4 v3, 0x2

    iput v3, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mRegistrationStatus:I

    .line 338
    iput v2, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mErrorCode:I

    .line 339
    const v2, 0x7fffffff

    const/4 v4, 0x0

    invoke-direct {p0, v3, v1, v2, v4}, Lorg/codeaurora/ims/ImsRegistrationController;->notifyRegChange(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    .line 341
    return-void

    .line 330
    .end local v0    # "geoLocationStatus":I
    .end local v1    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error EVENT_GEO_LOCATION_DATA_STATUS AsyncResult ar = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method private handleImsStateChanged(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 11
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 344
    const-string v0, "handleImsStateChanged"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    if-eqz p1, :cond_4

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    instance-of v0, v0, Lorg/codeaurora/ims/ImsRegistrationInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 349
    :cond_0
    const/4 v0, 0x0

    .line 350
    .local v0, "errorCode":I
    const/4 v1, 0x0

    .line 351
    .local v1, "errorMessage":Ljava/lang/String;
    const/4 v2, 0x0

    .line 352
    .local v2, "selfIdentityUrisCombined":Ljava/lang/String;
    const/4 v3, 0x2

    .line 353
    .local v3, "regState":I
    const/4 v4, 0x0

    .line 354
    .local v4, "selfIdentityUriStrings":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 355
    .local v5, "selfIdentityUris":[Landroid/net/Uri;
    iget-object v6, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lorg/codeaurora/ims/ImsRegistrationInfo;

    .line 356
    .local v6, "registration":Lorg/codeaurora/ims/ImsRegistrationInfo;
    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsRegistrationInfo;->getRadioTech()I

    move-result v7

    .line 358
    .local v7, "imsRat":I
    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsRegistrationInfo;->getErrorCode()I

    move-result v0

    .line 359
    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsRegistrationInfo;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    .line 360
    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsRegistrationInfo;->getPAssociatedUris()Ljava/lang/String;

    move-result-object v2

    .line 361
    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsRegistrationInfo;->getState()I

    move-result v3

    .line 362
    if-eqz v2, :cond_1

    .line 363
    nop

    .line 364
    invoke-static {v2}, Lorg/codeaurora/ims/ImsRegistrationUtils;->extractUrisFromPipeSeparatedUriStrings(Ljava/lang/String;)[Landroid/net/Uri;

    move-result-object v5

    .line 368
    :cond_1
    new-instance v8, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v9, 0x3e8

    invoke-direct {v8, v9, v0, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 372
    .local v8, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iput v3, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mRegistrationStatus:I

    .line 373
    const/4 v10, 0x2

    if-ne v3, v10, :cond_2

    .line 374
    iput v9, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mErrorCode:I

    .line 376
    :cond_2
    const/4 v9, 0x1

    invoke-direct {p0, v3, v8, v7, v9}, Lorg/codeaurora/ims/ImsRegistrationController;->notifyRegChange(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    .line 378
    iget-object v9, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSelfIndentityUris:Ljava/util/HashSet;

    invoke-static {v9, v5}, Lorg/codeaurora/ims/ImsRegistrationUtils;->areSelfIdentityUrisDiff(Ljava/util/HashSet;[Landroid/net/Uri;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 380
    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsRegistrationController;->updateSelfIdentityUriCache([Landroid/net/Uri;)V

    .line 381
    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsRegistrationController;->notifyOnSubscriberAssociatedUriChanged([Landroid/net/Uri;)V

    .line 383
    :cond_3
    return-void

    .line 346
    .end local v0    # "errorCode":I
    .end local v1    # "errorMessage":Ljava/lang/String;
    .end local v2    # "selfIdentityUrisCombined":Ljava/lang/String;
    .end local v3    # "regState":I
    .end local v4    # "selfIdentityUriStrings":[Ljava/lang/String;
    .end local v5    # "selfIdentityUris":[Landroid/net/Uri;
    .end local v6    # "registration":Lorg/codeaurora/ims/ImsRegistrationInfo;
    .end local v7    # "imsRat":I
    .end local v8    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :cond_4
    :goto_0
    const-string v0, "handleImsStateChanged error"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method private handleRegistrationBlockStatus(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 286
    if-eqz p1, :cond_2

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 290
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;

    .line 293
    .local v0, "regBlockStatus":Lorg/codeaurora/ims/RegistrationBlockStatusInfo;
    invoke-virtual {v0}, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;->getStatusOnWlan()Lorg/codeaurora/ims/BlockStatusInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 294
    invoke-virtual {v0}, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;->getStatusOnWlan()Lorg/codeaurora/ims/BlockStatusInfo;

    move-result-object v1

    .line 297
    .local v1, "blockStatus":Lorg/codeaurora/ims/BlockStatusInfo;
    invoke-static {v1}, Lorg/codeaurora/ims/ImsRegistrationController;->isIKEv2Error(Lorg/codeaurora/ims/BlockStatusInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 298
    const-string v2, "Permanent IWLAN reg failure (IKEv2 auth failure)."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v3, 0x578

    const/16 v4, 0x580

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 303
    .local v2, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    const/16 v3, 0x13

    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsRegistrationController;->notifyOnTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 306
    .end local v1    # "blockStatus":Lorg/codeaurora/ims/BlockStatusInfo;
    .end local v2    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :cond_1
    return-void

    .line 287
    .end local v0    # "regBlockStatus":Lorg/codeaurora/ims/RegistrationBlockStatusInfo;
    :cond_2
    :goto_0
    const-string v0, "Async result is null or exception is not null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method private handleSrvDomainChanged(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 431
    const-string v0, "handleSrvDomainChanged"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    if-eqz p1, :cond_2

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 437
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 438
    .local v0, "srvDomain":I
    iget v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSrvDomain:I

    if-eq v1, v0, :cond_1

    .line 439
    iput v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSrvDomain:I

    .line 440
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsRegistrationController;->maybeNotifySrvDomainChange(Z)V

    .line 442
    :cond_1
    return-void

    .line 433
    .end local v0    # "srvDomain":I
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error EVENT_SRV_DOMAIN_CHANGED AsyncResult ar = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 434
    return-void
.end method

.method private static isIKEv2Error(Lorg/codeaurora/ims/BlockStatusInfo;)Z
    .locals 4
    .param p0, "blockStatus"    # Lorg/codeaurora/ims/BlockStatusInfo;

    .line 311
    invoke-virtual {p0}, Lorg/codeaurora/ims/BlockStatusInfo;->getReasonDetails()Lorg/codeaurora/ims/BlockReasonDetailsInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {p0}, Lorg/codeaurora/ims/BlockStatusInfo;->getReasonDetails()Lorg/codeaurora/ims/BlockReasonDetailsInfo;

    move-result-object v0

    .line 315
    .local v0, "blockReasonDetails":Lorg/codeaurora/ims/BlockReasonDetailsInfo;
    invoke-virtual {v0}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->getRegFailureReasonType()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 317
    invoke-virtual {v0}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->getRegFailureReason()I

    move-result v2

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_0

    .line 320
    invoke-virtual {v0}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->getRegFailureReasonType()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    .line 322
    invoke-virtual {v0}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->getRegFailureReason()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 315
    :goto_0
    return v1

    .line 324
    .end local v0    # "blockReasonDetails":Lorg/codeaurora/ims/BlockReasonDetailsInfo;
    :cond_1
    return v1
.end method

.method private maybeNotifySrvDomainChange(Z)V
    .locals 6
    .param p1, "isRegChange"    # Z

    .line 392
    iget v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mRegistrationStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 393
    const-string v0, "checkSrvDomainChange IMS not deregistered."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    return-void

    .line 396
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSrvDomain:I

    if-ne v0, v1, :cond_1

    .line 397
    const/16 v0, 0xfa1

    goto :goto_0

    :cond_1
    const/16 v0, 0xfa2

    .line 398
    .local v0, "extraErrCode":I
    :goto_0
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    iget v3, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mErrorCode:I

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 399
    .local v2, "info":Landroid/telephony/ims/ImsReasonInfo;
    const v3, 0x7fffffff

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/codeaurora/ims/ImsRegistrationController;->notifyOnDeregistered(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    .line 401
    if-nez p1, :cond_2

    .line 402
    iget-object v5, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mDeregisteredInfo:Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p0, v1, v5, v3, v4}, Lorg/codeaurora/ims/ImsRegistrationController;->notifyOnDeregistered(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    .line 405
    :cond_2
    return-void
.end method

.method private notifyOnDeregistered(ILandroid/telephony/ims/ImsReasonInfo;IZ)V
    .locals 3
    .param p1, "registrationState"    # I
    .param p2, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p3, "imsRadioTech"    # I
    .param p4, "isBroadcast"    # Z

    .line 170
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 171
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsRegistrationController$Listener;

    .line 172
    .local v2, "l":Lorg/codeaurora/ims/ImsRegistrationController$Listener;
    invoke-interface {v2, p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsRegistrationController$Listener;->onDeregistered(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    .line 174
    .end local v2    # "l":Lorg/codeaurora/ims/ImsRegistrationController$Listener;
    goto :goto_0

    .line 175
    :cond_0
    monitor-exit v0

    .line 176
    return-void

    .line 175
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyOnRegistered(ILandroid/telephony/ims/ImsReasonInfo;IZ)V
    .locals 3
    .param p1, "registrationState"    # I
    .param p2, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p3, "imsRadioTech"    # I
    .param p4, "isBroadcast"    # Z

    .line 150
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 151
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsRegistrationController$Listener;

    .line 152
    .local v2, "l":Lorg/codeaurora/ims/ImsRegistrationController$Listener;
    invoke-interface {v2, p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsRegistrationController$Listener;->onRegistered(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    .line 154
    .end local v2    # "l":Lorg/codeaurora/ims/ImsRegistrationController$Listener;
    goto :goto_0

    .line 155
    :cond_0
    monitor-exit v0

    .line 156
    return-void

    .line 155
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyOnRegistering(ILandroid/telephony/ims/ImsReasonInfo;IZ)V
    .locals 3
    .param p1, "registrationState"    # I
    .param p2, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p3, "imsRadioTech"    # I
    .param p4, "isBroadcast"    # Z

    .line 160
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 161
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsRegistrationController$Listener;

    .line 162
    .local v2, "l":Lorg/codeaurora/ims/ImsRegistrationController$Listener;
    invoke-interface {v2, p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsRegistrationController$Listener;->onRegistering(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    .line 164
    .end local v2    # "l":Lorg/codeaurora/ims/ImsRegistrationController$Listener;
    goto :goto_0

    .line 165
    :cond_0
    monitor-exit v0

    .line 166
    return-void

    .line 165
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyOnSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    .locals 3
    .param p1, "uris"    # [Landroid/net/Uri;

    .line 187
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 188
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsRegistrationController$Listener;

    .line 189
    .local v2, "l":Lorg/codeaurora/ims/ImsRegistrationController$Listener;
    invoke-interface {v2, p1}, Lorg/codeaurora/ims/ImsRegistrationController$Listener;->onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V

    .line 190
    .end local v2    # "l":Lorg/codeaurora/ims/ImsRegistrationController$Listener;
    goto :goto_0

    .line 191
    :cond_0
    monitor-exit v0

    .line 192
    return-void

    .line 191
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyOnTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "imsRadioTech"    # I
    .param p2, "info"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 179
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 180
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsRegistrationController$Listener;

    .line 181
    .local v2, "l":Lorg/codeaurora/ims/ImsRegistrationController$Listener;
    invoke-interface {v2, p1, p2}, Lorg/codeaurora/ims/ImsRegistrationController$Listener;->onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 182
    .end local v2    # "l":Lorg/codeaurora/ims/ImsRegistrationController$Listener;
    goto :goto_0

    .line 183
    :cond_0
    monitor-exit v0

    .line 184
    return-void

    .line 183
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyRegChange(ILandroid/telephony/ims/ImsReasonInfo;IZ)V
    .locals 1
    .param p1, "registrationState"    # I
    .param p2, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p3, "imsRadioTech"    # I
    .param p4, "isBroadcast"    # Z

    .line 214
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 227
    :pswitch_0
    iput-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mDeregisteredInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 228
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsRegistrationController;->notifyOnRegistering(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    goto :goto_0

    .line 221
    :pswitch_1
    iput-object p2, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mDeregisteredInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 222
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRegistrationController;->maybeNotifySrvDomainChange(Z)V

    .line 223
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsRegistrationController;->notifyOnDeregistered(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    .line 225
    goto :goto_0

    .line 216
    :pswitch_2
    iput-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mDeregisteredInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 217
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsRegistrationController;->notifyOnRegistered(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    .line 219
    nop

    .line 232
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateSelfIdentityUriCache([Landroid/net/Uri;)V
    .locals 3
    .param p1, "new_uris"    # [Landroid/net/Uri;

    .line 408
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSelfIndentityUris:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 409
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSelfIndentityUris:Ljava/util/HashSet;

    goto :goto_0

    .line 411
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 413
    :goto_0
    if-nez p1, :cond_1

    .line 414
    const-string v0, "new_uris is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    return-void

    .line 417
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 418
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSelfIndentityUris:Ljava/util/HashSet;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSelfIdentityUriCache :: new self-identity host URI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v0

    .line 420
    invoke-static {v2}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 419
    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 422
    .end local v0    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public addListener(Lorg/codeaurora/ims/ImsRegistrationController$Listener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/ImsRegistrationController$Listener;

    .line 117
    if-eqz p1, :cond_1

    .line 121
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate listener, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    :goto_0
    monitor-exit v0

    .line 128
    return-void

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 118
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispose()V
    .locals 2

    .line 445
    const-string v0, "dispose"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForRegistrationBlockStatus(Landroid/os/Handler;)V

    .line 447
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForGeoLocationDataStatus(Landroid/os/Handler;)V

    .line 448
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V

    .line 449
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForSrvDomainChanged(Landroid/os/Handler;)V

    .line 450
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 451
    iput-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    .line 452
    iput-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSelfIndentityUris:Ljava/util/HashSet;

    .line 453
    const/4 v1, 0x0

    iput v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSrvDomain:I

    .line 454
    const/4 v1, 0x2

    iput v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mRegistrationStatus:I

    .line 455
    iput-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mDeregisteredInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 456
    return-void
.end method

.method public getSelfIdentityUri()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 426
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSelfIndentityUris:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message received: what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 273
    .local v0, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRegistrationController;->handleSrvDomainChanged(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 274
    goto :goto_0

    .line 263
    .end local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 264
    .restart local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mIsQueryingRegState:Z

    if-eqz v2, :cond_0

    .line 265
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mIsQueryingRegState:Z

    .line 266
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRegistrationController;->handleImsStateChanged(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    goto :goto_0

    .line 268
    :cond_0
    const-string v1, "EVENT_IMS_STATE_DONE. Ignoring due to new unsol event received"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    goto :goto_0

    .line 249
    .end local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 250
    .restart local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v2, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 252
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsRegistrationController;->requestImsRegistrationState()V

    goto :goto_0

    .line 258
    :cond_1
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mIsQueryingRegState:Z

    .line 259
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRegistrationController;->handleImsStateChanged(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 261
    goto :goto_0

    .line 245
    .end local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 246
    .restart local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRegistrationController;->handleGeoLocationDataStatus(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 247
    goto :goto_0

    .line 241
    .end local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 242
    .restart local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRegistrationController;->handleRegistrationBlockStatus(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 243
    nop

    .line 278
    .end local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :goto_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeListener(Lorg/codeaurora/ims/ImsRegistrationController$Listener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/ImsRegistrationController$Listener;

    .line 135
    if-eqz p1, :cond_1

    .line 139
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 140
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 143
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listener not found, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    :goto_0
    monitor-exit v0

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 136
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestImsRegistrationState()V
    .locals 3

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mIsQueryingRegState:Z

    .line 196
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->getImsRegistrationState(Landroid/os/Message;)V

    .line 197
    return-void
.end method

.method public reset(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 201
    const-string v0, "reset"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    const/4 v0, 0x2

    iput v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mRegistrationStatus:I

    .line 203
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v1

    iput v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mErrorCode:I

    .line 204
    const v1, 0x7fffffff

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lorg/codeaurora/ims/ImsRegistrationController;->notifyRegChange(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    .line 206
    return-void
.end method
