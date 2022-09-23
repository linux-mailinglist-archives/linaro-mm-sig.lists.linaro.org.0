Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 65FAA5E839E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Sep 2022 22:29:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 99E733F94F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Sep 2022 20:29:34 +0000 (UTC)
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	by lists.linaro.org (Postfix) with ESMTPS id D48B53F950
	for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Sep 2022 20:28:35 +0000 (UTC)
Received: by mail-pj1-f53.google.com with SMTP id fv3so1113819pjb.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Sep 2022 13:28:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=1MqQrxnQnbWg62GSxHH0OEF1q347X/m+4lnjB2flQT0=;
        b=Sm/M1aPSgGxkRY3LHKu9WT6VO0RigAcBGr0kTvvwRsO2yiPnlyPOycSqBm+Mx8oFi3
         bspsiUMbtKdtztOA4+TN8PPA5DxAgy5IBcQaq/1bn/CTLSI6xp/mM0sWTL+QnjiHRtQm
         hkYMCwfmO+zSjZYsUL+mFvQC8TlG50HBWaABQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=1MqQrxnQnbWg62GSxHH0OEF1q347X/m+4lnjB2flQT0=;
        b=kMxsJcHRo1qPE+3CfABRkU+smsGmHrH0zfnc8pazzKsLBv2TlIe3n2rlwcGhN3oc9A
         zrenBGbdlFBhoBUh6MrzKwGxM6u5dTTpF7OEYeCKSKSXpz0nCOTAVcDPZuxRZNf4oWvT
         3+hwnGQMxQrsILCmbQS5rEUZ3dtJAetFa200Gli5LSARkNeHjwreUrm3DBq2TeWY8Bt2
         kGp4DQ8AKknOiwkKl1J4om1F3HDqYxYfBP9TzpVLr2A9Y52x9p+XAjeRDTLuhETTj65x
         8XwHb22bEhIClt1G+c1ktguQyyBYorzEeX0d3WA39PBVoBvISUJrM0XT6MEQkEAHdiFZ
         T6Ng==
X-Gm-Message-State: ACrzQf3GH0qt7l0f0Du0sz831SkOAlbmSh+oifUQhGCE4hwqTIWdb2C+
	KQ7+0z4oyVEvaZAlGFkxBm9w4A==
X-Google-Smtp-Source: AMsMyM6DPO4r131p/AkrnBJsIg/pPdpNgGZzqHysb3GkGzz8lYKLY18dMnHntypNM/af/tAornEd+g==
X-Received: by 2002:a17:90b:3e8d:b0:203:1b6d:2112 with SMTP id rj13-20020a17090b3e8d00b002031b6d2112mr23327438pjb.6.1663964915447;
        Fri, 23 Sep 2022 13:28:35 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id g13-20020aa796ad000000b0053ae018a91esm7005618pfk.173.2022.09.23.13.28.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Sep 2022 13:28:32 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Vlastimil Babka <vbabka@suse.cz>
Date: Fri, 23 Sep 2022 13:28:18 -0700
Message-Id: <20220923202822.2667581-13-keescook@chromium.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220923202822.2667581-1-keescook@chromium.org>
References: <20220923202822.2667581-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=845; h=from:subject; bh=p9b8wNdLQUTcKVpskeYovP9HfQefiLH6cTy/WYiH/34=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBjLhblaNBFxJTohammexHC6CbeJ0+h67dRN4PBtvwk 5JonPTWJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYy4W5QAKCRCJcvTf3G3AJv3zD/ 9LAMXluSBHTtqxb1umMTVE5i5sD3JCHrbpRq7+nm/ihvkEJ1pnKlLOmxomGKq8yeaSA69bZA8KfZSc CR5xfaDsFWx4j9MHisTXdoYIizPEmbqQRRqOxkcdkdBTXGB4/9y7dICzF8nG/wZnRE5cg43nOsJxA/ hh08sM/Jc50zsKD8NK3U423EdCAh5Mur1N+IQdBrcIDvnYzrV9ox60ZBhTx1GxtTQH29f1M7tkTsxb CVJH0I7rS5lLvIDvLckMlcpX75U4M6OfFXPwwIxp8zwb/SpdErJg9OQ0Bc5aPbHKg5h0mzeyjxITo4 Z8ePU5LP/HNZ40tbLl/4YQUWf9RwhgxmPxlaMerypnyhhY7RPOqjaEt4QjEp435c3lkzt/jPKVyQ00 /BWZWjk3oYQBVD1YkNvQadr0W7iugWkFBmy0TMQKbpGlH/9UDUI6ZWX0cskd2A9Vm/9DXzxZlWfb5T 46CEGwe6OTc72/fqVunf113g0JP/k16VF9IW4+cBz7fPkxp8MWBVHYsuByyGXMUPaQPem/RWWPBSdo m2SZX1ZgW/fXrsnRcDrhQ1bd8TrDPmojcGJefLK+ix//dr8fGR/Mmu8QlKJ5P4e96wfEoqQZTf9cys itlMdKLXQRmGqut8owpdZR9a0jlrGiYaoK47SOl258qhzKf6gWj/fY7i/IJw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
Message-ID-Hash: UVALL4FKZI2UXHS5VIQTQFWV45BWAZPH
X-Message-ID-Hash: UVALL4FKZI2UXHS5VIQTQFWV45BWAZPH
X-MailFrom: keescook@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Kees Cook <keescook@chromium.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, "Ruhl, Michael J" <michael.j.ruhl@intel.com>, Hyeonggon Yoo <42.hyeyoo@gmail.com>, Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>, Andrew Morton <akpm@linux-foundation.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Nick Desaulniers <ndesaulniers@google.com>, Alex Elder <elder@kernel.org>, Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Daniel Micay <danielmicay@gmail.com>, Yonghong Song <yhs@fb.com>, Marco Elver <elver@google.com>, Miguel Ojeda <ojeda@kernel.org>, linux-kernel@vger.kernel.org,
  linux-mm@kvack.org, netdev@vger.kernel.org, linux-btrfs@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, intel-wired-lan@lists.osuosl.org, dev@openvswitch.org, x86@kernel.org, llvm@lists.linux.dev, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 12/16] devres: Use kmalloc_size_roundup() to match ksize() usage
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UVALL4FKZI2UXHS5VIQTQFWV45BWAZPH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Round up allocations with kmalloc_size_roundup() so that devres's use
of ksize() is always accurate and no special handling of the memory is
needed by KASAN, UBSAN_BOUNDS, nor FORTIFY_SOURCE.

Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/base/devres.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/base/devres.c b/drivers/base/devres.c
index 864d0b3f566e..7db20ce7ea8a 100644
--- a/drivers/base/devres.c
+++ b/drivers/base/devres.c
@@ -101,6 +101,9 @@ static bool check_dr_size(size_t size, size_t *tot_size)
 					size, tot_size)))
 		return false;
 
+	/* Actually allocate the full kmalloc bucket size. */
+	*tot_size = kmalloc_size_roundup(*tot_size);
+
 	return true;
 }
 
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
