.class public interface abstract annotation Landroid/annotation/KiwiHook;
.super Ljava/lang/Object;
.source "KiwiHook.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_CLASS:Landroid/annotation/KiwiHook$KiwiHookType;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/annotation/KiwiHook$KiwiHookType;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract value()Landroid/annotation/KiwiHook$KiwiHookType;
.end method
