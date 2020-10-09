Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E28DC288C32
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 Oct 2020 17:07:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 820AF66525
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 Oct 2020 15:07:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 73F846654B; Fri,  9 Oct 2020 15:07:06 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B5AFC66528;
	Fri,  9 Oct 2020 15:04:07 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B1B6560639
 for <linaro-mm-sig@lists.linaro.org>; Fri,  9 Oct 2020 15:03:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A342160F10; Fri,  9 Oct 2020 15:03:54 +0000 (UTC)
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com
 [209.85.218.68])
 by lists.linaro.org (Postfix) with ESMTPS id 567DF60F10
 for <linaro-mm-sig@lists.linaro.org>; Fri,  9 Oct 2020 15:03:50 +0000 (UTC)
Received: by mail-ej1-f68.google.com with SMTP id t25so13474900ejd.13
 for <linaro-mm-sig@lists.linaro.org>; Fri, 09 Oct 2020 08:03:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FmM++3symsvpVR4siwjDU9+9KxruIk1gOAMHnKd0AiE=;
 b=KPX5sGHKl/btg9h9h/CpumhuLACq4BDepes+Y+kiq9xUSICOd6zTEBts4atA88naOi
 fKntJab+7vlqoboWQtFTsr33kxQFyJFBfPvvOs9msVgCQBcGIFMD3JMGyRE8NY0fOPKi
 zGuz9Rci7GzR0vmntoySD3Sa1RvRpVdRTPO2xgmEGmlxb1coLJIJL631lMiDmyWOcf0M
 bCp0Yd6X5iZz+kR1L+6X7YiH3mqiDSrbe16KhXbeepTP/FD+x3pEvjlVn4ceBT/GM4jJ
 DWm35Gn5dQnt/iioudq+ar9Rqn4GF6ygX0HydhFKorZXMpTCVc5yF0x3IIXa4KDWHwlq
 vO1A==
X-Gm-Message-State: AOAM531K1udTAWJk2ciiD1KdjAEMnGxwkfQhSfdBSHSdGumZ9kXOP0a4
 EekZuW0AtUljzL0iLfX1yb8=
X-Google-Smtp-Source: ABdhPJyN5ELfE5Ze/1hZ+8RjxM7E1Du5RNH1vhDQ1NOfDbdJcYgRfdItr1lNkT4hlsX9OlPerKunKw==
X-Received: by 2002:a17:906:7f8d:: with SMTP id
 f13mr14847374ejr.540.1602255829532; 
 Fri, 09 Oct 2020 08:03:49 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:65f3:51d4:50d0:15b0])
 by smtp.gmail.com with ESMTPSA id v14sm789364edy.68.2020.10.09.08.03.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 09 Oct 2020 08:03:49 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, chris@chris-wilson.co.uk, airlied@redhat.com,
 akpm@linux-foundation.org, daniel@ffwll.ch, sumit.semwal@linaro.org,
 willy@infradead.org, jhubbard@nvidia.com, jgg@ziepe.ca
Date: Fri,  9 Oct 2020 17:03:41 +0200
Message-Id: <20201009150342.1979-5-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201009150342.1979-1-christian.koenig@amd.com>
References: <20201009150342.1979-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 5/6] drm/nouveau: stop using pages with
	drm_prime_sg_to_page_addr_arrays
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

VGhpcyBpcyBkZXByZWNhdGVkLCBhbHNvIGRyb3AgdGhlIGNvbW1lbnQgYWJvdXQgZmF1bHRzLgoK
U2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfYm8uYyB8IDYgKysrLS0tCiAx
IGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfYm8uYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9ub3V2ZWF1L25vdXZlYXVfYm8uYwppbmRleCAwYzBjYTQ0YTY4MDIuLmUzNzhiYjQ5MTY4OCAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVhdV9iby5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfYm8uYwpAQCAtMTI5OSw5ICsxMjk5LDkgQEAg
bm91dmVhdV90dG1fdHRfcG9wdWxhdGUoc3RydWN0IHR0bV9ib19kZXZpY2UgKmJkZXYsCiAJCXJl
dHVybiAwOwogCiAJaWYgKHNsYXZlICYmIHR0bS0+c2cpIHsKLQkJLyogbWFrZSB1c2Vyc3BhY2Ug
ZmF1bHRpbmcgd29yayAqLwotCQlkcm1fcHJpbWVfc2dfdG9fcGFnZV9hZGRyX2FycmF5cyh0dG0t
PnNnLCB0dG0tPnBhZ2VzLAotCQkJCQkJIHR0bV9kbWEtPmRtYV9hZGRyZXNzLCB0dG0tPm51bV9w
YWdlcyk7CisJCWRybV9wcmltZV9zZ190b19wYWdlX2FkZHJfYXJyYXlzKHR0bS0+c2csIE5VTEws
CisJCQkJCQkgdHRtX2RtYS0+ZG1hX2FkZHJlc3MsCisJCQkJCQkgdHRtLT5udW1fcGFnZXMpOwog
CQl0dG1fdHRfc2V0X3BvcHVsYXRlZCh0dG0pOwogCQlyZXR1cm4gMDsKIAl9Ci0tIAoyLjE3LjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczov
L2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
