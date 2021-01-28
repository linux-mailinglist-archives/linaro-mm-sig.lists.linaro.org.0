Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 490E630719B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Jan 2021 09:38:53 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 699FA66759
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Jan 2021 08:38:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5BDEA6675F; Thu, 28 Jan 2021 08:38:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CECFE6674E;
	Thu, 28 Jan 2021 08:38:24 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4A6B16175A
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 08:38:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 28CB26674E; Thu, 28 Jan 2021 08:38:21 +0000 (UTC)
Received: from mail-qt1-f202.google.com (mail-qt1-f202.google.com
 [209.85.160.202])
 by lists.linaro.org (Postfix) with ESMTPS id 365DE6175A
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 08:38:20 +0000 (UTC)
Received: by mail-qt1-f202.google.com with SMTP id r18so2976708qta.19
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 00:38:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
 :to:cc;
 bh=5FeqogviNew+o0VUZFdW9/7nJCLDRVT518/ol39sXus=;
 b=oleKUGjWF7anXGTb6mTC8a4XPuJbHmMMZ8uLK6njJuVc+OAWBJj6Qc7NNihaazRZgB
 vm15S3rgOiGY+Aibwrqo1UAEVIEO/pf8l4tve1zBwUEcyLu/awGC8cUoBW9q7dIHGKCL
 83RLSK3Nvda26sgaT3cqtU6g2eIRMm6zyzKC9yVzrs6FvTwi6m8FbxvBCykZu0LHGPZS
 1ZtojfgNDFwvU1wBpEs8GBUmrEI0VDdlhKa3tUbNWQ0V7fUqqnzaEPlr88CJRDdZXq52
 1Vc6/9UEdhghMX9Bbq4Qdh+4aYMPnCkwqvJJqv3tyOAerfV7TB0KWi4n6fPvYovrQf3t
 NQsg==
X-Gm-Message-State: AOAM53228l7YDSUlUqy7c0jsJi7z1ajBD6wj0HF6MJ0LSJItIjBFp2k3
 D4dUnbihnYHi66jehRkkCNPkq/BOtO0=
X-Google-Smtp-Source: ABdhPJxf8gcn/0Ccf1D2y+uKA7hjFIYYcMpDgFIBoM7I4ge4xPQw0/SKpxYwLJkEQuwnNCB8GYEYaWvd2vQ=
X-Received: from surenb1.mtv.corp.google.com
 ([2620:15c:211:200:f693:9fff:fef4:2055])
 (user=surenb job=sendgmr) by 2002:ad4:4d4c:: with SMTP id
 m12mr14286593qvm.6.1611823099629; 
 Thu, 28 Jan 2021 00:38:19 -0800 (PST)
Date: Thu, 28 Jan 2021 00:38:17 -0800
Message-Id: <20210128083817.314315-1-surenb@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.30.0.280.ga3ce27912f-goog
From: Suren Baghdasaryan <surenb@google.com>
To: sumit.semwal@linaro.org
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: sspatil@google.com, cgoldswo@codeaurora.org, surenb@google.com,
 kernel-team@android.com, jajones@nvidia.com, linux-kernel@vger.kernel.org,
 lmark@codeaurora.org, Brian.Starkey@arm.com, linaro-mm-sig@lists.linaro.org,
 minchan@kernel.org, john.stultz@linaro.org, dri-devel@lists.freedesktop.org,
 benjamin.gaignard@linaro.org, hridya@google.com, robin.murphy@arm.com,
 christian.koenig@amd.com, linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH 1/1] dma-buf: heaps: Map system heap pages
	as managed by linux vm
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

