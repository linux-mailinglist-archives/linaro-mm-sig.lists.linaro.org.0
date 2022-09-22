Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B865E5927
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Sep 2022 05:11:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 27E4448A33
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Sep 2022 03:11:21 +0000 (UTC)
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	by lists.linaro.org (Postfix) with ESMTPS id 7C83D48A62
	for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Sep 2022 03:10:31 +0000 (UTC)
Received: by mail-pl1-f178.google.com with SMTP id t3so7553389ply.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Sep 2022 20:10:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=qxVZgozpxUqw/OCmt2hiw12U/0MyvSZtu5qBBtiyWvw=;
        b=YceqUeE5vYLBI4ZX8VHDnLZLf4LI9m/umYwz5bsG0CsZBYwVRKID0Xij6KROSl4WW+
         /TrR0tpL0v+DF8mfo3NenZgJCDlxojKf81TDxbqYAGTS/Z+tsMmbhRNDYO79WP6ExIu9
         zC6fMXi3wRzqyMx5oelK9O9SszqI+SIirgmsc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=qxVZgozpxUqw/OCmt2hiw12U/0MyvSZtu5qBBtiyWvw=;
        b=8HTWZiNEM9g+zQT4xYjB2lkJ3zSrQ/2ZR3xsMUdCnLXnyq3swlKxnpBGXyEIye3Cfn
         amOJBiLLAs6sz+LocdTojvNK1BGWCRkvm40W+JUJp25sJKJgUhmJPxSevfoF2tje8nJ2
         NjR7Y+CG++xNPKQr3ktFzNDI1avZhGoMO9E3rSMJ6WadHFsXRWsZVK626IfdiQQdVGsG
         h8K/ZXhdv1wMClCtcLb1Hr5a9LgnUbR0L/56N7bk/ndPQkrpFUVzhuV2hWmFpAVwJFag
         tyAxSgYi9yEyWwK6PmuzNDg9x2rq/i3hgNy/+aQoDf3iFBYCwmHlX8jvXnvAE6LFw+P7
         5g5A==
X-Gm-Message-State: ACrzQf1MvjopcSC6U6idbRb2OMushyckXv6E91RISpFVZ4+xhmH/p+AQ
	57/5Hb+RRYCdRjf65/ri7rVwZw==
X-Google-Smtp-Source: AMsMyM5eu+CoD5QA+YWTzFQPQA65ZAQe9wx2y8um8qAtQyx/81XSGYYdjISHnZdAlryk2cpvPh097g==
X-Received: by 2002:a17:902:7e83:b0:177:e667:7841 with SMTP id z3-20020a1709027e8300b00177e6677841mr1282723pla.18.1663816230671;
        Wed, 21 Sep 2022 20:10:30 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id w23-20020a1709026f1700b001783a917b9asm673159plk.127.2022.09.21.20.10.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Sep 2022 20:10:26 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Vlastimil Babka <vbabka@suse.cz>
Date: Wed, 21 Sep 2022 20:10:13 -0700
Message-Id: <20220922031013.2150682-13-keescook@chromium.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220922031013.2150682-1-keescook@chromium.org>
References: <20220922031013.2150682-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1539; h=from:subject; bh=OIiXewiJtJloKAX8DOwo5WpUjhu8p3BhQEgjb94POmU=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBjK9IUphiC6b+jlnve6/WNpL7tI32u/OY+d1HLdPMo annUuq2JAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYyvSFAAKCRCJcvTf3G3AJlTRD/ 9zGxikcJjFFHdBDIRC8el1bT8i8MIl1Oz2r6j4svUQE/cn0btongvxnGDbygRuZC43lwApaQa0M8Pt AvmL/hvvYmdFiuzN6An0FZ4ORvTCLn1uzH4EirSEKQxkllpH0r1YW2hqSLpqcaY86iquT8vB02Tv16 e13SWQA7nA1/QWGk0qUxi0YLrW0hOtkH2mg2fITcspULau1LHMsUmc37gU0TbvIrbx9hN87N2NnOzz alo6xwbNstj0cru/3QyQ5TJdhcVKP54qndI7drNEdhl8YWC7CNhwu0vFdbZ/LfLgxO2PtTl9nz23b0 fDmn0WywY/tJQOqhYvvIWsDN69+iEub68yvR3WWj2bKYgwuaZ89nPNObeP4LOThYNTFoEclKMY7Rja jkOQc8wAtgZmSKL9TVY3alYeLpe9CQJEnOq4oSVlfTwIftpgULM6xBq459EK/qrpUHyyV8vmzyoEjv Pz/49h7U3Q7bYxnoWIkIniYWWT6d9d1DH3MtHi4eCTaj2iVTLdQRLx7Zw2/KJ4VvLPA3/587G7zFdJ OzdFQo4VVfEuH6S3EaIPg5mtVX0AbNqQxBEV1EkPNU2qQK6x6coo691bRHOWqgucqydaoj3YDERK1B 3pAijp4vU8wsUovuHXrgjKcWnIuVw656YURrFma1ktTDOShGFqP+WQ5kIpqw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
Message-ID-Hash: PLR5MHRVKV42TEW6K2PH32T6BM6ALIPE
X-Message-ID-Hash: PLR5MHRVKV42TEW6K2PH32T6BM6ALIPE
X-MailFrom: keescook@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Kees Cook <keescook@chromium.org>, Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>, Andrew Morton <akpm@linux-foundation.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mm@kvack.org, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Nick Desaulniers <ndesaulniers@google.com>, Alex Elder <elder@kernel.org>, Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Daniel Micay <danielmicay@gmail.com>, Yonghong Song <yhs@fb.com>, Marco Elver <elver@google.com>, Miguel Ojeda <ojeda@kernel.org>, Jacob Shin <jacob.shin@amd.com>, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, linux-btrfs@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freede
 sktop.org, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, intel-wired-lan@lists.osuosl.org, dev@openvswitch.org, x86@kernel.org, linux-wireless@vger.kernel.org, llvm@lists.linux.dev, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 12/12] slab: Restore __alloc_size attribute to __kmalloc_track_caller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PLR5MHRVKV42TEW6K2PH32T6BM6ALIPE/>
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

Cc: Pekka Enberg <penberg@kernel.org>
Cc: David Rientjes <rientjes@google.com>
Cc: Joonsoo Kim <iamjoonsoo.kim@lge.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-mm@kvack.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/slab.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/linux/slab.h b/include/linux/slab.h
index ac3832b50dbb..dd50ed7207c9 100644
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
