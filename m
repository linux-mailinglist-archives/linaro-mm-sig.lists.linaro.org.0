Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CFCF17B4C28
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 Oct 2023 09:04:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8548740CB7
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 Oct 2023 07:04:18 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	by lists.linaro.org (Postfix) with ESMTPS id C87443F2F4
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 Oct 2023 07:04:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=PfPsVgkT;
	spf=pass (lists.linaro.org: domain of dan.carpenter@linaro.org designates 209.85.221.48 as permitted sender) smtp.mailfrom=dan.carpenter@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-307d58b3efbso14131368f8f.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 02 Oct 2023 00:04:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696230256; x=1696835056; darn=lists.linaro.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Y6/vJt9ctuXTzh2TrR+gtgZxArsjz8X1YrhkfYqmY7U=;
        b=PfPsVgkTT9yoG7cOb0chGy4VZngNPMtcoQYTwzDPtU33gqqJ+tGTH/ZxW2zWN55WZr
         mJr8rxdJ0IlQirvJnbnQOcXv2lQbWNu6BoPc6uxdU0xiKUSkVFduzcuEOJLuY/mMCDgX
         ktcPccl72zIzotE5LSYlvkhnoXZnroGk4xIE0HWr0JlZHl3PxFjO4B0TgQI6j8ragjqB
         SfG2H0VIQ+fU2tSve1+OcUBbHitFgludCgvrRZ/SVx04+Qn/Eh3vNqxsbOogogJarpgC
         AYRnY90u5J1huS/un6+g2QPieOdTaKQhGhge55Y7alaBZnpug49LK/7pIFQjp04P+fbg
         uMiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696230256; x=1696835056;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Y6/vJt9ctuXTzh2TrR+gtgZxArsjz8X1YrhkfYqmY7U=;
        b=IdS4QI6urx2rjRljmvfCkywwVBY24B5LV35t5qNCMhAawk9aHv51I3Sno0cTcOl52p
         m0aLxg+8eTxFgb701oH84cxHJntsoGSfrTnXmscyb6ZY/LyyoEuDj1u1Xj7euTtAHSLh
         uxmldns6HRIw091CIXahrf1MI/e+K7mioitcMt67a24p6oztb7+1nWNTsgUpVCbaEKmh
         GlSd0WOFeB55oyVIFtQsURtUNutN5/U7MKXtYCzayBGm+sG2vJmreuu04+dHQSiKadbs
         gHSmPMKxymqgPK9zDOQms7ILS4pkfxtjBYP1yCFRBPwdR/12/ac8o/ODXYotpUfc+3wk
         6J5g==
X-Gm-Message-State: AOJu0YzRJiiyp4zH5Z2bLI3Cey/AB7sCE1GaeJUXo8gI71+cOwWEmY5J
	gqxTx0zkZtM1j51YR6cVpeGlz5kM
X-Google-Smtp-Source: AGHT+IEyYBJJMbHZjWHeeTihAKMquhbpnNMcEirvRUurb/E/iXkqlOsL65t+QCELvd7XjCoC8de/Mg==
X-Received: by 2002:adf:edc2:0:b0:320:932:80a0 with SMTP id v2-20020adfedc2000000b00320093280a0mr9049441wro.54.1696230255722;
        Mon, 02 Oct 2023 00:04:15 -0700 (PDT)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id s5-20020adf9785000000b003232380ffd7sm19295168wrb.102.2023.10.02.00.04.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 00:04:15 -0700 (PDT)
Date: Mon, 2 Oct 2023 10:04:12 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: John Stultz <jstultz@google.com>
Message-ID: <bc145167-0471-4ab3-935c-aa5dc20e342a@moroto.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.99 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.48:from];
	RCVD_TLS_LAST(0.00)[];
	URIBL_BLOCKED(0.00)[linaro.org:email,linaro.org:dkim];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_TWO(0.00)[2];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C87443F2F4
Message-ID-Hash: AALJERGKSOH4GQPAUURYWLSZAVRELWB5
X-Message-ID-Hash: AALJERGKSOH4GQPAUURYWLSZAVRELWB5
X-MailFrom: dan.carpenter@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kernel-janitors@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: heaps: Fix off by one in cma_heap_vm_fault()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AALJERGKSOH4GQPAUURYWLSZAVRELWB5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The buffer->pages[] has "buffer->pagecount" elements so this > comparison
has to be changed to >= to avoid reading beyond the end of the array.
The buffer->pages[] array is allocated in cma_heap_allocate().

Fixes: a5d2d29e24be ("dma-buf: heaps: Move heap-helper logic into the cma_heap implementation")
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 drivers/dma-buf/heaps/cma_heap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma-buf/heaps/cma_heap.c b/drivers/dma-buf/heaps/cma_heap.c
index ee899f8e6721..bea7e574f916 100644
--- a/drivers/dma-buf/heaps/cma_heap.c
+++ b/drivers/dma-buf/heaps/cma_heap.c
@@ -165,7 +165,7 @@ static vm_fault_t cma_heap_vm_fault(struct vm_fault *vmf)
 	struct vm_area_struct *vma = vmf->vma;
 	struct cma_heap_buffer *buffer = vma->vm_private_data;
 
-	if (vmf->pgoff > buffer->pagecount)
+	if (vmf->pgoff >= buffer->pagecount)
 		return VM_FAULT_SIGBUS;
 
 	vmf->page = buffer->pages[vmf->pgoff];
-- 
2.39.2

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
