Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 252492F4121
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Jan 2021 02:24:19 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 37CC66673A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Jan 2021 01:24:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2585A6673D; Wed, 13 Jan 2021 01:24:18 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3CCD666729;
	Wed, 13 Jan 2021 01:22:43 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4279266729
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Jan 2021 01:22:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2CB116672F; Wed, 13 Jan 2021 01:22:37 +0000 (UTC)
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com
 [209.85.216.50])
 by lists.linaro.org (Postfix) with ESMTPS id C987D66729
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Jan 2021 01:21:58 +0000 (UTC)
Received: by mail-pj1-f50.google.com with SMTP id p15so31520pjv.3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Jan 2021 17:21:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=PwrTvDCpQxTz/DIQgW8kuhPAh38es7QArT97GZe3VtU=;
 b=dujifu6NtXKB4exSpd3FDx5gvqEGLh9rZnuEuZSru1PX101H1ygLFab3XsBV2YdB0g
 RR1jjPJ6OwYLverQlki/qxqdLUDWCn5i1iLmhgz/jra7ftXFDR84txBV8/3K6YIexKv7
 iSfJkRiD00juS+JSC6VTw7pJShYRTaT3Xn+HyDC3uqcDMix5Ev90LXcpZUdBKuTmytkf
 rusFptjX9GxQrSgalzTqcg9kxHqW4OY5vF/MCOpy5yKfFgHrUENXF+wFv6Y2lotXuxZH
 zktdns2+ljCUR522XkXjuubNmf/96j9pz6gEVLNlF8ZmbjwCz4bKa7yaiGcsadk2rs9g
 NRqQ==
X-Gm-Message-State: AOAM533dY/+k+17IuxN39VfrWRJUYbhTX24xk/rRVQOVS9UarJkjlwpM
 sJ+OwyddBhO5D4dImFu8048=
X-Google-Smtp-Source: ABdhPJzmO+8D0rnhhJPNIKgMyyHl4myY8RINkNNrnEa0wEBRddADD3DsZUjfzpKGbwWsqPYYVIySqA==
X-Received: by 2002:a17:90a:c82:: with SMTP id v2mr475726pja.171.1610500917994; 
 Tue, 12 Jan 2021 17:21:57 -0800 (PST)
Received: from bbox-1.mtv.corp.google.com
 ([2620:15c:211:201:7220:84ff:fe09:5e58])
 by smtp.gmail.com with ESMTPSA id b2sm355197pff.79.2021.01.12.17.21.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Jan 2021 17:21:57 -0800 (PST)
From: Minchan Kim <minchan@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Tue, 12 Jan 2021 17:21:41 -0800
Message-Id: <20210113012143.1201105-3-minchan@kernel.org>
X-Mailer: git-send-email 2.30.0.284.gd98b1dd5eaa7-goog
In-Reply-To: <20210113012143.1201105-1-minchan@kernel.org>
References: <20210113012143.1201105-1-minchan@kernel.org>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devicetree@vger.kernel.org, mhocko@suse.com, linux-media@vger.kernel.org,
 david@redhat.com, Minchan Kim <minchan@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, hch@infradead.org,
 linux-mm <linux-mm@kvack.org>, robh+dt@kernel.org, john.stultz@linaro.org,
 joaodias@google.com, hridya@google.com, pullip.cho@samsung.com,
 surenb@google.com, linaro-mm-sig@lists.linaro.org, hyesoo.yu@samsung.com
Subject: [Linaro-mm-sig] [PATCH v3 2/4] mm: failfast mode with __GFP_NORETRY
	in alloc_contig_range
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

