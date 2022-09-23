Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D07035E83ED
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Sep 2022 22:35:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 105183F953
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Sep 2022 20:35:41 +0000 (UTC)
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	by lists.linaro.org (Postfix) with ESMTPS id ADD4E3ED8C
	for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Sep 2022 20:35:30 +0000 (UTC)
Received: by mail-pg1-f177.google.com with SMTP id c7so1250669pgt.11
        for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Sep 2022 13:35:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=+2laYBdgjwT7rG4W5AHSQduuvkvGMevdVubQImW4gKw=;
        b=nbTXxoItIcoLMSX/37BnKPPw/3YlEPQi9RGa22B4OfB3Mw3rQ7fVLlIBZDFWhU6SQB
         iQQy0oVdOCW9DPex5gUVO+9CVPiYxCD2RX7jYGmew9mYG9nePUONwhOxImpJpLdtHO3I
         +RIWIsZx79HIw7FNWO7gsYSXx6hJ7HZJNUkfA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=+2laYBdgjwT7rG4W5AHSQduuvkvGMevdVubQImW4gKw=;
        b=s5gkEkHYEIPC1LqPF7c3E/hOrEPqRG18RXFTHw+bpuDO5FLNTPHeC3zGOqcdeY00ra
         9jeQDx48tEeFllrauCm2kzTYk+qdLsPbfd5H5Y8XlDFZmwsHD3wGfx+gPMOOALpLhWFJ
         fGEnNjrXkIw1HLV2kMDWXLHlPanxCMkGPjmPIWHK8+Szqz70s8O+xQf6vxEyb7bgSA55
         tWw2185t2OulNbImzBYes0C+PNpN7QDhEc/2m/koBz0OJLYLZ5SBN6vFWeXBmkwsEsso
         D+Z0MONuyoe6Z2cxwDOt7+sD2dyyhL0YK6XULvQfGTP+7pZvk9jpZe+4OPnb2ZbcOkVb
         YMoQ==
X-Gm-Message-State: ACrzQf1B6y9WJ9dSql8Xti1hm6P3ZDEauWP0ArS3cSKawOTDYmo9YFE6
	ZEwA1/xtKqkch4+CR7ypBKmMtQ==
X-Google-Smtp-Source: AMsMyM5bm7zGXJ9d50JTGsymxB/VLZYV8oPS2I+E2tFMZpMAmvrfAs1/p+X8f9kZo4aKjt6+zvlMFg==
X-Received: by 2002:a63:8649:0:b0:43a:d230:d3b5 with SMTP id x70-20020a638649000000b0043ad230d3b5mr9208334pgd.493.1663965329910;
        Fri, 23 Sep 2022 13:35:29 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id w7-20020a170902e88700b0017685f53537sm6450933plg.186.2022.09.23.13.35.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Sep 2022 13:35:28 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Vlastimil Babka <vbabka@suse.cz>
