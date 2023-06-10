Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EE6BF72A828
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 10 Jun 2023 04:12:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A48233F94C
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 10 Jun 2023 02:12:13 +0000 (UTC)
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	by lists.linaro.org (Postfix) with ESMTPS id 935EC3F03D
	for <linaro-mm-sig@lists.linaro.org>; Sat, 10 Jun 2023 02:12:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of sukrut.bellary@gmail.com designates 209.85.216.50 as permitted sender) smtp.mailfrom=sukrut.bellary@gmail.com;
	dmarc=none
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-25bb2c4c2c0so34378a91.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 09 Jun 2023 19:12:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686363128; x=1688955128;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uono/nwyy6EGIB3S/PXdMtEwaggYlfpIknOEvbCtnJ4=;
        b=U9w0TW4HskuimrbO4BpU2EVFeFJYN6ZolKxQsgGL932yGSe8pKpCI8aOORyI/erkke
         t8dA0WCJ9Fad44KfVDzT6Qee4HIJgqrAj/cO4M3q2SH6XLx4/5gTPeP/nEoFy9gW3kcw
         CUW6UuMrk7Kh/eE+67qz2X/YPt/5w3hpxMd3RB+cAQZxOQICV4FKYSMhlSDlnQFNH83D
         fNQv+yuMm7KR8ObbwnS1Vzy04o3iYJYHn2UVEGI+Z/w3fwbZiAAGMHColZ+iy1qoloWh
         qZjLZvKof8uCrA12YTdeM2YD6/9g5Ofg+3+p8r+mN7AnkNWnZQEyiBjHZzikcg/3O6ye
         Hz5w==
X-Gm-Message-State: AC+VfDzLAh6jpez05KdD+BlHt/Km8bMXXHYxCcDwTUfmq4Hw7lASZZHN
	+ZNGcDNNEYtfurL2s9hpy+w=
X-Google-Smtp-Source: ACHHUZ7kZJrNmG7xjdOyI7pxuUk8NTtD/i0/zWXZuSVbn+d7hXEyrJ5OvyyJkKllNX9KQXL6tEPrWA==
X-Received: by 2002:a17:90a:7104:b0:255:d878:704a with SMTP id h4-20020a17090a710400b00255d878704amr2882029pjk.4.1686363127368;
        Fri, 09 Jun 2023 19:12:07 -0700 (PDT)
Received: from dev-linux.lan (cpe-70-95-21-110.san.res.rr.com. [70.95.21.110])
        by smtp.gmail.com with ESMTPSA id pq8-20020a17090b3d8800b00258bb7e8b47sm5251594pjb.50.2023.06.09.19.12.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jun 2023 19:12:07 -0700 (PDT)
From: Sukrut Bellary <sukrut.bellary@linux.com>
To: Jeffrey Hugo <quic_jhugo@quicinc.com>,
	Oded Gabbay <ogabbay@kernel.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Fri,  9 Jun 2023 19:12:00 -0700
Message-Id: <20230610021200.377452-1-sukrut.bellary@linux.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spamd-Result: default: False [-1.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	FORGED_SENDER(0.30)[sukrut.bellary@linux.com,sukrutbellary@gmail.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.50:from];
	NEURAL_HAM(-0.00)[-0.996];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	R_DKIM_NA(0.00)[];
	TAGGED_FROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_SEVEN(0.00)[11];
	URIBL_BLOCKED(0.00)[linux.com:email];
	FROM_NEQ_ENVFROM(0.00)[sukrut.bellary@linux.com,sukrutbellary@gmail.com];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[linux.com];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 935EC3F03D
X-Spamd-Bar: -
Message-ID-Hash: ULLA5MUUYNL7QP5F2OIRG7HNZQA5ANIN
X-Message-ID-Hash: ULLA5MUUYNL7QP5F2OIRG7HNZQA5ANIN
X-MailFrom: sukrut.bellary@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sukrut Bellary <sukrut.bellary@linux.com>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] accel/qaic: Fix dereferencing freed memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ULLA5MUUYNL7QP5F2OIRG7HNZQA5ANIN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

smatch warning:
	drivers/accel/qaic/qaic_data.c:620 qaic_free_object() error:
		dereferencing freed memory 'obj->import_attach'

obj->import_attach is detached and freed using dma_buf_detach().
But used after free to decrease the dmabuf ref count using
dma_buf_put().

Fixes: ff13be830333 ("accel/qaic: Add datapath")
Signed-off-by: Sukrut Bellary <sukrut.bellary@linux.com>
---
 drivers/accel/qaic/qaic_data.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/accel/qaic/qaic_data.c b/drivers/accel/qaic/qaic_data.c
index e42c1f9ffff8..7cba4d680ea8 100644
--- a/drivers/accel/qaic/qaic_data.c
+++ b/drivers/accel/qaic/qaic_data.c
@@ -613,11 +613,13 @@ static int qaic_gem_object_mmap(struct drm_gem_object *obj, struct vm_area_struc
 static void qaic_free_object(struct drm_gem_object *obj)
 {
 	struct qaic_bo *bo = to_qaic_bo(obj);
+	struct dma_buf *dmabuf;
 
 	if (obj->import_attach) {
 		/* DMABUF/PRIME Path */
+		dmabuf = obj->import_attach->dmabuf;
 		dma_buf_detach(obj->import_attach->dmabuf, obj->import_attach);
-		dma_buf_put(obj->import_attach->dmabuf);
+		dma_buf_put(dmabuf);
 	} else {
 		/* Private buffer allocation path */
 		qaic_free_sgt(bo->sgt);
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
