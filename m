Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2439A2FF294
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Jan 2021 18:57:36 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4A5C066748
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Jan 2021 17:57:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3728D6674A; Thu, 21 Jan 2021 17:57:35 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2BAE9619D7;
	Thu, 21 Jan 2021 17:55:39 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A5BEB66738
 for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Jan 2021 17:55:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 93B0166748; Thu, 21 Jan 2021 17:55:32 +0000 (UTC)
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com
 [209.85.214.169])
 by lists.linaro.org (Postfix) with ESMTPS id C77D466738
 for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Jan 2021 17:55:13 +0000 (UTC)
Received: by mail-pl1-f169.google.com with SMTP id y8so1697458plp.8
 for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Jan 2021 09:55:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=gPMjM19aJ4pm3ETJElwKqqAg8qqzpXB97r3PbN2RvL8=;
 b=mNOfq90bALCWiVdSJKMj3lHz2oFe9hpvQZs4jfrkk0gq7NURf+fOf1LF7vXxYmnfTN
 Fwd7dSHiw22FjRyATeo2ZB4ivFtc+P94+2wgdr8zGI12VCxeLVGNnJ5oRDDW4CB6O3H+
 cQgDSc5BXcmjzoAInIpDKCJGrL846PDD7cHLlTudX/wQ5GEHqiQdA6I32T8KZHvDjOn/
 kThXM8dDuymycpGGJ1iaDWyW2iomZHxAHrXDQMo9Bi6m7RLFOB7Th3E75pFssyVNVl+T
 /G0QlJtEDA+OR0jxpxyb8VRlO2S2Z+Vdx3js35yVE4JIWikA0uolI/zACYjVJHAdnAMs
 ARhg==
X-Gm-Message-State: AOAM5327w4oQBf5wlivHVoGkwnpPUTH655efbGLOjuj0804W1qnaAW5G
 GlwCsYyn6HbeR6WIgZc/x9o=
X-Google-Smtp-Source: ABdhPJwua3dS85PxEqSvzV1XHGSp3rtEG3Evxsrqo12dFSbOhRShx1GThlZKPz/+p0B1yNRZEi2OWw==
X-Received: by 2002:a17:902:59c7:b029:de:25e7:2426 with SMTP id
 d7-20020a17090259c7b02900de25e72426mr424509plj.21.1611251713128; 
 Thu, 21 Jan 2021 09:55:13 -0800 (PST)
Received: from bbox-1.mtv.corp.google.com
 ([2620:15c:211:201:74d0:bb24:e25e:dc4d])
 by smtp.gmail.com with ESMTPSA id t2sm6897317pju.19.2021.01.21.09.55.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Jan 2021 09:55:12 -0800 (PST)
From: Minchan Kim <minchan@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Thu, 21 Jan 2021 09:55:00 -0800
Message-Id: <20210121175502.274391-3-minchan@kernel.org>
X-Mailer: git-send-email 2.30.0.296.g2bfb1c46d8-goog
In-Reply-To: <20210121175502.274391-1-minchan@kernel.org>
References: <20210121175502.274391-1-minchan@kernel.org>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devicetree@vger.kernel.org, mhocko@suse.com, linux-media@vger.kernel.org,
 david@redhat.com, Minchan Kim <minchan@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, hch@infradead.org,
 linux-mm <linux-mm@kvack.org>, robh+dt@kernel.org, john.stultz@linaro.org,
 joaodias@google.com, hridya@google.com, pullip.cho@samsung.com,
 surenb@google.com, linaro-mm-sig@lists.linaro.org, hyesoo.yu@samsung.com
