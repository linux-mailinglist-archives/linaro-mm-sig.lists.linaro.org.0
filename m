Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F805E5920
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Sep 2022 05:11:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B837948A5E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Sep 2022 03:11:07 +0000 (UTC)
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	by lists.linaro.org (Postfix) with ESMTPS id AB40D48A6D
	for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Sep 2022 03:10:29 +0000 (UTC)
Received: by mail-pl1-f172.google.com with SMTP id d11so127669pll.8
        for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Sep 2022 20:10:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=nllmYacJVnWYWyMDuOWg+UhFJID/1u9fgEUSXV9a/I0=;
        b=ObVBgj10USdxX2qau03B/fvKSrj9pfzNX++HX3pR1Ku6Ct/c+Mn8B6TC2gGByEksOv
         ftM/dSMzexkJk0pSadbJzyromjdrIDks1988E0vt92N7zZIkoEa3uLvIJsqtFfZmvRDx
         8dl5wBNFG6y2ajB8JRxgoslRMstHrNUREimgg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=nllmYacJVnWYWyMDuOWg+UhFJID/1u9fgEUSXV9a/I0=;
        b=4n2wWVr5a39t4PGjmBJzTLczWi90ml35kGnamBAZWg3dDqxCXI7FQ8f8oWuYksNmt/
         pAU0Pz3pLdNH9rS3/HIVZKs4tFKTlREL3NC88Wxe5LcvYmhudfBvviWJLDryhVqkXwb3
         5nK79hYbKR96FF62LrNDUunRZRIiP8mVO1JQFSEQc55zt5HdNS23SZxKHPi05mm3lsDM
         1FhyKmrVvhec/w5vNT5eSjKPHZsGf1rvpM5A25b+wV8QPUJqT+GIcJ28BmGRHax794Ms
         HZcRoG09ulM3wsFns/Jh1Trq22LnnNYXFT4PzhHnyEAtYMkNKtCD0E/npXvL+62MAcEq
         K5hA==
X-Gm-Message-State: ACrzQf3Xzcx4nbMqdAM4GgocqouSDxMK9WxmuomO0YmHylroaDMOjIU2
	NH371WH8vTTLoWCK8sR7GuOYuw==
X-Google-Smtp-Source: AMsMyM49XhohtYBkjYXAytE2XFYLdWSstHIvAKOydHl9P7CLdwWaHlEa/nts1aXdGwMJ6p2JjPZrLw==
X-Received: by 2002:a17:90b:180a:b0:202:ae1f:328a with SMTP id lw10-20020a17090b180a00b00202ae1f328amr13239578pjb.78.1663816228865;
        Wed, 21 Sep 2022 20:10:28 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id d18-20020a170902ced200b001783f964fe3sm2766723plg.113.2022.09.21.20.10.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Sep 2022 20:10:26 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Vlastimil Babka <vbabka@suse.cz>
