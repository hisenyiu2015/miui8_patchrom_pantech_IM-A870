.class public interface abstract Lbluros/app/suggest/IAppSuggestManager;
.super Ljava/lang/Object;
.source "IAppSuggestManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbluros/app/suggest/IAppSuggestManager$NoOp;,
        Lbluros/app/suggest/IAppSuggestManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract getSuggestions(Landroid/content/Intent;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lbluros/app/suggest/ApplicationSuggestion;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract handles(Landroid/content/Intent;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method