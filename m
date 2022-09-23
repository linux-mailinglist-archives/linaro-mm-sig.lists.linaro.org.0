Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B4395E838F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Sep 2022 22:29:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9E7123F952
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Sep 2022 20:29:02 +0000 (UTC)
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	by lists.linaro.org (Postfix) with ESMTPS id 928703F951
	for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Sep 2022 20:28:30 +0000 (UTC)
Received: by mail-pg1-f173.google.com with SMTP id u69so1278059pgd.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Sep 2022 13:28:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=lIp3Rau3XN5DhulJvqmP3ROLBDtGBYLacs8yQVXUsIc=;
        b=ayrELvkz6RCr+VJ5YTbdaI+C+7T6BGsJEAguxUgCPIN9LMOSG1cQ+4QSxLfuYecJ7g
         rEkt3pKt8Q3IXycqxre3TSAUHzDDJJG0qs2FtZn9cMqz4CShi0DQb1RnbrzDmC1TGFDB
         UCnS6y6zB4oIa+C342OBOENRxbAzNtGyV/eDA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=lIp3Rau3XN5DhulJvqmP3ROLBDtGBYLacs8yQVXUsIc=;
        b=pIdCLVcM1i1cxJqb6HwCOIer3SDkcqnX/1o7g1mrUXKHW7oFzOoFDaLQUxdFVwQ6iw
         nOWMRYO1DprpG7quJK0hENAAXuLtVkZAuHYaPkjKwdAs4HAgHv2n6PbM1+Sr53+8FBHP
         bCth4MeyunU+znFXr7FBUZHnUBwqfMgCcf7Z9Y5O1voz6cTaxU8f1WbHcf6GczCYbI68
         kwQblCEBHQf7i+9VKHEPSPJ5Aj202rGakQNnw3/U/ofc+Pqp18P0YArk33KNpvs5vjiL
         OzlRw5zq+mSbUQQmz1MwSj/bdH3UkG4rU/4UYkXrVYE+gjq6vVu4ryNbBUhhr9T37yGN
         MLiQ==
X-Gm-Message-State: ACrzQf1u+GDhCD0HpAq2BN6tyGW/FOlbJBSM+NtsnL66t/qyWFh1l7Xs
	o1xPP9wa0aqCZ3PC6bOfuDW6+w==
X-Google-Smtp-Source: AMsMyM6/T55zDNr2wZmPqXofdZ9R/U3i46Zn4bR+d3pjEfZ773lmSd+dIb1qk1eRO6CnC5XeCBBzng==
X-Received: by 2002:a63:2221:0:b0:43b:f4a3:80cc with SMTP id i33-20020a632221000000b0043bf4a380ccmr9160031pgi.367.1663964909744;
        Fri, 23 Sep 2022 13:28:29 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id a5-20020aa795a5000000b0054095e1b2e5sm6854521pfk.215.2022.09.23.13.28.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Sep 2022 13:28:28 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Vlastimil Babka <vbabka@suse.cz>