Date: Wed, 21 Sep 2022 20:10:10 -0700
Message-Id: <20220922031013.2150682-10-keescook@chromium.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220922031013.2150682-1-keescook@chromium.org>
References: <20220922031013.2150682-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2149; h=from:subject; bh=LRLPHeutQvsvCqROzEs3/rr/P6uPQnPuMyr/7IE9r2g=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBjK9IUgfEF5Q67qoI3XgFPEX8J4smU+peBuyPzdpCc nIEpFpaJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYyvSFAAKCRCJcvTf3G3AJsUGD/ 4jiZQIVRjbRNvUVUl7QhNkO/5LbO1QHELDOu9VeAlksbBy6XuO+qlBw7CoqEHO44r9YLdeZFAssNud wYDnzHSwrmpVT9VOZKujYIXUu4jVQeSmpRL+/zi2WAX5dpAscIDYzhoFkFQuW/aQn9nvVlwwWv2G5A GfumYAURZ8BP94NLhlaTRLKHc10AEhWJ08FZCbBy/NXE7LT5VZa1H9zYppFy1ulRzYa4xiX1Weubkg o7PsRtqxx2jPKi9ywlm4JL33MLhQ7Hl1dObUN2bhp8DRTalPx6Bc6SUbteYJPbwKYEr7+5pD3iT+ek 78esKD6WsOGfBLAZ8pf8lCldD0XPYRApJVGasz+zBeg9LCqumUaDwNzE9GNpHfaorgWXNBuXeuKFif 5rYMN95t+ygRdOvQdNJlCJ0JlPfMcJajLzKyYKCvSlICPcTlaGpjjCGXtVFMSUZgvkbvhOZnwoRTfP LCMqYLu+xX8m1YKOnipcqlhorAe+A8u41dR2tlI0HUW4UYrUIZQ5O+CQqG80Ge713Eg5bk43crrhKD YsmBHTsJ/g7EuL/mG/+BltzwRQSF9KUT12J1eO+hSib+I+7XiE4mW8dN4M4JLJmSxvAa5G/pJSmhKH 6ZKIBAfSeBqo6VbAeV28Lkl0KnRiBwVDbQ08NwltR1YuONRBkYjOqYRx4S+w==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
Message-ID-Hash: VS47E4HBSDQVKCVDP3YDCYGPAKQAOCDJ
X-Message-ID-Hash: VS47E4HBSDQVKCVDP3YDCYGPAKQAOCDJ
X-MailFrom: keescook@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Kees Cook <keescook@chromium.org>, Daniel Micay <danielmicay@gmail.com>, Borislav Petkov <bp@alien8.de>, x86@kernel.org, Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>, Andrew Morton <akpm@linux-foundation.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nick Desaulniers <ndesaulniers@google.com>, Alex Elder <elder@kernel.org>, Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Yonghong Song <yhs@fb.com>, Marco Elver <elver@google.com>, Miguel Ojeda <ojeda@kernel.org>, Jacob Shin <jacob.shin@amd.com>, linux-kernel@vger.kernel.org, linux-mm@kvack.org, netdev@vger.kernel.org, linux-btrfs@vger.kernel.org, lin
 ux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, intel-wired-lan@lists.osuosl.org, dev@openvswitch.org, linux-wireless@vger.kernel.org, llvm@lists.linux.dev, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 09/12] x86/microcode/AMD: Track patch allocation size explicitly
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VS47E4HBSDQVKCVDP3YDCYGPAKQAOCDJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

In preparation for reducing the use of ksize(), record the actual
allocation size for later memcpy(). This avoids copying extra
(uninitialized!) bytes into the patch buffer when the requested allocation
size isn't exactly the size of a kmalloc bucket. Additionally fixes
potential future issues where runtime bounds checking will notice that
the buffer was allocated to a smaller value than returned by ksize().

Suggested-by: Daniel Micay <danielmicay@gmail.com>
Link: https://lore.kernel.org/lkml/CA+DvKQ+bp7Y7gmaVhacjv9uF6Ar-o4tet872h4Q8RPYPJjcJQA@mail.gmail.com/
Fixes: 757885e94a22 ("x86, microcode, amd: Early microcode patch loading support for AMD")
Cc: Borislav Petkov <bp@alien8.de>
Cc: x86@kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/include/asm/microcode.h    | 1 +
 arch/x86/kernel/cpu/microcode/amd.c | 3 ++-
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/x86/include/asm/microcode.h b/arch/x86/include/asm/microcode.h
index 0c3d3440fe27..aa675783412f 100644
--- a/arch/x86/include/asm/microcode.h
+++ b/arch/x86/include/asm/microcode.h
@@ -9,6 +9,7 @@
 struct ucode_patch {
 	struct list_head plist;
 	void *data;		/* Intel uses only this one */
+	unsigned int size;
 	u32 patch_id;
 	u16 equiv_cpu;
 };
diff --git a/arch/x86/kernel/cpu/microcode/amd.c b/arch/x86/kernel/cpu/microcode/amd.c
index 8b2fcdfa6d31..615bc6efa1dd 100644
--- a/arch/x86/kernel/cpu/microcode/amd.c
+++ b/arch/x86/kernel/cpu/microcode/amd.c
@@ -788,6 +788,7 @@ static int verify_and_add_patch(u8 family, u8 *fw, unsigned int leftover,
 		kfree(patch);
 		return -EINVAL;
 	}
+	patch->size = *patch_size;
 
 	mc_hdr      = (struct microcode_header_amd *)(fw + SECTION_HDR_SIZE);
 	proc_id     = mc_hdr->processor_rev_id;
@@ -869,7 +870,7 @@ load_microcode_amd(bool save, u8 family, const u8 *data, size_t size)
 		return ret;
 
 	memset(amd_ucode_patch, 0, PATCH_MAX_SIZE);
-	memcpy(amd_ucode_patch, p->data, min_t(u32, ksize(p->data), PATCH_MAX_SIZE));
+	memcpy(amd_ucode_patch, p->data, min_t(u32, p->size, PATCH_MAX_SIZE));
 
 	return ret;
 }
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
