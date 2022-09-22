Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2AB5E5929
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Sep 2022 05:11:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6D8E648A62
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Sep 2022 03:11:25 +0000 (UTC)
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	by lists.linaro.org (Postfix) with ESMTPS id 9524A48A65
	for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Sep 2022 03:10:32 +0000 (UTC)
Received: by mail-pj1-f48.google.com with SMTP id o99-20020a17090a0a6c00b002039c4fce53so827802pjo.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Sep 2022 20:10:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=bpEbyFBm8ujPK6iqrGWXCPwqEismRLAX26z3I+Rspz8=;
        b=GwEKRlSGWNZZz0bSOhH09wT/dIlAzUgEDzlKCcSGfqUiFWltnmUuICqFqj3LlzCRek
         BVgZYAczODxRtxBqW9kNHbHyqaba8VuQcAtk82kUBEiaAlU+daUZZIQGOA7CX1koggEg
         yep8B8ilhj99/u+e0tErmzGRiobAHfyNKzCog=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=bpEbyFBm8ujPK6iqrGWXCPwqEismRLAX26z3I+Rspz8=;
        b=zu7MjpF/lrqDhhGAW0iPEcTRtCsVy4ox4EwkxL3jP/Ge3gC4vfSi+Z+Kj6JQF/2dTh
         4ktFez6Mc3CBJq+E68/hJzzUhArb05u6a5+DG+J3o0CqfHgT6T6kPTzvXjgKx+Dc0Ttb
         Ze5ZLKTggaZaFQZDl5PLtd2icwJuD1M/J+zgooc71tsZ1tBJyEjHZQd3Q/6Z4KglMLm6
         /PDvVIBY/ngGLmhgzCOWLpSphVHjf700SEI72/Kd1Q6ToZ5nQ0S2esKgsRToBN/ksQw1
         eOWE5rFCfa4Er2Zq42yfjfAVyyVsn2zb+RAirtpCjUWb+NOu7sSEkbXlxn97e2lWBbqY
         7Bbw==
X-Gm-Message-State: ACrzQf3Xq/3ZPBXVE6N4lMivYaBfaqXI909dPP4VDZc3HuRcu3AbL1Vh
	7Am2XLNgApSsnTu5qUucVtI0xA==
X-Google-Smtp-Source: AMsMyM5u6eYb4g944r9Q/Pt9mZXCmsyxQzDwy9CZJ8oZsRhkZQrJS6fEKVkXWUHzQQ89FNa93/Kc0w==
X-Received: by 2002:a17:902:e54b:b0:177:e29e:a0c0 with SMTP id n11-20020a170902e54b00b00177e29ea0c0mr1359878plf.66.1663816231700;
        Wed, 21 Sep 2022 20:10:31 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id u3-20020a17090341c300b0016d6963cb12sm2781495ple.304.2022.09.21.20.10.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Sep 2022 20:10:26 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Vlastimil Babka <vbabka@suse.cz>
Date: Wed, 21 Sep 2022 20:10:12 -0700
Message-Id: <20220922031013.2150682-12-keescook@chromium.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220922031013.2150682-1-keescook@chromium.org>
References: <20220922031013.2150682-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3544; h=from:subject; bh=oS2Iv+uVGC72Kt/ZsRdKSQv1v3zTVhJ3IWvWWRabp+g=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBjK9IUEKv90igkAnqqd37b6kR1bxxEz6G+6mdwmL8d hU8qttyJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYyvSFAAKCRCJcvTf3G3AJqdIEA CK12iuKhH2Gb+F4wapUYpaSc373MS6rjJoFpsNm84+/ObvNHGEz2kq5kYHkOs7G3e8jhHlr4YXru45 YnbkR3SRCmUyJ7loADAzHlj0yCxkYniAAXvuZzfvc9luBT3TIsBLzOyoo8E8ylHkAK0aVycGXvAy+W PGkSD/jL+EQrHdUK+hra5t32/YXsbXr4NStVZ9IzHolQ9EI054AF8/LV77MBWpPIX5Ho1mGWzl1ijJ E9wFPHhl2hfKzU9eXD+N4EzOrlLceF+ztZPDuq2MdUfMxOdv5GAJKiW5FRq+IFpNkwIM9nhSPM5iQE YBr/ivEWQqdNFsPnRtgWssO370vtzYb+x61dFRrUn7/FKR7Om27TEYwAd6+P+FnDwRoMTV/BPuFe6C 7iiHIRbFsfrIUn/r4jYTZt4u6NtpaDA1FVV/Em1JDkKtSh3fWi4Ku18TGZQm81iMdScRZHubomFfI+ vxHjePLahrOHkSfaNZvuJLrLPDU7WsDADYD6e/53VTiL3yyHRtO0XH1DyMkIDUA2WPNZy6ISq70TQ5 eN54uMg3p8o5Bz9r112LSXwEkIA+2aRlSgWZDi0KwDLacLHhcuECUcvzHrANynElUzrtH5uoqtYyZh Y8ppyJSFYyPmpNrkQ/M6ZKVaeCwZCHu2ZcgtL5o8/NTiuMaB6SQl9nFcWJRg==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
Message-ID-Hash: DAP6QUJSKR4PRU5YAXTYGTZABZF4H2OZ
X-Message-ID-Hash: DAP6QUJSKR4PRU5YAXTYGTZABZF4H2OZ
X-MailFrom: keescook@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Kees Cook <keescook@chromium.org>, Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>, Andrew Morton <akpm@linux-foundation.org>, Nick Desaulniers <ndesaulniers@google.com>, Hao Luo <haoluo@google.com>, Marco Elver <elver@google.com>, linux-mm@kvack.org, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Alex Elder <elder@kernel.org>, Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Daniel Micay <danielmicay@gmail.com>, Yonghong Song <yhs@fb.com>, Miguel Ojeda <ojeda@kernel.org>, Jacob Shin <jacob.shin@amd.com>, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, linux-btrfs@vger.kernel.org, linux-media@vger.kerne
 l.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, intel-wired-lan@lists.osuosl.org, dev@openvswitch.org, x86@kernel.org, linux-wireless@vger.kernel.org, llvm@lists.linux.dev, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 11/12] slab: Remove __malloc attribute from realloc functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DAP6QUJSKR4PRU5YAXTYGTZABZF4H2OZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The __malloc attribute should not be applied to "realloc" functions, as