Date: Fri, 23 Sep 2022 13:28:13 -0700
Message-Id: <20220923202822.2667581-8-keescook@chromium.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220923202822.2667581-1-keescook@chromium.org>
References: <20220923202822.2667581-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1522; h=from:subject; bh=B3w/yPcNxrDzZTqNaOBRmqqUYMKjQkfGlvei/e1+oVk=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBjLhbkv/6yf2iFhq9YdN0Aj+2wDjdTaVU6RYLE7C1a mKAEuIiJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYy4W5AAKCRCJcvTf3G3AJuZJEA CsVm4vzR8guJhS9ev8gPlqvsMaYX7r8aLG4A2NyUhHtbSYNZT7nhbnknnZom1pWNwXgl8qpCTbd6+f vjFzrrIjZtd4D+mSEQPZbx+7rT8VpT3Gtb3/D2nYYDaxLdL/DH99n2c2cbhe8zTWcTnyynJYvES2KC EyHjGO9+9QBzmAOfL6UqxFPxgSN6Mwe3il8Jqb4M5is1whaTpYWBL5PS8pHVDzWbA0hBRdEd/F7aPw o3KlBtzCSp4XR1hHtVT8NWbMPwch83XMmXdi0o6/GubfCfksfBTpaXo7dIG+SMZZQWfgCIvRni8oUC qF3eZ2rfkK2BLw1wcdknu/z43jqhoPV5OtU9fgboiNn0cRbYZC7GmCUWAST/dEfoMQx73mUpyFKCbB QKgl1tbq34QTMFjDcV6u59zyZLRrnP18YpxwCaUglLSod93wDcCin1+C5OXvXtCxNg3CAAlxDJHTVx 0pTds4BRbXQj2/4i4Hb/jcctaZnAs0UoMTTcW+BrbOixx0+CrzBJ0vNQMZh5Hs2WYucbihNX7w0sum 2KnTPVVPKpteClxy32zMqoJRvgjzvqik9+nj4bHX5wgV6aVi+dbQdRPezJyGYxH+GkBtsj0h3BjaPk k/mBMntGy8FlUD9pzWHKmr5gF7fYzXCDe75VLz+YEUGvOyBawRkvwMlkpY3w==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
Message-ID-Hash: MZ4SU6YCKBRDEEYCPZBPYG3YU7636TSP
X-Message-ID-Hash: MZ4SU6YCKBRDEEYCPZBPYG3YU7636TSP
X-MailFrom: keescook@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Kees Cook <keescook@chromium.org>, Chris Mason <clm@fb.com>, Josef Bacik <josef@toxicpanda.com>, linux-btrfs@vger.kernel.org, David Sterba <dsterba@suse.com>, "Ruhl, Michael J" <michael.j.ruhl@intel.com>, Hyeonggon Yoo <42.hyeyoo@gmail.com>, Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>, Andrew Morton <akpm@linux-foundation.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nick Desaulniers <ndesaulniers@google.com>, Alex Elder <elder@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Daniel Micay <danielmicay@gmail.com>, Yonghong Song <yhs@fb.com>, Marco Elver <elver@google.com>, Miguel Ojeda <ojeda@kernel.org>, linux-kernel@vg
 er.kernel.org, linux-mm@kvack.org, netdev@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, intel-wired-lan@lists.osuosl.org, dev@openvswitch.org, x86@kernel.org, llvm@lists.linux.dev, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 07/16] btrfs: send: Proactively round up to kmalloc bucket size
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MZ4SU6YCKBRDEEYCPZBPYG3YU7636TSP/>
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

Cc: Chris Mason <clm@fb.com>
Cc: Josef Bacik <josef@toxicpanda.com>
Cc: linux-btrfs@vger.kernel.org
Acked-by: David Sterba <dsterba@suse.com>
Link: https://lore.kernel.org/lkml/20220922133014.GI32411@suse.cz
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 fs/btrfs/send.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/fs/btrfs/send.c b/fs/btrfs/send.c
index e7671afcee4f..d40d65598e8f 100644
--- a/fs/btrfs/send.c
+++ b/fs/btrfs/send.c
@@ -435,6 +435,11 @@ static int fs_path_ensure_buf(struct fs_path *p, int len)
 	path_len = p->end - p->start;
 	old_buf_len = p->buf_len;
 
+	/*
+	 * Allocate to the next largest kmalloc bucket size, to let
+	 * the fast path happen most of the time.
+	 */
+	len = kmalloc_size_roundup(len);
 	/*
 	 * First time the inline_buf does not suffice
 	 */
@@ -448,11 +453,7 @@ static int fs_path_ensure_buf(struct fs_path *p, int len)
 	if (!tmp_buf)
 		return -ENOMEM;
 	p->buf = tmp_buf;
-	/*
-	 * The real size of the buffer is bigger, this will let the fast path
-	 * happen most of the time
-	 */
-	p->buf_len = ksize(p->buf);
+	p->buf_len = len;
 
 	if (p->reversed) {
 		tmp_buf = p->buf + old_buf_len - path_len - 1;
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