Q3VycmVudGx5IHN5c3RlbSBoZWFwIG1hcHMgaXRzIGJ1ZmZlcnMgd2l0aCBWTV9QRk5NQVAgZmxh
ZyB1c2luZwpyZW1hcF9wZm5fcmFuZ2UuIFRoaXMgcmVzdWx0cyBpbiBzdWNoIGJ1ZmZlcnMgbm90
IGJlaW5nIGFjY291bnRlZApmb3IgaW4gUFNTIGNhbGN1bGF0aW9ucyBiZWNhdXNlIHZtIHRyZWF0
cyB0aGlzIG1lbW9yeSBhcyBoYXZpbmcgbm8KcGFnZSBzdHJ1Y3RzLiBXaXRob3V0IHBhZ2Ugc3Ry
dWN0cyB0aGVyZSBhcmUgbm8gY291bnRlcnMgcmVwcmVzZW50aW5nCmhvdyBtYW55IHByb2Nlc3Nl
cyBhcmUgbWFwcGluZyBhIHBhZ2UgYW5kIHRoZXJlZm9yZSBQU1MgY2FsY3VsYXRpb24KaXMgaW1w
b3NzaWJsZS4KSGlzdG9yaWNhbGx5LCBJT04gZHJpdmVyIHVzZWQgdG8gbWFwIGl0cyBidWZmZXJz
IGFzIFZNX1BGTk1BUCBhcmVhcwpkdWUgdG8gbWVtb3J5IGNhcnZlb3V0cyB0aGF0IGRpZCBub3Qg
aGF2ZSBwYWdlIHN0cnVjdHMgWzFdLiBUaGF0CmlzIG5vdCB0aGUgY2FzZSBhbnltb3JlIGFuZCBp
dCBzZWVtcyB0aGVyZSB3YXMgZGVzaXJlIHRvIG1vdmUgYXdheQpmcm9tIHJlbWFwX3Bmbl9yYW5n
ZSBbMl0uCkRtYWJ1ZiBzeXN0ZW0gaGVhcCBkZXNpZ24gaW5oZXJpdHMgdGhpcyBJT04gYmVoYXZp
b3IgYW5kIG1hcHMgaXRzCnBhZ2VzIHVzaW5nIHJlbWFwX3Bmbl9yYW5nZSBldmVuIHRob3VnaCBh
bGxvY2F0ZWQgcGFnZXMgYXJlIGJhY2tlZApieSBwYWdlIHN0cnVjdHMuCkNsZWFyIFZNX0lPIGFu
ZCBWTV9QRk5NQVAgZmxhZ3Mgd2hlbiBtYXBwaW5nIG1lbW9yeSBhbGxvY2F0ZWQgYnkgdGhlCnN5
c3RlbSBoZWFwIGFuZCByZXBsYWNlIHJlbWFwX3Bmbl9yYW5nZSB3aXRoIHZtX2luc2VydF9wYWdl
LCBmb2xsb3dpbmcKTGF1cmEncyBzdWdnZXN0aW9uIGluIFsxXS4gVGhpcyB3b3VsZCBhbGxvdyBj
b3JyZWN0IFBTUyBjYWxjdWxhdGlvbgpmb3IgZG1hYnVmcy4KClsxXSBodHRwczovL2RyaXZlcmRl
di1kZXZlbC5saW51eGRyaXZlcnByb2plY3QubmFya2l2ZS5jb20vdjBmSkdwYUQvdXNpbmctaW9u
LW1lbW9yeS1mb3ItZGlyZWN0LWlvClsyXSBodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJv
amVjdC5vcmcvcGlwZXJtYWlsL2RyaXZlcmRldi1kZXZlbC8yMDE4LU9jdG9iZXIvMTI3NTE5Lmh0
bWwKKHNvcnJ5LCBjb3VsZCBub3QgZmluZCBsb3JlIGxpbmtzIGZvciB0aGVzZSBkaXNjdXNzaW9u
cykKClN1Z2dlc3RlZC1ieTogTGF1cmEgQWJib3R0IDxsYWJib3R0QGtlcm5lbC5vcmc+ClNpZ25l
ZC1vZmYtYnk6IFN1cmVuIEJhZ2hkYXNhcnlhbiA8c3VyZW5iQGdvb2dsZS5jb20+Ci0tLQogZHJp
dmVycy9kbWEtYnVmL2hlYXBzL3N5c3RlbV9oZWFwLmMgfCA2ICsrKystLQogMSBmaWxlIGNoYW5n
ZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2RtYS1idWYvaGVhcHMvc3lzdGVtX2hlYXAuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9zeXN0
ZW1faGVhcC5jCmluZGV4IDE3ZTBlOWE2OGJhZi4uMGU5MmU0MmIyMjUxIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2RtYS1idWYvaGVhcHMvc3lzdGVtX2hlYXAuYworKysgYi9kcml2ZXJzL2RtYS1idWYv
aGVhcHMvc3lzdGVtX2hlYXAuYwpAQCAtMjAwLDExICsyMDAsMTMgQEAgc3RhdGljIGludCBzeXN0
ZW1faGVhcF9tbWFwKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCB2bV9hcmVhX3N0cnVj
dCAqdm1hKQogCXN0cnVjdCBzZ19wYWdlX2l0ZXIgcGl0ZXI7CiAJaW50IHJldDsKIAorCS8qIEFs
bCBwYWdlcyBhcmUgYmFja2VkIGJ5IGEgInN0cnVjdCBwYWdlIiAqLworCXZtYS0+dm1fZmxhZ3Mg
Jj0gflZNX1BGTk1BUDsKKwogCWZvcl9lYWNoX3NndGFibGVfcGFnZSh0YWJsZSwgJnBpdGVyLCB2
bWEtPnZtX3Bnb2ZmKSB7CiAJCXN0cnVjdCBwYWdlICpwYWdlID0gc2dfcGFnZV9pdGVyX3BhZ2Uo
JnBpdGVyKTsKIAotCQlyZXQgPSByZW1hcF9wZm5fcmFuZ2Uodm1hLCBhZGRyLCBwYWdlX3RvX3Bm
bihwYWdlKSwgUEFHRV9TSVpFLAotCQkJCSAgICAgIHZtYS0+dm1fcGFnZV9wcm90KTsKKwkJcmV0
ID0gdm1faW5zZXJ0X3BhZ2Uodm1hLCBhZGRyLCBwYWdlKTsKIAkJaWYgKHJldCkKIAkJCXJldHVy
biByZXQ7CiAJCWFkZHIgKz0gUEFHRV9TSVpFOwotLSAKMi4zMC4wLjI4MC5nYTNjZTI3OTEyZi1n
b29nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0
cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