Subject: [Linaro-mm-sig] [PATCH v4 2/4] mm: failfast mode with __GFP_NORETRY
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
IHJldHJ5IHRoZSByZXF1ZXN0CmluIGRpZmZlcmVudCByYW5nZSB3aGVyZSB3b3VsZCBoYXZlIGVh
c3kgbWlncmF0YWJsZSBwYWdlcwp3aXRob3V0IHN0YWxsaW5nLgoKVGhpcyBwYXRjaCBpbnRyb2R1
Y2UgX19HRlBfTk9SRVRSWSBhcyBjb21wYWN0aW9uIGdmcF9tYXNrIGluCmFsbG9jX2NvbnRpZ19y
YW5nZSBzbyBpdCB3aWxsIGZhaWwgZmFzdCB3aXRob3V0IGJsb2NraW5nCndoZW4gaXQgZW5jb3Vu
dGVycyBwYWdlcyBuZWVkZWQgd2FpdGluZy4KClNpZ25lZC1vZmYtYnk6IE1pbmNoYW4gS2ltIDxt
aW5jaGFuQGtlcm5lbC5vcmc+Ci0tLQogbW0vcGFnZV9hbGxvYy5jIHwgOCArKysrKystLQogMSBm
aWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9tbS9wYWdlX2FsbG9jLmMgYi9tbS9wYWdlX2FsbG9jLmMKaW5kZXggYjAzMWE1YWUwYmQ1Li4x
Y2RjM2VlMGIyMmUgMTAwNjQ0Ci0tLSBhL21tL3BhZ2VfYWxsb2MuYworKysgYi9tbS9wYWdlX2Fs
bG9jLmMKQEAgLTg0OTEsMTIgKzg0OTEsMTYgQEAgc3RhdGljIGludCBfX2FsbG9jX2NvbnRpZ19t
aWdyYXRlX3JhbmdlKHN0cnVjdCBjb21wYWN0X2NvbnRyb2wgKmNjLAogCXVuc2lnbmVkIGludCBu
cl9yZWNsYWltZWQ7CiAJdW5zaWduZWQgbG9uZyBwZm4gPSBzdGFydDsKIAl1bnNpZ25lZCBpbnQg
dHJpZXMgPSAwOworCXVuc2lnbmVkIGludCBtYXhfdHJpZXMgPSA1OwogCWludCByZXQgPSAwOwog
CXN0cnVjdCBtaWdyYXRpb25fdGFyZ2V0X2NvbnRyb2wgbXRjID0gewogCQkubmlkID0gem9uZV90
b19uaWQoY2MtPnpvbmUpLAogCQkuZ2ZwX21hc2sgPSBHRlBfVVNFUiB8IF9fR0ZQX01PVkFCTEUg
fCBfX0dGUF9SRVRSWV9NQVlGQUlMLAogCX07CiAKKwlpZiAoY2MtPmFsbG9jX2NvbnRpZyAmJiBj
Yy0+bW9kZSA9PSBNSUdSQVRFX0FTWU5DKQorCQltYXhfdHJpZXMgPSAxOworCiAJbWlncmF0ZV9w
cmVwKCk7CiAKIAl3aGlsZSAocGZuIDwgZW5kIHx8ICFsaXN0X2VtcHR5KCZjYy0+bWlncmF0ZXBh
Z2VzKSkgewpAQCAtODUxMyw3ICs4NTE3LDcgQEAgc3RhdGljIGludCBfX2FsbG9jX2NvbnRpZ19t
aWdyYXRlX3JhbmdlKHN0cnVjdCBjb21wYWN0X2NvbnRyb2wgKmNjLAogCQkJCWJyZWFrOwogCQkJ
fQogCQkJdHJpZXMgPSAwOwotCQl9IGVsc2UgaWYgKCsrdHJpZXMgPT0gNSkgeworCQl9IGVsc2Ug
aWYgKCsrdHJpZXMgPT0gbWF4X3RyaWVzKSB7CiAJCQlyZXQgPSByZXQgPCAwID8gcmV0IDogLUVC
VVNZOwogCQkJYnJlYWs7CiAJCX0KQEAgLTg1NjQsNyArODU2OCw3IEBAIGludCBhbGxvY19jb250
aWdfcmFuZ2UodW5zaWduZWQgbG9uZyBzdGFydCwgdW5zaWduZWQgbG9uZyBlbmQsCiAJCS5ucl9t
aWdyYXRlcGFnZXMgPSAwLAogCQkub3JkZXIgPSAtMSwKIAkJLnpvbmUgPSBwYWdlX3pvbmUocGZu
X3RvX3BhZ2Uoc3RhcnQpKSwKLQkJLm1vZGUgPSBNSUdSQVRFX1NZTkMsCisJCS5tb2RlID0gZ2Zw
X21hc2sgJiBfX0dGUF9OT1JFVFJZID8gTUlHUkFURV9BU1lOQyA6IE1JR1JBVEVfU1lOQywKIAkJ
Lmlnbm9yZV9za2lwX2hpbnQgPSB0cnVlLAogCQkubm9fc2V0X3NraXBfaGludCA9IHRydWUsCiAJ
CS5nZnBfbWFzayA9IGN1cnJlbnRfZ2ZwX2NvbnRleHQoZ2ZwX21hc2spLAotLSAKMi4zMC4wLjI5
Ni5nMmJmYjFjNDZkOC1nb29nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
YXJvLW1tLXNpZwo=
