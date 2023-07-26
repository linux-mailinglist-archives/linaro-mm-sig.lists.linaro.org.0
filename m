Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB3879A8FA
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 16:49:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 75A923F52A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 14:49:26 +0000 (UTC)
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	by lists.linaro.org (Postfix) with ESMTPS id 886D23EE2E
	for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Jul 2023 18:13:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=pvxRPcRP;
	spf=pass (lists.linaro.org: domain of dg573847474@gmail.com designates 209.85.214.177 as permitted sender) smtp.mailfrom=dg573847474@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-1bbc87ded50so414035ad.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Jul 2023 11:13:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690395213; x=1691000013;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vwiSFj0tl/R+2ypAV/GDIAiCwQG00lhPHhABGlY+Hic=;
        b=pvxRPcRPGAfCe4SrvnDaqzurhrKOcVas4Tnt6r7ITP3DnKTAdadQeNOZIYtvxZlyDn
         DozhwK9IGtgCBWi3ffcMC796lhCxm+gzK2j9eyKV95IPGS8xj+8f2FDv/JB5ovIsi5UD
         qt/8yTjnGNgleKv7v8WrBjBeJogMfejzAlE3SL+rMfERO6ucZIKXksiZVZQxIOZq65B5
         Te2OlQwqeJbvNcZwIOAr0gAkZbUPY1eCfToHo7n8vHhiGE46COkFmR7//Wu2tE2h1BSV
         BfhYiR8hECg45x0FqEJYUSKeCgH472DOcTHMgd2T7pCv+vwrYCYh6ITmAN924aXho4lc
         mJbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690395213; x=1691000013;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vwiSFj0tl/R+2ypAV/GDIAiCwQG00lhPHhABGlY+Hic=;
        b=a9NcB9kvRVy+CQa9KAzP1eqBdiVP16EbU3ZmcfJ18zL4mROPfWyDlc58LTyuOQVHjL
         ksVrz2dbxbMT+x6UzTvBT8AR+K9F2VHayYWgvEHAGTVqnq/NsrvUvSqooVi0Dx8TnRnf
         xSgP7cqoAzpYUIrqZnYXZQ7p2eVlmLismKvB/BDV8GheokvCkvyJWc25o0gk+TE+sIbk
         W4a2Kao60p27piX/uqmYStb5hWgvSf5bR/9VYQPNnnk66KH9kuUNGAA1Nbtq6VW0gXT+
         T7NRnzMHEDIoAmhyj8Ld7Vb3SC2dy+wAWzOaKrfN4B5T8kJ4kkiG+EArKZY2yXhHM8Ku
         8M5g==
X-Gm-Message-State: ABy/qLY25XyWiaDEQ0SSBMgPgvz4h+vxTCUnED9SETei2OtOIs/ogX77
	xHVoksUg/Z66sRVj8A5qfKU=
X-Google-Smtp-Source: APBJJlENsKtAIdpEBIKfw+s/pPsgNv0zC1TAnGLqNZq+eoO8cyf+D7Fq22VDKCbbaFYZ8L+dGs9mQA==
X-Received: by 2002:a17:903:181:b0:1b1:ae33:30de with SMTP id z1-20020a170903018100b001b1ae3330demr2839399plg.13.1690395213483;
        Wed, 26 Jul 2023 11:13:33 -0700 (PDT)
Received: from 377044c6c369.cse.ust.hk (191host097.mobilenet.cse.ust.hk. [143.89.191.97])
        by smtp.gmail.com with ESMTPSA id c9-20020a170902c1c900b001bb8be10a84sm9100254plc.304.2023.07.26.11.13.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jul 2023 11:13:32 -0700 (PDT)
From: Chengfeng Ye <dg573847474@gmail.com>
To: james.smart@broadcom.com,
	dick.kennedy@broadcom.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	sumit.semwal@linaro.org,
	christian.koenig@amd.com,
	justin.tee@broadcom.com
Date: Wed, 26 Jul 2023 18:13:22 +0000
Message-Id: <20230726181322.26754-1-dg573847474@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 886D23EE2E
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.177:from];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-MailFrom: dg573847474@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: RRMHKQ3IHIKETO6YU5BQQF27BSCWO4UF
X-Message-ID-Hash: RRMHKQ3IHIKETO6YU5BQQF27BSCWO4UF
X-Mailman-Approved-At: Mon, 11 Sep 2023 14:44:48 +0000
CC: linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Chengfeng Ye <dg573847474@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2] scsi: lpfc: Fix potential deadlock on &ndlp->lock
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RRMHKQ3IHIKETO6YU5BQQF27BSCWO4UF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

As &ndlp->lock is acquired by timer lpfc_els_retry_delay() under softirq
context, process context code acquiring the lock &ndlp->lock should
disable irq or bh, otherwise deadlock could happen if the timer preempt
the execution while the lock is held in process context on the same CPU.

The two lock acquisition inside lpfc_cleanup_pending_mbox() does not
disable irq or softirq.

[Deadlock Scenario]
lpfc_cmpl_els_fdisc()
    -> lpfc_cleanup_pending_mbox()
    -> spin_lock(&ndlp->lock);
        <irq>
        -> lpfc_els_retry_delay()
        -> lpfc_nlp_get()
        -> spin_lock_irqsave(&ndlp->lock, flags); (deadlock here)

This flaw was found by an experimental static analysis tool I am
developing for irq-related deadlock.

The patch fix the potential deadlock by spin_lock_irq() to disable
irq.

Signed-off-by: Chengfeng Ye <dg573847474@gmail.com>
---
 drivers/scsi/lpfc/lpfc_sli.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/scsi/lpfc/lpfc_sli.c b/drivers/scsi/lpfc/lpfc_sli.c
index 58d10f8f75a7..8555f6bb9742 100644
--- a/drivers/scsi/lpfc/lpfc_sli.c
+++ b/drivers/scsi/lpfc/lpfc_sli.c
@@ -21049,9 +21049,9 @@ lpfc_cleanup_pending_mbox(struct lpfc_vport *vport)
 				mb->mbox_flag |= LPFC_MBX_IMED_UNREG;
 				restart_loop = 1;
 				spin_unlock_irq(&phba->hbalock);
-				spin_lock(&ndlp->lock);
+				spin_lock_irq(&ndlp->lock);
 				ndlp->nlp_flag &= ~NLP_IGNR_REG_CMPL;
-				spin_unlock(&ndlp->lock);
+				spin_unlock_irq(&ndlp->lock);
 				spin_lock_irq(&phba->hbalock);
 				break;
 			}
@@ -21067,9 +21067,9 @@ lpfc_cleanup_pending_mbox(struct lpfc_vport *vport)
 			ndlp = (struct lpfc_nodelist *)mb->ctx_ndlp;
 			mb->ctx_ndlp = NULL;
 			if (ndlp) {
-				spin_lock(&ndlp->lock);
+				spin_lock_irq(&ndlp->lock);
 				ndlp->nlp_flag &= ~NLP_IGNR_REG_CMPL;
-				spin_unlock(&ndlp->lock);
+				spin_unlock_irq(&ndlp->lock);
 				lpfc_nlp_put(ndlp);
 			}
 		}
-- 
2.17.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
