Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C37CF30D049
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Feb 2021 01:32:38 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E44FA6601F
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Feb 2021 00:32:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D67A4619D7; Wed,  3 Feb 2021 00:32:37 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6552366538;
	Wed,  3 Feb 2021 00:31:43 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E477961786
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Feb 2021 00:31:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D63B86601F; Wed,  3 Feb 2021 00:31:39 +0000 (UTC)
Received: from mail-qv1-f73.google.com (mail-qv1-f73.google.com
 [209.85.219.73])
 by lists.linaro.org (Postfix) with ESMTPS id 7B5B361786
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Feb 2021 00:31:38 +0000 (UTC)
Received: by mail-qv1-f73.google.com with SMTP id k18so3383402qvj.15
 for <linaro-mm-sig@lists.linaro.org>; Tue, 02 Feb 2021 16:31:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=5KtTzd9k+c9bS2Y/wk34+i/vvyNbysJG7UZJv8N2Wp4=;
 b=BxAfSNzEQHJnOvP/EjQBjjsECUrxWB2vgFXODG/8jIqc483QaZerVlM+guOA2/04Mv
 H2QsQMmY4i+9kKGYDjhVqoBn7rQ2F2P4PgJUvIiwobgCeirUw9NAOBINDyoBOWFJ8bDR
 j9PCfhE7QCoSUc7IJwY0hTE3yklLabiReMvR6tt2Acwbnw0IAv5VVHdwNCX4NMWWwDJ1
 3WFwykfNloTGJWe1MHsrTZbYa14vJkGZmfcStjAjJLd3e9bwjn2p7uf0EcU/odQ9PtdL
 8yfbulC8lVNmlhxdsBy3NqzllIV60uVuG3ly+8L2F8qr5iTtXf497v1nFKf9C+u2BLta
 0WMQ==
X-Gm-Message-State: AOAM530+YmFlZUkKfdFGo66NFuXgRgUMuYH8ni/Yk8sNeLnkt+Vm/nl9
 HK/0nFbhoq0oZG7QU56wB2bsgkY8If0=
X-Google-Smtp-Source: ABdhPJwlIrpFiCM10hcfIL1xRHkC2ka4Rp5OqMsb623obcfa1dzEsxG62HhtetSAvxKOVvEOcxKdtwB6Ytc=
X-Received: from surenb1.mtv.corp.google.com
 ([2620:15c:211:200:9194:cd6:1ec:3e2d])
 (user=surenb job=sendgmr) by 2002:a0c:8365:: with SMTP id
 j92mr418503qva.19.1612312297983; 
 Tue, 02 Feb 2021 16:31:37 -0800 (PST)
Date: Tue,  2 Feb 2021 16:31:34 -0800
In-Reply-To: <20210203003134.2422308-1-surenb@google.com>
Message-Id: <20210203003134.2422308-2-surenb@google.com>
Mime-Version: 1.0
References: <20210203003134.2422308-1-surenb@google.com>
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
Subject: [Linaro-mm-sig] [PATCH v2 2/2] dma-buf: heaps: Map system heap
 pages as managed by linux vm
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
bGxvY2F0ZWQgcGFnZXMgYXJlIGJhY2tlZApieSBwYWdlIHN0cnVjdHMuClJlcGxhY2UgcmVtYXBf
cGZuX3JhbmdlIHdpdGggdm1faW5zZXJ0X3BhZ2UsIGZvbGxvd2luZyBMYXVyYSdzIHN1Z2dlc3Rp
b24KaW4gWzFdLiBUaGlzIHdvdWxkIGFsbG93IGNvcnJlY3QgUFNTIGNhbGN1bGF0aW9uIGZvciBk
bWFidWZzLgoKWzFdIGh0dHBzOi8vZHJpdmVyZGV2LWRldmVsLmxpbnV4ZHJpdmVycHJvamVjdC5u
YXJraXZlLmNvbS92MGZKR3BhRC91c2luZy1pb24tbWVtb3J5LWZvci1kaXJlY3QtaW8KWzJdIGh0
dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9waXBlcm1haWwvZHJpdmVyZGV2
LWRldmVsLzIwMTgtT2N0b2Jlci8xMjc1MTkuaHRtbAooc29ycnksIGNvdWxkIG5vdCBmaW5kIGxv
cmUgbGlua3MgZm9yIHRoZXNlIGRpc2N1c3Npb25zKQoKU3VnZ2VzdGVkLWJ5OiBMYXVyYSBBYmJv
dHQgPGxhYmJvdHRAa2VybmVsLm9yZz4KU2lnbmVkLW9mZi1ieTogU3VyZW4gQmFnaGRhc2FyeWFu
IDxzdXJlbmJAZ29vZ2xlLmNvbT4KLS0tCnYxIHBvc3RlZCBhdDogaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvcGF0Y2h3b3JrL3BhdGNoLzEzNzI0MDkvCgpjaGFuZ2VzIGluIHYyOgotIHJlbW92ZWQg
Vk1fUEZOTUFQIGNsZWFyaW5nIHBhcnQgb2YgdGhlIHBhdGNoLCBwZXIgTWluY2hhbiBhbmQgQ2hy
aXN0b3BoCi0gY3JlYXRlZCBwcmVyZXF1aXNpdGUgcGF0Y2ggdG8gcmVwbGFjZSBCVUdfT04gd2l0
aCBXQVJOX09OX09OQ0UsIHBlciBDaHJpc3RvcGgKCiBkcml2ZXJzL2RtYS1idWYvaGVhcHMvc3lz
dGVtX2hlYXAuYyB8IDMgKy0tCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDIgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3N5c3RlbV9oZWFw
LmMgYi9kcml2ZXJzL2RtYS1idWYvaGVhcHMvc3lzdGVtX2hlYXAuYwppbmRleCAxN2UwZTlhNjhi
YWYuLjQ5ODNmMThjYzJjZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3N5c3Rl
bV9oZWFwLmMKKysrIGIvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3N5c3RlbV9oZWFwLmMKQEAgLTIw
Myw4ICsyMDMsNyBAQCBzdGF0aWMgaW50IHN5c3RlbV9oZWFwX21tYXAoc3RydWN0IGRtYV9idWYg
KmRtYWJ1Ziwgc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEpCiAJZm9yX2VhY2hfc2d0YWJsZV9w
YWdlKHRhYmxlLCAmcGl0ZXIsIHZtYS0+dm1fcGdvZmYpIHsKIAkJc3RydWN0IHBhZ2UgKnBhZ2Ug
PSBzZ19wYWdlX2l0ZXJfcGFnZSgmcGl0ZXIpOwogCi0JCXJldCA9IHJlbWFwX3Bmbl9yYW5nZSh2
bWEsIGFkZHIsIHBhZ2VfdG9fcGZuKHBhZ2UpLCBQQUdFX1NJWkUsCi0JCQkJICAgICAgdm1hLT52
bV9wYWdlX3Byb3QpOworCQlyZXQgPSB2bV9pbnNlcnRfcGFnZSh2bWEsIGFkZHIsIHBhZ2UpOwog
CQlpZiAocmV0KQogCQkJcmV0dXJuIHJldDsKIAkJYWRkciArPSBQQUdFX1NJWkU7Ci0tIAoyLjMw
LjAuMzY1LmcwMmJjNjkzNzg5LWdvb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW5hcm8tbW0tc2lnCg==
