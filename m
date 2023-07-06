Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EB328749EA6
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  6 Jul 2023 16:11:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 053C33ED9C
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  6 Jul 2023 14:11:01 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	by lists.linaro.org (Postfix) with ESMTPS id E75633E95C
	for <linaro-mm-sig@lists.linaro.org>; Thu,  6 Jul 2023 05:52:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=ivqjuHVz;
	spf=pass (lists.linaro.org: domain of dan.carpenter@linaro.org designates 209.85.128.50 as permitted sender) smtp.mailfrom=dan.carpenter@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-3fbc77e76abso2994625e9.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 05 Jul 2023 22:52:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688622736; x=1691214736;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xBnIxFbrZYBRg1JLoIaM7oiOzRTygjslunOs97rxcZI=;
        b=ivqjuHVzfLJDn9MOdly8U+ZCr8fLlJmVqX5jfDO++SfAkzezA3eZkBbw3VDEVTr1iw
         I+/NjuSk+iAIaXy9HjGMyE/gXWNwpL4JDhpUDdjcDfML4FOl3IwzbBue9h74hhqjxdAm
         vkF8g/v7iQECp3tB/99sM5pAtuolSI7ZptoprYUfEwSc54VljWIPC1aPWzG3qeRchQsV
         UdMVPTsOERsfk0CSRnI6Ku0NUnR0o0sty4Spr/1oE+uNsddNjwMuHN//E0GfGIxck6VE
         K4L0R7xtKw1hrcHRPtLj2a6NFT487wktqeNm0mzfbN8mxoo0o6ooVcV4sH/j9t0Pg8ia
         QnNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688622736; x=1691214736;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xBnIxFbrZYBRg1JLoIaM7oiOzRTygjslunOs97rxcZI=;
        b=GNI2f8shqG0tqMny4qleM95N4FiQRXOE/d+vXPQQN1iwp8ZXcWe6KKeZgSaKpFLfoZ
         WgmT9tcx2Ecet3mVizo2d3iJ8J8gBkjUpQxn1Prl/m6Cmbpn+hQHsLtJ5nfwlTmtWSQf
         26GprYgi/2VVnQ3T5yP61xSaLL/H+lQaInIZj57vCYgehf8bYb79VhPsnfKj3DlcgXl+
         we6OF4KwPLm187tPnw4yJajJ9pcastGZOICscF/ir8EqdZHfjE1gv2EeUuOndxvGlFZ1
         Rh7LIEabSHx1kN7kz2wCjMrSrNhFBoZpYlune3rwbZQJyoCKBtMjh9vNiw49YTca7/B7
         UeAQ==
X-Gm-Message-State: ABy/qLa5MxG7Et+xNvXwQU2VQht7fKf/o/VsM0Og5/tQ8XSK0PQPTcrt
	gsg5NkAZKmC2JWmdGk4c+n2dNO0E
X-Google-Smtp-Source: APBJJlEdnT5CsfLEze+SxP6AZhI5PIAj9Jkcr7yKYANPXjaEGIK5uo87cktbva2hd8k6ClKAQd1dJg==
X-Received: by 2002:a05:600c:ad8:b0:3fa:d160:fc6d with SMTP id c24-20020a05600c0ad800b003fad160fc6dmr481579wmr.30.1688622735764;
        Wed, 05 Jul 2023 22:52:15 -0700 (PDT)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id 19-20020a05600c029300b003fbe4cecc5fsm977367wmk.34.2023.07.05.22.52.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jul 2023 22:52:14 -0700 (PDT)
Date: Thu, 6 Jul 2023 08:52:09 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <694691bf-f591-4286-a615-df91d2ebab93@moroto.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Spamd-Result: default: False [-5.49 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[102.36.222.112:received];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.128.50:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.50:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E75633E95C
X-Spamd-Bar: -----
X-MailFrom: dan.carpenter@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: KTMDI56LIH7CKOMPMOMCWYMGDDWGV6JR
X-Message-ID-Hash: KTMDI56LIH7CKOMPMOMCWYMGDDWGV6JR
X-Mailman-Approved-At: Thu, 06 Jul 2023 14:10:34 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Luben Tuikov <luben.tuikov@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kernel-janitors@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: fix an error pointer vs NULL bug
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KTMDI56LIH7CKOMPMOMCWYMGDDWGV6JR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The __dma_fence_unwrap_merge() function is supposed to return NULL on
error.  But the dma_fence_allocate_private_stub() returns error pointers
so check for that and covert the error pointers to NULL returns.
Otherwise, the callers do not expect error pointers and it leads to an
Oops.

Fixes: f781f661e8c9 ("dma-buf: keep the signaling time of merged fences v3")
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 drivers/dma-buf/dma-fence-unwrap.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/dma-buf/dma-fence-unwrap.c b/drivers/dma-buf/dma-fence-unwrap.c
index c625bb2b5d56..d183eda0db89 100644
--- a/drivers/dma-buf/dma-fence-unwrap.c
+++ b/drivers/dma-buf/dma-fence-unwrap.c
@@ -94,8 +94,12 @@ struct dma_fence *__dma_fence_unwrap_merge(unsigned int num_fences,
 	 * If we couldn't find a pending fence just return a private signaled
 	 * fence with the timestamp of the last signaled one.
 	 */
-	if (count == 0)
-		return dma_fence_allocate_private_stub(timestamp);
+	if (count == 0) {
+		tmp = dma_fence_allocate_private_stub(timestamp);
+		if (IS_ERR(tmp))
+			return NULL;
+		return tmp;
+	}
 
 	array = kmalloc_array(count, sizeof(*array), GFP_KERNEL);
 	if (!array)
@@ -176,6 +180,8 @@ struct dma_fence *__dma_fence_unwrap_merge(unsigned int num_fences,
 
 return_tmp:
 	kfree(array);
+	if (IS_ERR(tmp))
+		return NULL;
 	return tmp;
 }
 EXPORT_SYMBOL_GPL(__dma_fence_unwrap_merge);
-- 
2.39.2

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
