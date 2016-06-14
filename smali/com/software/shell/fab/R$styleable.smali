.class public final Lcom/software/shell/fab/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/software/shell/fab/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ActionButton:[I

.field public static final ActionButton_animation_onHide:I = 0x12

.field public static final ActionButton_animation_onShow:I = 0x11

.field public static final ActionButton_button_color:I = 0x2

.field public static final ActionButton_button_colorPressed:I = 0x3

.field public static final ActionButton_button_colorRipple:I = 0x5

.field public static final ActionButton_hide_animation:I = 0xe

.field public static final ActionButton_image:I = 0xf

.field public static final ActionButton_image_size:I = 0x10

.field public static final ActionButton_rippleEffect_enabled:I = 0x4

.field public static final ActionButton_shadowResponsiveEffect_enabled:I = 0xa

.field public static final ActionButton_shadow_color:I = 0x9

.field public static final ActionButton_shadow_radius:I = 0x6

.field public static final ActionButton_shadow_xOffset:I = 0x7

.field public static final ActionButton_shadow_yOffset:I = 0x8

.field public static final ActionButton_show_animation:I = 0xd

.field public static final ActionButton_size:I = 0x1

.field public static final ActionButton_stroke_color:I = 0xc

.field public static final ActionButton_stroke_width:I = 0xb

.field public static final ActionButton_type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/software/shell/fab/R$styleable;->ActionButton:[I

    return-void

    :array_0
    .array-data 4
        0x7f010020
        0x7f010021
        0x7f010022
        0x7f010023
        0x7f010024
        0x7f010025
        0x7f010026
        0x7f010027
        0x7f010028
        0x7f010029
        0x7f01002a
        0x7f01002b
        0x7f01002c
        0x7f01002d
        0x7f01002e
        0x7f01002f
        0x7f010030
        0x7f010031
        0x7f010032
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
