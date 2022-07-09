Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 21CE058CCA5
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  8 Aug 2022 19:24:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AFB6147F64
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  8 Aug 2022 17:24:07 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 472A03EE98
	for <linaro-mm-sig@lists.linaro.org>; Sat,  9 Jul 2022 10:07:41 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id BD97760EDE;
	Sat,  9 Jul 2022 10:07:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83E85C341E4;
	Sat,  9 Jul 2022 10:07:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657361258;
	bh=qiRPr94AFRMOGdMAE4cJrf7t0rv+9IXQLXV79wY5o4s=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=FUrhBDV8qQ3BBmHXqnc/8ipJ4ijIhzVDDemntLvaD+ld6JNia3myDoK968lVQT/JF
	 777qXSX6Qv2PjJJhVV2o2E9tWWIDi4BQAwPhdGPILIE4Oo/k8JjN+1eOsn1Emy3uMB
	 qw1e3XET2y58XYWDuz0Iu6BJ6jb321aA0GC0GT6kUD1YPdxlT3SqRFgCCVB3ikR601
	 u0F2G8WS8ueJDx+sysVVEBz1iif53JLznhQngkj4Mu87YRPKBWEWKljrUNBTZJ/j4V
	 Q1fgEz5I3zCS6KOuXs1pk+Vw1MyPtzhQBr7aVzuDwylIhadsV0Ug2Pa252oHxnwANG
	 9DMDhL+eyM8uQ==
Received: from mchehab by mail.kernel.org with local (Exim 4.95)
	(envelope-from <mchehab@kernel.org>)
	id 1oA7N9-004EGx-JK;
	Sat, 09 Jul 2022 11:07:35 +0100
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>
Date: Sat,  9 Jul 2022 11:07:24 +0100
Message-Id: <4e4f3c9fa6b379a82b9647d2f4152cfb520730ff.1657360984.git.mchehab@kernel.org>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <cover.1657360984.git.mchehab@kernel.org>
References: <cover.1657360984.git.mchehab@kernel.org>
MIME-Version: 1.0
X-MailFrom: mchehab@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: DEXMCHM4CZL5O7YDUM4SXBSQ4TBGEJJE
X-Message-ID-Hash: DEXMCHM4CZL5O7YDUM4SXBSQ4TBGEJJE
X-Mailman-Approved-At: Mon, 08 Aug 2022 17:24:05 +0000
CC: Mauro Carvalho Chehab <mchehab@kernel.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Jonathan Corbet <corbet@lwn.net>, Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Alexander Potapenko <glider@google.com>, Dmitry Vyukov <dvyukov@google.com>, Marco Elver <elver@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, dri-devel@lists.freedesktop.org, kasan-dev@googlegroups.com, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 11/21] kfence: fix a kernel-doc parameter
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DEXMCHM4CZL5O7YDUM4SXBSQ4TBGEJJE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The kernel-doc markup is missing the slab pointer description:

	include/linux/kfence.h:221: warning: Function parameter or member 'slab' not described in '__kfence_obj_info'

Document it.

Reviewed-by: Marco Elver <elver@google.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
---

To avoid mailbombing on a large number of people, only mailing lists were C/C on the cover.
See [PATCH v3 00/21] at: https://lore.kernel.org/all/cover.1657360984.git.mchehab@kernel.org/

 include/linux/kfence.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/kfence.h b/include/linux/kfence.h
index 726857a4b680..9c242f4e9fab 100644
--- a/include/linux/kfence.h
+++ b/include/linux/kfence.h
@@ -210,6 +210,7 @@ struct kmem_obj_info;
  * __kfence_obj_info() - fill kmem_obj_info struct
  * @kpp: kmem_obj_info to be filled
  * @object: the object
+ * @slab: pointer to slab
  *
  * Return:
  * * false - not a KFENCE object
-- 
2.36.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