Date: Fri, 23 Sep 2022 13:28:22 -0700
Message-Id: <20220923202822.2667581-17-keescook@chromium.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220923202822.2667581-1-keescook@chromium.org>
References: <20220923202822.2667581-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1650; h=from:subject; bh=/OaZMueZzIe84chcaXjPmGvBh3Vl4n1WZ7Et98TCic4=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBjLhbmpXV27OdVCurixM5mD3YL9FeIo8HzPKP6kKFZ 0hj84SaJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYy4W5gAKCRCJcvTf3G3AJrk1D/ 9suh4VQDWJhn6CjYJdrIyeIOje+kXnxuVQ4rZWxcfisvcOa9LBG3AeDjRuKI4VpUdYD37IwPPRov57 7ySYIwMkjVqKZEa/PzjhXiMhpeo5c/FR+mC/2/7gf0vf6wqxRDni79+/q13dY5meEj/JSCQ/VnxZRe gjJepCGBakVJaJJpuemoCwsjm59sySqVEfoXZQ3j8FvjLzn3UEHguFLm71uFRvZJYaFRgcZYER/6SM gtzHNWGWaCNhF8dkKOnwzFjb9Rnzxv996CnMgQ48xhu33oEvFn/qv87UNwxYH5nu+eGAj6AOn0942n o/n7ecuvzIw73BhNbAqSHTiF/7CH2P1ACFMXogDcRbmseRTH9IxMtimtJP4ycB5H3BlirHH62OwXYW HcNSihxuIstBMI+dXzPUAePdpDw9zFpCkThJFB3HawrMyY1xWxrUir3MaIirOiGPAaNsQ2phrSDz2q 89SyrvWcLNxNEqTTWGHN3J4vSrnAPQTLDJgx+qlchawQhrFpywa38+u+aGHG0NL7zPvmR7xoWq31Bj MvQuhlk8RDsuhGN+mFYxlipeK0PD5eo1yTnzSxnawr2guLYHLoh5ZATYEPsnWaJ23aiXDLUrWeSOx6 ihxdUdxuZS6AB+vqV1rDpWb7cFU4nZ6MydrAXZN1cwWnC866PyTB2WT4EREg==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
Message-ID-Hash: ADI7UFCXVUG4HMDXSUG7GCZENJ3MTZJK
X-Message-ID-Hash: ADI7UFCXVUG4HMDXSUG7GCZENJ3MTZJK
X-MailFrom: keescook@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Kees Cook <keescook@chromium.org>, Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>, Andrew Morton <akpm@linux-foundation.org>, Roman Gushchin <roman.gushchin@linux.dev>, Hyeonggon Yoo <42.hyeyoo@gmail.com>, linux-mm@kvack.org, "Ruhl, Michael J" <michael.j.ruhl@intel.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nick Desaulniers <ndesaulniers@google.com>, Alex Elder <elder@kernel.org>, Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Daniel Micay <danielmicay@gmail.com>, Yonghong Song <yhs@fb.com>, Marco Elver <elver@google.com>, Miguel Ojeda <ojeda@kernel.org>, linux-k
 ernel@vger.kernel.org, netdev@vger.kernel.org, linux-btrfs@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, intel-wired-lan@lists.osuosl.org, dev@openvswitch.org, x86@kernel.org, llvm@lists.linux.dev, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 16/16] slab: Restore __alloc_size attribute to __kmalloc_track_caller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ADI7UFCXVUG4HMDXSUG7GCZENJ3MTZJK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

With skbuff's post-allocation use of ksize() rearranged to use
kmalloc_size_round() prior to allocation, the compiler can correctly
reason about the size of these allocations. The prior mismatch had caused
buffer overflow mitigations to erroneously fire under CONFIG_UBSAN_BOUNDS,
requiring a partial revert of the __alloc_size attributes. Restore the
attribute that had been removed in commit 93dd04ab0b2b ("slab: remove
__alloc_size attribute from __kmalloc_track_caller").

Cc: Christoph Lameter <cl@linux.com>
Cc: Pekka Enberg <penberg@kernel.org>
Cc: David Rientjes <rientjes@google.com>
Cc: Joonsoo Kim <iamjoonsoo.kim@lge.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Vlastimil Babka <vbabka@suse.cz>
Cc: Roman Gushchin <roman.gushchin@linux.dev>
Cc: Hyeonggon Yoo <42.hyeyoo@gmail.com>
Cc: linux-mm@kvack.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/slab.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/linux/slab.h b/include/linux/slab.h
index 727640173568..297b85ed2c29 100644
--- a/include/linux/slab.h
+++ b/include/linux/slab.h
@@ -693,7 +693,8 @@ static inline __alloc_size(1, 2) void *kcalloc(size_t n, size_t size, gfp_t flag
  * allocator where we care about the real place the memory allocation
  * request comes from.
  */
-extern void *__kmalloc_track_caller(size_t size, gfp_t flags, unsigned long caller);
+extern void *__kmalloc_track_caller(size_t size, gfp_t flags, unsigned long caller)
+				   __alloc_size(1);
 #define kmalloc_track_caller(size, flags) \
 	__kmalloc_track_caller(size, flags, _RET_IP_)
 
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
