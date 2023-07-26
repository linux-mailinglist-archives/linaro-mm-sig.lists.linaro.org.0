Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0345079A8F8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 16:49:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 09F653F4C9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 14:49:04 +0000 (UTC)
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	by lists.linaro.org (Postfix) with ESMTPS id 017583F2EF
	for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Jul 2023 17:14:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=V5ourLyD;
	spf=pass (lists.linaro.org: domain of dg573847474@gmail.com designates 209.85.210.169 as permitted sender) smtp.mailfrom=dg573847474@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-666ecf9a081so70610b3a.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Jul 2023 10:14:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690391676; x=1690996476;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y8QZa7qTEmGwCyA0yfHV1JjhyFQSM3L1Bj9irGZtMbI=;
        b=V5ourLyDBFitbj6i3NSu7Ce7nyCxoe4wZz6T48QqcrhwAyGppGZo6/+WkRI9pTCQhc
         ZKv2sR5SfQnbXhe8eslmUHoLwz/Dk2cyZSCWcaACOGBdVZueFvu5ixTwrS09deJZEeCl
         ggNyP8W+/4g2znmswMkpzWrVAtkKCAh36eSKLciRAPRvDQhheqyFytgwdBoZG4Ecxs/y
         JTAnoH6VABAO9MSHILqEdWZ1xznhrFaW/CWQxP6nx0FD9x8BsFJjFQ27EzuMopLeSN/E
         vIUvuUTPiuI3TdlPaDwPH2zPABN0ZDf+Y6vAALJ46Eq9cz21qVSeIhwttVhqxNA3p49O
         evtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690391676; x=1690996476;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y8QZa7qTEmGwCyA0yfHV1JjhyFQSM3L1Bj9irGZtMbI=;
        b=i5I9oBATarJNBRLujg33Jnqsf/oQGB+DEbuF8vVvhNpLZ4DvSk9EDxoXpjrL3KMSwD
         sQ+gWc3WmEXzojtbRKUjhq/Z7Nse/hPwAjZs6MAXDv6G1uHFQEgVGrswbb7N0F5lJBnL
         L5uYoKz3JV5vmlsQYaNmXTOFFyxdj42JPcQEgruzkreC1rs+J3z2a7sjCZrRqFVm1+Hq
         DRde3CLLMQtz6yRPKNElzpo9Q7qe5tcZqIQezKza8JuJmVUPB1I6yuy0dKxJXCqG+tQp
         XJRqT0VDAGY56A83b2TvpXscilDdq8ozGkqJXgn4QRaMsyj1H7VJmi4wzJJpl8n7sKlR
         CAUQ==
X-Gm-Message-State: ABy/qLbiRBrwInUDrEScopsv+6bTugd1lHAoYOeFfNKRNgAGLc6p3D2A
	cp4C16G5A5w6oC8Pn7zwarQ=
X-Google-Smtp-Source: APBJJlF9uZ/TB0GtcuHXezMc7d0QCA7hQiP905LgZ3w0DZ1XDY4QZ9iUrKmEg++RMxvAb8QwPjMcLA==
X-Received: by 2002:a05:6a00:2d01:b0:686:b662:f303 with SMTP id fa1-20020a056a002d0100b00686b662f303mr3540492pfb.0.1690391675815;
        Wed, 26 Jul 2023 10:14:35 -0700 (PDT)
Received: from 377044c6c369.cse.ust.hk (191host097.mobilenet.cse.ust.hk. [143.89.191.97])
        by smtp.gmail.com with ESMTPSA id k196-20020a633dcd000000b005501b24b1c9sm12688361pga.62.2023.07.26.10.14.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jul 2023 10:14:35 -0700 (PDT)
From: Chengfeng Ye <dg573847474@gmail.com>
To: james.smart@broadcom.com,
	dick.kennedy@broadcom.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	sumit.semwal@linaro.org,
	christian.koenig@amd.com,
	justin.tee@broadcom.com
Date: Wed, 26 Jul 2023 17:14:23 +0000
Message-Id: <20230726171423.18692-1-dg573847474@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 017583F2EF
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.169:from];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2]
X-MailFrom: dg573847474@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: EGTDOINK5DQQUQWGNQ2C4GOYVQIYWCEB
X-Message-ID-Hash: EGTDOINK5DQQUQWGNQ2C4GOYVQIYWCEB
X-Mailman-Approved-At: Mon, 11 Sep 2023 14:44:47 +0000
CC: linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Chengfeng Ye <dg573847474@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] scsi: lpfc: Fix potential deadlock on &ndlp->lock
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EGTDOINK5DQQUQWGNQ2C4GOYVQIYWCEB/>
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
context, process context code acquiring the lock &phba->hbalock should
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