Q29udGlndW91cyBtZW1vcnkgYWxsb2NhdGlvbiBjYW4gYmUgc3RhbGxlZCBkdWUgdG8gd2FpdGlu
ZwpvbiBwYWdlIHdyaXRlYmFjayBhbmQvb3IgcGFnZSBsb2NrIHdoaWNoIGNhdXNlcyB1bnByZWRp
Y3RhYmxlCmRlbGF5LiBJdCdzIGEgdW5hdm9pZGFibGUgY29zdCBmb3IgdGhlIHJlcXVlc3RvciB0
byBnZXQgKmJpZyoKY29udGlndW91cyBtZW1vcnkgYnV0IGl0J3MgZXhwZW5zaXZlIGZvciAqc21h
bGwqIGNvbnRpZ3VvdXMKbWVtb3J5KGUuZy4sIG9yZGVyLTQpIGJlY2F1c2UgY2FsbGVyIGNvdWxk
IHJldHJ5IHRoZSByZXF1ZXN0CmluIGRpZmZyZW50IHJhbmdlIHdoZXJlIHdvdWxkIGhhdmUgZWFz
eSBtaWdyYXRhYmxlIHBhZ2VzCndpdGhvdXQgc3RhbGxpbmcuCgpUaGlzIHBhdGNoIGludHJvZHVj
ZSBfX0dGUF9OT1JFVFJZIGFzIGNvbXBhY3Rpb24gZ2ZwX21hc2sgaW4KYWxsb2NfY29udGlnX3Jh
bmdlIHNvIGl0IHdpbGwgZmFpbCBmYXN0IHdpdGhvdXQgYmxvY2tpbmcKd2hlbiBpdCBlbmNvdW50
ZXJzIHBhZ2VzIG5lZWRlZCB3YWl0dGluZy4KClNpZ25lZC1vZmYtYnk6IE1pbmNoYW4gS2ltIDxt
aW5jaGFuQGtlcm5lbC5vcmc+Ci0tLQogbW0vcGFnZV9hbGxvYy5jIHwgOCArKysrKystLQogMSBm
aWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9tbS9wYWdlX2FsbG9jLmMgYi9tbS9wYWdlX2FsbG9jLmMKaW5kZXggNWIzOTIzZGI5MTU4Li5m
ZjQxY2ViNGRiNTEgMTAwNjQ0Ci0tLSBhL21tL3BhZ2VfYWxsb2MuYworKysgYi9tbS9wYWdlX2Fs
bG9jLmMKQEAgLTg0ODksMTIgKzg0ODksMTYgQEAgc3RhdGljIGludCBfX2FsbG9jX2NvbnRpZ19t
aWdyYXRlX3JhbmdlKHN0cnVjdCBjb21wYWN0X2NvbnRyb2wgKmNjLAogCXVuc2lnbmVkIGludCBu
cl9yZWNsYWltZWQ7CiAJdW5zaWduZWQgbG9uZyBwZm4gPSBzdGFydDsKIAl1bnNpZ25lZCBpbnQg
dHJpZXMgPSAwOworCXVuc2lnbmVkIGludCBtYXhfdHJpZXMgPSA1OwogCWludCByZXQgPSAwOwog
CXN0cnVjdCBtaWdyYXRpb25fdGFyZ2V0X2NvbnRyb2wgbXRjID0gewogCQkubmlkID0gem9uZV90
b19uaWQoY2MtPnpvbmUpLAogCQkuZ2ZwX21hc2sgPSBHRlBfVVNFUiB8IF9fR0ZQX01PVkFCTEUg
fCBfX0dGUF9SRVRSWV9NQVlGQUlMLAogCX07CiAKKwlpZiAoY2MtPmFsbG9jX2NvbnRpZyAmJiBj
Yy0+bW9kZSA9PSBNSUdSQVRFX0FTWU5DKQorCQltYXhfdHJpZXMgPSAxOworCiAJbWlncmF0ZV9w
cmVwKCk7CiAKIAl3aGlsZSAocGZuIDwgZW5kIHx8ICFsaXN0X2VtcHR5KCZjYy0+bWlncmF0ZXBh
Z2VzKSkgewpAQCAtODUxMSw3ICs4NTE1LDcgQEAgc3RhdGljIGludCBfX2FsbG9jX2NvbnRpZ19t
aWdyYXRlX3JhbmdlKHN0cnVjdCBjb21wYWN0X2NvbnRyb2wgKmNjLAogCQkJCWJyZWFrOwogCQkJ
fQogCQkJdHJpZXMgPSAwOwotCQl9IGVsc2UgaWYgKCsrdHJpZXMgPT0gNSkgeworCQl9IGVsc2Ug
aWYgKCsrdHJpZXMgPT0gbWF4X3RyaWVzKSB7CiAJCQlyZXQgPSByZXQgPCAwID8gcmV0IDogLUVC
VVNZOwogCQkJYnJlYWs7CiAJCX0KQEAgLTg1NjIsNyArODU2Niw3IEBAIGludCBhbGxvY19jb250
aWdfcmFuZ2UodW5zaWduZWQgbG9uZyBzdGFydCwgdW5zaWduZWQgbG9uZyBlbmQsCiAJCS5ucl9t
aWdyYXRlcGFnZXMgPSAwLAogCQkub3JkZXIgPSAtMSwKIAkJLnpvbmUgPSBwYWdlX3pvbmUocGZu
X3RvX3BhZ2Uoc3RhcnQpKSwKLQkJLm1vZGUgPSBNSUdSQVRFX1NZTkMsCisJCS5tb2RlID0gZ2Zw
X21hc2sgJiBfX0dGUF9OT1JFVFJZID8gTUlHUkFURV9BU1lOQyA6IE1JR1JBVEVfU1lOQywKIAkJ
Lmlnbm9yZV9za2lwX2hpbnQgPSB0cnVlLAogCQkubm9fc2V0X3NraXBfaGludCA9IHRydWUsCiAJ
CS5nZnBfbWFzayA9IGN1cnJlbnRfZ2ZwX2NvbnRleHQoZ2ZwX21hc2spLAotLSAKMi4zMC4wLjI4
NC5nZDk4YjFkZDVlYWE3LWdvb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW5hcm8tbW0tc2lnCg==
