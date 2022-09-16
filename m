Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3E36043CB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 13:49:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C76163EE41
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 11:49:08 +0000 (UTC)
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	by lists.linaro.org (Postfix) with ESMTPS id D24583F59C
	for <linaro-mm-sig@lists.linaro.org>; Fri, 16 Sep 2022 06:31:57 +0000 (UTC)
Received: by mail-pg1-f172.google.com with SMTP id r23so10881591pgr.6
        for <linaro-mm-sig@lists.linaro.org>; Thu, 15 Sep 2022 23:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=ZmowVWWRmWocJjPgWDw2ZalH/Av3o/R31s38SjsWoiI=;
        b=K8iwJPV0dZif8U+5GjpaEh333xmUojgSqrpCXhk94yfRb5731bgocIRuX/EDCI9SvW
         rR/zBCM/ZijUHjs3V+//iPjM1dU2wd5Enf/hTOLs32ho/K8A755MsW99g8tQCwhLzwqo
         jt/N8/RlaQW7xAkQwVGWDehT2NpdJtcLTzMbMuVJFsdS7nAp/ikElttEU8BVJpfGbQpO
         m+cjovW/oroujWx+2TCw2PaFVIIE02AOHAeB0tnCMvFzQA1vqE7PiPXvC23M/FR2XFKr
         oQsRj9S45QPZ2bGm7vm2uS31u2elXivEH/itahepzQ7U0CXSVKKLGGPCdNeV2WUroSwW
         VNZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=ZmowVWWRmWocJjPgWDw2ZalH/Av3o/R31s38SjsWoiI=;
        b=ee0x9aE7AyqKTHvdePeBYM0NjHNYeM7IEMMacf+RgfYX/2a3gKJy3kZxtVwTl4L5g3
         aVBLuLYsYh8LdPe+VfYmbM8oqXbcfsBdMX8IMCzQtxC/AlMVTwoI2jtqR1oYcei6Y16K
         SACXUSYTsr9E5lebRhzjRvxmUCVsfE6gfGIYo8SVWYTFlaaauaqMD06r73i8F9tFuXjq
         dmYJ4MpptaxuvKo7UbeOLJVzP8zxj/QiJuznwtqlxXl7Ty3hSHwNng9/10ChFYgLKTlu
         B0WF1SeWCOP3Uk+OLxi5I78pYU4ik6VwjKC2TKF/qPWs7EiZnrIQguAkY+KYEOfy2PNB
         h4rQ==
X-Gm-Message-State: ACrzQf0miVfo1b+ST4sqksJsnIfmHlOWdJTFn+sAku9cI3EQYKEkXB7b
	mqPh6mb09hxeWBRlwvb0myI=
X-Google-Smtp-Source: AMsMyM6uCFnr0zMkH2Fblyo61mCd4o4GMS/d2jGZqVplmezgaEe+fdsJwx1cUQVqtDOJQYy8wyq4+Q==
X-Received: by 2002:a05:6a00:b8d:b0:545:e7de:78e5 with SMTP id g13-20020a056a000b8d00b00545e7de78e5mr3266569pfj.72.1663309916926;
        Thu, 15 Sep 2022 23:31:56 -0700 (PDT)
Received: from localhost.localdomain ([193.203.214.57])
        by smtp.gmail.com with ESMTPSA id rm10-20020a17090b3eca00b001fbb6d73da5sm735561pjb.21.2022.09.15.23.31.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Sep 2022 23:31:56 -0700 (PDT)
From: cgel.zte@gmail.com
X-Google-Original-From: chi.minghao@zte.com.cn
To: sumit.semwal@linaro.org
Date: Fri, 16 Sep 2022 06:31:52 +0000
Message-Id: <20220916063152.155257-1-chi.minghao@zte.com.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-MailFrom: cgel.zte@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: HIW7LHPJK5XFSO3RPXP6HSXAWPXFFJZ6
X-Message-ID-Hash: HIW7LHPJK5XFSO3RPXP6HSXAWPXFFJZ6
X-Mailman-Approved-At: Wed, 19 Oct 2022 11:46:05 +0000
CC: christian.koenig@amd.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Minghao Chi <chi.minghao@zte.com.cn>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: use strscpy() is more robust and safer
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HIW7LHPJK5XFSO3RPXP6HSXAWPXFFJZ6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Minghao Chi <chi.minghao@zte.com.cn>

The implementation of strscpy() is more robust and safer.

That's now the recommended way to copy NUL terminated strings.

Signed-off-by: Minghao Chi <chi.minghao@zte.com.cn>
---
 drivers/dma-buf/dma-buf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
index dd0f83ee505b..51cdd4060539 100644
--- a/drivers/dma-buf/dma-buf.c
+++ b/drivers/dma-buf/dma-buf.c
@@ -50,7 +50,7 @@ static char *dmabuffs_dname(struct dentry *dentry, char *buffer, int buflen)
 	dmabuf = dentry->d_fsdata;
 	spin_lock(&dmabuf->name_lock);
 	if (dmabuf->name)
-		ret = strlcpy(name, dmabuf->name, DMA_BUF_NAME_LEN);
+		ret = strscpy(name, dmabuf->name, DMA_BUF_NAME_LEN);
 	spin_unlock(&dmabuf->name_lock);
 
 	return dynamic_dname(buffer, buflen, "/%s:%s",
-- 
2.25.1
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
