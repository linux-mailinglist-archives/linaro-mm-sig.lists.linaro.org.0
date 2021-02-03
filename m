Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1E230D048
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Feb 2021 01:32:06 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 26E176674C
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Feb 2021 00:32:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 182AA66751; Wed,  3 Feb 2021 00:32:05 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A16326601F;
	Wed,  3 Feb 2021 00:31:41 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4339661786
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Feb 2021 00:31:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 360786601F; Wed,  3 Feb 2021 00:31:38 +0000 (UTC)
Received: from mail-yb1-f201.google.com (mail-yb1-f201.google.com
 [209.85.219.201])
 by lists.linaro.org (Postfix) with ESMTPS id A5B7761786
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Feb 2021 00:31:36 +0000 (UTC)
Received: by mail-yb1-f201.google.com with SMTP id d8so818867ybl.14
 for <linaro-mm-sig@lists.linaro.org>; Tue, 02 Feb 2021 16:31:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
 :to:cc;
 bh=SOXagrKaf/SGUJ0It1u1ORMjiyQ7gfGWlZufV5zUWJE=;
 b=aGpMJ1nrKVrXFnC5jl11hpkXYt4RWXOpnvSy6FHzsWi0XURgT2hczHIdhQH/ismg7o
 V3jCc7J64LTb+OKS9PxAMKgL0mP/opfKNJsayRyZXfkILVH/RRg/pHVG9/nxDeWQ1W45
 P9FasGX1AvLU1HbR5O2b/YStgVyaqI57djuNpNRNdRD2QR8jrOUKcyG4WoR9UBAehfNf
 X4hOu2bPapqHE0deAaSwHJHVpGugrEMyD6YCRAdt1cHjN2ctVmOPElGbm6D/C2legjCx
 Wsuib3YQe3stYsw+4Io1JpTHVc0QhuER1XsjcTsr7venkvITHeAK86AB7Yx1SumyJVyg
 PYUQ==
X-Gm-Message-State: AOAM533cIkibKfctcQiCFJxStNzYVN5dtKqxB6HGHyuj/CUy2zX7RxbL
 xN2qTQCIrCSwmXzuZlM2LNJ78AaItxk=
X-Google-Smtp-Source: ABdhPJx1oe0/DgxGORm9UrMRCk0QL4fxRFPA1BcJxhU6LPzwDc8fSpOWryrH8a7W+r9pJcxrhxvwKlDBtU0=
X-Received: from surenb1.mtv.corp.google.com
 ([2620:15c:211:200:9194:cd6:1ec:3e2d])
 (user=surenb job=sendgmr) by 2002:a05:6902:1025:: with SMTP id
 x5mr707532ybt.21.1612312296088; Tue, 02 Feb 2021 16:31:36 -0800 (PST)
Date: Tue,  2 Feb 2021 16:31:33 -0800
Message-Id: <20210203003134.2422308-1-surenb@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.30.0.365.g02bc693789-goog
From: Suren Baghdasaryan <surenb@google.com>
To: sumit.semwal@linaro.org
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linaro-mm-sig@lists.linaro.org, sspatil@google.com, surenb@google.com,
 linux-mm@kvack.org, kernel-team@android.com, jajones@nvidia.com,
 linux-kernel@vger.kernel.org, lmark@codeaurora.org, christian.koenig@amd.com,
 hch@infradead.org, minchan@kernel.org, john.stultz@linaro.org,
 dri-devel@lists.freedesktop.org, cgoldswo@codeaurora.org, hridya@google.com,
 akpm@linux-foundation.org, robin.murphy@arm.com, Brian.Starkey@arm.com,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH 1/2] mm: replace BUG_ON in vm_insert_page
	with a return of an error
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

UmVwbGFjZSBCVUdfT04odm1hLT52bV9mbGFncyAmIFZNX1BGTk1BUCkgaW4gdm1faW5zZXJ0X3Bh
Z2Ugd2l0aApXQVJOX09OX09OQ0UgYW5kIHJldHVybmluZyBhbiBlcnJvci4gVGhpcyBpcyB0byBl
bnN1cmUgdXNlcnMgb2YgdGhlCnZtX2luc2VydF9wYWdlIHRoYXQgc2V0IFZNX1BGTk1BUCBhcmUg
bm90aWZpZWQgb2YgdGhlIHdyb25nIGZsYWcgdXNhZ2UKYW5kIGdldCBhbiBpbmRpY2F0aW9uIG9m
IGFuIGVycm9yIHdpdGhvdXQgcGFuaWNpbmcgdGhlIGtlcm5lbC4KVGhpcyB3aWxsIGhlbHAgaWRl
bnRpZnlpbmcgZHJpdmVycyB0aGF0IG5lZWQgdG8gY2xlYXIgVk1fUEZOTUFQIGJlZm9yZQp1c2lu
ZyBkbWFidWYgc3lzdGVtIGhlYXAgd2hpY2ggaXMgbW92aW5nIHRvIHVzZSB2bV9pbnNlcnRfcGFn
ZS4KClN1Z2dlc3RlZC1ieTogQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBpbmZyYWRlYWQub3JnPgpT
aWduZWQtb2ZmLWJ5OiBTdXJlbiBCYWdoZGFzYXJ5YW4gPHN1cmVuYkBnb29nbGUuY29tPgotLS0K
IG1tL21lbW9yeS5jIHwgMyArKy0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9tbS9tZW1vcnkuYyBiL21tL21lbW9yeS5jCmluZGV4
IGZlZmY0OGUxNDY1YS4uZTUwM2M5ODAxY2Q5IDEwMDY0NAotLS0gYS9tbS9tZW1vcnkuYworKysg
Yi9tbS9tZW1vcnkuYwpAQCAtMTgyNyw3ICsxODI3LDggQEAgaW50IHZtX2luc2VydF9wYWdlKHN0
cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hLCB1bnNpZ25lZCBsb25nIGFkZHIsCiAJCXJldHVybiAt
RUlOVkFMOwogCWlmICghKHZtYS0+dm1fZmxhZ3MgJiBWTV9NSVhFRE1BUCkpIHsKIAkJQlVHX09O
KG1tYXBfcmVhZF90cnlsb2NrKHZtYS0+dm1fbW0pKTsKLQkJQlVHX09OKHZtYS0+dm1fZmxhZ3Mg
JiBWTV9QRk5NQVApOworCQlpZiAoV0FSTl9PTl9PTkNFKHZtYS0+dm1fZmxhZ3MgJiBWTV9QRk5N
QVApKQorCQkJcmV0dXJuIC1FSU5WQUw7CiAJCXZtYS0+dm1fZmxhZ3MgfD0gVk1fTUlYRURNQVA7
CiAJfQogCXJldHVybiBpbnNlcnRfcGFnZSh2bWEsIGFkZHIsIHBhZ2UsIHZtYS0+dm1fcGFnZV9w
cm90KTsKLS0gCjIuMzAuMC4zNjUuZzAyYmM2OTM3ODktZ29vZwoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QK
TGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
