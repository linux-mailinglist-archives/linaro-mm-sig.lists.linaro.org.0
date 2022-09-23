Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E62C35E8397
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Sep 2022 22:29:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 253973F951
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Sep 2022 20:29:25 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	by lists.linaro.org (Postfix) with ESMTPS id 571033F953
	for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Sep 2022 20:28:34 +0000 (UTC)
Received: by mail-pj1-f44.google.com with SMTP id fs14so1052579pjb.5
        for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Sep 2022 13:28:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=PCPU7pjQsz2sISTfhiNbNnCu1P7dpEEV5lOobjZTacw=;
        b=Iu9IAyDuLzG+6v/Qe/VDx2yB77cAoW4xXxxoWLwcPs2hQ2vdFhoGM7rk54C0JPoyAN
         AaLg5lQQvhHAFcTmsUdZWlK9hHQlqBPwPeDuvjvIf+b16rmlZZjb/iy/HTS0LU78apjW
         nLGtaiMCoXEcj1ad5zoxgqn0DT23BivJkRE/I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=PCPU7pjQsz2sISTfhiNbNnCu1P7dpEEV5lOobjZTacw=;
        b=LCLMcOLHdDSqsG/WxW4lk0fPFCOYm2WzhzipLwbJH3Acr3PdwERYEuLz76sQnoJX44
         LbI3oc+Lly34VjT+LKU6/YsbdE0F6YLe7R3TFvvWCQqNL9WqzHxmyGSb0e6OI7ZUgTYx
         gxTOhg45tpBpB9jqEqTdRvSGYfaBaBmvqM3+UNr8zzDp9ddalxo17lYA0pFfMag/KAWE
         Ge2WyAsDPezJ00R0JLtyljbyKnoFaDRF7ClvGAO+AUFTT4l5kcam2q26QLrUJBPucekC
         58aercoTiLXGCmNFQJpD7oSxocssxNHBmo1lQQ5dMgXC3WCrncxxpsfdxzKbWgBdppAu
         srug==
X-Gm-Message-State: ACrzQf0D/Nbw3ZuPx0VQ3y7VtyXHDGqV2/HPDz97UpbIOXKTTwTHZ8r7
	CROsi9Ntd73Gpiaen1q4fRxLvA==
X-Google-Smtp-Source: AMsMyM6XUwdmhAaIK2A3UxRxY7Sbzemd3FVYShW5LY9Q79SPPQFgRGi67TrIU8bwe4lKUNw9bOUpJw==
X-Received: by 2002:a17:90b:4b09:b0:202:ad77:9ee1 with SMTP id lx9-20020a17090b4b0900b00202ad779ee1mr11743471pjb.10.1663964914034;
        Fri, 23 Sep 2022 13:28:34 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id p67-20020a622946000000b00528bd940390sm6579869pfp.153.2022.09.23.13.28.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Sep 2022 13:28:32 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Vlastimil Babka <vbabka@suse.cz>
Date: Fri, 23 Sep 2022 13:28:19 -0700
Message-Id: <20220923202822.2667581-14-keescook@chromium.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220923202822.2667581-1-keescook@chromium.org>
References: <20220923202822.2667581-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=821; h=from:subject; bh=1Gas3SCsMDWgBChil0VwFgY9Fr6zuZgi/zbZ+v/amZU=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBjLhblw9hPBOt2abeHvNz251QmxKrK5qZ9E2npmHln zyeWomSJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYy4W5QAKCRCJcvTf3G3AJoKkD/ 0Rw7ftGkpv6Cp14LlheghY8ULuROeYsl+xBHJIECYJxb7Zj7xNiTAKJPkYJG2rfH7dJMP4mnVCyvlE aX9DI2jRbF0DpDm8X4kNTAYLiAnekyLGRBI1uuwyosPWzFt5fthMVPKTGw4skU5eJeoliXwvKRjc7w H2hvKX03v8bjW2hWSueT4lkm2RIg4t4qCd7tAHcfkVFPluuXqkRyHl5jKKj/gvloXfr0a7NEcoK6+B OMr9c7RIevNvATAWl7BVsl1C+sgXBlqnebMSX5UB3sQFDThE2TOU6PM8pwx2uGkviWtrIORGwdnrqF 0BWUxYm3S7RgbB0E08f07OQbs6iZbOosdIECqTf8jwkxFWpqXk+ywZexmptnljyesSCsq4Q45yeVtp CivmXPCHnnW/ltVIwlzqLXkKSA1ANCZugfA9MQMfNYzYLJmYhU2oE75hyFkzyLL6O7DnVutl/lmgOX 3BjHh5o+PuSYbw4gy0xL95tSHEokwlTTS9maudQ7pyB/lQFm8Got/UmZKScGYd6rVWQ+NR3+w3ud3e oz3kjiT0YzaO+sAjrsJDYKalavBaxhajZL8QMmPOZRL6XigFy+8x9O7y3Ji6lN4tryxNvAYJ08zYoV GZZ+QW0vnk/Etuibtx0IyAfth89gRlflFdIp1c7NouB249gCifAsYbMMOFbA==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
Message-ID-Hash: EGZEVK2JSIIDXVJHRSSBPV7L7OMFTGQ6
X-Message-ID-Hash: EGZEVK2JSIIDXVJHRSSBPV7L7OMFTGQ6
X-MailFrom: keescook@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Kees Cook <keescook@chromium.org>, Andrew Morton <akpm@linux-foundation.org>, linux-mm@kvack.org, "Ruhl, Michael J" <michael.j.ruhl@intel.com>, Hyeonggon Yoo <42.hyeyoo@gmail.com>, Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nick Desaulniers <ndesaulniers@google.com>, Alex Elder <elder@kernel.org>, Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Daniel Micay <danielmicay@gmail.com>, Yonghong Song <yhs@fb.com>, Marco Elver <elver@google.com>, Miguel Ojeda <ojeda@kernel.org>, linux-kernel@vger.kernel.org, netdev@vger.kernel.o
 rg, linux-btrfs@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, intel-wired-lan@lists.osuosl.org, dev@openvswitch.org, x86@kernel.org, llvm@lists.linux.dev, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 13/16] mempool: Use kmalloc_size_roundup() to match ksize() usage
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EGZEVK2JSIIDXVJHRSSBPV7L7OMFTGQ6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Round up allocations with kmalloc_size_roundup() so that mempool's use
of ksize() is always accurate and no special handling of the memory is
needed by KASAN, UBSAN_BOUNDS, nor FORTIFY_SOURCE.

Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: linux-mm@kvack.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 mm/mempool.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/mm/mempool.c b/mm/mempool.c
index 96488b13a1ef..0f3107b28e6b 100644
--- a/mm/mempool.c
+++ b/mm/mempool.c
@@ -526,7 +526,7 @@ EXPORT_SYMBOL(mempool_free_slab);
  */
 void *mempool_kmalloc(gfp_t gfp_mask, void *pool_data)
 {
-	size_t size = (size_t)pool_data;
+	size_t size = kmalloc_size_roundup((size_t)pool_data);
 	return kmalloc(size, gfp_mask);
 }
 EXPORT_SYMBOL(mempool_kmalloc);
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
