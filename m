Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BECC941EA70
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 12:06:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5701061A3D
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 10:06:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3E5A361036; Fri,  1 Oct 2021 10:06:29 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9DDA5617DA;
	Fri,  1 Oct 2021 10:06:21 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A1F3E60A8A
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:06:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 99EB260C37; Fri,  1 Oct 2021 10:06:16 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
 [209.85.128.51])
 by lists.linaro.org (Postfix) with ESMTPS id 7D33760A8A
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:06:14 +0000 (UTC)
Received: by mail-wm1-f51.google.com with SMTP id
 j10-20020a1c230a000000b0030d523b6693so219465wmj.2
 for <linaro-mm-sig@lists.linaro.org>; Fri, 01 Oct 2021 03:06:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nBxy3ulKKNwNU3JRN+DI9TGxvR5T/sYujwDVcUd5t/E=;
 b=SVGez1MdEiVQGoFy/riw0xiEDO0FV02BsjEqc7v0cfxfpXWOsnbq0uWUEmWrvEemIV
 mJTP/RgHr6LJmd/8IEAcwdKIuk3IAbTFK5taIzoXEU2oyeg+30H15A+yC1NWru4Yyh7g
 BsNpkrtO1uuaJhP7LoiKMzki7vuFEMmVqAqUktL0X2S7NLEXWKTSiWTBr5QJ3gNpzCVc
 1UReGn2qC+naWiFsZR9ur5vpHAHQgOYRPIkUCCB2C6Hl8rDk/KXQAX5Q3tzqXzSyw1rl
 bvreaUGIf/MVdzbjzwIeV5Qz5TjSLi27OlHLN0miuDef0ZC8zcGWoI+l0deMsooVm4Ty
 820g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nBxy3ulKKNwNU3JRN+DI9TGxvR5T/sYujwDVcUd5t/E=;
 b=WoDwL97Cx5EUQ1kaD6qaL1NKWFdyWR094vwNScxYef0oWMq+KUdGisYWd6ETzER5RO
 8PNkVk6To6Pn3l2rgFOjsItmVaU4b6Z918+dD700B8BlM9bZws/odO068aBwaSgxHWgc
 ADwjfh+nJcTnYSTCrxENkNWCvUC0f4wNyMmGkYPuTKabpJ0VE9Nw1DNJNRSDgBjYNks9
 uHMQVNW3v0ba916NaNPRrKxW8GC6K3JcY5AZloqqep141J3ZVYKg+r91bFZwOyHVKHzG
 YHd85CVboX/wumGIMjRkpbdGCiqq+8sTE+S/wbxM0qCJTTrB1i81T9PW2bIM4P7mjTJa
 MzBg==
X-Gm-Message-State: AOAM531+0K4764+KgmjuPM/HWG7pT122BH7yNmX7AxvRe/RnXZhS9AOc
 QwUsup15DWvuorA5fZtyxEAeR77eFUk=
X-Google-Smtp-Source: ABdhPJzzkDQSQyhgkCwBptEv0AsEJopTJjOV/eomBw7zew4bb/Eh++0YuZhIQMGbfnYye1cgUCuEGw==
X-Received: by 2002:a1c:a512:: with SMTP id o18mr3585361wme.162.1633082773573; 
 Fri, 01 Oct 2021 03:06:13 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 v17sm5746069wro.34.2021.10.01.03.06.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Oct 2021 03:06:13 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri,  1 Oct 2021 12:05:42 +0200
Message-Id: <20211001100610.2899-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] Deploying new iterator interface for dma-buf
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: tvrtko.ursulin@linux.intel.com, daniel@ffwll.ch
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Hi guys,

I've fixed up the lockdep splat in the new selftests found by the CI
systems and added another path for dma_resv_poll.

I know you guys are flooded, but can we get at least the first few patches
committed? The patches to change the individual drivers could also be pushed later on I think.

Thanks,
Christian.


_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
