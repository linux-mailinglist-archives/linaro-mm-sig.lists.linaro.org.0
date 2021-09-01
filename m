Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 094393FD92D
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Sep 2021 14:03:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5D518619AA
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Sep 2021 12:03:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0434B61017; Wed,  1 Sep 2021 12:02:55 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8612B60F1F;
	Wed,  1 Sep 2021 12:02:51 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 19E006056F
 for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Sep 2021 12:02:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 15DD86100C; Wed,  1 Sep 2021 12:02:49 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 by lists.linaro.org (Postfix) with ESMTPS id 106426056F
 for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Sep 2021 12:02:47 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id n5so4068474wro.12
 for <linaro-mm-sig@lists.linaro.org>; Wed, 01 Sep 2021 05:02:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uNWyDCJRg5z+YdrGcz6ue9XUC2vcsZfH2SlJlbhPC2Y=;
 b=AwP8q6IrhVvt2OCuxNZ/CQ4Mh1qUju3OY1uhxDDlpjAUg60KvC5+b7vLsLmr99gHAk
 MBTR4BANx4JWZEv1QTzkOClDEc0JuQJmM197nifSno8nN2fCH7ttK2FdPByOADQu+MFN
 VAbXFQFhuy7Z4D6AD2vg53f/l9edv7gFVjFQ9k/Eg73EFwDsv8GGZAI6t2sty6wo3uE8
 xMwbYQIMWT6gAKNASr08ZvriQwt9PUfmMuwB17kqOEkS89reM28JOoRDQROztjY4s90Q
 vQV7f4yMl94jJY9kgRDxpb+PCslEMi6l3555vaalpX+iS81+VA9t+XzU1O5Ukyb0LeRe
 Wg3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uNWyDCJRg5z+YdrGcz6ue9XUC2vcsZfH2SlJlbhPC2Y=;
 b=KGid8xcpDUBakrdNXcY0WPabZXGyv5MLMvCMBZx2D8X7CMH/bOr3cjHkTSBCj0tEj5
 V7J7CIW5A2Y2dDYgQPSctKRunMTUfh7CkR4ZxmjU/wgJ9ApiFB1xPlF4+mBtuzHlyjYt
 ZjvA+TQycnC5OX0PpRy+6nKYR9Mu/Krj/jZzSsL1WleyaRcFpSFjagOtZsK5WrAdKFMP
 vdS/z5f5F0xoKXwzSN/B6FI+cSORg8qmgz4/VMo4tLmtIM7oAE+QTUt11bh2t6Iy2Mg9
 qKD2NnMia4zOPcEWAOHYuv7ujPgq8FD1iFohjV0fn8LFwC35RKE/QcmlJlkYBzz8hkFZ
 PLvg==
X-Gm-Message-State: AOAM530Qdbj50rn0Q8sB7CrEB00DTgpH/AFU0hQ/qJVQOgKLmsu/WUYy
 21qsfc3RgAaoxCn7IWNNkAjOwNM3BmZcVG+W
X-Google-Smtp-Source: ABdhPJwW/P17cLcvURrVKCOBQEktzDGC95e0OV9bMzMpRbkF9G1qN1z/I0VT8R05Fg8+WL7oGKrbKQ==
X-Received: by 2002:adf:b745:: with SMTP id n5mr38295873wre.338.1630497766169; 
 Wed, 01 Sep 2021 05:02:46 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 l7sm5641336wmj.9.2021.09.01.05.02.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Sep 2021 05:02:45 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: dri-devel@lists.freedesktop.org
Date: Wed,  1 Sep 2021 14:02:38 +0200
Message-Id: <20210901120240.7339-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] Harden the dma-fence documentation a bit more
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
Cc: linaro-mm-sig@lists.linaro.org, daniel@ffwll.ch,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Hi guys,

while it is in most cases technically possible to not have a reference to the dma_fence when adding a callback it is usually a good idea to make sure to always have a reference anyway.

Otherwise we can indeed see cases where this doesn't really work as intended like for example in the now fixed EPOLL code.

Regards,
Christian.


_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
