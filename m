Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1399E288C31
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 Oct 2020 17:06:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 31E6C66518
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 Oct 2020 15:06:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2443466533; Fri,  9 Oct 2020 15:06:23 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 673F666519;
	Fri,  9 Oct 2020 15:04:03 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5704F60639
 for <linaro-mm-sig@lists.linaro.org>; Fri,  9 Oct 2020 15:03:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 49AA26650A; Fri,  9 Oct 2020 15:03:54 +0000 (UTC)
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com
 [209.85.218.67])
 by lists.linaro.org (Postfix) with ESMTPS id 4996F664EC
 for <linaro-mm-sig@lists.linaro.org>; Fri,  9 Oct 2020 15:03:49 +0000 (UTC)
Received: by mail-ej1-f67.google.com with SMTP id c22so13578982ejx.0
 for <linaro-mm-sig@lists.linaro.org>; Fri, 09 Oct 2020 08:03:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aQ0/dy64GNY6E3PqMvkOeCw7tku1OiiEuNnrmc12zf0=;
 b=AhmxUo+Dkh4NDhs7cRdHulVuYvHYavp7yWU7KETukMKbdsublYeYyRkgRPrSfZsBr+
 nq0aHuB+AcB73xLLhf3ErtOdtq8WtI2PxhWD/ZWQh6yUliq4rzL/9BFoWScJ8b/SG12T
 oNR88dtBmnoqQcR5z1VXUSbypUzIuYJbHYV0zYCUsnQ8/CE66I7B6jlOGMn7JsfCZelJ
 gEHvLL0ueAsGnqC1h74qYSGYivaD+C+ehLbNttQiw8RW1+1saHC3M26G09M47So7Qcy6
 ln53nGTPQcb7VHUlfUB9Wx8cRYIg1QNHHLeMfPmSBjOoXQyt2qM7jIwUX3gEHQtkG3TT
 86mg==
X-Gm-Message-State: AOAM532L3/Ig65XAaGMxf7e9XGj9BMWlNSTX91GytWbOTLIZvUyH4Ajz
 5c6U9WSpkNoV+Uko0Xv8N84=
X-Google-Smtp-Source: ABdhPJwwEFyy7ezS1KLDN5XkqzgWY/1qVctpNR81azSANIwKr5bqZ2LqAFPivOFH8zfDpSVfOFDs8Q==
X-Received: by 2002:a17:906:2681:: with SMTP id
 t1mr15258406ejc.474.1602255828284; 
 Fri, 09 Oct 2020 08:03:48 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:65f3:51d4:50d0:15b0])
 by smtp.gmail.com with ESMTPSA id v14sm789364edy.68.2020.10.09.08.03.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 09 Oct 2020 08:03:47 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, chris@chris-wilson.co.uk, airlied@redhat.com,
 akpm@linux-foundation.org, daniel@ffwll.ch, sumit.semwal@linaro.org,
 willy@infradead.org, jhubbard@nvidia.com, jgg@ziepe.ca
Date: Fri,  9 Oct 2020 17:03:40 +0200
Message-Id: <20201009150342.1979-4-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201009150342.1979-1-christian.koenig@amd.com>
References: <20201009150342.1979-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 4/6] drm/amdgpu: stop using pages with
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

VGhpcyBpcyBkZXByZWNhdGVkLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Ft
ZGdwdV90dG0uYyB8IDYgKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAz
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Ft
ZGdwdV90dG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYwppbmRl
eCAzOTk5NjEwMzVhZTYuLmFjNDYzZTcwNmIxOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L2FtZGdwdV90dG0uYwpAQCAtMTAxMSw4ICsxMDExLDggQEAgc3RhdGljIGludCBhbWRncHVfdHRt
X3R0X3Bpbl91c2VycHRyKHN0cnVjdCB0dG1fYm9fZGV2aWNlICpiZGV2LAogCQlnb3RvIHJlbGVh
c2Vfc2c7CiAKIAkvKiBjb252ZXJ0IFNHIHRvIGxpbmVhciBhcnJheSBvZiBwYWdlcyBhbmQgZG1h
IGFkZHJlc3NlcyAqLwotCWRybV9wcmltZV9zZ190b19wYWdlX2FkZHJfYXJyYXlzKHR0bS0+c2cs
IHR0bS0+cGFnZXMsCi0JCQkJCSBndHQtPnR0bS5kbWFfYWRkcmVzcywgdHRtLT5udW1fcGFnZXMp
OworCWRybV9wcmltZV9zZ190b19wYWdlX2FkZHJfYXJyYXlzKHR0bS0+c2csIE5VTEwsIGd0dC0+
dHRtLmRtYV9hZGRyZXNzLAorCQkJCQkgdHRtLT5udW1fcGFnZXMpOwogCiAJcmV0dXJuIDA7CiAK
QEAgLTEzNDUsNyArMTM0NSw3IEBAIHN0YXRpYyBpbnQgYW1kZ3B1X3R0bV90dF9wb3B1bGF0ZShz
dHJ1Y3QgdHRtX2JvX2RldmljZSAqYmRldiwKIAkJCXR0bS0+c2cgPSBzZ3Q7CiAJCX0KIAotCQlk
cm1fcHJpbWVfc2dfdG9fcGFnZV9hZGRyX2FycmF5cyh0dG0tPnNnLCB0dG0tPnBhZ2VzLAorCQlk
cm1fcHJpbWVfc2dfdG9fcGFnZV9hZGRyX2FycmF5cyh0dG0tPnNnLCBOVUxMLAogCQkJCQkJIGd0
dC0+dHRtLmRtYV9hZGRyZXNzLAogCQkJCQkJIHR0bS0+bnVtX3BhZ2VzKTsKIAkJdHRtX3R0X3Nl
dF9wb3B1bGF0ZWQodHRtKTsKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbmFyby1tbS1zaWcK
