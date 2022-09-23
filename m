Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 890195E8393
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Sep 2022 22:29:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BD92D3F942
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Sep 2022 20:29:11 +0000 (UTC)
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	by lists.linaro.org (Postfix) with ESMTPS id E12FC3F95A
	for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Sep 2022 20:28:31 +0000 (UTC)
Received: by mail-pg1-f176.google.com with SMTP id t70so1264931pgc.5
        for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Sep 2022 13:28:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=8ihjvmU6X32IA3g0n6Ob0CbMhk1X+mcnfaE/5Wfmhd8=;
        b=LPhVNeH7/j6XoYSyZU8Fbh//laqcTzvu//J4Iy04p1XS4de+UJKinl09GFu2JyMlZM
         OiqIFGFrD5z7VUB8De1Lo4L81RAcz4hJEUvZG4jbI7uvuCZ21WW6CkLOkKLLpki0ZPPj
         ptuTYFeO3yYhD48tSYI8BF3HO3FHnDA3HFKOc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=8ihjvmU6X32IA3g0n6Ob0CbMhk1X+mcnfaE/5Wfmhd8=;
        b=xKloTn/VYOEpPje1HFfGLjJnQ3LRA5R+55rhCzQm89UK/eJay9+0jBfUkALn1HXyn0
         TihH6XkjX17EdPDpjdgJYUvLjiFdNcEuG9mOcxIDS6lt8djioZxprtHbHzR/FPxKArP7
         XEDDk8tV90EhhZIuvr/m0T3svE6Y2bfgiTY7hCMLwzVlpJWA9o/eRmlXxnMZi+dLxol9
         szWEwS4G52mX64ZgsQh/ZDX+VGkK2VLQgwG0S8u+2Xmx+nTWfzYUcjR0yxzVyAfraO3s
         SmgbJQ2L4Er4EnB2e9Tg3xq9+x5ZVukPIS387oDTmBvPI2ZcnTgF/TtR8bqlPfcBZ5+T
         Gp+Q==
X-Gm-Message-State: ACrzQf3dlJrLqk4o6vjgzxsSbbyvozwoyOc1os8FkBWBPskKpimUmvsj
	tn1C9vLhF5ejbFqqbmCc6uP9zQ==
X-Google-Smtp-Source: AMsMyM7hhwlwgGRqkrSlb8k8bTqhsy6m3L3BTgcy2EFgVZwJvbZTev1f0ePX9YiutVAIEpKxIDEauA==
X-Received: by 2002:a05:6a00:2185:b0:520:7276:6570 with SMTP id h5-20020a056a00218500b0052072766570mr10823472pfi.84.1663964910977;
        Fri, 23 Sep 2022 13:28:30 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id a7-20020a170902710700b00176ae5c0f38sm6420511pll.178.2022.09.23.13.28.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Sep 2022 13:28:28 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Vlastimil Babka <vbabka@suse.cz>
Date: Fri, 23 Sep 2022 13:28:15 -0700
Message-Id: <20220923202822.2667581-10-keescook@chromium.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220923202822.2667581-1-keescook@chromium.org>
References: <20220923202822.2667581-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1167; h=from:subject; bh=pDNvsGLyQA8RpBfkkqJxHruRXSdA8gdZalovRqbX85w=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBjLhbl/n4E1MQAIRbO7TQnliesxT9vRRUjnB997VqU NfNmMx2JAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYy4W5QAKCRCJcvTf3G3AJpnPD/ 9wQBqpy8w8j9Te2wEo0D0Hjxhxo55M1tuhtvCVgvJfQ/ry5sJ8eH8KM6rA1+i5+yyravM0DuBRah4g uhrc77nIoJb2kV7c8d7t1g4x8ALFz6XhAPkRpZqDiQcQBAvW8O9x3Cx08jWpK7nAg3/Y43225OKOB6 tVTYN27JCpBxTSSIqc4UFTMXN2IAlMQ5Ob/Zqv/+83XGkTWlJ6QhWxs83ZN6cbP38BNiVxIU8R4X4q w2vVsmNS7RSYF8P5DQihlKqCqmUoYEHbPbwmJ7+PuzAaQl9B925ePSW3sWLgeYKees47F1AL85pjZc FvVYlWbV8TxR5ah3RwNTZ38Wn7CZrVxE9cLyRCKZf3k1yiSPL97A/a4HIYBpAtaCVUIze1SOb44gG5 AeD/OBUhZfYjCqNQUMcrXaVEETtQEQyYObvDbWpjZMSgelJPeNBFTw4EHffM7FA71KwkU2YjesRYnu oDThnDhHv4KriQ3B5f+kESZJ2BjJePfLpOXMGt9bH1GXYnTKm2ZjNYVGmhOLx9jqiq7V9DNRZ8gtzJ iP1adulU4jNHuzcGVGv1REEmZUqTzrvgs4oy3VrE+j7gZBdT6IsTqQy5TPFC3tl2xHFdDR3KPEPqVf jCvjUcb44rcHyPLMelC6K/nXZ7kIHy17/M3xfiCKeCwJLqv86xQvXPgVl2QA==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
Message-ID-Hash: 67IUKYZHO36TNKLJSAHSLI3BDT3HIZVN
X-Message-ID-Hash: 67IUKYZHO36TNKLJSAHSLI3BDT3HIZVN
X-MailFrom: keescook@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Kees Cook <keescook@chromium.org>, linux-fsdevel@vger.kernel.org, "Ruhl, Michael J" <michael.j.ruhl@intel.com>, Hyeonggon Yoo <42.hyeyoo@gmail.com>, Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>, Andrew Morton <akpm@linux-foundation.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nick Desaulniers <ndesaulniers@google.com>, Alex Elder <elder@kernel.org>, Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Daniel Micay <danielmicay@gmail.com>, Yonghong Song <yhs@fb.com>, Marco Elver <elver@google.com>, Miguel Ojeda <ojeda@kernel.org>, linux-kernel@vger.kernel.org, linux-mm@
 kvack.org, netdev@vger.kernel.org, linux-btrfs@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, intel-wired-lan@lists.osuosl.org, dev@openvswitch.org, x86@kernel.org, llvm@lists.linux.dev, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 09/16] coredump: Proactively round up to kmalloc bucket size
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/67IUKYZHO36TNKLJSAHSLI3BDT3HIZVN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Instead of discovering the kmalloc bucket size _after_ allocation, round
up proactively so the allocation is explicitly made for the full size,
allowing the compiler to correctly reason about the resulting size of
the buffer through the existing __alloc_size() hint.

Cc: linux-fsdevel@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 fs/coredump.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/fs/coredump.c b/fs/coredump.c
index 9f4aae202109..0894b2c35d98 100644
--- a/fs/coredump.c
+++ b/fs/coredump.c
@@ -68,7 +68,10 @@ struct core_name {
 
 static int expand_corename(struct core_name *cn, int size)
 {
-	char *corename = krealloc(cn->corename, size, GFP_KERNEL);
+	char *corename;
+
+	size = kmalloc_size_roundup(size);
+	corename = krealloc(cn->corename, size, GFP_KERNEL);
 
 	if (!corename)
 		return -ENOMEM;
@@ -76,7 +79,7 @@ static int expand_corename(struct core_name *cn, int size)
 	if (size > core_name_size) /* racy but harmless */
 		core_name_size = size;
 
-	cn->size = ksize(corename);
+	cn->size = size;
 	cn->corename = corename;
 	return 0;
 }
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