the returned pointer may alias the storage of the prior pointer. Instead
of splitting __malloc from __alloc_size, which would be a huge amount of
churn, just create __realloc_size for the few cases where it is needed.

Additionally removes the conditional test for __alloc_size__, which is
always defined now.

Cc: Pekka Enberg <penberg@kernel.org>
Cc: David Rientjes <rientjes@google.com>
Cc: Joonsoo Kim <iamjoonsoo.kim@lge.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Hao Luo <haoluo@google.com>
Cc: Marco Elver <elver@google.com>
Cc: linux-mm@kvack.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/compiler_types.h | 13 +++++--------
 include/linux/slab.h           | 12 ++++++------
 2 files changed, 11 insertions(+), 14 deletions(-)

diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index 4f2a819fd60a..f141a6f6b9f6 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -271,15 +271,12 @@ struct ftrace_likely_data {
 
 /*
  * Any place that could be marked with the "alloc_size" attribute is also
- * a place to be marked with the "malloc" attribute. Do this as part of the
- * __alloc_size macro to avoid redundant attributes and to avoid missing a
- * __malloc marking.
+ * a place to be marked with the "malloc" attribute, except those that may
+ * be performing a _reallocation_, as that may alias the existing pointer.
+ * For these, use __realloc_size().
  */
-#ifdef __alloc_size__
-# define __alloc_size(x, ...)	__alloc_size__(x, ## __VA_ARGS__) __malloc
-#else
-# define __alloc_size(x, ...)	__malloc
-#endif
+#define __alloc_size(x, ...)	__alloc_size__(x, ## __VA_ARGS__) __malloc
+#define __realloc_size(x, ...)	__alloc_size__(x, ## __VA_ARGS__)
 
 #ifndef asm_volatile_goto
 #define asm_volatile_goto(x...) asm goto(x)
diff --git a/include/linux/slab.h b/include/linux/slab.h
index 4fc41e4ed4a2..ac3832b50dbb 100644
--- a/include/linux/slab.h
+++ b/include/linux/slab.h
@@ -184,7 +184,7 @@ int kmem_cache_shrink(struct kmem_cache *s);
 /*
  * Common kmalloc functions provided by all allocators
  */
-void * __must_check krealloc(const void *objp, size_t new_size, gfp_t flags) __alloc_size(2);
+void * __must_check krealloc(const void *objp, size_t new_size, gfp_t flags) __realloc_size(2);
 void kfree(const void *objp);
 void kfree_sensitive(const void *objp);
 size_t __ksize(const void *objp);
@@ -661,10 +661,10 @@ static inline __alloc_size(1, 2) void *kmalloc_array(size_t n, size_t size, gfp_
  * @new_size: new size of a single member of the array
  * @flags: the type of memory to allocate (see kmalloc)
  */
-static inline __alloc_size(2, 3) void * __must_check krealloc_array(void *p,
-								    size_t new_n,
-								    size_t new_size,
-								    gfp_t flags)
+static inline __realloc_size(2, 3) void * __must_check krealloc_array(void *p,
+								      size_t new_n,
+								      size_t new_size,
+								      gfp_t flags)
 {
 	size_t bytes;
 
@@ -788,7 +788,7 @@ static inline __alloc_size(1, 2) void *kvcalloc(size_t n, size_t size, gfp_t fla
 }
 
 extern void *kvrealloc(const void *p, size_t oldsize, size_t newsize, gfp_t flags)
-		      __alloc_size(3);
+		      __realloc_size(3);
 extern void kvfree(const void *addr);
 extern void kvfree_sensitive(const void *addr, size_t len);
 
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
