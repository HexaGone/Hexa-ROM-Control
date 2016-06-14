.class public Lcom/wubydax/romcontrol/HandleScripts;
.super Ljava/lang/Object;
.source "HandleScripts.java"


# instance fields
.field am:Landroid/content/res/AssetManager;

.field c:Landroid/content/Context;

.field scriptFilesDirPath:Ljava/lang/String;

.field scriptFolderName:Ljava/lang/String;

.field scriptsInAssets:[Ljava/lang/String;

.field scriptsInFiles:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "scripts"

    iput-object v0, p0, Lcom/wubydax/romcontrol/HandleScripts;->scriptFolderName:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/wubydax/romcontrol/HandleScripts;->c:Landroid/content/Context;

    .line 44
    return-void
.end method


# virtual methods
.method public copyAsset(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;

    .prologue
    .line 72
    const/4 v6, 0x0

    .line 73
    .local v6, "isCopied":Z
    const/4 v5, 0x0

    .line 74
    .local v5, "in":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 75
    .local v8, "out":Ljava/io/OutputStream;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v11, "scriptsFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/wubydax/romcontrol/HandleScripts;->scriptsInAssets:[Ljava/lang/String;

    array-length v12, v12

    if-ge v4, v12, :cond_0

    .line 78
    new-instance v3, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wubydax/romcontrol/HandleScripts;->scriptFilesDirPath:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wubydax/romcontrol/HandleScripts;->scriptsInAssets:[Ljava/lang/String;

    aget-object v13, v13, v4

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 81
    .end local v3    # "f":Ljava/io/File;
    :cond_0
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v7, v12, :cond_2

    .line 83
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    .line 85
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/wubydax/romcontrol/HandleScripts;->am:Landroid/content/res/AssetManager;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 86
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z

    .line 87
    new-instance v9, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v8    # "out":Ljava/io/OutputStream;
    .local v9, "out":Ljava/io/OutputStream;
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lcom/wubydax/romcontrol/HandleScripts;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 89
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 90
    const/4 v5, 0x0

    .line 91
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 92
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 93
    const/4 v8, 0x0

    .line 94
    .end local v9    # "out":Ljava/io/OutputStream;
    .restart local v8    # "out":Ljava/io/OutputStream;
    const/4 v6, 0x1

    .line 81
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 95
    :catch_0
    move-exception v2

    .line 96
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    const/4 v6, 0x0

    goto :goto_2

    .line 101
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/wubydax/romcontrol/HandleScripts;->scriptFilesDirPath:Ljava/lang/String;

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v10, "parent":Ljava/io/File;
    if-eqz v6, :cond_3

    .line 107
    :try_start_2
    new-instance v1, Lcom/stericson/RootShell/execution/Command;

    const/4 v12, 0x0

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "chmod -R 755 "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wubydax/romcontrol/HandleScripts;->scriptFilesDirPath:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-direct {v1, v12, v13}, Lcom/stericson/RootShell/execution/Command;-><init>(I[Ljava/lang/String;)V

    .line 108
    .local v1, "c":Lcom/stericson/RootShell/execution/Command;
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootShell/execution/Shell;

    move-result-object v12

    invoke-virtual {v12, v1}, Lcom/stericson/RootShell/execution/Shell;->add(Lcom/stericson/RootShell/execution/Command;)Lcom/stericson/RootShell/execution/Command;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/stericson/RootShell/exceptions/RootDeniedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_3

    .line 119
    .end local v1    # "c":Lcom/stericson/RootShell/execution/Command;
    :cond_3
    :goto_4
    return v6

    .line 110
    :catch_1
    move-exception v2

    .line 111
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 112
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 113
    .local v2, "e":Lcom/stericson/RootShell/exceptions/RootDeniedException;
    invoke-virtual {v2}, Lcom/stericson/RootShell/exceptions/RootDeniedException;->printStackTrace()V

    goto :goto_4

    .line 114
    .end local v2    # "e":Lcom/stericson/RootShell/exceptions/RootDeniedException;
    :catch_3
    move-exception v2

    .line 115
    .local v2, "e":Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v2}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_4

    .line 95
    .end local v2    # "e":Ljava/util/concurrent/TimeoutException;
    .end local v8    # "out":Ljava/io/OutputStream;
    .end local v10    # "parent":Ljava/io/File;
    .restart local v9    # "out":Ljava/io/OutputStream;
    :catch_4
    move-exception v2

    move-object v8, v9

    .end local v9    # "out":Ljava/io/OutputStream;
    .restart local v8    # "out":Ljava/io/OutputStream;
    goto :goto_3
.end method

.method public copyAssetFolder()Z
    .locals 10

    .prologue
    .line 48
    :try_start_0
    iget-object v7, p0, Lcom/wubydax/romcontrol/HandleScripts;->c:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    iput-object v7, p0, Lcom/wubydax/romcontrol/HandleScripts;->am:Landroid/content/res/AssetManager;

    .line 49
    iget-object v7, p0, Lcom/wubydax/romcontrol/HandleScripts;->am:Landroid/content/res/AssetManager;

    iget-object v8, p0, Lcom/wubydax/romcontrol/HandleScripts;->scriptFolderName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/wubydax/romcontrol/HandleScripts;->scriptsInAssets:[Ljava/lang/String;

    .line 50
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/wubydax/romcontrol/HandleScripts;->c:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/wubydax/romcontrol/HandleScripts;->scriptFolderName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/wubydax/romcontrol/HandleScripts;->scriptFilesDirPath:Ljava/lang/String;

    .line 51
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/wubydax/romcontrol/HandleScripts;->scriptFilesDirPath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .local v6, "scriptsFilesDir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 54
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/wubydax/romcontrol/HandleScripts;->scriptFilesDirPath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 56
    :cond_0
    const/4 v5, 0x1

    .line 57
    .local v5, "res":Z
    iget-object v0, p0, Lcom/wubydax/romcontrol/HandleScripts;->scriptsInAssets:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .line 59
    .local v2, "file":Ljava/lang/String;
    const-string v7, "."

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 60
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/wubydax/romcontrol/HandleScripts;->scriptFolderName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/wubydax/romcontrol/HandleScripts;->scriptFilesDirPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/wubydax/romcontrol/HandleScripts;->copyAsset(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v5, v7

    .line 57
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/HandleScripts;->copyAssetFolder()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    and-int/2addr v5, v7

    goto :goto_1

    .line 65
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "file":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "res":Z
    .end local v6    # "scriptsFilesDir":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    const/4 v5, 0x0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    return v5
.end method

.method public copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 125
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "read":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 126
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 128
    :cond_0
    return-void
.end method
